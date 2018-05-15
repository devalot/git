Submodules
----------

### What are Submodules? ###

<!-- FIXME: Need a diagram here -->

Submodules allow you to embed one repository into another.

### Adding an External Repository ###

Use the `git submodule add` command to import another repository.

  #. You need the URL for the other repository, we'll use:

        https://github.com/pjones/emacsrc.git

  #. You need to decide what directory to place the repository into,
     we'll use:

        emacsrc

  #. Add the external repository:

        $ git submodule add \
            https://github.com/pjones/emacsrc.git emacsrc

<!-- git submodule add -->

### Cloning Projects with Submodules ###

When you clone a repository with submodules Git *will not* fetch the
submodules by default.  You have two choices:

  #. Clone then initialize submodules:

        $ git clone <url>
        $ cd <dir>
        $ git submodule update --init

  #. Use a recursive clone:

        $ git clone --recurse-submodules <url>

### Understanding Submodules ###

<!-- FIXME: Need a diagram -->

Project
  : The main repository that is using submodules

Locked Commit
  : Each submodule in a project is locked to a specific commit

Upstream
  : The original repository the submodule was cloned from

### Updating a Submodule ###

After doing a `git pull` the *locked commit* for a submodule may have
changed.  There are two ways to update the submodule:

  #. Update all submodules:

        $ git pull
        $ git submodule update

  #. When doing the pull, fetch submodules too:

        $ git pull --recurse-submodules

<div class="notes">

If you want `git pull` to always fetch submodules you can change your
settings:

    $ git config --global fetch.recurseSubmodules true

</div>

### Updating a Submodule from Its Upstream Source ###

From time to time you may want to bring in upstream changes to your
submodules.  You can do this with `git submodule update`:

    $ git submodule update --remote --checkout

When you do this:

  * The `update` will pull from the upstream's `master` branch by
    default (you can change this with `git config`)

  * `git status` will report whether or not the submodule changed

  * `git diff` will show changes to the locked commit

  * `git diff --submodule` will show a nicer view of this


<div class="notes">

If you want the update command to pull from a different branch you
need to use `git config` to tell it which branch to use:

    $ git config -f .gitmodules submodule.<name>.branch <name>

</div>

### Making Changes to a Submodule ###

Git tracks submodules by keeping them on a *locked commit* and **not a
branch**.  Git reports this as a **detached HEAD**.

Before you work on a submodule you should put it on a branch.  You
have several options:

  * Bring the submodule up-to-date with its upstream branch:

        $ git submodule update --remote --checkout
        $ cd <dir>
        $ git checkout master

  * Manually move it to a branch and pull:

        $ cd <dir>
        $ git checkout master
        $ git pull

### Publishing Changes to Submodules ###

When you are done working on a submodule you will likely want to
publish those changes so other team members can see them.

If you push to your project's upstream before pushing submodule
changes to their upstream you will **break** the repository for
others.

To push the submodule changes you can either:

  #. Push each submodule individually:

        $ git submodule foreach 'git push'

  #. Push the project and submodules at the same time:

        $ git push --recurse-submodules=on-demand

<div class="notes">

To make the push command always push submodules as well change its
default setting:

    $ git config --global push.recurseSubmodules on-demand

</div>

### Exercise: Experimenting with Submodules ### {#ex-submodules}

<div class="notes">

Goal: Practice using submodules as a way to manage a subproject.
We're going to take our time and experiment with the following
features:

  * Playing with a detached `HEAD`

  * Updating a submodule to the locked commit

  * Updating a submodule to its latest upstream commit

  * Pushing changes back to the submodule's upstream

</div>

For each of the following steps you should create a unique branch off
of `master` so you can easily jump back to the previous state.

  #. Use the following repository:

        repos/submodules

  #. Go into the `other` submodule and see what branch it is on

  #. Update the submodule to its latest upstream commit

  #. Commit and push the project

  #. Make a change to the submodule and commit it

  #. Commit to the project and push everything

  #. Add another submodule
