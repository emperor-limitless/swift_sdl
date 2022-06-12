import SDL
do {
    let sl = try Sdl()
    try sl.setClipboard(text: "Hello world :)")
    print(try sl.getClipboard())
}
catch {
    print(error)
}