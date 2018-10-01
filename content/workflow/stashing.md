Saving Changes for Later Use (Stashing)
---------------------------------------

### What is Stashing? ###

Stashing is for those times when you are in the middle of working but
need to switch tasks.  With stashing you can:

  #. Save modifications to tracked files, new files, and staged
     changes

  #. Safely clean your working directory

  #. Come back later and restore the changes from step 1

### Saving Work In Progress without Committing ###

The fastest way to save your work in progress and restore the three
trees to `HEAD`:

    $ git stash

This will leave you with a clean index and working directory.

(Note: You can use the `--message` option to name the new stash
object.  You can also use the `--all` option to capture ignored
files.)

### Listing and Recovering Stashes ###

List stashes:

    $ git stash list

Restore the first stash (`stash@{0}`) and then delete it:

    $ git stash pop

Restore the first stash without deleting it:

    $ git stash apply

### Exercise: Pushing and Popping the Stash ### {#ex-stash}

<div class="notes">

Goal: Practice using `git stash` to save and restore changes to the
index and working directory.

</div>

  #. Change to the directory holding a clone of the following
     repository:

         repos/conflicts.git

  #. Create a branch that starts off the `origin/feature` branch

  #. Reset the index and working directory to `HEAD^`

  #. Create a new stash

  #. Review the index and working directory state

  #. Restore the stash that was previously created
