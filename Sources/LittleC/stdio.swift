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

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func fopen(_ pathname: UnsafePointer<CChar>, _ mode: UnsafePointer<CChar>) -> UnsafeMutablePointer<FILE>?

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func fclose(_ stream: UnsafeMutablePointer<FILE>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func fputs(_ string: UnsafePointer<CChar>, _ stream: UnsafeMutablePointer<FILE>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func puts(_ string: UnsafePointer<CChar>) -> CInt

/*
 asprintf       formatted output conversion

 clearerr       check and reset stream status

 fdopen         stream open functions
 fgetln         get a line from a stream
 fgetpos        reposition a stream
 fgetwc         get next wide character from input stream
 fgetws         get a line of wide characters from a stream
 fileno         check and reset stream status
 fprintf        formatted output conversion
 fpurge         flush a stream
 fputwc         output a wide character to a stream
 fputws         output a line of wide characters to a stream
 fropen         open a stream
 fscanf         input format conversion
 funopen        open a stream
 fwide          set/get orientation of stream
 fwopen         open a stream
 fwprintf       formatted wide character output conversion

 getc           get next character or word from input stream
 getchar        get next character or word from input stream
 getdelim       get a line from a stream
 getline        get a line from a stream
 gets           get a line from a stream
 getw           get next character or word from input stream
 getwc          get next wide character from input stream
 getwchar       get next wide character from input stream

 mkdtemp        create unique temporary directory
 mkstemp        create unique temporary file
 mktemp         create unique temporary file

 perror         system error messages
 printf         formatted output conversion
 putc           output a character or word to a stream
 putchar        output a character or word to a stream
 putw           output a character or word to a stream
 putwc          output a wide character to a stream
 putwchar       output a wide character to a stream

 remove         remove directory entry
 rewind         reposition a stream

 scanf          input format conversion
 setbuf         stream buffering operations
 setbuffer      stream buffering operations
 setlinebuf     stream buffering operations
 setvbuf        stream buffering operations
 snprintf       formatted output conversion
 sprintf        formatted output conversion
 sscanf         input format conversion
 strerror       system error messages
 swprintf       formatted wide character output conversion
 sys_errlist    system error messages
 sys_nerr       system error messages

 tempnam        temporary file routines
 tmpfile        temporary file routines
 tmpnam         temporary file routines

 ungetc         un-get character from input stream
 ungetwc        un-get wide character from input stream

 vasprintf      formatted output conversion
 vfprintf       formatted output conversion
 vfscanf        input format conversion
 vfwprintf      formatted wide character output conversion
 vprintf        formatted output conversion
 vscanf         input format conversion
 vsnprintf      formatted output conversion
 vsprintf       formatted output conversion
 vsscanf        input format conversion
 vswprintf      formatted wide character output conversion
 vwprintf       formatted wide character output conversion

 wprintf        formatted wide character output conversion


 
 */
// MARK: Darwin Foundation 2
/*
 import _DarwinFoundation2._stdio.ctermid
 import _DarwinFoundation2._stdio.printf
 import _DarwinFoundation2._stdio.seek_set
 import _DarwinFoundation2._stdio.sys_stdio
 import _DarwinFoundation2._stdio.xlocale

 public typealias fpos_t = __darwin_off_t

 public struct __sbuf {

     public init()

     public init(_base: UnsafeMutablePointer<UInt8>!, _size: Int32)

     public var _base: UnsafeMutablePointer<UInt8>!

     public var _size: Int32
 }

 public struct __sFILE {

     public init()

     public init(_p: UnsafeMutablePointer<UInt8>!, _r: Int32, _w: Int32, _flags: Int16, _file: Int16, _bf: __sbuf, _lbfsize: Int32, _cookie: UnsafeMutableRawPointer!, _close: (@convention(c) (UnsafeMutableRawPointer?) -> Int32)?, _read: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<CChar>?, Int32) -> Int32)?, _seek: (@convention(c) (UnsafeMutableRawPointer?, fpos_t, Int32) -> fpos_t)?, _write: (@convention(c) (UnsafeMutableRawPointer?, UnsafePointer<CChar>?, Int32) -> Int32)?, _ub: __sbuf, _extra: OpaquePointer!, _ur: Int32, _ubuf: (UInt8, UInt8, UInt8), _nbuf: UInt8, _lb: __sbuf, _blksize: Int32, _offset: fpos_t)

     public var _p: UnsafeMutablePointer<UInt8>!

     public var _r: Int32

     public var _w: Int32

     public var _flags: Int16

     public var _file: Int16

     public var _bf: __sbuf

     public var _lbfsize: Int32

     public var _cookie: UnsafeMutableRawPointer!

     public var _close: (@convention(c) (UnsafeMutableRawPointer?) -> Int32)?

     public var _read: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<CChar>?, Int32) -> Int32)?

     public var _seek: (@convention(c) (UnsafeMutableRawPointer?, fpos_t, Int32) -> fpos_t)?

     public var _write: (@convention(c) (UnsafeMutableRawPointer?, UnsafePointer<CChar>?, Int32) -> Int32)?

     public var _ub: __sbuf

     public var _extra: OpaquePointer!

     public var _ur: Int32

     public var _ubuf: (UInt8, UInt8, UInt8)

     public var _nbuf: UInt8

     public var _lb: __sbuf

     public var _blksize: Int32

     public var _offset: fpos_t
 }

 public typealias FILE = __sFILE

 nonisolated(unsafe) public var __stdinp: UnsafeMutablePointer<FILE>!

 nonisolated(unsafe) public var __stdoutp: UnsafeMutablePointer<FILE>!

 nonisolated(unsafe) public var __stderrp: UnsafeMutablePointer<FILE>!

 public var __SLBF: Int32 { get }

 public var __SNBF: Int32 { get }

 public var __SRD: Int32 { get }

 public var __SWR: Int32 { get }

 public var __SRW: Int32 { get }

 public var __SEOF: Int32 { get }

 public var __SERR: Int32 { get }

 public var __SMBF: Int32 { get }

 public var __SAPP: Int32 { get }

 public var __SSTR: Int32 { get }

 public var __SOPT: Int32 { get }

 public var __SNPT: Int32 { get }

 public var __SOFF: Int32 { get }

 public var __SMOD: Int32 { get }

 public var __SALC: Int32 { get }

 public var __SIGN: Int32 { get }

 public var _IOFBF: Int32 { get }

 public var _IOLBF: Int32 { get }

 public var _IONBF: Int32 { get }

 public var BUFSIZ: Int32 { get }

 public var EOF: Int32 { get }

 public var FOPEN_MAX: Int32 { get }

 public var FILENAME_MAX: Int32 { get }

 public var P_tmpdir: String { get }

 public var L_tmpnam: Int32 { get }

 public var TMP_MAX: Int32 { get }

 public func getc(_ stream: UnsafeMutableRawPointer) -> Int32

 public func getchar() -> Int32

 @available(*, deprecated, message: "This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of gets(3), it is highly recommended that you use fgets(3) instead.")
 public func gets(_: UnsafeMutablePointer<CChar>!) -> UnsafeMutablePointer<CChar>!

 public func perror(_: UnsafePointer<CChar>!)

 public func putc(_: Int32, _ stream: UnsafeMutableRawPointer) -> Int32

 public func putchar(_: Int32) -> Int32

 public func remove(_: UnsafePointer<CChar>!) -> Int32

 public func rename(_ __old: UnsafePointer<CChar>!, _ __new: UnsafePointer<CChar>!) -> Int32

 public func rewind(_ stream: UnsafeMutableRawPointer)

 public func setbuf(_ stream: UnsafeMutableRawPointer, _: UnsafeMutablePointer<CChar>!)

 public func setvbuf(_ stream: UnsafeMutableRawPointer, _: UnsafeMutablePointer<CChar>!, _: Int32, _ __size: Int) -> Int32

 public func tmpfile() -> UnsafeMutablePointer<FILE>!

 public func ungetc(_: Int32, _ stream: UnsafeMutableRawPointer) -> Int32

 public func vfprintf(_ stream: UnsafeMutableRawPointer, _: UnsafePointer<CChar>!, _: CVaListPointer) -> Int32

 public var L_ctermid: Int32 { get }

 public func fdopen(_: Int32, _: UnsafePointer<CChar>!) -> UnsafeMutablePointer<FILE>!

 public func fileno(_ stream: UnsafeMutableRawPointer) -> Int32

 public func __srget(_ stream: UnsafeMutableRawPointer) -> Int32

 public func __svfscanf(_ stream: UnsafeMutableRawPointer, _: UnsafePointer<CChar>!, _: CVaListPointer) -> Int32

 public func __swbuf(_: Int32, _ stream: UnsafeMutableRawPointer) -> Int32

 public func __sputc(_ _c: Int32, _ _p: UnsafeMutablePointer<FILE>!) -> Int32

 public func flockfile(_ stream: UnsafeMutableRawPointer)

 public func ftrylockfile(_ stream: UnsafeMutableRawPointer) -> Int32

 public func funlockfile(_ stream: UnsafeMutableRawPointer)

 public func getc_unlocked(_ stream: UnsafeMutableRawPointer) -> Int32

 public func getchar_unlocked() -> Int32

 public func putc_unlocked(_: Int32, _ stream: UnsafeMutableRawPointer) -> Int32

 public func putchar_unlocked(_: Int32) -> Int32

 public func getw(_ stream: UnsafeMutableRawPointer) -> Int32

 public func putw(_: Int32, _ stream: UnsafeMutableRawPointer) -> Int32

 public func fseeko(_ __stream: UnsafeMutablePointer<FILE>!, _ __offset: off_t, _ __whence: Int32) -> Int32

 public func ftello(_ __stream: UnsafeMutablePointer<FILE>!) -> off_t

 public func vfscanf(_ __stream: UnsafeMutablePointer<FILE>!, _ __format: UnsafePointer<CChar>!, _: CVaListPointer) -> Int32

 public func vscanf(_ __format: UnsafePointer<CChar>!, _: CVaListPointer) -> Int32

 public func vsnprintf(_ __str: UnsafeMutablePointer<CChar>!, _ __size: Int, _ __format: UnsafePointer<CChar>!, _: CVaListPointer) -> Int32

 public func vsscanf(_ __str: UnsafePointer<CChar>!, _ __format: UnsafePointer<CChar>!, _: CVaListPointer) -> Int32

 @available(macOS 10.7, *)
 public func vdprintf(_: Int32, _: UnsafePointer<CChar>!, _: CVaListPointer) -> Int32

 @available(macOS 10.7, *)
 public func getdelim(_ __linep: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, _ __linecapp: UnsafeMutablePointer<Int>!, _ __delimiter: Int32, _ __stream: UnsafeMutablePointer<FILE>!) -> Int

 @available(macOS 10.7, *)
 public func getline(_ __linep: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, _ __linecapp: UnsafeMutablePointer<Int>!, _ __stream: UnsafeMutablePointer<FILE>!) -> Int

 @available(macOS 10.13, *)
 public func fmemopen(_ __buf: UnsafeMutableRawPointer!, _ __size: Int, _ __mode: UnsafePointer<CChar>!) -> UnsafeMutablePointer<FILE>!

 @available(macOS 10.13, *)
 public func open_memstream(_ __bufp: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, _ __sizep: UnsafeMutablePointer<Int>!) -> UnsafeMutablePointer<FILE>!

 public let sys_nerr: Int32

 public let sys_errlist: <<error type>>

 public func ctermid_r(_: UnsafeMutablePointer<CChar>!) -> UnsafeMutablePointer<CChar>!

 public func fgetln(_ stream: UnsafeMutableRawPointer, _ __len: UnsafeMutablePointer<Int>!) -> UnsafeMutablePointer<CChar>!

 public func fmtcheck(_: UnsafePointer<CChar>!, _: UnsafePointer<CChar>!) -> UnsafePointer<CChar>!

 public func fpurge(_ stream: UnsafeMutableRawPointer) -> Int32

 public func setbuffer(_ stream: UnsafeMutableRawPointer, _: UnsafeMutablePointer<CChar>!, _ __size: Int32)

 public func setlinebuf(_ stream: UnsafeMutableRawPointer) -> Int32

 public func vasprintf(_: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, _: UnsafePointer<CChar>!, _: CVaListPointer) -> Int32

 public func funopen(_: UnsafeRawPointer!, _: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<CChar>?, Int32) -> Int32)?, _: (@convention(c) (UnsafeMutableRawPointer?, UnsafePointer<CChar>?, Int32) -> Int32)?, _: (@convention(c) (UnsafeMutableRawPointer?, fpos_t, Int32) -> fpos_t)?, _: (@convention(c) (UnsafeMutableRawPointer?) -> Int32)?) -> UnsafeMutablePointer<FILE>!

 public func __vsnprintf_chk(_: UnsafeMutablePointer<CChar>!, _ __maxlen: Int, _: Int32, _: Int, _: UnsafePointer<CChar>!, _: CVaListPointer) -> Int32

 public func __vsprintf_chk(_: UnsafeMutablePointer<CChar>!, _: Int32, _: Int, _: UnsafePointer<CChar>!, _: CVaListPointer) -> Int32


 */
