import BigC

@_alwaysEmitIntoClient @inlinable @inline(__always)
public func open(_ path: UnsafePointer<CChar>, _ oflag: Int32,_ mode: mode_t) -> Int32 {
  swift_open(path, oflag, mode)
}

@_alwaysEmitIntoClient @inlinable @inline(__always)
public func openat(_ fd: Int32, _ path: UnsafePointer<CChar>, _ oflag: Int32) -> Int32 {
  swift_openat(fd, path, oflag, 0)
}

@_alwaysEmitIntoClient @inlinable @inline(__always)
public func openat(_ fd: Int32, _ path: UnsafePointer<CChar>, _ oflag: Int32, _ mode: mode_t) -> Int32 {
  swift_openat(fd, path, oflag, mode)
}

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
