Choosing Between Submodules and Subtrees
----------------------------------------

### Submodules vs. Subtrees ###

Submodules:

  * Easier to work with

  * Pushing/pulling works as expected

  * Need to watch out for a detached `HEAD`

  * Need to remember to update after a pull

Subtrees:

  * Best when you don't plan on editing files in the subtree

  * A push can be rejected for non-obvious reasons

  * Never need to worry about detached `HEAD` or updating
