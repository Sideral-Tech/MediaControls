# Simple PowerShell module to controll songs from the Terminal

## Introduction

This module is a simple PowerShell module to controll songs from the Terminal by sending emulated virtual key keystrokes.

### Installation

Go to your PowerShell console and type the following command:

````powershell

    cd %USERPROFILE%/Documents/PowerShell/Modules
    git clone https://github.com/alexandreteles/MediaControls.git

````

Then edit your PowerShell profile and add the following line:

````powershell
    Import-Module MediaControls
````

### Usage

```powershell

    PlayPause # Play or pause the current song

    StopMusic # Stop the current song

    NextSong # Play the next song

    PreviousSong # Play the previous song

    VolumeUp # Increase the system volume

    VolumeDown # Decrease the system volume

    MuteSound # Mute the sound system-wide

```
