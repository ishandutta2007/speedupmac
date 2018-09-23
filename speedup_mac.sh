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

echo "#16. Disable Auto-restore in Preview and QuickTime"
defaults write com.apple.Preview NSQuitAlwaysKeepsWindows -bool FALSE

echo "#17. Use the 2D Dock"
defaults write com.apple.dock no-glass -boolean YES

echo "#18. Clear Out Font Caches"
atsutil databases -remove

echo "Make sure Mac-cli is installed(https://github.com/guarinogabriel/Mac-CLI)"
echo "Updating Mac-cli"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/guarinogabriel/mac-cli/master/mac-cli/tools/update)"

echo "#19. Cleanup Xcode files to free up hard disk space"
mac xcode:cleanup

echo "#20. Cleanup Trash"
mac trash:empty

echo "Restarting Mac"
#mac restart

