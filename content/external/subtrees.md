Subtrees
--------

### What are Subtrees? ###

![](../../diagrams/external/subtree.dot)\
<!-- Placeholder -->

Subtrees include the *contents* of one repository into another.

### Adding an External Repository ###

Add a subtree bringing in all of its history:

    $ git subtree add -P <dir> <url> <branch>

Add a subtree but squash its history:

    $ git subtree add --squash -P <dir> <url> <branch>

(Note: As far as Git is concerned, you just added files to the local
repository.)

### Making Changes to a Subtree ###

  * Nothing special, just edit the files in the subtree like any other
    directory in your project.

  * Git sees the changes like all other local changes

### Pushing Commits Upstream ###

When you want to share your changes with upstream:

    $ git subtree push -P <dir> <url> <branch>

You may need to pull changes from upstream first:

    $ git subtree pull -P <dir> <url> <branch>

If there are merge conflicts you may have to resort subtree splitting
and merging.  See the `git-subtree` manual for more details.

### Exercise: Experimenting with Subtrees ### {#ex-subtrees}

<div class="notes">

Goal: Practice using subtrees as a way to mange subprojects.  We're
going to experiment with the following features:

  * Adding another repository as a subtree

  * Making changes to a subtree

  * Pushing changes back to the subproject

</div>

  #. Change to the directory holding a clone of the following
     repository:

         repos/subtrees.git

  #. Alter the `other/main.c` file and commit the change

  #. Notice that all files are local to the repository

  #. Read the `notes.txt` file and then push the subtree
