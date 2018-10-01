Fixing Mistakes
---------------

### Fixing the Last Commit ###

You finish creating a commit and then realize:

  * Forgot to add a file to the index

  * You have typos in your commit message

  * etc.

Before pushing the commit you can edit it:

    $ git commit --amend


### The Process of Amending a Commit ###

  #. Add any missing files to the index

  #. Run `git commit --amend`

  #. Edit the commit message if necessary

  #. Exit your text editor

(Note: If you want to remove a file from a commit you will need to
perform a soft reset and create a new commit.)

### Exercise: Amending the Last Commit ### {#ex-amend}

<div class="notes">

Goal: Practice amending the previous commit in order to reword a
commit message.

</div>

  #. Change to the directory holding a clone of the following
     repository:

         repos/basic.git

  #. Create a branch that starts at the commit named `merge-start`

         $ git checkout -b NAME merge-start

  #. Take note of the last commit hash

  #. Amend the last commit, changing the commit message

  #. Notice that the most recent commit was rewritten

### Unstaging a Modification or File ###

Have you ever staged a file by accident and then wanted to *unstage* it?

    $ git reset HEAD <file>

Or:

    $ git reset -- <file>


(Or, create an *unstage* alias.  We'll do this later.)

### Exercise: Unstaging a File ### {#ex-unstage}

<div class="notes">

Goal: Practice using `git reset` to unstage a file that we no longer
want to be part of the next commit.  Later we'll see how to create an
alias to act as a shortcut for this common task.

</div>

  #. Change to the directory holding a clone of the following
     repository:

         repos/basic.git

  #. Create a branch that starts at the commit named `merge-start`

         $ git checkout -b NAME merge-start

  #. Edit the `main.c` file, making a simple change to it

  #. Stage (`git add`) and unstage (`git reset`) the file

### Restoring a Modified File ###

Have you ever changed a file and wanted to restore a it back to how it
was in the last commit?


    $ git checkout -- <file>

What about its state two commits ago?


    $ git checkout HEAD~2 <file>

### Exercise: Restoring a File ### {#ex-checkout}

<div class="notes">

Goal: Practice using `git checkout` to restore a file from the last
commit.

</div>

  #. Change to the directory holding a clone of the following
     repository:

         repos/basic.git

  #. In the last exercise we changed the `main.c` file, restore it
     back to its previous state

### Exercise: Restoring a File ### {#ex-any-commit}

<div class="notes">

Goal: Practice using `git log` and `git checkout` to restore a file
from any previous version.

</div>

  #. Change to the directory holding a clone of the following
     repository:

         repos/basic.git

  #. Look through the commit history and find the commit that added a
     version number to `main.c`

  #. Restore `main.c` to its content before the version number was added

### Reverting a Commit ###

Sometimes an entire commit needs to be undone.

    $ git revert <commit>

...will create a new commit that reverses the changes in `<commit>`

### Exercise: Reverting a Commit ### {#ex-revert}

<div class="notes">

Goal: Practice using the `git revert` command to undo a specific
commit and see how the repository's history changes.

</div>

  #. Change to the directory holding a clone of the following
     repository:

         repos/basic.git

  #. Create a branch that starts at the commit named `merge-start`

         $ git checkout -b NAME merge-start

  #. Edit the `main.c` file, making a simple change to it

  #. Commit the change

  #. Revert the commit you just created
