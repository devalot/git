Ignoring Build Artifacts
------------------------

### Why You May Want to Ignore Certain Files ###

There are several types of files you may want Git to ignore:

  * Build artifact files (e.g., object files)

  * Temporary files or directories

  * Log files generated during testing

### Telling Git to Ignore Files ###

  * When you tell Git to ignore a file it will no longer show up in
    the `git status` listing as modified or untracked.

  * Ignore files are listed in the `.gitignore` file as a list of file
    patterns

### Ignoring Files Using Glob Patterns ###

Examples of various glob patterns you can use:

  * Using a file extension glob (these match files at any directory
    depth):

    - `*.o`

    - `*.a`

  * Anchoring a pattern to a specific directory (start with `/`):

    - `/dist/*.o`

    - `/log/*.log`

  * Ignoring entire directories (end in `/`):

    - `log/`

    - `/tmp/`

  * Remove a pattern from the ignore list (start with `!`):

    - `!*.c`
