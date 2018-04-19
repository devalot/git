---
title: "Intermediate Git"

author:
  - name: "Peter J. Jones"
    email: "pjones@devalot.com"
    url: "http://devalot.com"
    twitter: "devalot"

copyright: >
  Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International Public License:
  <https://creativecommons.org/licenses/by-nc-sa/4.0/>

  To license this work for use in a commercial setting contact Peter J. Jones.
---

Introduction to This Course {.unnumbered}
=========================================

Source Code {.unnumbered}
-------------------------

The source code for this course can be found at the following URL:

<https://github.com/devalot/git>

### What's In Store {.unnumbered}

  Day 1                   Day 2
  --------------          --------------
  Git Basics Review       Workflow Management
                          Rest and Checkout
  Branching and Merging   History and Rewriting
  Rebasing                Bisecting
  Cherry Picking          Remotes

Git Review
==========

  <<(../content/core/basics.md)

Branching
=========

  <<(../content/branches/review.md)
  <<(../content/branches/diff.md)
  <<(../content/branches/visualizing.md)
  <<(../content/branches/deleting.md)

Merging
=======

  * Merging one branch into another

  * Resolving merge conflicts

  * Merge strategies

  * Merging remote branches

Rebasing
========

  * A word of caution

  * Rebasing branches

  * Rebasing remote branches

  * Pulling with rebasing

Resetting Trees
===============

  * Introduction to resetting

  * Soft resetting

  * Hard resetting

Reviewing and Editing the Commit History
========================================

  * Reviewing the commit history

  * A word of caution

  * Amending the last commit

  * Squashing commits

Git as a Debugging Tool
=======================

  * Git blame

  * Manual bisecting

  * Automated bisecting

Workflow Management
===================

  * Introduction to workflow management

  * Topic branches and release branches

  * Vincent's branching model and gitflow
    - http://nvie.com/posts/a-successful-git-branching-model/
    - https://jeffkreeftmeijer.com/git-flow/
    - https://github.com/nvie/gitflow

Remote Repositories
===================

  * Listing remotes

  * Adding remotes

  * Fetching from remotes

  * Creating tracking branches
