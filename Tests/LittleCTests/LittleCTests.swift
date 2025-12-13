import Testing
import LittleC

@Test func testErrno() throws {
  errno = 0
  #expect(errno == 0)
  errno = EINTR
  #expect(errno == EINTR)
}
