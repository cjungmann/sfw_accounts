# SFW_Accounts Project

Part of a continuing effort to document Schema Framework solutions to
challenging data models.

This project will show how to use a two-field primary key.  Each record
will have an account ID and a record ID, allowing each account to begin
records counts at ID=1.

## Coding Considerations

- **Preserved Generated Files**  From the *gsf* to the *sql* and *srm*
  files, customized interactions in the project require enhancements
  that cannot be automatically generated, so it becomes necessary to
  keep the files and scripts around.

- **Special ID assignment handling.** *AUTO_INCREMENT* is not possible
  when the row ID is not unique.  This project shows one way to assign
  ID values.

- **Session Account ID Variable**  This project takes advantage of the
  *Session Links* in [gensfw](https://cjungmann.com/gensfw.git) which
  applies a session variable to fill procedure parameters.

- Other features will be highlighted as the project develops.

## New Project Features

Each project, so far, improves the setup scripts.  This project
moves the scripts, *setup* and *setup_apache* to the project root
directory for better visibility, renaming to *sql* what was the *setup*
directory to better describe its contents.
