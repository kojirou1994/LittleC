import BigC

@_alwaysEmitIntoClient @inlinable @inline(__always)
public var S_IFMT: mode_t   { mode_t(0o170000) }
@_alwaysEmitIntoClient @inlinable @inline(__always)
public var S_IFIFO: mode_t  { mode_t(0o010000) }
@_alwaysEmitIntoClient @inlinable @inline(__always)
public var S_IFCHR: mode_t  { mode_t(0o020000) }
@_alwaysEmitIntoClient @inlinable @inline(__always)
public var S_IFDIR: mode_t  { mode_t(0o040000) }
@_alwaysEmitIntoClient @inlinable @inline(__always)
public var S_IFBLK: mode_t  { mode_t(0o060000) }
@_alwaysEmitIntoClient @inlinable @inline(__always)
public var S_IFREG: mode_t  { mode_t(0o100000) }
@_alwaysEmitIntoClient @inlinable @inline(__always)
public var S_IFLNK: mode_t  { mode_t(0o120000) }
@_alwaysEmitIntoClient @inlinable @inline(__always)
public var S_IFSOCK: mode_t { mode_t(0o140000) }

@_alwaysEmitIntoClient @inlinable @inline(__always)
public var S_IRWXU: mode_t  { mode_t(0o000700) }
@_alwaysEmitIntoClient @inlinable @inline(__always)
public var S_IRUSR: mode_t  { mode_t(0o000400) }
@_alwaysEmitIntoClient @inlinable @inline(__always)
public var S_IWUSR: mode_t  { mode_t(0o000200) }
@_alwaysEmitIntoClient @inlinable @inline(__always)
public var S_IXUSR: mode_t  { mode_t(0o000100) }

@_alwaysEmitIntoClient @inlinable @inline(__always)
public var S_IRWXG: mode_t  { mode_t(0o000070) }
@_alwaysEmitIntoClient @inlinable @inline(__always)
public var S_IRGRP: mode_t  { mode_t(0o000040) }
@_alwaysEmitIntoClient @inlinable @inline(__always)
public var S_IWGRP: mode_t  { mode_t(0o000020) }
@_alwaysEmitIntoClient @inlinable @inline(__always)
public var S_IXGRP: mode_t  { mode_t(0o000010) }

@_alwaysEmitIntoClient @inlinable @inline(__always)
public var S_IRWXO: mode_t  { mode_t(0o000007) }
@_alwaysEmitIntoClient @inlinable @inline(__always)
public var S_IROTH: mode_t  { mode_t(0o000004) }
@_alwaysEmitIntoClient @inlinable @inline(__always)
public var S_IWOTH: mode_t  { mode_t(0o000002) }
@_alwaysEmitIntoClient @inlinable @inline(__always)
public var S_IXOTH: mode_t  { mode_t(0o000001) }

@_alwaysEmitIntoClient @inlinable @inline(__always)
public var S_ISUID: mode_t  { mode_t(0o004000) }
@_alwaysEmitIntoClient @inlinable @inline(__always)
public var S_ISGID: mode_t  { mode_t(0o002000) }
@_alwaysEmitIntoClient @inlinable @inline(__always)
public var S_ISVTX: mode_t  { mode_t(0o001000) }
