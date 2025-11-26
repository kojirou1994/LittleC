import BigC

//@_extern(c)
//@_alwaysEmitIntoClient @inlinable @inline(__always)
//public func pthread_join(_: pthread_t, _: UnsafeMutablePointer<UnsafeMutableRawPointer?>? = nil) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_once(_: UnsafeMutablePointer<pthread_once_t>, _: @convention(c) () -> ()) -> Int32
