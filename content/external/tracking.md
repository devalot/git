Tracking Branches
-----------------

### What is a Tracking Branch? ###

![](../../diagrams/external/tracking.dot)\
<!-- Placeholder -->

A *tracking branch* is branch that is linked to a specific remote
repository.

### Creating Tracking Branches ###

If you `git checkout` a branch that has the same name as a remote
branch it will automatically track the remote branch:

~~~ {exec="../../scripts/exec-branches.sh checkout"}
~~~

### Manually Creating Tracking Branches ###

You can manually create a branch at set its tracking information:

~~~ {exec="../../scripts/exec-branches.sh manual"}
~~~

### Getting Tracking Information ###

To see tracking information for local branches:

~~~ {exec="../../scripts/exec-branches.sh get"}
~~~

### Setting Tracking Information ###

To change the tracking information for the current branch:

~~~ {exec="../../scripts/exec-branches.sh set"}
~~~
