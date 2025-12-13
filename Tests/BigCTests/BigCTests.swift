import BigC
import Testing

@Test func fileStream() throws {
  let f = try #require(fopen("/dev/zero", "rb"))
  #expect(fclose(f) == 0)
}

@Test func listRoot() throws {

  let dir = try #require(opendir("/"))

  defer {
    #expect(closedir(dir) == 0)
  }

  while let entry = readdir(dir) {
    _ = puts(UnsafeRawPointer(entry.pointer(to: \.d_name))!.assumingMemoryBound(to: CChar.self))
  }
}
