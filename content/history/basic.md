Reviewing the Commit History
----------------------------

### Accessing the Commit Log ###

The easiest way to review the commit history is by viewing the output
from the `git log` command.  To get a compact commit listing use the
following command:

~~~
$ git log --oneline
~~~

Try it out!

### Getting More Detail from the Log ###

The Log command supports many options for controlling its output.  The
three most common ways of calling it are:

  #. Basic details with full commit message:

         $ git log

  #. Single line output with commit subject:

         $ git log --oneline

  #. Basic details with `diff` output:

         $ git log --patch

### Customizing the Commit Log ###

We can also fully customize the output of the log command:

~~~
$ git log \
  --pretty=format:'%Cgreen%h%Creset %Cred%cd%Creset %Cblue%ae%Creset %s %d'
~~~

(Note: We'll see later how we can create aliases for these complicated
commands.)

### Searching for a Commit ###

The log command can be used to search the commit history for changes
involving a string:

  * Find commits that added or removed lines containing `printf`:

         $ git log -G printf

  * The same, but with regular expressions:

         $ git log -G 's?printf'

  * Must change the number of occurrences:

         $ git log -S printf

### The Reference Log ###

Git also keeps a temporary history file which tracks every change you
make to `HEAD`.  It's call the *reflog*:

~~~
$ git reflog
~~~

To see the history of all branches you've worked on:

~~~
$ git reflog --all
~~~

Reference log with dates:

~~~
$ git log -g --pretty=format:"%h %cd %gd %gs"
~~~

(Entries in the reflog are automatically removed after 90 days.)
