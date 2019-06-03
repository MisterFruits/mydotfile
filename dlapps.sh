for app in \
    "hhttps://app-updates.agilebits.com/product_history/OPM4" \
    "hhttps://www.sublimetext.com/3" \
    "https://www.videolan.org/vlc/index.html" \
    "https://freemacsoft.net/appcleaner/" \
    "https://developer.android.com/studio/" \; do
    killall "${app}" &> /dev/null
done
echo "Done. Note that some of these changes require a logout/restart to take effect."
