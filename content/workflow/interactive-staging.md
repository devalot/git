Interactively Staging Changes
-----------------------------

### What is Interactive Staging? ###

When you give the `--interactive` option to the `git add` command you
enter an interactive shell where you can:

  * See the differences between the index and the working directory

  * Select files to unstage

  * Stage individual patch hunks

### Starting an Interactive Staging Session ###

Anytime you would normally use `git add` or `git rm` to update the
index you can use:

    $ git add --interactive

or:

    $ git add -i

instead.

### Staging Individual Patch Hunks ###

There are two ways to stage individual patch hunks:

  #. Enter the interactive staging tool:

         $ git add -i

  #. Select the `patch` tool:

         What now> patch

Alternatively, you can jump right into the patch tool with:

    $ git add --patch main.c

### Unstaging Individual Patch Hunks ###

If you have staged more changes than you want to commit you can
unstage individual patch hunks:

    $ git reset --patch main.c

This will drop you into the interactive patch tool for unstaging.

### Exercise: Staging Patch Hunks ### {#ex-patch}

<div class="notes">

Goal: Practice interactively staging parts of a file while leaving the
rest of the file unstaged.

</div>

  #. Change to the directory holding a clone of the following
     repository:

         repos/conflicts.git

  #. Create a branch that starts off the `origin/feature` branch

  #. Edit `main.c`; add comments to the top and bottom of the file

  #. Review the difference between the working directory and the index:

         $ git diff

  #. Interactively stage one of the patch hunks by splitting the first
     hunk:

         $ git add -p main.c
         ...
         Stage this hunk [y,n,q,a,d,/,j,J,g,e,?]? s

  #. Review the updated index:

         $ git status
         $ git diff --cached
