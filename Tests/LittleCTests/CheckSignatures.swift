import Testing
import LittleC
import PlatformC

@Test
func checkSignatures() throws {
  func check<A, B>(_ v1: A, _ v2: B, _ name: String? = nil) {
    if let name {
      print("comparing \(name)")
    }
    #expect(String(describing: type(of: v1)) == String(describing: type(of:v2)))
  }

  check(LittleC.bind, PlatformC.bind)
  #if !canImport(Darwin)
  check(LittleC.swift_strerror_r, PlatformC.strerror_r, "strerror_r")
  #endif
  check(LittleC.strcasestr, PlatformC.strcasestr)
  check(LittleC.strstr, PlatformC.strstr)
  check(LittleC.posix_spawn_file_actions_addchdir_np, PlatformC.posix_spawn_file_actions_addchdir_np)

  #expect(LittleC.stdin == LittleC.stdin)
  #expect(LittleC.stdout == LittleC.stdout)
  #expect(LittleC.stderr == LittleC.stderr)

  #expect(LittleC.stdin == PlatformC.stdin)
  #expect(LittleC.stdout == PlatformC.stdout)
  #expect(LittleC.stderr == PlatformC.stderr)
  #expect(LittleC.environ == PlatformC.environ)

  #expect(unsafeBitCast(LittleC.SIG_DFL, to: Int.self) == unsafeBitCast(PlatformC.SIG_DFL, to: Int.self))
  #expect(unsafeBitCast(LittleC.SIG_IGN, to: Int.self) == unsafeBitCast(PlatformC.SIG_IGN, to: Int.self))
  #expect(unsafeBitCast(LittleC.SIG_ERR, to: Int.self) == unsafeBitCast(PlatformC.SIG_ERR, to: Int.self))
  #expect(unsafeBitCast(LittleC.SIG_HOLD, to: Int.self) == unsafeBitCast(PlatformC.SIG_HOLD, to: Int.self))
}


/*
 strerror_r diff
 Darwin module:
 "@Sendable (Int32, Optional<UnsafeMutablePointer<Int8>>, Int) -> Int32"
 Glibc module:
 "@Sendable (Int32, UnsafeMutablePointer<CChar>, Int) -> Int32"
 */
