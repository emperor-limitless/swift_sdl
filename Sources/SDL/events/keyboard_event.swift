#if os(Windows)
import CSDLWindows
#else
import CSDL
#endif
public class KeyboardKey {
    public var scancode: Scancode
    public var keycode: Keycode
    public var modifiers: [KeyMod]
    init(scancode: Scancode, keycode: Keycode, modifiers kmod: [KeyMod]) {
        self.scancode = scancode
        self.keycode = keycode
        modifiers = kmod
    }
}
public class KeyboardEvent: Event {
    public let windowId: UInt32
    public let state: KeyState
    public let rt: Bool
    public let key: KeyboardKey
    init(sdl: Sdl, timestamp: UInt32, wndId: UInt32, state: KeyState, rt: Bool, key: KeyboardKey) {
        windowId = wndId
        self.state = state
        self.rt = rt
        self.key = key
        super.init(sdl: sdl, timestamp: timestamp)
    }
    public static func fromSdlEvent(sdl: Sdl, event: SDL_KeyboardEvent) -> KeyboardEvent {
        let sim = event.keysym
        let key = KeyboardKey(
            scancode: Scancode(rawValue: sim.scancode.rawValue) ?? Scancode.UNKNOWN,
            keycode: Keycode(rawValue: sim.sym) ?? Keycode.UNKNOWN,
            modifiers: sim.mod.toModifiersList())
        return KeyboardEvent(sdl: sdl,
            timestamp: event.timestamp,
            wndId: event.windowID,
            state: KeyState(rawValue: UInt32(event.state)) ?? KeyState.released,
            rt: sdlBoolToBool(Int32(event.repeat)),
            key: key)
    }
}