Rebasing with Local Branches
----------------------------

### How to Rebase a Branch ###

  #. Use `git checkout` to move `HEAD` to the branch you want to
     rebase.  Typically this will be a topic branch.

  #. The index and working directory should be clean.  Commit or stash
     changes as necessary.

  #. Run `git rebase` listing the ancestor branch you want to rebase
     onto.

  #. If there are merge conflicts, resolve them and continue with
     `git rebase --continue`.

### Example Rebase ###

Rebasing `feature` onto `master`:

~~~
$ git checkout feature
Switched to branch 'feature'

$ git rebase master
First, rewinding head to replay your work on top of it...
Applying: ...
...
~~~

### Exercise: Rebasing a Branch ### {#ex-rebase}

<div class="notes">

Goal: Practice rebasing a local topic branch onto its local ancestor.
We'll also review the new commits that Git created.

</div>

  #. Change to the directory holding a clone of the following
     repository:

        repos/basic.git

  #. Create a branch that starts at the commit named `merge-start`

        $ git checkout -b NAME merge-start

  #. Use `git log --oneline` to review the commit history

  #. Rebase onto of the `master` branch

  #. Review the commit history again and identify the rewritten
     commits and the merged commits from `master`

### Exercise: Rebasing with Conflicts ### {#ex-conflicts}

<div class="notes">

Goal: Practice a rebasing a local topic branch onto its local ancestor
like before, but this time in the presence of merge conflicts.

</div>

  #. Change to the directory holding a clone of the following
     repository:

        repos/conflicts.git

  #. Create a branch that starts at the commit named `merge-start`

        $ git checkout -b NAME conflict-start

  #. Use `git log --oneline` to review the commit history

  #. Rebase onto of the `master` branch

  #. Fix the conflict and use `git rebase --continue` to resume

  #. Review the commit history again and identify the rewritten
     commits and the merged commits from `master`
