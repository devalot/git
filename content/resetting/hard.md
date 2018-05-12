Resetting the Working Directory
-------------------------------

### Performing a Hard Reset ###

A *hard* reset will:

  * Move `HEAD` back to the specified commit

  * Move the staging area back to the specified commit

  * Update the working directory to the specified commit

(Warning: A hard reset **can delete files** from your working
directory.  It's a good idea to commit or stash changes before doing a
reset.)

### Exercise: Hard Rest ### {#ex-hard}

<div class="notes">

Goal: Practice resetting all three trees so that we restore them to a
previous commit.  We'll also see how stage changes and modifications
to the working directory are **lost** during a hard reset.

</div>

  #. Change to the following directory:

        repos/basic

  #. Create a branch that starts at the commit named `merge-start`

        $ git checkout -b NAME merge-start

  #. Use `git log --oneline` to review the commit history

  #. Use `git reset --hard` to back up 2 commits:

        $ git reset --hard HEAD~2

  #. Use `git log --oneline` to see how the history changed

  #. Use `git status` to review the staging area and working directory

  #. Notice that the working directory was also changed
