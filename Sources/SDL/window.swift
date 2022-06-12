#if os(Windows)
import CSDLWindows
#else
import CSDL
#endif
public class Window {
    var hwnd: OpaquePointer
    public init(title: String, x: WindowPosition = WindowPosition.undefined, y: WindowPosition = WindowPosition.undefined, width: Int32 = 640, height: Int32 = 480) throws {
        hwnd = try checkwptr(SDL_CreateWindow(title, x.rawValue, y.rawValue, width, height, 0))
    }
    public func destroy() {
        SDL_DestroyWindow(hwnd)
    }
    public func hide() {
        SDL_HideWindow(hwnd)
    }
    public func show() {
        SDL_ShowWindow(hwnd)
    }
    public func setTitle(_ title: String) {
        SDL_SetWindowTitle(hwnd, title)
    }
    public func getTitle() -> String {
        return CCharToString(SDL_GetWindowTitle(hwnd))
    }
}