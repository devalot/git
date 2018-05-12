Rebasing with Remote Branches
-----------------------------

### Pulling and Rebasing ###

When rebasing onto a remote branch you have two options:

  #. Use `git fetch` to fetch the remote branch, followed by `git
     rebase` to start the rebase process:

        $ git fetch origin master
        $ git rebase origin/master

  #. Use `git pull --rebase`

        $ git pull --rebase origin master

When `git pull` is given the `--rebase` flag it will do a rebase after
the fetch instead of the usual merge.
