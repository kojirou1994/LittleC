import BigC

@_alwaysEmitIntoClient @inlinable @inline(__always)
nonisolated(unsafe)
public var stdin: UnsafeMutablePointer<FILE> {
  #if canImport(Darwin)
  BigC.__stdinp
  #else
  BigC.stdin
  #endif
}

@_alwaysEmitIntoClient @inlinable @inline(__always)
nonisolated(unsafe)
public var stdout: UnsafeMutablePointer<FILE> {
  #if canImport(Darwin)
  BigC.__stdoutp
  #else
  BigC.stdout
  #endif
}

@_alwaysEmitIntoClient @inlinable @inline(__always)
nonisolated(unsafe)
public var stderr: UnsafeMutablePointer<FILE> {
  #if canImport(Darwin)
  BigC.__stdoutp
  #else
  BigC.stdout
  #endif
}
