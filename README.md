# Instructions

Clone this repo into Code Builder

## Core Setup

Run by pressing ⇧⌘B and choosing "Set Up Core Code Builder".<br/>

You will be prompted to enter some information in the terminal pane.<br/>

Upon success, your Code Builder environment should be set up to work correctly with Git.


## Optional CLI Update

Run by pressing ⇧⌘B and choosing "Update CLI".<br/>

Upon success, your Code Builder environment should be updated to have the latest Salesforce CLI version.


## Optional Functions Setup

If you set up a JWT Connected App on your org that has a Functions license, you can install this to add shortcut commands for connecting to Functions from Code Builder.<br/>

Edit ```scripts/shell/functions/server-key``` pasting in your JWT private key file contents in place of the ```REPLACE_ME``` placeholder, then save the file.<br/>

Run by pressing ⇧⌘B and choosing "Set Up Functions".<br/>

You will be prompted to enter some information in the terminal pane.<br/>

Now, after restarting your terminal, you have these commands available:<br/>
```fnhublogin```: log into the Functions-licensed hub via JWT<br/>
```fnlogin```: log into Functions via JWT<br/>
```fnstart```: run a function locally (run cmd in function dir)<br/>
```fninvoke```: invoke locally-running function (specify payload string after command)

## Optional Themes and Fonts Setup

Run by pressing ⇧⌘B and choosing "Set Up Themes And Fonts".

Refresh your browser in order for your themes and fonts to take effect.

## Optional Projects Directory Setup

Run by pressing ⇧⌘B and choosing "Set Up Projects Directory".<br/>

Upon success, your Code Builder environment will have a "projects" directory that contains a empty Salesforce project called "default".

## Optional Installation of Shortcuts
Run by pressing ⇧⌘B and choosing "Install Shortcuts".<br/>

Now, after restarting your terminal, you have these commands available:<br/>
```projectsreset```: deletes and re-creates projects directory with empty default project<br/>
```cliupdate```: updates salesforce CLI<br/>

You also have the option to open your home directory (File -> Close Folder, File -> Open Folder..., press "OK" button to open the default folder displayed) and there are now "Build Tasks" to do these same shortcuts as in the terminal:<br/>
⇧⌘B and choose "Reset Projects Directory" to run ```projectsreset```<br/>
⇧⌘B and choose "Update CLI" to run ```cliupdate```<br/>