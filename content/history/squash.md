Squashing Commits
-----------------

### What Does It Mean to Squash Commits? ###

Have you ever made several small commits while debugging something?
Ever wanted to join all those commits into a final, good commit?

That's what squashing is.

<div class="notes">

Another common reason to squash commits is when contributing to an
open source project.  Whether you are adding a new feature or fixing a
bug, project maintainers prefer that patches (or pull requests)
contain a single commit.

This keeps the project's commit history clean and easy to read.

</div>

### Squashing Commits with a Rebase ###

To squash commits:

  #. Start an interactive rebase for all commits to squash

  #. Leave the first listed commit as "pick"

  #. Change all remaining commits to "squash"

  #. Exit your text editor

(Note: If you want to rebase all commits you will need to give the
`--root` flag to the `rebase` command.)

### Exercise: Squashing Commits ### {#ex-squash}

<div class="notes">

Goal: Practice using `git rebase` to squash several commits into a
single commit.

</div>

  #. Change to the following directory:

        repos/basic

  #. Create a branch that starts at the commit named `merge-start`

        $ git checkout -b NAME merge-start

  #. Take note of the commit history

  #. Start an interactive rebase with the first commit in the history

  #. Squash all commits into the first listed commit

  #. Review the commit history
