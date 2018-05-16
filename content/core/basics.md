Git Basics
==========

### Working Directory, Index, and Repository ### {#trees}

Working Directory
  : The project's files as you and your tools see them.

The Index
  : Changes that will be included in the next commit.

The Repository
  : All commits, files, and history information.

(Note: The index is sometimes referred to as the *staging area*.)

### Basic Git Workflow ### {#workflow}

![](../../diagrams/core/workflow.msc)\
<!-- Placeholder -->

### What is a Commit in Git? ### {#commit}

![](../../diagrams/core/commit.dot)\
<!-- Placeholder -->

### Starting Out: Cloning a Repository ###

To get a copy of an existing repository you *clone* it:

    $ git clone <url>

### Exercise: Cloning a Repository ### {#ex-clone}

  #. Change to the following directory:

        repos

  #. Clone the `basic.git` repository:

        $ git clone basic.git

  #. This should have created a `basic` directory

### Exercise: Viewing the History Log ### {#ex-log}

  #. Change to the directory holding a clone of the following
     repository:

        repos/basic.git

  #. Use the following command to see the commit history:

        $ git log --oneline

  #. Pick a commit and run:

        $ git cat-file -p <commit>

  #. Also `cat-file` the listed tree, then the listed blob

### Specifying Revisions ### {#revs}

Examples of absolute revisions
  : `f259764`, `feature`, `HEAD`, `@`

First parent of a commit
  : `f259764^` *or* `f259764~1`

Grandparent of a commit
  : `f259764~2`

Entries from the reflog
  : `master@{yesterday}`, `HEAD@{5}`

Ranges (useful for generating diffs)
  : `1cfd75c..0ee2723`

### Exercise: Using `git rev-parse` ### {#ex-revparse}

  #. Change to the directory holding a clone of the following
     repository:

        repos/basic.git

  #. Use the following command to see the commit history:

        $ git log --oneline

  #. Experiment with `git rev-parse`, for example:

        $ git rev-parse HEAD
