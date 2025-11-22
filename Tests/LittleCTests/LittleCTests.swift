import Testing
@testable import LittleC

@Test func listRoot() throws {

  let dir = try #require(opendir("/"))

  defer {
    #expect(closedir(dir) == 0)
  }

  while let entry = readdir(dir) {
    _ = puts(UnsafeRawPointer(entry.pointer(to: \.d_name))!.assumingMemoryBound(to: CChar.self))
  }
}

@Test func testErrno() throws {
  errno = 0
  #expect(errno == 0)
  errno = EINTR
  #expect(errno == EINTR)
}

@Test func fileStream() throws {

  let f = try #require(fopen("/dev/zero", "rb"))

  defer {
    #expect(fclose(f) == 0)
  }


}
