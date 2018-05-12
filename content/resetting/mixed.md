Resetting Branches and the Staging Area
---------------------------------------

### Performing a Mixed Reset ###

A *mixed* reset will:

  * Move `HEAD` back to the specified commit

  * Move the staging area back to the specified commit

  * Leave the working directory alone

(This is the default type of reset if you don't use any flags.)

### Exercise: Mixed Reset ### {#ex-mixed}

<div class="notes">

Goal: Practice resetting `HEAD` and the staging area so that we can
back out a commit and leave the working directory intact.

</div>

  #. Change to the following directory:

        repos/basic

  #. Create a branch that starts at the commit named `merge-start`

        $ git checkout -b NAME merge-start

  #. Use `git log --oneline` to review the commit history

  #. Use `git reset --mixed` to back up 2 commits:

        $ git reset --mixed HEAD~2

  #. Use `git log --oneline` to see how the history changed

  #. Use `git status` to review the staging area and working directory

  #. Use `git commit` to create a new commit
