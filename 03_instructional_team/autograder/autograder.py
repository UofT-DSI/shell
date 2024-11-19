import pandas as pd
import os
import requests
import re
import glob
import subprocess

# get environment variables for output
github_step_output = os.environ['GITHUB_STEP_SUMMARY']
github_token = os.environ["GITHUB_TOKEN"]
github_repo_owner = os.environ["REPO_OWNER"]
github_repo_name = os.environ["REPO_NAME"]
github_repo_branch = os.environ["REPO_BRANCH"]
github_pr_number = os.environ["PR_NUMBER"]
working_dir = os.environ["WORKING_DIR"]

status_c = '✅'
status_i = '❌'


# functions
def is_commit_in_branch(owner, repo, branch, commit_id, token=None):
    """
    Check if a commit ID is in the history of a branch in a GitHub repository.

    :param owner: Repository owner's username.
    :param repo: Repository name.
    :param branch: Branch name.
    :param commit_id: The commit SHA to check.
    :param token: (Optional) Personal access token for authenticated requests.
    :return: True if the commit is in the branch history, False otherwise.
    """
    url = f'https://api.github.com/repos/{owner}/{repo}/compare/{commit_id}...{branch}'
    headers = {}
    if token:
        headers['Authorization'] = f'token {token}'

    response = requests.get(url, headers=headers)

    if response.status_code != 200:
        print(f"Error: Unable to compare commits. HTTP Status Code: {response.status_code}")
        print(f"Message: {response.json().get('message', '')}")
        return False

    data = response.json()
    status = data.get('status')

    if status in ('ahead', 'identical'):
        print(f"Commit {commit_id} is in the history of branch {branch}.")
        return True
    else:
        print(f"Commit {commit_id} is NOT in the history of branch {branch}.")
        return False

# score table
s = []

# load script output
with open(working_dir + '_output.txt', 'r') as f:
    script_rslt = f.read()

script_rslt = script_rslt.split('\n+')
script_rslt = [{
    'command': x.split('\n')[0][1:].strip(),
    'output': x.split('\n')[1:]
} for x in script_rslt]

qn = 0

############################################################################################################
# Step 1: Check if 'data' directory exists
qn += 1
if os.path.isdir(os.path.join(working_dir, 'data')):
    s.append({'question': qn, 'status': 1})
else:
    s.append({'question': qn, 'status': 0, 'comment': 'data directory does not exist'})

############################################################################################################
# Step 2: Check that 'rawdata' directory was moved to 'data/raw'
qn += 1
if os.path.isdir(os.path.join(working_dir, 'data/raw')) and not os.path.exists(os.path.join(working_dir, 'rawdata')):
    s.append({'question': qn, 'status': 1})
else:
    s.append({'question': qn, 'status': 0, 'comment': 'rawdata not moved to data/raw'})

############################################################################################################
# Step 4: Check that 'ls data/raw' command was run
qn += 1
indx = [i for i, x in enumerate(script_rslt) if x['command'].startswith('ls')]
if len(indx) > 0:
    if any(['data/raw' in script_rslt[i]['command'] for i in indx]):
        s.append({'question': qn, 'status': 1})
    else:
        s.append({
            'question': qn,
            'status': 0,
            'comment': '`ls` command run on wrong directory'
        })
else:
    s.append({'question': qn, 'status': 0, 'comment': '`ls` command not run'})

############################################################################################################
# Step 5: Check that in 'data/processed', the directories server_logs, user_logs, and event_logs were created
qn += 1
dirs = [
    'data/processed/server_logs', 'data/processed/user_logs',
    'data/processed/event_logs'
]
if all([os.path.isdir(os.path.join(working_dir, d)) for d in dirs]):
    s.append({'question': qn, 'status': 1})
else:
    missing_dirs = [d for d in dirs if not os.path.isdir(os.path.join(working_dir, d))]
    s.append({
        'question': qn,
        'status': 0,
        'comment': f'Missing directories: {", ".join(missing_dirs)}'
    })

