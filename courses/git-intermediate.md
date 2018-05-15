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

  * FIXME: Centralized vs. Distributed Repositories

  <<(../content/core/basics.md)

Branching
=========

  <<(../content/branches/review.md)
  <<(../content/branches/diff.md)
  <<(../content/branches/visualizing.md)
  <<(../content/branches/deleting.md)

Merging
=======

  <<(../content/merging/basics.md)
  <<(../content/merging/conflicts.md)
  <<(../content/merging/advanced.md)
  <<(../content/merging/remotes.md)

Rebasing
========

  <<(../content/rebasing/basics.md)
  <<(../content/rebasing/from-ancestor.md)
  <<(../content/rebasing/from-remote.md)
  <<(../content/rebasing/interactive.md)
  <<(../content/rebasing/trouble.md)

Resetting Trees
===============

  <<(../content/resetting/basic.md)
  <<(../content/resetting/soft.md)
  <<(../content/resetting/mixed.md)
  <<(../content/resetting/hard.md)
  <<(../content/resetting/uses.md)

Reviewing and Editing the Commit History
========================================

  <<(../content/history/basic.md)
  <<(../content/history/mistakes.md)
  <<(../content/history/squash.md)

Improving Your Daily Workflow
=============================

  <<(../content/workflow/interactive-staging.md)
  <<(../content/workflow/stashing.md)
  <<(../content/workflow/ignoring.md)
  <<(../content/workflow/aliases.md)

Remote Repositories
===================

  * Listing remotes

  * Adding remotes

  * Fetching from remotes

  * Creating tracking branches

  * Pushing to remotes

  * Pushing tags

Including External Repositories
===============================

  <<(../content/external/submodules.md)
  <<(../content/external/subtrees.md)
  <<(../content/external/comparing.md)

Git as a Debugging Tool
=======================

  <<(../content/debugging/blame.md)
  <<(../content/debugging/bisecting.md)

Workflow Management
===================

  * Introduction to workflow management

  * Topic branches and release branches

  * Vincent's branching model and gitflow
    - http://nvie.com/posts/a-successful-git-branching-model/
    - https://jeffkreeftmeijer.com/git-flow/
    - https://github.com/nvie/gitflow

  * Tagging

Advanced Concepts
=================

  * Git Object Types

  * Content-Addressable Names

  * Pack Files

  * Bundles
