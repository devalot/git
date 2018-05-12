Making Good Use of the Reset Command
------------------------------------

### Unstaging Changes ###

A reset is most often used to *unstage* a file.  Since the default
type of reset is a mixed reset, and the default commit is `HEAD`, you
can unstage a file using:

~~~
$ git reset -- file.c
~~~

Which is the same as

~~~
$ git reset --mixed HEAD file.c
~~~
