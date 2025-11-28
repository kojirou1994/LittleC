import BigC

@_alwaysEmitIntoClient @inlinable @inline(__always)
public var environ: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?> {
  #if APPLE
  _NSGetEnviron().pointee.unsafelyUnwrapped
  #else
  BigC.environ
  #endif
}
