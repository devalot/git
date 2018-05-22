Adding, Renaming, and Removing Files
------------------------------------

### Adding Untracked Files ###

  * When you create a new file in the working directory Git will show
    the file as *untracked*

  * You can see what Git thinks about a file using `git status`:

        $ git status <file>

  * To tell Git to start tracking the file use `git add`:

        $ git add <file>

  * This creates a commit object to hold the file

  * If you change the file you need to use `git add` again

  * To record your change to the repository use `git commit`:

        $ git commit

### Exercise: Adding a New File ### {#ex-add}

<div class="notes">

Goal: Practice adding new files to a Git repository and seeing how Git
responds at each step.

</div>

  #. Change to the directory holding a clone of the following
     repository:

        repos/basic.git

  #. Create a new file called `config.h`

  #. Add some content to the file (any text will do)

  #. Review the output of `git status`

  #. Add the file to the index

  #. Check the output of `git status` again

  #. Commit the change

### Renaming Files ###

Git allows you to rename files in two different ways:

  #. Rename the file any way you want and let Git figure it out.

  #. Use Git to rename the file:

        $ git mv <old> <new>

When you rename files Git will track the rename in the repository.

(Note: If possible, using the `git mv` command is the safest way to
rename a file.)

### Exercise: Renaming a File ### {#ex-mv}

<div class="notes">

Goal: Practice renaming files with and without Git and see how it
response along the way.

</div>

  #. Change to the directory holding a clone of the following
     repository:

        repos/basic.git

  #. Rename the `config.h` file from the previous exercise to `init.h`

  #. Review the output of `git status`

  #. Notice that Git already staged the rename

  #. Commit your change

### Removing Files ###

When you no longer need a file you can remove it by:

  #. Remove the file with any tool, then run `git rm`.

     In this case `git status` will report that the file was deleted
     and `git rm` will stage the removal.

  #. Use `git rm` directly.

     The `git rm` command can delete the file and then stage the
     removal in one step.

### Exercise: Removing a File ### {#ex-rm}

<div class="notes">

Goal: Practice deleting a file and then restoring it.

</div>

  #. Change to the directory holding a clone of the following
     repository:

        repos/basic.git

  #. Remove the `init.h` file

  #. Review the output of `git status`

  #. Notice that the file deletion was staged for you

  #. Commit your changes

  #. Restore the file

### Restoring a Removed File ###

You can always restore a file from a previous commit using the `git
checkout` command:

`git checkout HEAD <file>`
  : Restore `<file>` from the last commit

`git checkout HEAD^ <file>`
  : Restore `<file>` from two commits ago

`git checkout 325a910 <file>`
  : Restore `<file>` from commit `325a910`
