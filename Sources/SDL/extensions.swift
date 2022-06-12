extension UInt16 {
    func toModifiersList() -> [KeyMod] {
        var kmd = [KeyMod]()
        for mod in KeyMod.allCases {
            if mod.rawValue != 0 {
                kmd.append(mod)
            }
        }
    return kmd
    }
}