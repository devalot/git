Introduction to Git
-------------------

### Centralized Systems: Subversion, Perforce, etc. ###

![](../../diagrams/core/centralized.dot)\
<!-- Placeholder -->

### Distributed Systems: Git, Mercurial, etc. ###

![](../../diagrams/core/decentralized.dot)\
<!-- Placeholder -->

### Centralized vs. Distributed ###

  | Feature    | Centralized    | Distributed |
  |------------+----------------+-------------|
  | Checkout   | Partial        | Full Clone  |
  | Committing | Done on Remote | Local Only  |
  | Push/Pull  | Automatic Push | Manual      |

### Patches vs. Snapshots ###

  * Most version control systems use a set of patches (difference
    between a file before and after it was changed) and each set of
    patches is assigned an incremented ID.

  * When a commit is made in Git it creates a new snapshot of the
    repository and assigns it a SHA1 hash

  * The SHA1 hash is cryptographically secure and is used to verify
    the integrity of the repository

  * Since the commit IDs do not follow one another numerically you
    have to use the `git log` command to see the commit order
