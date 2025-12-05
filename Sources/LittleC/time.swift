import BigC

#if os(Linux)
@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
func gettimeofday(_: UnsafeMutablePointer<timeval>?, _: UnsafeMutablePointer<timezone>?) -> Int32
#endif
