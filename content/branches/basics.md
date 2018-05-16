Branching Basics
----------------

Branching allows you to create a new line of development that can
diverge from the main line.  If desired, the two lines can be brought
back together by the merging process.

### Separate Lines of Development ### {#what}

![](../../diagrams/branches/basic.tex)\
<!-- Placeholder -->

  * Branches allow you to work independently of others

  * The default branch in Git is called *master*

  * Branches can be joined back together via *merging*

### What Branch Are You Using? ### {#head}

![](../../diagrams/branches/head.tex)\
<!-- Placeholder -->

  * Git uses a pointer called `HEAD` to track the current branch

  * The `.git/HEAD` file references a branch's head

  * A branch's head is its latest commit ID

### How Do You Create a Branch? ### {#create}

![](../../diagrams/branches/create.tex)\
<!-- Placeholder -->

~~~ {.shell}
$ git branch feature
~~~

  * Creates a branch called `feature`

  * `HEAD` still points at `master`

### How Do You Switch Branches? ### {#switch}

![](../../diagrams/branches/switch.tex)\
<!-- Placeholder -->

~~~ {.shell}
$ git checkout feature
~~~

  * Changes where `HEAD` points

  * (`HEAD` now points to the `feature` branch)

### Exercise: Moving `HEAD` Around ### {#ex-head}

<div class="notes">

Goal: Practice using `git checkout` to move the `HEAD` pointer.

</div>

  #. Change to the following directory:

        repos/basic

  #. List the names of all branches

  #. For each branch:

     #. Check out the branch

     #. Use `git log --oneline` to find the latest commit hash

### Creating and Switching Branches ### {#create-switch}

![](../../diagrams/branches/switch.tex)\
<!-- Placeholder -->

~~~ {.shell}
$ git checkout -b feature
~~~

  * Create a `feature` branch

  * And point `HEAD` at `feature`

### Exercise: Creating Branches ### {#ex-create}

<div class="notes">

Goal: Practice creating and switching branches.

</div>

  #. Change to the following directory:

        repos/basic

  #. Switch to the `master` branch

  #. Create a new branch called `m2`

  #. Switch to the `feature` branch

  #. Create a branch called `f2`

  #. Compare the latest commits on `m2` and `f2`
