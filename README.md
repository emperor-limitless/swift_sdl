# swift_sdl
A swift binding to the sdl library.
# Note.
Not yet complete, This still misses a lot of functionality, But basic keyboard input and windowing works fine, For now not thinking to add any extra functionality because this works for my usage, But if you want anything to be added submit a pull request and I'll be happy to accept it.
# Platform support.
Should work on all desktop platforms. 
- Windows: you just have to get the files from lib_win and put them at the directory where you're building you're program and it should work.
Also, If you'll want to disable the console on windows, You have to do the following.
1. When building, You have to pass /SUBSYSTEM:WINDOWS to the linker, Example "swift run -c release /Xlinker /SUBSYSTEM:WINDOWS"
2. When adding code to main.swift, It must be inside a function, And before that function, The atrabute @_cdecl must be used, Like so.
``` import SDL
#if os(Windows)
@_cdecl("WinMain")
#endif
func main() {
    ...
}
```
Failing to do so will result in a linker error.
- mac, Get sdl from homebrew: brew install sdl2
- Linux.
    - ubuntu:
        - sudo apt-get install libsdl2-2.0
        - sudo apt-get install libsdl2-dev
    - Fedora:
        - sudo yum install SDL2
        - sudo yum install SDL2-devel
