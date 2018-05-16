Configuring Git
---------------

### The `git config` Tool ###

All Git configuration information is stored in simple text files using
the INI format.  If you don't want to edit files by hand you can use
the `git config` tool to do it for you.

### Setting Your Name and Email Address ###

Before you do anything at all with Git you should tell it your name
and email address.  This information is recorded with each commit you
make.

    $ git config --global user.name "Your Name Here"
    $ git config --global user.email "Your Email Address Here"

### Exercise: Telling Git Who You Are ### {#ex-user}

<div class="notes">

Goal: Ensure basic user settings are configured.

</div>

If you haven't done so previously:

  #. Set you name and email address using `git config`

  #. Verify your settings:

        $ git config --list

### Exercise: Telling Git Which Editor to Use ### {#ex-editor}

<div class="notes">

Goal: Ensure Git can use your favorite text editor.

</div>

If you haven't done so previously:

  #. Tell Git which text editor to use:

        $ git config --global core.editor <program>

     Here are some examples for `<program>`:

     * `emacs`
     * `vi`
     * `"'C:/Program Files/Notepad++/notepad++.exe'"`
     * `"code --wait"`

     Or search the web for instructions for your preferred editor.
