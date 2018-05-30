Introduction to Resetting
-------------------------

### What a Reset Can Affect ###

Before figuring out what a `git reset` is, let's first talk about what
it can change:

  * The working directory: the project's files

  * The index: what changes will be in your next commit

  * `HEAD`: the tip of the current branch

### What is a Reset? ###

A `git reset` changes the state of one or more trees.  It's meant as a
permanent change unlike `git checkout`.

There are three types of a reset:

  * Soft (only change the tip of the current branch)

  * Mixed (soft + change the index)

  * Hard (mixed + update the working directory)

(Note: Like with rebase, a reset will change your Git history.  You
should only do this for unpublished commits.)
