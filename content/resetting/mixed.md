Resetting Branches and the Index
--------------------------------

### Performing a Mixed Reset ###

A *mixed* reset will:

  * Move `HEAD` back to the specified commit

  * Move the index back to the specified commit

  * Leave the working directory alone

(This is the default type of reset if you don't use any flags.)

### Exercise: Mixed Reset ### {#ex-mixed}

<div class="notes">

Goal: Practice resetting `HEAD` and the index so that we can back out
a commit and leave the working directory intact.

</div>

  #. Change to the directory holding a clone of the following
     repository:

         repos/basic.git

  #. Create a branch that starts at the commit named `merge-start`

         $ git checkout -b NAME merge-start

  #. Use `git log --oneline` to review the commit history

  #. Use `git reset --mixed` to back up 2 commits:

         $ git reset --mixed HEAD~2

  #. Use `git log --oneline` to see how the history changed

  #. Use `git status` to review the index and working directory

  #. Use `git commit` to create a new commit
