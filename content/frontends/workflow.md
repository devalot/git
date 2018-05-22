### Branching and Forking ###

When working on a bug fix or a new feature you have several options:

  * Clone the main repository and create a topic branch

  * Fork the main repository, clone the fork, then create a topic
    branch

Both methods give you an independent space for working.

(Note: Your company may prefer one method over the other.  The primary
repository is generally configured to disallow pushing directly to the
`master` branch.)

### Creating Pull/Merge Requests ###

When you have completed your work:

  #. Make sure you have pushed your branch up to the remote

  #. Sign in to the web interface and go to the original project

  #. Create a new *pull request* or *merge request*

  #. Wait for a team lead/member to merge your branch

### Pull/Merge Request Details ###

When creating a pull/merge request you have several options you must
specify:

  * What branch do you want to merge into? (This is the destination
    branch.)

  * Should the source branch be deleted after the merge?

  * Should all commits in the source branch be squashed prior to the
    merge?

  * Does the source branch need to be rebased so it will merge cleanly?
