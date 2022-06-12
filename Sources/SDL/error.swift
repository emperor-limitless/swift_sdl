#if os(Windows)
import CSDLWindows
#else
import CSDL
#endif
@discardableResult
func check<T: BinaryInteger>(_ ret: T, lessOne: Bool = false) throws -> T {
    let val = lessOne ? 1 : 0
    if ret < val {
        let er = CCharToString(SDL_GetError())
        SDL_ClearError()
        throw SdlError.SdlERROR(er)
    }
    return ret
}

func checkwptr(_ ret: OpaquePointer?) throws -> OpaquePointer {
    if ret == nil {
        let er = CCharToString(SDL_GetError())
        SDL_ClearError()
        throw SdlError.SdlERROR(er)
    }
    return ret!
}

func checkstr(_ ret: UnsafeMutablePointer<CChar>) throws -> String {
    let rt = CCharToString(ret)
    SDL_free(ret)
    if rt == "" {
        let er = CCharToString(SDL_GetError())
        SDL_ClearError()
        throw SdlError.SdlERROR(er)
    }
    return rt
}

func checkstr(_ ret: UnsafePointer<CChar>) throws -> String {
    let rt = CCharToString(ret)
    if rt == "" {
        let er = CCharToString(SDL_GetError())
        SDL_ClearError()
        throw SdlError.SdlERROR(er)
    }
    return rt
}


public func CCharToString(_ char: UnsafePointer<Int8>?) -> String {
        if let ch = char {
            let str = String(cString: ch)
            return str
        }
    return ""
}

