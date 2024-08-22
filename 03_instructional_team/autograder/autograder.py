import pandas as pd
import os.path
import os
import requests
import re

base_dir = os.environ['GITHUB_WORKSPACE'] + '/02_activities/assignments'

# get environment variables for output
github_step_output = os.environ['GITHUB_STEP_SUMMARY']
github_token = os.environ["GITHUB_TOKEN"]
github_repo_owner = os.environ["REPO_OWNER"]
github_repo_name = os.environ["REPO_NAME"]
github_pr_number = os.environ["PR_NUMBER"]

status_c = '✅'
status_i = '❌'

# score table
s = []

# load script
with open('03_instructional_team/autograder/output.txt', 'r') as f:
    script_rslt = f.read()

script_rslt = script_rslt.split('\n+')
script_rslt = [{
    'command': x.split('\n')[0][1:].strip(),
    'output': x.split('\n')[1:]
} for x in script_rslt]

############################################################################################################
############################################################################################################
# step 1: check if required directories exist
isdir = [os.path.isdir(f'{base_dir}/dir{i}') for i in range(1, 4)]
if all(isdir):
    s.append({'question': 1, 'status': 1})
else:
    s.append({
        'question': 1,
        'status': 0,
        'comment': 'missing required directories'
    })

############################################################################################################
# step 2: check that the ls command was run
# if output contains "+ ls" followed by a line containing assignment.sh, then correct
indx = [i for i, x in enumerate(script_rslt) if x['command'].startswith('ls')]
if len(indx) > 0:
    if any([('assignment.sh' in script_rslt[i]['output']) and all(
        [f'dir{n:.0f}' in script_rslt[i]['output'] for n in range(1, 6)])
            for i in indx]):
        s.append({'question': 2, 'status': 1})
    else:
        s.append({
            'question': 2,
            'status': 0,
            'comment': '`ls` command run in the wrong directory'
        })
else:
    s.append({'question': 2, 'status': 0, 'comment': '`ls` command not run'})

############################################################################################################
# step 3: check that the 5 specified files were created in dir2
file_names = [f'dir2/file{i}.txt' for i in range(1, 6)]

touch_commands = [
    x['command'] for x in script_rslt if x['command'].startswith('touch')
]
command_run = [any([x in f for f in touch_commands]) for x in file_names]

# file_exists = [os.path.isfile(f'{base_dir}/dir2/file{i}.txt') for i in range(1, 6)]
if all(command_run):
    s.append({'question': 3, 'status': 1})
else:
    print(file_names)
    print(touch_commands)
    print(command_run)
    s.append({
        'question': 3,
        'status': 0,
        'comment': 'missing required files in `dir2`'
    })

############################################################################################################
# step 4: check that dir2/file3 contains "hello world"
if os.path.isfile(f'{base_dir}/dir2/file3.txt'):
    with open(f'{base_dir}/dir2/file3.txt', 'r') as f:
        file3 = f.read()
    if re.sub(r'[^a-z]', '', file3.lower()) == 'helloworld':
        s.append({'question': 4, 'status': 1})
    else:
        s.append({
            'question': 4,
            'status': 0,
            'comment': '`dir2/file3.txt` does not contain "Hello, World!"'
        })
else:
    s.append({
        'question': 4,
        'status': 0,
        'comment': '`dir2/file3.txt` does not exist'
    })

############################################################################################################
# step 5: check that dir2/file3 contains "hello world"
# check that cat was run on dir2/file3
indx = [i for i, x in enumerate(script_rslt) if x['command'].startswith('cat')]
if len(indx) > 0:
    if any([f'dir2/file3.txt' in script_rslt[i]['command'] for i in indx]):
        s.append({'question': 5, 'status': 1})
    else:
        s.append({
            'question': 5,
            'status': 0,
            'comment': '`cat` command run on the wrong file'
        })
else:
    s.append({'question': 5, 'status': 0, 'comment': '`cat` command not run'})

############################################################################################################
# step 6: check that dir2/file4 was deleted with rm
# check that rm was run on dir2/file4
indx = [i for i, x in enumerate(script_rslt) if x['command'].startswith('rm')]
if len(indx) > 0:
    if any([f'dir2/file4.txt' in script_rslt[i]['command'] for i in indx]):
        s.append({'question': 6, 'status': 1})
    else:
        s.append({
            'question': 6,
            'status': 0,
            'comment': '`rm` command run on the wrong file'
        })
else:
    s.append({'question': 6, 'status': 0, 'comment': '`rm` command not run'})

############################################################################################################
# step 7: check that dir4 and dir5 were deleted
# check that rm was run on dir4 and dir5
indx = [i for i, x in enumerate(script_rslt) if x['command'].startswith('rm')]
if len(indx) > 0:
    if any(['dir4' in script_rslt[i]['command'] for i in indx]) and any(
        ['dir5' in script_rslt[i]['command'] for i in indx]):
        s.append({'question': 7, 'status': 1})
    else:
        s.append({
            'question': 7,
            'status': 0,
            'comment': '`rm` command run on the wrong directory'
        })

else:
    s.append({'question': 7, 'status': 0, 'comment': '`rm` command not run'})

############################################################################################################
# step 8: check that ls was run to verify deletion of dir4 and dir5
# check that ls was run
indx = [i for i, x in enumerate(script_rslt) if x['command'].startswith('ls')]
if len(indx) > 0:
    indx = indx[-1:]
    if any([
            'assignment.sh' in script_rslt[i]['output'] for i in indx
    ]) and not (any(['dir4' in script_rslt[i]['output'] for i in indx])
                or any(['dir5' in script_rslt[i]['output'] for i in indx])):
        s.append({'question': 8, 'status': 1})
    else:
        s.append({
            'question': 8,
            'status': 0,
            'comment': '`ls` command run on the wrong directory'
        })

else:
    s.append({'question': 8, 'status': 0, 'comment': '`ls` command not run'})

############################################################################################################
############################################################################################################

### Postprocessing ###
df = pd.DataFrame(s)
df.fillna('', inplace=True)

# compute percentage correct
correct = df['status'].sum()
total = df.shape[0]

# output the score table
df['status'] = df['status'].replace({1: status_c, 0: status_i})
df.to_markdown(github_step_output, index=False)

# also display markdown to console
render_md = df.to_markdown(index=False)
print(render_md)

# create GitHub comment with markdown
headers = {
    "Authorization": f"Bearer {github_token}",
    "Accept": "application/vnd.github+json"
}
requests.post(
    f"https://api.github.com/repos/{github_repo_owner}/{github_repo_name}/issues/{github_pr_number}/comments",
    json={"body": "## Autograder results\n" + render_md},
    headers=headers)

if correct == total:
    print('All tests passed!')
    exit(0)
else:
    print(f'Only {correct}/{total} tests passed.')
    exit(0)
