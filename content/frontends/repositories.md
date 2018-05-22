### User-Friendly Git Interface ###

From the web interface you can:

  * View a Git commit log and easily get more details

  * Create branches for working on specific issues

  * Edit files and commit them to the repository

  * Visualize the branch history of a project

  * Manage branches: merge, rebase, delete, etc.

### Forking vs. Cloning ###

  * Cloning is how you create a local copy of an existing repository

  * A fork is just a clone of the primary repository that stays on the
    remote server

  * Forking is often used to have a private remote to push to

  * You can merge a branch from a fork back into the primary repository

### Accessing a Repository via SSH ###

SSH is the most common way to access a remote repository.  To use SSH
you:

  #. Create a SSH key pair on your local machine (a key pair is made
     up of a public key and a private key)

  #. Configure your computer to use your SSH private key (usually you
     run something called an `ssh-agent` to cache your private key)

  #. Upload your SSH public key using the web interface

Once set up properly, Git will connect to the remote using SSH and use
your private key to authenticate.
