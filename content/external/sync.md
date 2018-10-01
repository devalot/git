Synchronizing Objects with Remotes
----------------------------------

### Fetching Objects from a Remote ###

You can fetch all objects from a remote by:

    $ git fetch <remote>

(Note: this fetches objects and places them in the repository but
does not change any branches.)

### Fetching and Updating Branches ###

If you want to fetch objects from a remote and then update your branch
to match upstream you have two choices:

  #. Fetch and then merge:

         $ git fetch <remote>
         $ git merge origin/master

  #. Use `git pull`:

         $ git pull origin master

(Note: if you are on a tracking branch you can use `git pull` without
any arguments.)

### Pushing Objects to Remotes ###

To publish your changes to a remote you can:

    $ git push origin master

This pushes your changes to the origin server's `master` branch.

(Note: if you are on a tracking branch you can use `git push` without
any arguments.)

### Pushing Tags to Remotes ###

Using `git push` won't send your tags to the remote by default.  You
have to use the `--tags` flag:

    $ git push --tags origin
