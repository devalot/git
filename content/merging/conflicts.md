Merge Conflicts
---------------

When the two branches you are merging have altered the same things, a
merge conflict arises which you must manually resolve.

### What is a Merge Conflict? ###

  * You are merging two branches that changed the same thing

  * Git doesn't assume one change is more important than the other

  * The merge process is paused and you must resolve the issue

  * After resolving issues, you resume the merge process

### How Git Reports a Merge Conflict ###

~~~ {.text insert="../../files/conflict.message"}
~~~

### What `git status` Shows During a Conflict ###

~~~ {.text insert="../../files/conflict.status"}
~~~

### Merge Conflict Markers ###

~~~ {.c insert="../../files/conflicts.c" token="main"}
~~~

### Resolving Merge Conflicts ###

  #. Edit all files that are *unmerged*

  #. Use `git add` to add them to the staging area

  #. Finish the merge by using `git commit`

### Exercise: Merging with Conflicts ### {#ex-merge}

<div class="notes">

Goal: Practice resolving conflicts when merging one branch into
another.

</div>

  #. Change to the following directory:

        repos/conflicts

  #. Merge the `feature` branch into the `master` branch

  #. Resolve conflicts and finish the merge
