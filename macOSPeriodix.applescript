##################################################################
# macOSPeriodix
#
# Run macOS periodic maintenance tasks
#
#
# Timo Kahle
# 2014-08-27
#
# Changes
# v1.0 (2014-01-04)
# o Initial version
# 
# v1.1 (2014-08-27)
# + Added Notification when action is done
# o Reduced to run macOS periodic tasks
#
# v1.1.1 (2014-08-30)
# o Fixed minor bug that could lead to the appIcon not being found
# + Added macOS version check
# + Added Notification Center notifications for 10.9 and later
#
#
# v1.2 (2018-09-24)
# o Changed name to macOSPeriodix
# o Exchanged App icon
# o Changed strings from OS X to macOS
# o Updated BundleID
# - Removed obsolete Notification Center check
# + Added check for Min OS version
# 
#
##################################################################

# Variables and Constants
property appName : "macOS Periodix"
property appVersion : "1.2"
property appIcon : "applet.icns"
property TIMEOUT_SEC : 3600 -- 60 minutes

# Dialog texts
property dlg_Description : "Performing the periodic macOS scripts daily, weekly and monthly. Select RUN to run the tasks."
property dlg_Error_CMDFailed : "An error occured during execution of the command. Please try again."
property dlg_Success : "Actions successfully executed."

# Maintenance shell commands (require admin privileges)
property cmd_Periodic : "periodic daily weekly monthly"

property MIN_OS_VERSION : "10.13"

##################################################################


# Main
on run
	
	# Define the app icon for dialogs
	set dlgIcon to (path to resource appIcon)
	set dlgTitle to appName & " (" & appVersion & ")"
	
	if OSVersionSupported() is false then
		display dialog dlg_OSNotSupported with title appTitle & " " & MSG_ERROR with icon stop buttons {BTN_OK} default button {BTN_OK}
		return
	end if
	
	
	#set modeSelection to (choose from list optionList with title appName & " (" & appVersion & ")" with prompt UI_PROMPT_SELECT)
	set myAnswer to display dialog dlg_Description with title dlgTitle buttons {"CANCEL", "RUN"} default button {"RUN"} cancel button {"CANCEL"} with icon dlgIcon
	set myResult to button returned of myAnswer
	
	if myResult = "RUN" then
		set myJobExec to ExecCommandAdmin(cmd_Periodic)
		if myJobExec contains "Error" then
			display notification dlg_Error_CMDFailed as text subtitle myJobExec with title appName & " ERROR"
		else
			# Report success
			display notification dlg_Success as text with title appName
		end if
	end if
	
end run


##################################################################
# Helper functions
##################################################################


# Run a command with admin privileges
on ExecCommandAdmin(thisAction)
	try
		#Introduce timeout to prevent timing out of large transfers
		with timeout of TIMEOUT_SEC seconds
			set returnValue to do shell script (thisAction & " 2>&1") with administrator privileges
		end timeout
		
		return returnValue
	on error errMsg
		return "Error: " & errMsg
	end try
end ExecCommandAdmin


# Retrieve the macOS version
on OSVersionSupported()
	set strOSXVersion to system version of (system info)
	considering numeric strings
		set IsSupportedOSX to strOSXVersion is greater than or equal to MIN_OS_VERSION
	end considering
	
	return IsSupportedOSX
end OSVersionSupported


# Handle onQuit events
on quit
	return
end quit