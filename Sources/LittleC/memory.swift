/*
 compiler:
 1.  Apple Swift version 6.2.1 (swift-6.2.1-RELEASE)
 2.  Compiling with the current language version
 3.  While evaluating request ExecuteSILPipelineRequest(Run pipelines { Mandatory Diagnostic Passes + Enabling Optimization Passes } on SIL for multi_example)
 4.  While running pass #49 SILModuleTransform "MandatorySILLinker".
 5.  While deserializing SIL function "posix_memalign"
 6.  *** DESERIALIZATION FAILURE ***
 *** If any module named here was modified in the SDK, please delete the ***
 *** new swiftmodule files from the SDK and keep only swiftinterfaces.   ***
 module 'Swift', builder version '6.2.1(5.10)/Apple Swift version 6.2.1 (swift-6.2.1-RELEASE)', built from source against SDK 24B91, non-resilient, loaded from '~/Library/Developer/Toolchains/swift-6.2.1-RELEASE.xctoolchain/usr/lib/swift/embedded/Swift.swiftmodule/arm64-apple-macos.swiftmodule'
 SILFunction type mismatch for 'posix_memalign': '$@convention(c) (Optional<UnsafeMutablePointer<Optional<UnsafeMutableRawPointer>>>, Int, Int) -> Int32' != '$@convention(c) (UnsafeMutablePointer<Optional<UnsafeMutableRawPointer>>, Int, Int) -> Int32'
 */
@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func posix_memalign(
  _ __memptr: UnsafeMutablePointer<UnsafeMutableRawPointer?>,
  _ __alignment: Int,
  _ __size: Int
) -> Int32
