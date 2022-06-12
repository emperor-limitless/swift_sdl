#if os(Windows)
import CSDLWindows
#else
import CSDL
#endif

public class Sdl {
    public init(subsystem: SdlInit = SdlInit.everything) throws {
        try check(SDL_Init(UInt32(subsystem.rawValue)))
    }
    deinit {
        SDL_Quit()
    }
    public func setClipboard(text: String) throws {
        try check(SDL_SetClipboardText(text))
    }
    public func getClipboard() throws -> String {
        let str = try checkstr(SDL_GetClipboardText())
        return str
    }
    public func getDrivers() throws -> Int32 {
        let val = try check(SDL_GetNumVideoDrivers(), lessOne: true)
        return val
    }
    public func getDriver(index: Int32) -> String {
        return CCharToString(SDL_GetVideoDriver(index))
    }
    public func getCurrentDriver() throws -> String {
        let val = try checkstr(SDL_GetCurrentVideoDriver())
        return val
    }
    public func pollEvent() -> Event? {
        var e = SDL_Event()
        let n = SDL_PollEvent(&e)
        if n != 0 {
            var event: Event = Event(sdl: self, timestamp: 0)
            let type = EventType(rawValue: e.type)
            switch type {
                case .QUIT:
event = QuitEvent(sdl: self, timestamp: e.quit.timestamp)
case .KEYDOWN:
event = KeyboardEvent.fromSdlEvent(sdl: self, event: e.key)
case .KEYUP:
event = KeyboardEvent.fromSdlEvent(sdl: self, event: e.key)
case .TEXTEDITING:
let txt = withUnsafePointer(to: e.edit.text) {
    $0.withMemoryRebound(to: Int8.self, capacity: MemoryLayout.size(ofValue: $0)) {
        String(cString: $0)
    }
}
event = TextEditingEvent(
sdl: self,
timestamp: e.edit.timestamp,
wndId: e.edit.windowID,
text: txt,
start: e.edit.start,
length: e.edit.length)
case .TEXTINPUT:
let str = withUnsafePointer(to: e.text.text) {
    $0.withMemoryRebound(to: Int8.self, capacity: MemoryLayout.size(ofValue: $0)) {
        String(cString: $0)
    }
}

event = TextInputEvent(sdl: self, timestamp: e.text.timestamp, wndId: e.text.windowID, text: str)
default:
_ = 0
}
return event
}
return nil
}
}