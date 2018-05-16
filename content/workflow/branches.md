Branch Management
-----------------

### Introduction to Branch Management ###

If you don't have a plan it's easy to create a mess of confusing
branches in your repository.  Branch management is a way for all team
members to agree on a plan for:

  * Keeping the `master` branch in a releasable state

  * Creating branches for new features and bug fixes

  * Where to merge these feature branches

  * How to make and record software releases

### Mainline Branches ###

It's generally advisable to have two main branches in your repository:

  * `master` represents an always releasable stable branch

  * `next` or `develop` is where work for the next release goes

Typically you never directly commit to these branches.

### Topic Branches ###

When you need to create a new feature or fix a bug you:

  #. Create a new *topic* branch off of the `next` branch

  #. Work on your branch until it is ready for release

  #. Merge your topic branch back into `next`

(Note: In a lot of cases your topic branch should be pushed back to a
private clone and only show up in the main repository after it is
merged.)

### Release Branches ###

When the time comes to create a release you:

  #. Create a *release* branch from the `next` branch (at this point
     `next` can resume being used for a future release)

  #. Finalize the release on the release branch (i.e. bump the version
     number)

  #. Merge the release branch into `master` and tag the release

  #. Merge the release branch back into `next`

### Tools to Automate Branch Management ###

<div class="notes">

The style of branch management presented in this chapter is not new.
It has its roots in managing Subversion repositories and has been
renewed for Git.

To read more about this recommended way of managing branches you
read [this blog article][git-branching] from Vincent Driessen.

</div>

If you are interested in using this model of branch management you may
be interested in a way to automate it.

That's precisely what [gitflow][] does.

[git-branching]: http://nvie.com/posts/a-successful-git-branching-model/
[gitflow]: https://github.com/nvie/gitflow
