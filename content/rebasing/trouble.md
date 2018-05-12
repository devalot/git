Getting Out of Trouble
----------------------

### Rebasing Published Branches ###

**First, avoid rebasing commits that have been published.**

However, if you must, then keep these items in mind:

  * Rebasing creates *new* commits and *abandons* existing commits

  * Your teammates will see duplicates of all rebased commits

  * Anyone who has based work on rebased commits will be confused and
    will probably end up having a very complicated commit history

  * Those people should run: `git pull --rebase`

### Everyone Must Pull ###

When you rebase published commits *everyone else* should immediately
perform a `git pull --rebase` to update their branches.

This type of pull is smart enough to detect rebased commits and fix
any local commits that relied on them.

You may even want to make this the default kind of pull:

~~~
$ git config --global pull.rebase true
~~~
