Introduction to GitLab
----------------------

### What is GitLab? ###

![](../../diagrams/frontends/gitlab-logo.svg)\
<!-- Placeholder -->

GitLab is a repository hosting and project management platform.

### Project Management Features ###

  * Git repository hosting (one per project)

  * Issue tracking (bug reports, request features, etc.)

  * User administration (i.e., who can work in a project)

  * Developer workflow management (i.e., branching and merge requests)

  * Milestone tracking and reporting

  * A bunch of other stuff...

Git Repositories on GitLab
--------------------------

### Project Repositories ###

  * Each project has its own Git repository

  * The repository can be managed from the web interface

  * The user interface prominently displays the clone URL

  * We'll talk more about cloning and forking in a bit

### User-Friendly Git Interface ###

From the GitLab web interface you can:

  * View a Git commit log and easily get more details

  * Create branches for working on specific issues

  * Edit files and commit them to the repository

  * Visualize the branch history of a project

  * Manage branches: merge, rebase, delete, etc.

### Forking vs. Cloning ###

  * Cloning is how you create a local copy of an existing repository

  * Forking is GitLab's way of duplicating a project

  * Forking is often used to have a private remote to push to

  * GitLab allows you to merge a branch from a forked repo into the
    original repo

### Accessing a Repository via SSH ###

SSH is the most common way to access a remote repository.  To use SSH
you:

  #. Create a SSH key pair on your local machine (a key pair is made
     up of a public key and a private key)

  #. Configure your computer to use your SSH private key (usually you
     run something called an `ssh-agent` to cache your private key)

  #. Upload your SSH public key to GitLab

Once set up properly, Git will connect to GitLab using SSH and use
your private key to authenticate.

Daily Workflow
--------------

### Branching and Forking ###

When working on a bug fix or a new feature you have several options:

  * Clone the main repository and create a topic branch

  * Fork the main repository, clone the fork, then create a topic
    branch

Both methods give you an independent space for working.

(Note: Your company may prefer one method over the other.  GitLab is
generally configured to disallow pushing directly to the `master`
branch.)

### Creating Merge Requests ###

When you have completed your work:

  #. Make sure you have pushed your branch up to GitLab

  #. Sign in to GitLab and go to the original project

  #. Create a new *merge request*

  #. Wait for a project administrator to merge your branch

### Merge Request Details ###

When creating a merge request you have several options you must
specify:

  * What branch do you want to merge into? (This is the destination
    branch.)

  * Should the source branch be deleted after the merge?

  * Should all commits in the source branch be squashed prior to the
    merge?

  * Does the source branch need to be rebased so it will merge cleanly?
