import BigC

#if UNIX_BSD
public var SIG_DFL: sig_t? { nil }
public var SIG_IGN: sig_t { unsafeBitCast(1, to: sig_t.self) }
public var SIG_ERR: sig_t { unsafeBitCast(-1, to: sig_t.self) }
public var SIG_HOLD: sig_t {
  #if APPLE
  unsafeBitCast(5, to: sig_t.self)
  #else
  unsafeBitCast(3, to: sig_t.self)
  #endif
}
#elseif os(Linux)
#if !canImport(SwiftMusl)
public typealias sighandler_t = __sighandler_t
#endif

public var SIG_DFL: sighandler_t? { return nil }
public var SIG_IGN: sighandler_t {
  unsafeBitCast(1, to: sighandler_t.self)
}
public var SIG_ERR: sighandler_t {
  unsafeBitCast(-1, to: sighandler_t.self)
}
public var SIG_HOLD: sighandler_t {
  unsafeBitCast(2, to: sighandler_t.self)
}
#endif
