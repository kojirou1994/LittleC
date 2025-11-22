#if canImport(Darwin) || os(FreeBSD)
@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
func __error() -> UnsafeMutablePointer<CInt>
#elseif os(Linux)
// glibc: https://www.gnu.org/software/libc/manual/html_node/Checking-for-Errors.html
// musl: same
@_extern(c, "__errno_location")
@_alwaysEmitIntoClient @inlinable @inline(__always)
func __error() -> UnsafeMutablePointer<CInt>
#else
#error("errno todo")
#endif

@_alwaysEmitIntoClient @inlinable @inline(__always)
public var errno: CInt {
  get {
    __error().pointee
  }
  set {
    __error().pointee = newValue
  }
}
