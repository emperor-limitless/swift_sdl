#if os(Windows)
import CSDLWindows
#else
import CSDL
#endif
enum SdlError: Error {
    case SdlERROR(String)
}
public enum SdlInit: Int {
    case timer = 1
    case audio = 16
    case video = 32
    case joystick = 512
    case haptic = 4096
    case gameController = 8192
    case events = 16384
    case sensor = 32768
    case noparachute = 1048576
    case everything = 62001
}
public enum WindowPosition: Int32 {
    case undefined = 536805376
    case centered = 805240832
}
public enum KeyState: UInt32 {
    case released
    case pressed
}
public enum Keycode: Int32 {
    case UNKNOWN = 0
    case RETURN = 13
    case ESCAPE = 27
    case BACKSPACE = 8
    case TAB = 9
    case SPACE = 32
    case EXCLAIM = 33
    case QUOTEDBL = 34
    case HASH = 35
    case PERCENT = 37
    case DOLLAR = 36
    case AMPERSAND = 38
    case QUOTE = 39
    case LEFTPAREN = 40
    case RIGHTPAREN = 41
    case ASTERISK = 42
    case PLUS = 43
    case COMMA = 44
    case MINUS = 45
    case PERIOD = 46
    case SLASH = 47
    case KEY0 = 48
    case KEY1 = 49
    case KEY2 = 50
    case KEY3 = 51
    case KEY4 = 52
    case KEY5 = 53
    case KEY6 = 54
    case KEY7 = 55
    case KEY8 = 56
    case KEY9 = 57
    case COLON = 58
    case SEMICOLON = 59
    case LESS = 60
    case EQUALS = 61
    case GREATER = 62
    case QUESTION = 63
    case AT = 64
    case LEFTBRACKET = 91
    case BACKSLASH = 92
    case RIGHTBRACKET = 93
    case CARET = 94
    case UNDERSCORE = 95
    case BACKQUOTE = 96
    case a = 97
    case b = 98
    case c = 99
    case d = 100
    case e = 101
    case f = 102
    case g = 103
    case h = 104
    case i = 105
    case j = 106
    case k = 107
    case l = 108
    case m = 109
    case n = 110
    case o = 111
    case p = 112
    case q = 113
    case r = 114
    case s = 115
    case t = 116
    case u = 117
    case v = 118
    case w = 119
    case x = 120
    case y = 121
    case z = 122
    case CAPSLOCK = 1073741881
    case F1 = 1073741882
    case F2 = 1073741883
    case F3 = 1073741884
    case F4 = 1073741885
    case F5 = 1073741886
    case F6 = 1073741887
    case F7 = 1073741888
    case F8 = 1073741889
    case F9 = 1073741890
    case F10 = 1073741891
    case F11 = 1073741892
    case F12 = 1073741893
    case PRINTSCREEN = 1073741894
    case SCROLLLOCK = 1073741895
    case PAUSE = 1073741896
    case INSERT = 1073741897
    case HOME = 1073741898
    case PAGEUP = 1073741899
    case DELETE = 127
    case END = 1073741901
    case PAGEDOWN = 1073741902
    case RIGHT = 1073741903
    case LEFT = 1073741904
    case DOWN = 1073741905
    case UP = 1073741906
    case NUMLOCKCLEAR = 1073741907
    case KP_DIVIDE = 1073741908
    case KP_MULTIPLY = 1073741909
    case KP_MINUS = 1073741910
    case KP_PLUS = 1073741911
    case KP_ENTER = 1073741912
    case KP_1 = 1073741913
    case KP_2 = 1073741914
    case KP_3 = 1073741915
    case KP_4 = 1073741916
    case KP_5 = 1073741917
    case KP_6 = 1073741918
    case KP_7 = 1073741919
    case KP_8 = 1073741920
    case KP_9 = 1073741921
    case KP_0 = 1073741922
    case KP_PERIOD = 1073741923
    case APPLICATION = 1073741925
    case POWER = 1073741926
    case KP_EQUALS = 1073741927
    case F13 = 1073741928
    case F14 = 1073741929
    case F15 = 1073741930
    case F16 = 1073741931
    case F17 = 1073741932
    case F18 = 1073741933
    case F19 = 1073741934
    case F20 = 1073741935
    case F21 = 1073741936
    case F22 = 1073741937
    case F23 = 1073741938
    case F24 = 1073741939
    case EXECUTE = 1073741940
    case HELP = 1073741941
    case MENU = 1073741942
    case SELECT = 1073741943
    case STOP = 1073741944
    case AGAIN = 1073741945
    case UNDO = 1073741946
    case CUT = 1073741947
    case COPY = 1073741948
    case PASTE = 1073741949
    case FIND = 1073741950
    case MUTE = 1073741951
    case VOLUMEUP = 1073741952
    case VOLUMEDOWN = 1073741953
    case KP_COMMA = 1073741957
    case KP_EQUALSAS400 = 1073741958
    case ALTERASE = 1073741977
    case SYSREQ = 1073741978
    case CANCEL = 1073741979
    case CLEAR = 1073741980
    case PRIOR = 1073741981
    case RETURN2 = 1073741982
    case SEPARATOR = 1073741983
    case OUT = 1073741984
    case OPER = 1073741985
    case CLEARAGAIN = 1073741986
    case CRSEL = 1073741987
    case EXSEL = 1073741988
    case KP_00 = 1073742000
    case KP_000 = 1073742001
    case THOUSANDSSEPARATOR = 1073742002
    case DECIMALSEPARATOR = 1073742003
    case CURRENCYUNIT = 1073742004
    case CURRENCYSUBUNIT = 1073742005
    case KP_LEFTPAREN = 1073742006
    case KP_RIGHTPAREN = 1073742007
    case KP_LEFTBRACE = 1073742008
    case KP_RIGHTBRACE = 1073742009
    case KP_TAB = 1073742010
    case KP_BACKSPACE = 1073742011
    case KP_A = 1073742012
    case KP_B = 1073742013
    case KP_C = 1073742014
    case KP_D = 1073742015
    case KP_E = 1073742016
    case KP_F = 1073742017
    case KP_XOR = 1073742018
    case KP_POWER = 1073742019
    case KP_PERCENT = 1073742020
    case KP_LESS = 1073742021
    case KP_GREATER = 1073742022
    case KP_AMPERSAND = 1073742023
    case KP_DBLAMPERSAND = 1073742024
    case KP_VERTICALBAR = 1073742025
    case KP_DBLVERTICALBAR = 1073742026
    case KP_COLON = 1073742027
    case KP_HASH = 1073742028
    case KP_SPACE = 1073742029
    case KP_AT = 1073742030
    case KP_EXCLAM = 1073742031
    case KP_MEMSTORE = 1073742032
    case KP_MEMRECALL = 1073742033
    case KP_MEMCLEAR = 1073742034
    case KP_MEMADD = 1073742035
    case KP_MEMSUBTRACT = 1073742036
    case KP_MEMMULTIPLY = 1073742037
    case KP_MEMDIVIDE = 1073742038
    case KP_PLUSMINUS = 1073742039
    case KP_CLEAR = 1073742040
    case KP_CLEARENTRY = 1073742041
    case KP_BINARY = 1073742042
    case KP_OCTAL = 1073742043
    case KP_DECIMAL = 1073742044
    case KP_HEXADECIMAL = 1073742045
    case LCTRL = 1073742048
    case LSHIFT = 1073742049
    case LALT = 1073742050
    case LGUI = 1073742051
    case RCTRL = 1073742052
    case RSHIFT = 1073742053
    case RALT = 1073742054
    case RGUI = 1073742055
    case MODE = 1073742081
    case AUDIONEXT = 1073742082
    case AUDIOPREV = 1073742083
    case AUDIOSTOP = 1073742084
    case AUDIOPLAY = 1073742085
    case AUDIOMUTE = 1073742086
    case MEDIASELECT = 1073742087
    case WWW = 1073742088
    case MAIL = 1073742089
    case CALCULATOR = 1073742090
    case COMPUTER = 1073742091
    case AC_SEARCH = 1073742092
    case AC_HOME = 1073742093
    case AC_BACK = 1073742094
    case AC_FORWARD = 1073742095
    case AC_STOP = 1073742096
    case AC_REFRESH = 1073742097
    case AC_BOOKMARKS = 1073742098
    case BRIGHTNESSDOWN = 1073742099
    case BRIGHTNESSUP = 1073742100
    case DISPLAYSWITCH = 1073742101
    case KBDILLUMTOGGLE = 1073742102
    case KBDILLUMDOWN = 1073742103
    case KBDILLUMUP = 1073742104
    case EJECT = 1073742105
    case SLEEP = 1073742106
    case APP1 = 1073742107
    case APP2 = 1073742108
    case AUDIOREWIND = 1073742109
    case AUDIOFASTFORWARD = 1073742110
}
public enum KeyMod: UInt32, CaseIterable {
    case NONE = 0
    case LSHIFT = 1
    case RSHIFT = 2
    case LCTRL = 64
    case RCTRL = 128
    case LALT = 256
    case RALT = 512
    case LGUI = 1024
    case RGUI = 2048
    case NUM = 4096
    case CAPS = 8192
    case MODE = 16384
    case RESERVED = 32768
    case CTRL = 192
    case SHIFT = 3
    case ALT = 768
    case GUI = 3072
}
public enum Scancode: Int32 {
    case UNKNOWN = 0
    case A = 4
    case B = 5
    case C = 6
    case D = 7
    case E = 8
    case F = 9
    case G = 10
    case H = 11
    case I = 12
    case J = 13
    case K = 14
    case L = 15
    case M = 16
    case N = 17
    case O = 18
    case P = 19
    case Q = 20
    case R = 21
    case S = 22
    case T = 23
    case U = 24
    case V = 25
    case W = 26
    case X = 27
    case Y = 28
    case Z = 29
    case KEY1 = 30
    case KEY2 = 31
    case KEY3 = 32
    case KEY4 = 33
    case KEY5 = 34
    case KEY6 = 35
    case KEY7 = 36
    case KEY8 = 37
    case KEY9 = 38
    case KEY0 = 39
    case RETURN = 40
    case ESCAPE = 41
    case BACKSPACE = 42
    case TAB = 43
    case SPACE = 44
    case MINUS = 45
    case EQUALS = 46
    case LEFTBRACKET = 47
    case RIGHTBRACKET = 48
    // < Located at the lower left of the return
    // key on ISO keyboards and at the right end
    // of the QWERTY row on ANSI keyboards.
    // Produces REVERSE SOLIDUS (backslash) and
    // VERTICAL LINE in a US layout, REVERSE
    // SOLIDUS and VERTICAL LINE in a UK Mac
    // layout, NUMBER SIGN and TILDE in a UK
    // Windows layout, DOLLAR SIGN and POUND SIGN
    // in a Swiss German layout, NUMBER SIGN and
    // APOSTROPHE in a German layout, GRAVE
    // ACCENT and POUND SIGN in a French Mac
    // layout, and ASTERISK and MICRO SIGN in a
    // French Windows layout.
    case BACKSLASH = 49
    // < ISO USB keyboards actually use this code
    // instead of 49 for the same key, but all
    // OSes I've seen treat the two codes
    // identically. So, as an implementor, unless
    // your keyboard generates both of those
    // codes and your OS treats them differently,
    // you should generate SDL_SCANCODE_BACKSLASH
    // instead of this code. As a user, you
    // should not rely on this code because SDL
    // will never generate it with most (all?)
    // keyboards.
    case NONUSHASH = 50
    case SEMICOLON = 51
    case APOSTROPHE = 52
    // < Located in the top left corner (on both ANSI
    // and ISO keyboards). Produces GRAVE ACCENT and
    // TILDE in a US Windows layout and in US and UK
    // Mac layouts on ANSI keyboards, GRAVE ACCENT
    // and NOT SIGN in a UK Windows layout, SECTION
    // SIGN and PLUS-MINUS SIGN in US and UK Mac
    // layouts on ISO keyboards, SECTION SIGN and
    // DEGREE SIGN in a Swiss German layout (Mac:
    // only on ISO keyboards), CIRCUMFLEX ACCENT and
    // DEGREE SIGN in a German layout (Mac: only on
    // ISO keyboards), SUPERSCRIPT TWO and TILDE in a
    // French Windows layout, COMMERCIAL AT and
    // NUMBER SIGN in a French Mac layout on ISO
    // keyboards, and LESS-THAN SIGN and GREATER-THAN
    // SIGN in a Swiss German, German, or French Mac
    // layout on ANSI keyboards.
    case GRAVE = 53
    case COMMA = 54
    case PERIOD = 55
    case SLASH = 56
    case CAPSLOCK = 57
    case F1 = 58
    case F2 = 59
    case F3 = 60
    case F4 = 61
    case F5 = 62
    case F6 = 63
    case F7 = 64
    case F8 = 65
    case F9 = 66
    case F10 = 67
    case F11 = 68
    case F12 = 69
    case PRINTSCREEN = 70
    case SCROLLLOCK = 71
    case PAUSE = 72
    // < insert on PC, help on some Mac keyboards (but
    // does send code 73, not 117)
    case INSERT = 73
    case HOME = 74
    case PAGEUP = 75
    case DELETE = 76
    case END = 77
    case PAGEDOWN = 78
    case RIGHT = 79
    case LEFT = 80
    case DOWN = 81
    case UP = 82
    // < num lock on PC, clear on Mac keyboards
    case NUMLOCKCLEAR = 83
    case KP_DIVIDE = 84
    case KP_MULTIPLY = 85
    case KP_MINUS = 86
    case KP_PLUS = 87
    case KP_ENTER = 88
    case KP_1 = 89
    case KP_2 = 90
    case KP_3 = 91
    case KP_4 = 92
    case KP_5 = 93
    case KP_6 = 94
    case KP_7 = 95
    case KP_8 = 96
    case KP_9 = 97
    case KP_0 = 98
    case KP_PERIOD = 99
    // < This is the additional key that ISO
    // keyboards have over ANSI ones,
    // located between left shift and Y.
    // Produces GRAVE ACCENT and TILDE in a
    // US or UK Mac layout, REVERSE SOLIDUS
    // (backslash) and VERTICAL LINE in a
    // US or UK Windows layout, and
    // LESS-THAN SIGN and GREATER-THAN SIGN
    // in a Swiss German, German, or French
    // layout.
    case NONUSBACKSLASH = 100
    // < windows contextual menu, compose
    case APPLICATION = 101
    // < The USB document says this is a status flag,
    // not a physical key - but some Mac keyboards
    // do have a power key.
    case POWER = 102
    case KP_EQUALS = 103
    case F13 = 104
    case F14 = 105
    case F15 = 106
    case F16 = 107
    case F17 = 108
    case F18 = 109
    case F19 = 110
    case F20 = 111
    case F21 = 112
    case F22 = 113
    case F23 = 114
    case F24 = 115
    case EXECUTE = 116
    case HELP = 117
    case MENU = 118
    case SELECT = 119
    case STOP = 120
    // < redo
    case AGAIN = 121
    case UNDO = 122
    case CUT = 123
    case COPY = 124
    case PASTE = 125
    case FIND = 126
    case MUTE = 127
    case VOLUMEUP = 128
    case VOLUMEDOWN = 129
    case KP_COMMA = 133
    case KP_EQUALSAS400 = 134
    // < used on Asian keyboards, see
    // footnotes in USB doc
    case INTERNATIONAL1 = 135
    case INTERNATIONAL2 = 136
    // < Yen
    case INTERNATIONAL3 = 137
    case INTERNATIONAL4 = 138
    case INTERNATIONAL5 = 139
    case INTERNATIONAL6 = 140
    case INTERNATIONAL7 = 141
    case INTERNATIONAL8 = 142
    case INTERNATIONAL9 = 143
    // < Hangul/English toggle
    case LANG1 = 144
    // < Hanja conversion
    case LANG2 = 145
    // < Katakana
    case LANG3 = 146
    // < Hiragana
    case LANG4 = 147
    // < Zenkaku/Hankaku
    case LANG5 = 148
    // < reserved
    case LANG6 = 149
    // < reserved
    case LANG7 = 150
    // < reserved
    case LANG8 = 151
    // < reserved
    case LANG9 = 152
    // < Erase-Eaze
    case ALTERASE = 153
    case SYSREQ = 154
    case CANCEL = 155
    case CLEAR = 156
    case PRIOR = 157
    case RETURN2 = 158
    case SEPARATOR = 159
    case OUT = 160
    case OPER = 161
    case CLEARAGAIN = 162
    case CRSEL = 163
    case EXSEL = 164
    case KP_00 = 176
    case KP_000 = 177
    case THOUSANDSSEPARATOR = 178
    case DECIMALSEPARATOR = 179
    case CURRENCYUNIT = 180
    case CURRENCYSUBUNIT = 181
    case KP_LEFTPAREN = 182
    case KP_RIGHTPAREN = 183
    case KP_LEFTBRACE = 184
    case KP_RIGHTBRACE = 185
    case KP_TAB = 186
    case KP_BACKSPACE = 187
    case KP_A = 188
    case KP_B = 189
    case KP_C = 190
    case KP_D = 191
    case KP_E = 192
    case KP_F = 193
    case KP_XOR = 194
    case KP_POWER = 195
    case KP_PERCENT = 196
    case KP_LESS = 197
    case KP_GREATER = 198
    case KP_AMPERSAND = 199
    case KP_DBLAMPERSAND = 200
    case KP_VERTICALBAR = 201
    case KP_DBLVERTICALBAR = 202
    case KP_COLON = 203
    case KP_HASH = 204
    case KP_SPACE = 205
    case KP_AT = 206
    case KP_EXCLAM = 207
    case KP_MEMSTORE = 208
    case KP_MEMRECALL = 209
    case KP_MEMCLEAR = 210
    case KP_MEMADD = 211
    case KP_MEMSUBTRACT = 212
    case KP_MEMMULTIPLY = 213
    case KP_MEMDIVIDE = 214
    case KP_PLUSMINUS = 215
    case KP_CLEAR = 216
    case KP_CLEARENTRY = 217
    case KP_BINARY = 218
    case KP_OCTAL = 219
    case KP_DECIMAL = 220
    case KP_HEXADECIMAL = 221
    case LCTRL = 224
    case LSHIFT = 225
    // < alt, option
    case LALT = 226
    // < windows, command (apple), meta
    case LGUI = 227
    case RCTRL = 228
    case RSHIFT = 229
    // < alt gr, option
    case RALT = 230
    // < windows, command (apple), meta
    case RGUI = 231
    // < I'm not sure if this is really not covered
    // by any of the above, but since there's a
    // special KMOD_MODE for it I'm adding it here
    case MODE = 257
    case AUDIONEXT = 258
    case AUDIOPREV = 259
    case AUDIOSTOP = 260
    case AUDIOPLAY = 261
    case AUDIOMUTE = 262
    case MEDIASELECT = 263
    case WWW = 264
    case MAIL = 265
    case CALCULATOR = 266
    case COMPUTER = 267
    case AC_SEARCH = 268
    case AC_HOME = 269
    case AC_BACK = 270
    case AC_FORWARD = 271
    case AC_STOP = 272
    case AC_REFRESH = 273
    case AC_BOOKMARKS = 274
    case BRIGHTNESSDOWN = 275
    case BRIGHTNESSUP = 276
    // < display mirroring/dual display
    // switch, video mode switch
    case DISPLAYSWITCH = 277
    case KBDILLUMTOGGLE = 278
    case KBDILLUMDOWN = 279
    case KBDILLUMUP = 280
    case EJECT = 281
    case SLEEP = 282
    case APP1 = 283
    case APP2 = 284
    case AUDIOREWIND = 285
    case AUDIOFASTFORWARD = 286
}
enum EventType: UInt32 {
    // < Unused (do not remove)
    case FIRSTEVENT = 0

