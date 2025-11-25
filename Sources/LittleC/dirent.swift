import BigC

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func opendir(_ filename: UnsafePointer<CChar>) -> UnsafeMutableRawPointer?

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func fopendir(_ fd: CInt) -> UnsafeMutableRawPointer?

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func readdir(_ p: UnsafeMutableRawPointer) -> UnsafeMutablePointer<dirent>?

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func telldir(_ p: UnsafeMutableRawPointer) -> Int

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func seekdir(_ p: UnsafeMutableRawPointer, _: Int)

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func rewinddir(_ p: UnsafeMutableRawPointer) -> Int

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func closedir(_ p: UnsafeMutableRawPointer) -> CInt

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func dirfd(_ p: UnsafeMutableRawPointer) -> CInt

@_alwaysEmitIntoClient
public var EINTR: CInt { BigC.EINTR }

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pause()
