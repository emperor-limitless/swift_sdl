public class TextInputEvent: Event {
    public var windowId: UInt32
    public var text: String
    init(sdl: Sdl, timestamp: UInt32, wndId: UInt32, text: String) {
        self.text = text
        windowId = wndId
        super.init(sdl: sdl, timestamp: timestamp)
    }
}
public class TextEditingEvent: TextInputEvent {
    public var start: Int32
    public var length: Int32
    init(sdl: Sdl, timestamp: UInt32, wndId: UInt32, text: String, start: Int32, length: Int32) {
        self.start = start
        self.length = length
        super.init(sdl: sdl, timestamp: timestamp, wndId: wndId, text: text)
    }
}