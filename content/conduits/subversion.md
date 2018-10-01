Introduction to the `git svn` Tool
----------------------------------

### Interacting with Subversion ###

Git can communicate with a Subversion repository through a tool called
`git svn`.  It can:

  * Convert a Subversion `checkout` into a Git repository

  * Pull new revisions down from Subversion into Git

  * Push Git commits up to Subversion as revisions

  * All Git commands work as expected

Cloning from a Subversion Repository
------------------------------------

### Creating a Git Repository from Subversion ###

Clone a Subversion repository with full history:

    $ git svn clone <url> <dir>

The above command will `checkout` the Subversion URL `<url>` and
create a new Git repository with the name `<dir>`.

### Trunk, Branches, and Tags ###

Git can work with any Subversion layout.  By default it expects the
de facto layout with `truck`, `branches`, and `tags` folders.  To
override this use one of the following flags to `clone`:

  * `--trunk`
  * `--branches`
  * `--tags`

Fetching and Pushing Revisions
------------------------------

### Pulling Down new Subversion Revisions ###

The `git svn rebase` command is used to pull new revisions from the
Subversion repository into the current branch:

    $ git svn rebase

This will fetch all new commits and rebase the current branch on top
of those commits to preserve a linear history.

### Uploading Git Commits to Subversion ###

The `git svn dcommit` command is used to push changes up to
Subversion:

    $ git svn dcommit

Any Git commits that Subversion doesn't know about will be uploaded as
revisions.  Each Git commit is turned into a single Subversion
revision.

### Exercise: Cloning and Committing ###

<div class="notes">

Goal: Practice interacting with Subversion through the `git svn` tool.

</div>

  #. In the `examples` directory there is a Subversion repository
     named `svn.repo`

  #. Clone the repository with `git svn`:

         $ git svn clone file://<path>/trunk

     (Note: replace `<path>` with a path that makes sense on your
     computer.)

  #. Examine the commit history

  #. Edit a file and then make a commit

  #. Push the commit to Subversion:

         $ git svn dcommit
