Merging Remote Branches
-----------------------

### Merging a Remote Branch into `HEAD` ###

Let's say you want to merge `origin/master` into `master`:

~~~ {.shell}
$ git pull origin master
~~~

Or more simply:

~~~ {.shell}
$ git pull
~~~

Which is a shortcut for:

~~~ {.shell}
$ git fetch origin
$ git merge origin/master
~~~
