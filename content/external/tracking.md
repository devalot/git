Tracking Branches
-----------------

### What is a Tracking Branch? ###

<!-- FIXME: Need a diagram here -->

A *tracking branch* is linked to a specific remote repository and
branch.

### Creating Tracking Branches ###

If you `git checkout` a branch that has the same name as a remote
branch it will automatically track the remote branch:

~~~ {exec="../../scripts/tracking-branch.sh checkout"}
~~~

### Manually Creating Tracking Branches ###

You can manually create a branch at set its tracking information:

~~~ {exec="../../scripts/tracking-branch.sh manual"}
~~~

### Getting Tracking Information ###

To see tracking information for local branches:

~~~ {exec="../../scripts/tracking-branch.sh get"}
~~~

### Setting Tracking Information ###

To change the tracking information for the current branch:

~~~ {exec="../../scripts/tracking-branch.sh set"}
~~~