############################################################################################################
# Step 6: Check that server log files were copied from 'data/raw' to 'data/processed/server_logs'
def check_logs(log_type):
    raw_logs = glob.glob(os.path.join(working_dir, f'data/raw/*{log_type}*.log'))
    processed_logs = glob.glob(os.path.join(working_dir, f'data/processed/{log_type}_logs/*'))
    if len(raw_logs) == 0:
        return {
            'status': 0,
            'comment': f'No {log_type} log files in data/raw'
        }
    else:
        raw_log_files = [os.path.basename(f) for f in raw_logs]
        processed_log_files = [os.path.basename(f) for f in processed_logs]
        if all([f in processed_log_files for f in raw_log_files]):
            return {'status': 1}
        else:
            return {
                'status':
                0,
                'comment':
                f'Missing files in data/processed/{log_type}_logs'
            }

# Check server logs
qn += 1
result = check_logs('server')
if result['status'] == 1:
    s.append({'question': qn, 'status': 1})
else:
    s.append({'question': qn, 'status': 0, 'comment': result['comment']})

############################################################################################################
# Step 7: Check that user logs and event logs were copied appropriately
qn += 1

result_user = check_logs('user')
result_event = check_logs('event')

if result_user['status'] == 1 and result_event['status'] == 1:
    s.append({'question': qn, 'status': 1})
else:
    comments = []
    if result_user['status'] == 0:
        comments.append(result_user['comment'])
    if result_event['status'] == 0:
        comments.append(result_event['comment'])
    s.append({
        'question': qn,
        'status': 0,
        'comment': '; '.join(comments)
    })

############################################################################################################
# Step 8: Check that files containing 'ipaddr' in the filename were removed from 'data/raw' and 'data/processed/user_logs'
qn += 1

ipaddr_files_raw = glob.glob(os.path.join(working_dir, 'data/raw/*ipaddr*'))
ipaddr_files_user_logs = glob.glob(os.path.join(working_dir, 'data/processed/user_logs/*ipaddr*'))

if not ipaddr_files_raw and not ipaddr_files_user_logs:
    s.append({'question': qn, 'status': 1})
else:
    comments = []
    if ipaddr_files_raw:
        comments.append('One or more files with ipaddr in data/raw not removed.')
    if ipaddr_files_user_logs:
        comments.append(
            'One or more files with ipaddr in data/processed/user_logs not removed')
    s.append({'question': qn, 'status': 0, 'comment': '; '.join(comments)})


############################################################################################################
# Step 9: Check that 'data/inventory.txt' was created and contains all files in 'data/processed' subfolders
qn += 1

if os.path.isfile(os.path.join(working_dir, 'data/inventory.txt')):
    with open(os.path.join(working_dir, 'data/inventory.txt'), 'r') as f:
        inventory_files = [line.strip() for line in f.readlines()]

    # Now, find all files in 'data/processed' and its subfolders
    processed_files = []
    for root, dirs, files in os.walk(os.path.join(working_dir, 'data/processed')):
        # remove working_dir from start of root
        root = root[len(working_dir)+1:]

        for name in files:
            processed_files.append(name)

    foldername_in_inventory = ['data/processed' in x for x in inventory_files]
    files_in_inventory = [any([f in x for x in inventory_files]) for f in processed_files]

    if foldername_in_inventory and all(files_in_inventory):
        s.append({'question': qn, 'status': 1})
    else:
        s.append({
            'question': qn,
            'status': 0,
            'comment': 'data/inventory.txt does not contain all files in data/processed'
        })
else:
    s.append({
        'question': qn,
        'status': 0,
        'comment': 'data/inventory.txt does not exist'
    })

############################################################################################################
# Step 10: Check if the coworker's commit ID is in the commit history
qn += 1
commit_id = '4207a6b14ce5624a8a3d30c5338efecb6fea20ac'

try:
    # Check if commit_id is in git rev-list HEAD using grep and wc -l
    result = is_commit_in_branch(github_repo_owner, github_repo_name, github_repo_branch, commit_id, github_token)
    if result:
        s.append({'question': qn, 'status': 1})
    else:
        s.append({'question': qn, 'status': 0, 'comment': f'Commit {commit_id} from `coworker-changes` branch not found in commit history'})

except Exception as e:
    s.append({'question': qn, 'status': 0, 'comment': f'Error checking git commit history.'})
    print(f"Error checking git commit history: {e}")


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
