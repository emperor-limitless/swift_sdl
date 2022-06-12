public func sdlBool(_ bl: Bool) -> Int32 {
    bl ? 1 : 0
}
public func sdlBoolToBool(_ ret: Int32) -> Bool {
    ret >= 1
}