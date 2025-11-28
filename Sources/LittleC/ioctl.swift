import BigC

@_alwaysEmitIntoClient @inlinable @inline(__always)
public func ioctl(_ fd: CInt, _ request: UInt) -> CInt {
  BigC.swift_ioctl(fd, request)
}

@_alwaysEmitIntoClient @inlinable @inline(__always)
public func ioctl(_ fd: CInt, _ request: UInt, _ value: CInt) -> CInt {
  BigC.swift_ioctl_int(fd, request, value)
}

@_alwaysEmitIntoClient @inlinable @inline(__always)
public func ioctl(_ fd: CInt, _ request: UInt, _ ptr: UnsafeMutableRawPointer) -> CInt {
  BigC.swift_ioctl_ptr(fd, request, ptr)
}
