Listing Differences Between Branches
------------------------------------

### Viewing Files from Other Branches ###

Sometimes you just want to view a complete file the way it is on
another branch (or revision).  You can do that with `git show`:

~~~ {.shell}
$ git show master:main.c
# [file contents]

$ git show HEAD^:main.c
# [file contents]
~~~

Note: You can use the `--no-pager` option to `git` to dump the entire
file to the terminal without using a pager.

### Using `git diff` with Branch Names ###

See how files changed in `feature` compared to `master`:

~~~ {.shell}
$ git diff master..feature
~~~

<div class="notes">

~~~ {exec="../../scripts/exec-branches.sh diff"}
~~~

----

</div>

  * Compares the tip of `master` with the tip of `feature`

  * Note: uses two dots ("`..`")

  * If `master` has diverged you need to compare specific revisions
    instead

### Using `git diff` with a Merge Base ###

![](../../diagrams/branches/merge-base.tex)\
<!-- Placeholder -->

~~~ {.shell}
$ git merge-base feature master
f259764e2f5a16eae7b33a96a8fb5105df99cbfb
$ git diff f259764..feature
~~~

  * Used when the base branch has diverged

  * The `merge-base` subcommand locates the common ancestor

  * Shortcut: `git diff master...feature` (Note: three dots)
