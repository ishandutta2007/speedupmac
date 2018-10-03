# from : 10 terminal commands to speed up your Mac | defaults-write.com
#        https://www.defaults-write.com/10-terminal-commands-to-speed-up-macos-sierra-on-your-mac/
echo "#1. Disable animations when opening and closing windows."
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
echo "#2. Disable animations when opening a Quick Look window."
defaults write -g QLPanelAnimationDuration -float 0
echo "#3. Accelerated playback when adjusting the window size (Cocoa applications)."
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001
echo "#4. Disable animation when opening the Info window in Finder (cmd⌘ + i)."
defaults write com.apple.finder DisableAllAnimations -bool true
echo "#5. Disable animations when you open an application from the Dock."
defaults write com.apple.dock launchanim -bool false
echo "#6. Make all animations faster that are used by Mission Control."
defaults write com.apple.dock expose-animation-duration -float 0.1
echo "#7. Disable the delay when you hide the Dock"
defaults write com.apple.Dock autohide-delay -float 0
killall Dock
#Mail applicatie
echo "#8. Disable the animation when you sending and replying an e-mail"
defaults write com.apple.mail DisableReplyAnimations -bool true
defaults write com.apple.mail DisableSendAnimations -bool true
echo "#9. Disable the standard delay in rendering a Web page."
defaults write com.apple.Safari WebKitInitialTimedLayoutDelay 0.25
echo "#10. The keyboard react faster to keystrokes (not equally useful for everyone"
defaults write NSGlobalDomain KeyRepeat -int 0
echo "#11. Cleaning ~/Library/Caches/*"
rm -rf ~/Library/Caches/*
echo "#12. Cleaning /Library/Caches/*"
sudo rm -rf /Library/Caches/*
echo "#13. Rebuilding Spotlight index"
sudo mdutil -E /
echo "#14. Reducing standbydelay time"
sudo pmset -a standbydelay 1080

echo "#15. Disable Auto-restore in Preview and QuickTime"
defaults write com.apple.Preview NSQuitAlwaysKeepsWindows -bool FALSE

echo "#16. Use the 2D Dock"
defaults write com.apple.dock no-glass -boolean YES

echo "#17. Clear Out Font Caches"
atsutil databases -remove

#echo "Make sure Mac-cli is installed(https://github.com/guarinogabriel/Mac-CLI)"
#echo "Updating Mac-cli"
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/guarinogabriel/mac-cli/master/mac-cli/tools/update)"

echo "#18. Cleanup Xcode files to free up hard disk space"
mac xcode:cleanup

echo "#19. Cleanup Trash"
mac trash:empty

echo "#20. Purge content of memory ram and disk cache content"s
sudo purge

echo "#21. NSGlobalDomain"
sudo nvram SystemAudioVolume=" "
defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

echo "#22. Keyboard - Automatically illuminate built-in MacBook keyboard in low light\n"
defaults write com.apple.BezelServices kDim -bool true

echo "#23. Keyboard - Turn off keyboard illumination when computer is not used for 5 minutes\n"
defaults write com.apple.BezelServices kDimTime -int 300

echo "#24. Finder - Show the $HOME/Library folder\n"
chflags nohidden $HOME/Library

echo "#25. Finder - Show hidden files\n"
defaults write com.apple.finder AppleShowAllFiles -bool true

echo "#26. Finder - Show filename extensions\n"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "#27. Finder - Show path bar\n"
defaults write com.apple.finder ShowPathbar -bool true

echo "#28. Finder - Show status bar\n"
defaults write com.apple.finder ShowStatusBar -bool true

echo "#29. Finder - Display full POSIX path as window title\n"
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

echo "#30. Finder - Use list view in all Finder windows\n"
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

echo "#31. Disk Utility - Enable debug menu\n"
defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true
defaults write com.apple.DiskUtility advanced-image-options -bool true

echo "#32. Printer - Expand print panel by default\n"
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

echo "#33. Printer - Automatically quit printer app once the print jobs complete\n"
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

echo "#34. Game Center - Disable Game Center\n"
defaults write com.apple.gamed Disabled -bool true

echo "#35. SoftwareUpdate CriticalUpdateInstall"
run defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1

echo "#36. brew cleanup"
brew cleanup

#echo "#37. Restarting Mac"
#mac restart
