# 🚀 SpeedUpMac: Optimize Your macOS Performance! 🚀

A collection of powerful shell scripts designed to supercharge your Mac's performance, clean up junk, and streamline your daily workflow. Say goodbye to a sluggish system and hello to a faster, more responsive macOS experience!

## ✨ Features

*   **System Cleanup:** 🗑️ Clear out accumulated caches, logs, and temporary files to reclaim valuable disk space.
*   **Performance Boost:** ⚡ Optimize UI animations, fine-tune Spotlight indexing, and adjust various system settings for a snappier feel.
*   **Application Management:** 🚀 Efficiently close unneeded background processes, remove components of large applications, and manage browser instances with ease.
*   **Developer Tools Cleanup:** 🛠️ Specifically targets Xcode and other developer-related caches, crucial for developers looking to free up space.
*   **Automated Tasks:** 🔄 Relaunch your favorite browsers or update essential CLI tools with simple commands.

## 🧑‍💻 How to Use

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/your-username/speedupmac.git
    cd speedupmac
    ```
2.  **Make scripts executable:**
    ```bash
    chmod +x *.sh
    ```
3.  **Run a script:**
    Most scripts require superuser privileges (`sudo`) to modify system files and kill processes.
    ```bash
    bash speedup_mac_heavy.sh
    # Or, for a lighter cleanup:
    bash speedup_mac_light.sh
    ```
    Always review the script content before running with `sudo`.

## 📜 Available Scripts

Here's a breakdown of the scripts included and what they do:

*   `speedup_mac_heavy.sh`: Your ultimate Mac optimization tool. This script performs a deep clean and applies a wide array of system tweaks to maximize performance. Ideal for when your Mac feels particularly slow.
*   `speedup_mac_light.sh`: A gentler approach to Mac optimization, perfect for regular maintenance. It cleans logs, caches (selectively), and applies essential performance-enhancing settings without the aggressive approach of the heavy script.
*   `close_processes_except_brave.sh`: Terminates a comprehensive list of common applications and processes, ensuring Brave Browser remains open and unaffected.
*   `close_processes_except_chrome.sh`: Similar to the Brave version, this script closes most applications while keeping Google Chrome running.
*   `exit_processes_and_relaunch_brave.sh`: A convenience script that first closes all processes (except Brave) and then relaunches Brave Browser for a fresh start.
*   `exit_processes_and_relaunch_chrome.sh`: Performs the same function as its Brave counterpart, but for Google Chrome.
*   `relaunch_brave.sh`: Kills all Brave Browser-related processes (including `chromedriver`) and then relaunches Brave Browser. Useful for resolving browser-related issues or freeing up resources.
*   `relaunch_chrome.sh`: Kills all Google Chrome-related processes (including `chromedriver`) and then relaunches Google Chrome.
*   `remove_large_apps.sh`: Assists in uninstalling components of certain large applications like the Mono framework and Android Studio files, helping to free up significant disk space.
*   `update_binaries.sh`: Ensures your `mac-cli` tool is up-to-date. (Requires `mac-cli` to be installed).
*   `progressbar.sh`: A utility script used by other scripts to display a visual progress bar during execution.
*   `killnewtab.sh`: **Note:** This script appears to be designed for Windows systems (using `wmic` and `taskkill`). Its functionality on macOS is not guaranteed and might be unintended.

## 🤝 Contributing

We welcome contributions! If you find ways to improve these scripts, fix bugs, or add new optimizations, please feel free to send us pull requests. Your input helps make SpeedUpMac better for everyone!

### Support:

If you want the good work to continue please support us on

*   [PAYPAL](https://www.paypal.me/ishandutta2007)
*   [BITCOIN ADDRESS: 3LZazKXG18Hxa3LLNAeKYZNtLzCxpv1LyD](https://www.coinbase.com/join/5a8e4a045b02c403bc3a9c0c)


### ✨ Star History

[![Star History Chart](https://api.star-history.com/svg?repos=ishandutta2007/speedupmac&type=date&legend=top-left)](https://www.star-history.com/#ishandutta2007/speedupmac&type=date&legend=top-left)
