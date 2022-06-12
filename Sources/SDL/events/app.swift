public class QuitEvent: Event {
    override init(sdl: Sdl, timestamp: UInt32) {
        super.init(sdl: sdl, timestamp: timestamp)
    }
}
public class LocaleChanged: Event {
    override init(sdl: Sdl, timestamp: UInt32) {
        super.init(sdl: sdl, timestamp: timestamp)
    }
}