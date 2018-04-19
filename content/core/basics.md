Git Basics
==========

<!-- * Absolute vs. Relative Revisions -->

### Working, Staging, and Repository ### {#trees}

Working Directory:
  ~ The project file as you and your tools see them.

The Staging Area:
  ~ Changes that will be included in the next commit.

The Repository:
  ~ All commits, files, and history information.

### Basic Git Workflow ### {#workflow}

![](../../diagrams/core/workflow.msc)\
<!-- Placeholder -->

### What is a Commit in Git? ### {#commit}

![](../../diagrams/core/commit.dot)\
<!-- Placeholder -->

### Exercise: Viewing the History Log ### {#exercise-log}

  #. Change to the following directory:

        repos/basic

  #. Use the following command to see the commit history:

        $ git log --oneline

  #. Pick a commit and run:

        $ git cat-file -p <commit>

  #. Also `cat-file` the listed tree, then the listed blob

### Specifying Revisions ### {#revs}

Examples of absolute revisions:
  ~ `f259764`, `feature`, `HEAD`, `@`

First parent of a commit:
  ~ `f259764^` *or* `f259764~1`

Grandparent of a commit:
  ~ `f259764~2`

Using a regular expression against the commit message:
  ~ `:/success`

Entries from the RefLog:
  ~ `master@{yesterday}`, `HEAD@{5}`

Ranges (useful for generating `diff`s):
  ~ `1cfd75c..0ee2723`

### Exercise: Using `git rev-parse` ### {#exercise-revparse}

  #. Change to the following directory:

        repos/basic

  #. Use the following command to see the commit history:

        $ git log --oneline

  #. Experiment with `git rev-parse`, for example:

        $ git rev-parse HEAD
