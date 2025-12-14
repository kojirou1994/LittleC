import BigC

#if os(Linux)
@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_create(_: UnsafeMutablePointer<pthread_t>, _ attr: UnsafePointer<pthread_attr_t>?, _ start_routine: @convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer?, _ arg: UnsafeMutableRawPointer?) -> Int32
#endif