    // < User-requested quit
    case QUIT = 256

    // < The application is being terminated by the OS
    // Called on iOS in applicationWillTerminate()
    // Called on Android in onDestroy()
    case APP_TERMINATING = 257

    // < The application is low on memory, free memory if possible.
    // Called on iOS in applicationDidReceiveMemoryWarning()
    // Called on Android in onLowMemory()
    case APP_LOWMEMORY = 258

    // < The application is about to enter the background
    // Called on iOS in applicationWillResignActive()
    // Called on Android in onPause()
    case APP_WILLENTERBACKGROUND = 259

    // < The application did enter the background and may not get CPU for some time
    // Called on iOS in applicationDidEnterBackground()
    // Called on Android in onPause()
    case APP_DIDENTERBACKGROUND = 260

    // < The application is about to enter the foreground
    // Called on iOS in applicationWillEnterForeground()
    // Called on Android in onResume()
    case APP_WILLENTERFOREGROUND = 261

    // < The application is now interactive
    // Called on iOS in applicationDidBecomeActive()
    // Called on Android in onResume()
    case APP_DIDENTERFOREGROUND = 262

    // < The user's locale preferences have changed.
    case LOCALECHANGED = 263

    // < Display state change
    case DISPLAYEVENT = 336

    // < Window state change
    case WINDOWEVENT = 512

