import BigC

@_alwaysEmitIntoClient @inlinable @inline(__always)
public func fcntl(_ fd: CInt, _ cmd: CInt) -> CInt {
  BigC.swift_fcntl(fd, cmd)
}

@_alwaysEmitIntoClient @inlinable @inline(__always)
public func fcntl(_ fd: CInt, _ cmd: CInt, _ value: CInt) -> CInt {
  BigC.swift_fcntl_int(fd, cmd, value)
}

@_alwaysEmitIntoClient @inlinable @inline(__always)
public func fcntl(_ fd: CInt, _ cmd: CInt, _ ptr: UnsafeMutableRawPointer) -> CInt {
  BigC.swift_fcntl_ptr(fd, cmd, ptr)
}
