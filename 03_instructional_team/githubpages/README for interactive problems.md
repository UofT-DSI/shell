# Interactive Problems Rendering System

The interactive problem set rendering system was developed by Simeon Wong for the Data Sciences Institute.

The page is served through GitHub pages, and loads problem sets encoded in a YAML file with the following format:
```yaml
title: Problem Set Title
Problems
  - title: Problem 1
    description: Solve this problem
    questiontype: freeform
    solution_template: `example code`
    solutions: Long form solution with explanations

  - title: Problem 2
    description: Solve this problem
    questiontype: parsons
    options:
      - code line 1
      - code line 2
      - code line 3
      - code line 4
    correct_options: [0, [1, 2], 3]
    solutions: Long form solution

  - title: Problem 3
    description: Solve this problem
    questiontype: multiplechoice
    options:
      - option 1
      - option 2
    correct_options: [0]
    solutions: Long form solution
```

This system provides instructors with a convenient way to setup self-contained problem sets hosted entirely within a GitHub repository.

### Setup
1. Copy `03_instructional_team/githubpages/interactive_problems.html` and `.github/workflows/static.yml` into your repository
2. Enable [GitHub Actions](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/enabling-features-for-your-repository/managing-github-actions-settings-for-a-repository#managing-github-actions-permissions-for-your-repository) and [GitHub Pages](https://docs.github.com/en/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site#publishing-with-a-custom-github-actions-workflow)
3. Create a YAML file with your problems [[Example]](/03_instructional_team/githubpages/shell_basics.yml)
4. Create a Markdown file in your `02_activities/homework` folder linking to the interactive problems page [[Example]](02_activities/homework/shell_basics.md)