    // < System specific event
    case SYSWMEVENT = 513

    // < Key pressed
    case KEYDOWN = 768

    // < Key released
    case KEYUP = 769

    // < Keyboard text editing (composition)
    case TEXTEDITING = 770

    // < Keyboard text input
    case TEXTINPUT = 771

    // < Keymap changed due to a system event such as an
    // input language or keyboard layout change.
    case KEYMAPCHANGED = 772

    // < Mouse moved
    case MOUSEMOTION = 1024

    // < Mouse button pressed
    case MOUSEBUTTONDOWN = 1025

    // < Mouse button released
    case MOUSEBUTTONUP = 1026

    // < Mouse wheel motion
    case MOUSEWHEEL = 1027

    // < Joystick axis motion
    case JOYAXISMOTION = 1536

    // < Joystick trackball motion
    case JOYBALLMOTION = 1537

    // < Joystick hat position change
    case JOYHATMOTION = 1538

    // < Joystick button pressed
    case JOYBUTTONDOWN = 1539

    // < Joystick button released
    case JOYBUTTONUP = 1540

    // < A new joystick has been inserted into the system
    case JOYDEVICEADDED = 1541

    // < An opened joystick has been removed
    case JOYDEVICEREMOVED = 1542

    // < Game controller axis motion
    case CONTROLLERAXISMOTION = 1616

