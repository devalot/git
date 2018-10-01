Simplifying Common Commands with Aliases
----------------------------------------

### What are Aliases ###

  * Just like with your favorite shell, Git supports aliases.

  * When you run a Git command, it will first be looked up as an alias

  * For example:

         $ git unstage main.c

    Could be an alias for:

         $ git reset HEAD -- main.c

### Creating New Aliases ###

The easiest way to create an alias is with the `git config` command:

    $ git config --global alias.unstage "reset HEAD --"

The `git config --global` command simply edits `~/.gitconfig`:

~~~ {.ini}
[alias]
unstage = reset head --
~~~

### Some Useful Aliases ###

~~~ {.ini insert="../../examples/aliases.ini"}
~~~

(Taken from the `examples/aliases.ini` file.)

### Exercise: Create Some Aliases ### {#ex-alias}

<div class="notes">

Goal: Practice creating and using Git aliases as shortcuts for
commonly used commands.

</div>

  #. Take a moment and create some helpful aliases

  #. Pick a repository and test your new aliases
