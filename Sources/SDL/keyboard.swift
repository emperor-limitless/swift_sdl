#if os(Windows)
import CSDLWindows
#else
import CSDL
#endif
public func startTextInput() {
    SDL_StartTextInput()
}

public func isTextInputActive() -> Bool {
    sdlBoolToBool(SDL_IsTextInputActive().rawValue)
}

public func stopTextInput() {
    SDL_StopTextInput()
}
public func hasScreenKeyboardSupport() -> Bool {
    sdlBoolToBool(SDL_HasScreenKeyboardSupport().rawValue)
}
