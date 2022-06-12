public class Event {
    let sdl: Sdl
    let timestamp: UInt32
    init(sdl: Sdl, timestamp: UInt32) {
        self.sdl = sdl
        self.timestamp = timestamp
    }
}