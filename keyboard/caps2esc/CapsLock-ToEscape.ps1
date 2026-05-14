# Run PowerShell as Administrator
# Reboot afterwards.

# To verify before and afterward:
Get-ItemProperty `
  -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Keyboard Layout"
return

# Or:

reg query "HKLM:\SYSTEM\CurrentControlSet\Control\Keyboard Layout" /v "Scancode Map"


$hex = @(
  0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,
  0x02,0x00,0x00,0x00,
  0x01,0x00,0x3A,0x00,	# scancodes: 01 00 = Escape  3A 00 = CapsLock
  0x00,0x00,0x00,0x00
)

Set-ItemProperty `
  -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Keyboard Layout" `
  -Name "Scancode Map" `
  -Value ([byte[]]$hex)

	# 3A 00 = CapsLock scancode
	# 01 00 = Escape scancode

# To verify before and afterward:
Get-ItemProperty `
  -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Keyboard Layout"
return

# Scancode Map  manually:
# Open Registry Editor: Win type 'reg' enter

# Navigate to: HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout
# Important: Keyboard Layout NOT Keyboard Layouts
# Create a new Binary Value named: Scancode Map
# Set its value to:
# 00 00 00 00 
# 00 00 00 00
# 02 00 00 00
# 01 00 3A 00
# 00 00 00 00

# Click OK
# Reboot (Required)

# CapsLock should behave as Escape everywhere, including:
#terminals
#vim/nvim
#browsers
#login screen

#This disables normal CapsLock functionality entirely.
#It works at a low level, so it is generally more reliable than AutoHotkey remaps.
#This is equivalent to the common Linux/XKB “Caps as Esc” setup many vim/dwm users use.


# To remove the remap later:
#Remove-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Keyboard Layout" `
#  -Name "Scancode Map"

