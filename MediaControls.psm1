# MEDIA VIRTUAL KEY CODES (https://docs.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
#
# VK_VOLUME_MUTE      0xAD
# VK_VOLUME_DOWN      0xAE
# VK_VOLUME_UP        0xAF
# VK_MEDIA_NEXT_TRACK 0xB0
# VK_MEDIA_PREV_TRACK 0xB1
# VK_MEDIA_STOP       0xB2
# VK_MEDIA_PLAY_PAUSE 0xB3

# USAGE:
# [MediaControls.Class]::Main()

Add-Type @"
    using System;
    using System.Threading;
    using System.Runtime.InteropServices;

    namespace MediaControls {
        public static class PlayPauseSong {
            [DllImport("user32.dll")]
            static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, UIntPtr dwExtraInfo);

            public static void Main() {
                keybd_event((byte)0xB3, 0, 0, UIntPtr.Zero); //KEY DOWN
                keybd_event((byte)0x7E, (byte)0x5D, (uint)0x2, UIntPtr.Zero); //KEY UP
            }
        }
        public static class StopSong {
            [DllImport("user32.dll")]
            static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, UIntPtr dwExtraInfo);

            public static void Main() {
                keybd_event((byte)0xB2, 0, 0, UIntPtr.Zero); //KEY DOWN
                keybd_event((byte)0x7E, (byte)0x5D, (uint)0x2, UIntPtr.Zero); //KEY UP
            }
        }
        public static class NextSong {
            [DllImport("user32.dll")]
            static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, UIntPtr dwExtraInfo);

            public static void Main() {
                keybd_event((byte)0xB0, 0, 0, UIntPtr.Zero); //KEY DOWN
                keybd_event((byte)0x7E, (byte)0x5D, (uint)0x2, UIntPtr.Zero); //KEY UP
            }
        }
        public static class PreviousSong {
            [DllImport("user32.dll")]
            static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, UIntPtr dwExtraInfo);

            public static void Main() {
                keybd_event((byte)0xB0, 0, 0, UIntPtr.Zero); //KEY DOWN
                keybd_event((byte)0x7E, (byte)0x5D, (uint)0x2, UIntPtr.Zero); //KEY UP
            }
        }
        public static class VolumeUp {
            [DllImport("user32.dll")]
            static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, UIntPtr dwExtraInfo);

            public static void Main() {
                keybd_event((byte)0xAF, 0, 0, UIntPtr.Zero); //KEY DOWN
                keybd_event((byte)0x7E, (byte)0x5D, (uint)0x2, UIntPtr.Zero); //KEY UP
            }
        }
        public static class VolumeDown {
            [DllImport("user32.dll")]
            static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, UIntPtr dwExtraInfo);

            public static void Main() {
                keybd_event((byte)0xAE, 0, 0, UIntPtr.Zero); //KEY DOWN
                keybd_event((byte)0x7E, (byte)0x5D, (uint)0x2, UIntPtr.Zero); //KEY UP
            }
        }
        public static class MuteSound {
            [DllImport("user32.dll")]
            static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, UIntPtr dwExtraInfo);

            public static void Main() {
                keybd_event((byte)0xAD, 0, 0, UIntPtr.Zero); //KEY DOWN
                keybd_event((byte)0x7E, (byte)0x5D, (uint)0x2, UIntPtr.Zero); //KEY UP
            }
        }
    }
"@

function PlayPause { [MediaControls.PlayPauseSong]::Main() }

function StopMusic { [MediaControls.StopSong]::Main() }

function NextSong { [MediaControls.NextSong]::Main() }

function PreviousSong { [MediaControls.PreviousSong]::Main() }

function VolumeUp { [MediaControls.VolumeUp]::Main() }

function VolumeDown { [MediaControls.VolumeDown]::Main() }

function MuteSound { [MediaControls.MuteSound]::Main() }

Export-ModuleMember -Function * -Alias *
