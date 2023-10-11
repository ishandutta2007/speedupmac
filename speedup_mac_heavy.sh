# from : 10 terminal commands to speed up your Mac | defaults-write.com
#        https://www.defaults-write.com/10-terminal-commands-to-speed-up-macos-sierra-on-your-mac/
echo "#1. Cleaning Apple System Logs will speed up terminal"
sudo rm -rf /private/var/log/asl/*.asl
echo "#2. Disable animations when opening and closing windows."
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
echo "#3. Disable animations when opening a Quick Look window."
defaults write -g QLPanelAnimationDuration -float 0
echo "#4. Accelerated playback when adjusting the window size (Cocoa applications)."
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001
echo "#5. Disable animation when opening the Info window in Finder (cmd⌘ + i)."
defaults write com.apple.finder DisableAllAnimations -bool true
echo "#6. Disable animations when you open an application from the Dock."
defaults write com.apple.dock launchanim -bool false
echo "#7. Make all animations faster that are used by Mission Control."
defaults write com.apple.dock expose-animation-duration -float 0.1
echo "#8. Disable the delay when you hide the Dock"
defaults write com.apple.Dock autohide-delay -float 0
killall Dock
#Mail applicatie
echo "#9. Disable the animation when you sending and replying an e-mail"
defaults write com.apple.mail DisableReplyAnimations -bool true
defaults write com.apple.mail DisableSendAnimations -bool true
echo "#10. Disable the standard delay in rendering a Web page."
defaults write com.apple.Safari WebKitInitialTimedLayoutDelay 0.25
echo "#11. The keyboard react faster to keystrokes (not equally useful for everyone"
defaults write NSGlobalDomain KeyRepeat -int 0

echo "# Backing-up important Caches"
echo "   - Backing-up ~/Library/Caches/pip"
cp -R ~/Library/Caches/pip ~/Library/CachesImportant/.

echo "#12. Cleaning ~/Library/Caches/*"
rm -rf ~/Library/Caches/*
echo "#13. Cleaning /Library/Caches/*"
sudo rm -rf /Library/Caches/*
echo "#14. Rebuilding Spotlight index"
sudo mdutil -E /
echo "#15. Reducing standbydelay time"
sudo pmset -a standbydelay 1080

echo "#16. Disable Auto-restore in Preview and QuickTime"
defaults write com.apple.Preview NSQuitAlwaysKeepsWindows -bool FALSE

echo "#17. Use the 2D Dock"
defaults write com.apple.dock no-glass -boolean YES

echo "#18. Clear Out Font Caches"
atsutil databases -remove

#echo "Make sure Mac-cli is installed(https://github.com/guarinogabriel/Mac-CLI)"
#echo "Updating Mac-cli"
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/guarinogabriel/mac-cli/master/mac-cli/tools/update)"

echo "#19. Cleanup Xcode files to free up hard disk space"
mac xcode:cleanup

echo "#20. Cleanup Trash"
mac trash:empty

echo "#21. Purge content of memory ram and disk cache content"s
sudo purge

echo "#22. NSGlobalDomain"
sudo nvram SystemAudioVolume=" "
defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

echo "#23. Keyboard - Automatically illuminate built-in MacBook keyboard in low light\n"
defaults write com.apple.BezelServices kDim -bool true

echo "#24. Keyboard - Turn off keyboard illumination when computer is not used for 5 minutes\n"
defaults write com.apple.BezelServices kDimTime -int 300

echo "#25. Finder - Show the $HOME/Library folder\n"
chflags nohidden $HOME/Library

echo "#26. Finder - Show hidden files\n"
defaults write com.apple.finder AppleShowAllFiles -bool true

echo "#27. Finder - Show filename extensions\n"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "#28. Finder - Show path bar\n"
defaults write com.apple.finder ShowPathbar -bool true

echo "#29. Finder - Show status bar\n"
defaults write com.apple.finder ShowStatusBar -bool true

echo "#30. Finder - Display full POSIX path as window title\n"
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

echo "#31. Finder - Use list view in all Finder windows\n"
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

echo "#32. Disk Utility - Enable debug menu\n"
defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true
defaults write com.apple.DiskUtility advanced-image-options -bool true

echo "#33. Printer - Expand print panel by default\n"
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

echo "#34. Printer - Automatically quit printer app once the print jobs complete\n"
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

echo "#35. Game Center - Disable Game Center\n"
defaults write com.apple.gamed Disabled -bool true

#echo "#36. SoftwareUpdate CriticalUpdateInstall"
#run defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1

#Carefull: This will uninstall all stuff under /usr/local/Cellar
#echo "#37. brew cleanup"
#brew cleanup

echo "#Restoring only important Caches"
cp -R ~/Library/CachesImportant/pip ~/Library/Caches/.
#echo "#38. Restarting Mac"
#mac restart

echo "#39. Cleanup firefox driver logs\n"
sudo rm -rf /Users/ishandutta2007/geckodriver.log

echo "#40. disable the calendar agent\n"
launchctl unload -w /System/Library/LaunchAgents/com.apple.CalendarAgent.plist

echo "#41. Stop mds_stores\n"
sudo mdutil -a -i off

echo "#42. Reset nvram\n"
sudo nvram -c

echo "Reverting ownership to ishandutta2007\n"
chown -R ishandutta2007 /Users/ishandutta2007/Library/Caches
chown -R ishandutta2007 /Users/ishandutta2007/Library/CachesImportant

echo "#43. Skip the GUI login screen\n"
defaults write com.apple.loginwindow autoLoginUser -bool true

echo "#44. massively increase virtualized macOS by disabling spotlight."
sudo mdutil -i off -a

echo "#45. Set serverperfmode=1 of nvram\n"
sudo nvram boot-args="serverperfmode=1 $(nvram boot-args 2>/dev/null | cut -f 2-)"

echo "#46. Disable heavy login screen wallpaper\n"
sudo defaults write /Library/Preferences/com.apple.loginwindow DesktopPicture ""

echo "#47. Reduce Motion & Transparency\n"
defaults write com.apple.Accessibility DifferentiateWithoutColor -int 1
defaults write com.apple.Accessibility ReduceMotionEnabled -int 1
defaults write com.apple.universalaccess reduceMotion -int 1
defaults write com.apple.universalaccess reduceTransparency -int 1
defaults write com.apple.Accessibility ReduceMotionEnabled -int 1

echo "#48. Enable multi-sessions\n"
sudo /usr/bin/defaults write .GlobalPreferences MultipleSessionsEnabled -bool TRUE
defaults write "Apple Global Domain" MultipleSessionsEnabled -bool true

# #Disable updates (at your own risk!)
# defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticDownload -bool false
# defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool false
# defaults write com.apple.commerce AutoUpdate -bool false
# defaults write com.apple.commerce AutoUpdateRestartRequired -bool false
# defaults write com.apple.SoftwareUpdate ConfigDataInstall -int 0
# defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 0
# defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 0
# defaults write com.apple.SoftwareUpdate AutomaticDownload -int 0

echo "#49. Disable screen locking\n"
defaults write com.apple.loginwindow DisableScreenLock -bool true

echo "#50. Show a lighter username/password prompt instead of a list of all the users\n"
defaults write /Library/Preferences/com.apple.loginwindow.plist SHOWFULLNAME -bool true
defaults write com.apple.loginwindow AllowList -string '*'

echo "#51. Disable saving the application state on shutdown\n"
defaults write com.apple.loginwindow TALLogoutSavesState -bool false

echo "#52. Disable apps from going to sleep at all"
sudo -u "${REAL_NAME}" sudo defaults write NSGlobalDomain NSAppSleepDisabled -bool YES
