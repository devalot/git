Renaming Branches
-----------------

### Safely Renaming Branches ###

A branch can be safely renamed using the `--move` flag:

    $ git branch --move <old> <new>

The above command will rename branch `<old>` to `<new>`.

(Note: Git prevents you from renaming a branch to a name that already
exists.)
