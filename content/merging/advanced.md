Advanced Merging
----------------

When merging, Git gives you control over the entire process.  Let's
look at some of the things you should know and may want to change.

### Fast Forward Merges ###

![](../../diagrams/merging/fast-forward.tex)\
<!-- Placeholder -->

  * The current branch is an ancestor of the merge branch

  * No merge is actually needed

  * `HEAD` is moved forward

  * No merge commit is created

  * Disabled with `git merge --no-ff`

  * Forced with `git merge --ff-only`

### Merge Strategies and Options ###

Git includes several merge algorithms known as strategies.  Some of
them allow you to control how they work.

The default (and recommended) merge strategy is *recursive*.  Here are
some options for controlling it:

`ours`
  : Resolve all conflicts using changes from `HEAD`

`theirs`
  : Resolve all conflicts using changes from `MERGE_HEAD`

`ignore-all-space`
  : Don't merge in space changes (see manual for details)

### Passing Options to a Merge Strategy ###

Assuming you want to specify the `ours` option to the default
strategy:

~~~ {.shell}
$ git merge -Xours feature
~~~

### Exercise: Automatically Resolving Conflicts ### {#ex-merge}

<div class="notes">

Goal: Practice advanced merging where we pass options to control the
merge strategy.

We'll be using the `ours` flag and passing it to the recursive
strategy so all conflicts are resolved by choosing the hunk present in
`HEAD`.  Then we'll restart the exercise, this time using the `theirs`
conflict resolution strategy.

</div>

  #. Change to the directory holding a clone of the following
     repository:

         repos/conflicts.git

  #. Create a new branch whose ancestor is the commit before `HEAD`

  #. Merge with the `ours` option

  #. Repeat the above steps, except this time use the `theirs` option

### Stopping a Merge Before the Final Commit ###

If you want a chance to change files before the merge is committed:

~~~ {.shell}
$ git merge --no-commit feature
~~~

... will stop after the merge is complete but before the merge commit
has been created.  Continue using `git commit`.
