#if APPLE
@_exported import Darwin.C
#else

#if !$Embedded
#if canImport(FreeBSD)
@_exported import FreeBSD
#elseif canImport(Glibc)
@_exported import Glibc
#elseif canImport(Musl)
@_exported import Musl
#elseif canImport(Musl)
@_exported import Musl
#else
#error("unknown platform!")
#endif

#else
#warning("not supported on Embedded")
#endif

#endif
