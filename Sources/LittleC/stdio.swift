import BigC

//#if UNIX_BSD
@_alwaysEmitIntoClient @inlinable @inline(__always)
nonisolated(unsafe)
public var stdin: UnsafeMutablePointer<FILE> {
  #if UNIX_BSD
  BigC.__stdinp
  #else
  BigC.stdin
  #endif
}

@_alwaysEmitIntoClient @inlinable @inline(__always)
nonisolated(unsafe)
public var stdout: UnsafeMutablePointer<FILE> {
  #if UNIX_BSD
  BigC.__stdoutp
  #else
  BigC.stdout
  #endif
}

@_alwaysEmitIntoClient @inlinable @inline(__always)
nonisolated(unsafe)
public var stderr: UnsafeMutablePointer<FILE> {
  #if UNIX_BSD
  BigC.__stderrp
  #else
  BigC.stderr
  #endif
}
//#endif
