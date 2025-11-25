import BigC

@_alwaysEmitIntoClient @inlinable @inline(__always)
public func exit(_ status: CInt) -> Never {
  BigC.exit(status)
}

@_alwaysEmitIntoClient @inlinable @inline(__always)
public func _exit(_ status: CInt) -> Never {
  BigC._exit(status)
}

@_alwaysEmitIntoClient @inlinable @inline(__always)
public func _Exit(_ status: CInt) -> Never {
  BigC._Exit(status)
}

@_alwaysEmitIntoClient
public var EXIT_SUCCESS: CInt { BigC.EXIT_SUCCESS }

@_alwaysEmitIntoClient
public var EXIT_FAILURE: CInt { BigC.EXIT_FAILURE }

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func atexit(_: @convention(c) () -> Void) -> Int32