    // < Game controller button pressed
    case CONTROLLERBUTTONDOWN = 1617

    // < Game controller button released
    case CONTROLLERBUTTONUP = 1618

    // < A new Game controller has been inserted into the system
    case CONTROLLERDEVICEADDED = 1619

    // < An opened Game controller has been removed
    case CONTROLLERDEVICEREMOVED = 1620

    // < The controller mapping was updated
    case CONTROLLERDEVICEREMAPPED = 1621

    // < Game controller touchpad was touched
    case CONTROLLERTOUCHPADDOWN = 1622

    // < Game controller touchpad finger was moved
    case CONTROLLERTOUCHPADMOTION = 1623

    // < Game controller touchpad finger was lifted
    case CONTROLLERTOUCHPADUP = 1624

    // < Game controller sensor was updated
    case CONTROLLERSENSORUPDATE = 1625
    case FINGERDOWN = 1792
    case FINGERUP = 1793
    case FINGERMOTION = 1794
    case DOLLARGESTURE = 2048
    case DOLLARRECORD = 2049
    case MULTIGESTURE = 2050

    // < The clipboard changed
    case CLIPBOARDUPDATE = 2304

    // < The system requests a file open
    case DROPFILE = 4096

    // < text/plain drag-and-drop event
    case DROPTEXT = 4097

    // < A new set of drops is beginning (NULL filename)
    case DROPBEGIN = 4098

    // < Current set of drops is now complete (NULL filename)
    case DROPCOMPLETE = 4099

    // < A new audio device is available
    case AUDIODEVICEADDED = 4352

    // < An audio device has been removed.
    case AUDIODEVICEREMOVED = 4353

    // < A sensor was updated
    case SENSORUPDATE = 4608

    // < The render targets have been reset and their contents need to be updated
    case RENDER_TARGETS_RESET = 8192

    // < The device has been reset and all textures need to be recreated
    case RENDER_DEVICE_RESET = 8193

    // Events ::SDL_USEREVENT through ::SDL_LASTEVENT are for your use,
    // and should be allocated with SDL_RegisterEvents()
    case USEREVENT = 32768

    // This last event is only for bounding internal arrays
    case LASTEVENT = 65535
}