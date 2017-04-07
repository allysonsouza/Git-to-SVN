Git to SVN for WordPress plugins
================================

Moves WordPress plugin files from Git folder structure to SVN in Windows.

### Usage
Open the `git-to-svn.bat` file in some text editor and change the variables in
config section, to match your plugin slug, version and SVN directory path.

## Config Example
```bat
SET plugin=hello-dolly :: Plugin slug, will be name of the folder in svn
SET version=1.0.0 :: Plugin version number, used to create the tag folder in svn
SET svndir=C:\svn\%plugin% :: Plugin dir followed with plugin slug
```

## Running
Put the files into a folder (ex: /git-to-svn) in your plugin repository. Double-clik
the git-to-svn.bat or type git-to-svn in your command-line-interface.
