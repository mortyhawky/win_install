$wallpaper = "A:\win\common\wallpapers\komorebi-6000x4000.jpg"

Add-Type @"
using System.Runtime.InteropServices;

public class Wallpaper {
    [DllImport("user32.dll", SetLastError=true)]
    public static extern bool SystemParametersInfo(
        int uAction,
        int uParam,
        string lpvParam,
        int fuWinIni
    );
}
"@

# 20 = SPI_SETDESKWALLPAPER
# 0x01 | 0x02 = update user profile + broadcast change
[Wallpaper]::SystemParametersInfo(20, 0, $wallpaper, 3)
