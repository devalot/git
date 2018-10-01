Revision Shortcuts
------------------

### Specifying Revisions ### {#revs}

Examples of absolute revisions
  : `f259764`, `feature`, `HEAD`, `@`

First parent of a commit
  : `f259764^` *or* `f259764~1`

Grandparent of a commit
  : `f259764~2`

Entries from the reflog
  : `master@{yesterday}`, `HEAD@{5}`

Ranges (useful for generating diffs)
  : `1cfd75c..0ee2723`

### Exercise: Using `git rev-parse` ### {#ex-revparse}

  #. Change to the directory holding a clone of the following
     repository:

         repos/basic.git

  #. Use the following command to see the commit history:

         $ git log --oneline

  #. Experiment with `git rev-parse`, for example:

         $ git rev-parse HEAD
