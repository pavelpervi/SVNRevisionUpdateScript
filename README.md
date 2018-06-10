# SVNRevisionUpdateScript
Batch Script that update SVN version in file

## Requirements:
1. TortoiseSVN installed with "command line client tools"
2. Windows that support .NET 2.0 and Powershell (tested on WIN 7)

## Usage:
1. Modify TARGET_PATH_FILE_NAME variable in script to your file name with path where your file located relative to directory where script located.
2. Use $$Revision $$ symbol to mark where you want to see the revision number.
3. Each time you execute svn_version_update.bat, it make modify $$Revision: $$ modify by $$Revision: [current revision number]$$
