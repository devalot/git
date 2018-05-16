Deleting Branches
-----------------

### Safely Deleting Branches ###

If a branch has been pushed or merged it can be safely deleted:

~~~ {.shell}
$ git branch --delete feature

# or, the shortcut...

$ git branch -d feature
~~~

### Deleting Branches with Extreme Prejudice ###

You can delete a branch without any safety checks:

~~~ {.shell}
$ git branch --delete --force feature

# beware of the shortcut:

$ git branch -D feature
~~~

### Recreating a Deleted Branch ###

~~~ {.shell}
$ git branch -D feature
Deleted branch feature (was a18ef32).

$ git branch feature a18ef32
# branch is now restored
~~~

  * As long as the deleted branch's commits have not been pruned by
    the garbage collector you can recover the branch.

<div class="notes">

  * If the branch's previous `HEAD` shows up in the reflog (`git
    reflog`) then it will be expired in 90 days (the default)

  * Use the command to see which commits are set to expire:
    `git fsck --lost-found`

</div>

<!-- FIXME: Add an exercise here -->

### Deleting Remote Branches ###

When you are completely done with a branch you may want to delete your
local copy and any remote copies.  Remote copies can be deleted with
`git push`:

~~~ {.shell}
$ git push --delete origin feature
~~~
