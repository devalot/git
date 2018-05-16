Interactive Rebasing
--------------------

### Using the Rebase Command Interactively ###

When you want to have full control of the rebase process you can perform
an interactive rebase instead.  An interactive rebase allows you to:

  * Select a range of commits to rewrite (start with the *parent* of
    the commit you want to start with)

  * Optionally stop at each commit so you can change the commit
    message or add more files

  * Squash multiple commits into a single commit (we'll do this later)

  * Run a command after stopping on specified commits

### Starting an Interactive Rebase ###

After selecting a range of commits, start the rebase with either the
`--interactive` flag or the corresponding short version: `-i`.  Here's
an example:

~~~
$ git rebase -i HEAD~3
~~~

The rebase command will start your text editor with a rebase script
where you can specify what you want to do with each commit in the
given range.

(Note: Remember, you are rewriting the commit history.)

### Rebase Order and Commands ###

The rebase script allows you to perform several actions:

  * `pick`: Keep the commit as is

  * `edit`: Stop and amend the commit

  * `squash`: join commit to preceding commit

  * Reorder script lines: reorder commits

  * Delete script lines: delete commits

### Overall Flow of an Interactive Rebase ###

  #. Pick a range of commits you want to rewrite

  #. Edit the rebase script and exit the text editor

  #. Do necessary work on each commit, then continue the rebase

### Exercise: Interactive Rebasing ### {#ex-rebase}

<div class="notes">

Goal: Practice editing commits by performing an interactive rebase.

</div>

  #. Change to the directory holding a clone of the following
     repository:

        repos/basic.git

  #. Create a branch that starts at the commit named `merge-start`

  #. Interactively edit the commit which has the message "Add a
     version number"

  #. Amend the commit when the rebase stops on it:

        $ git commit --amend

  #. Resume the rebase:

        $ git rebase --continue
