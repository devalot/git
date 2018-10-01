Resetting Branch Pointers
-----------------------

### Performing a Soft Reset ###

A *soft* reset will:

  * Move `HEAD` back to the specified commit

  * Keep the index at the current commit

  * Leave the working directory alone

(This is very similar to `git commit --amend`.)

### Exercise: Soft Reset ### {#ex-soft}

<div class="notes">

Goal: Practice resetting `HEAD` so that we back out a commit but leave
the index and working directory intact.

</div>

  #. Change to the directory holding a clone of the following
     repository:

         repos/basic.git

  #. Create a branch that starts at the commit named `merge-start`

         $ git checkout -b NAME merge-start

  #. Use `git log --oneline` to review the commit history

  #. Use `git reset --soft` to back up 2 commits:

         $ git reset --soft HEAD~2

  #. Use `git log --oneline` to see how the history changed

  #. Use `git status` to review the index and working directory

  #. Use `git commit` to create a new commit
