Tagging
-------

### What is a Tag? ###

  * In Git a tag is a pointer to a specific commit object.

  * Typically they are used for recording a software release and
    include details about who made the release.

### Creating Tags ###

To create a tag that points to `HEAD`:

    $ git tag <name>

For release you probably want to create an annotated tag:

    $ git tag -a <name>

You can also:

  * Sign a tag using your GPG private key

  * Create a tag that points at any commit

### Listing Tags ###

Once you have tags in your repository you can list them:

    $ git tag --list

To list tags from a remote you can:

    $ git ls-remote --tags <remote>

### Deleting or Recreating Tags ###

Tags can be safely deleted when no longer needed:

    $ git tag --delete <name>

If you absolutely must recreate an existing tag, and you understand
the problems it might cause, you can:

    $ git tag --force -a <name>

### Branching from a Tag ###

Once a tag is created you can start a new branch off it:

    $ git checkout -b <branch-name> <tag-name>

This is useful for creating a branch to fix a bug in a past release.

### Pushing Tags ###

Which pushing branches to a remote Git will *not* push tags
automatically.  You must do it manually:

    $ git push --tags

### Exercise: Tagging the Current Commit ### {#ex-tag}

<div class="notes">

Goal: Practice creating tags and using the `git tag` tool to list
them.

</div>

  #. Change to the directory holding a clone of the following
     repository:

        repos/basic.git

  #. Create a tag called `v1.1`

  #. Use `git tag --list` to list your tags

  #. Try using `git rev-parse` to see how the tag name resolves

  #. Create a branch starting from the tag

  #. Push the tag back to the `origin` remote

  #. Use `git ls-remote` to confirm the tags were pushed
