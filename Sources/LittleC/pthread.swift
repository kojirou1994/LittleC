import BigC

@_alwaysEmitIntoClient
public var PTHREAD_CREATE_JOINABLE: Int32 { BigC.PTHREAD_CREATE_JOINABLE }

@_alwaysEmitIntoClient
public var PTHREAD_CREATE_DETACHED: Int32 { BigC.PTHREAD_CREATE_DETACHED }

@_alwaysEmitIntoClient
public var PTHREAD_INHERIT_SCHED: Int32 { BigC.PTHREAD_INHERIT_SCHED }

@_alwaysEmitIntoClient
public var PTHREAD_EXPLICIT_SCHED: Int32 { BigC.PTHREAD_EXPLICIT_SCHED }

@_alwaysEmitIntoClient
public var PTHREAD_CANCEL_ENABLE: Int32 { BigC.PTHREAD_CANCEL_ENABLE }

@_alwaysEmitIntoClient
public var PTHREAD_CANCEL_DISABLE: Int32 { BigC.PTHREAD_CANCEL_DISABLE }

@_alwaysEmitIntoClient
public var PTHREAD_CANCEL_DEFERRED: Int32 { BigC.PTHREAD_CANCEL_DEFERRED }

@_alwaysEmitIntoClient
public var PTHREAD_CANCEL_ASYNCHRONOUS: Int32 { BigC.PTHREAD_CANCEL_ASYNCHRONOUS }

@_alwaysEmitIntoClient
public var PTHREAD_SCOPE_SYSTEM: Int32 { BigC.PTHREAD_SCOPE_SYSTEM }

@_alwaysEmitIntoClient
public var PTHREAD_SCOPE_PROCESS: Int32 { BigC.PTHREAD_SCOPE_PROCESS }

@_alwaysEmitIntoClient
public var PTHREAD_PROCESS_SHARED: Int32 { BigC.PTHREAD_PROCESS_SHARED }

@_alwaysEmitIntoClient
public var PTHREAD_PROCESS_PRIVATE: Int32 { BigC.PTHREAD_PROCESS_PRIVATE }

@_alwaysEmitIntoClient
public var PTHREAD_PRIO_NONE: Int32 { BigC.PTHREAD_PRIO_NONE }

@_alwaysEmitIntoClient
public var PTHREAD_PRIO_INHERIT: Int32 { BigC.PTHREAD_PRIO_INHERIT }

@_alwaysEmitIntoClient
public var PTHREAD_PRIO_PROTECT: Int32 { BigC.PTHREAD_PRIO_PROTECT }

@_alwaysEmitIntoClient
public var PTHREAD_MUTEX_NORMAL: Int32 { BigC.PTHREAD_MUTEX_NORMAL }

@_alwaysEmitIntoClient
public var PTHREAD_MUTEX_ERRORCHECK: Int32 { BigC.PTHREAD_MUTEX_ERRORCHECK }

@_alwaysEmitIntoClient
public var PTHREAD_MUTEX_RECURSIVE: Int32 { BigC.PTHREAD_MUTEX_RECURSIVE }

@_alwaysEmitIntoClient
public var PTHREAD_MUTEX_DEFAULT: Int32 { BigC.PTHREAD_MUTEX_DEFAULT }

@_alwaysEmitIntoClient
public var PTHREAD_MUTEX_POLICY_FAIRSHARE_NP: Int32 { BigC.PTHREAD_MUTEX_POLICY_FAIRSHARE_NP }

@_alwaysEmitIntoClient
public var PTHREAD_MUTEX_POLICY_FIRSTFIT_NP: Int32 { BigC.PTHREAD_MUTEX_POLICY_FIRSTFIT_NP }

// MARK: Thread Routines

#if canImport(Darwin)
@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_create(_: UnsafeMutablePointer<pthread_t?>, _ attr: UnsafePointer<pthread_attr_t>?, _ start_routine: @convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer?, _ arg: UnsafeMutableRawPointer?) -> Int32
#else
@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_create(_: UnsafeMutablePointer<pthread_t>, _ attr: UnsafePointer<pthread_attr_t>?, _ start_routine: @convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer?, _ arg: UnsafeMutableRawPointer?) -> Int32
#endif

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_cancel(_: pthread_t) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_detach(_: pthread_t) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_equal(_: pthread_t, _: pthread_t) -> Int32

@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_exit(_ value_ptr: UnsafeMutableRawPointer?) -> Never {
  BigC.pthread_exit(value_ptr)
}

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_join(_: pthread_t, _: UnsafeMutablePointer<UnsafeMutableRawPointer?>? = nil) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_kill(_: pthread_t, _: Int32) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_once(_: UnsafeMutablePointer<pthread_once_t>, _: @convention(c) () -> ()) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_self() -> pthread_t

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_setcancelstate(_: Int32, _: UnsafeMutablePointer<Int32>?) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_setcanceltype(_: Int32, _: UnsafeMutablePointer<Int32>?) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_testcancel()

#if canImport(Darwin)
@_extern(c, "pthread_yield_np")
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_yield()
#else
@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_yield()
#endif

// MARK: Attribute Object Routines

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_attr_destroy(_: UnsafeMutablePointer<pthread_attr_t>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_attr_getdetachstate(_: UnsafePointer<pthread_attr_t>, _: UnsafeMutablePointer<Int32>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_attr_getguardsize(_: UnsafePointer<pthread_attr_t>, _: UnsafeMutablePointer<Int>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_attr_getinheritsched(_: UnsafePointer<pthread_attr_t>, _: UnsafeMutablePointer<Int32>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_attr_getschedparam(_: UnsafePointer<pthread_attr_t>, _: UnsafeMutablePointer<sched_param>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_attr_getschedpolicy(_: UnsafePointer<pthread_attr_t>, _: UnsafeMutablePointer<Int32>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_attr_getscope(_: UnsafePointer<pthread_attr_t>, _: UnsafeMutablePointer<Int32>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_attr_getstack(_: UnsafePointer<pthread_attr_t>, _: UnsafeMutablePointer<UnsafeMutableRawPointer?>, _: UnsafeMutablePointer<Int>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_attr_getstackaddr(_: UnsafePointer<pthread_attr_t>, _: UnsafeMutablePointer<UnsafeMutableRawPointer?>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_attr_getstacksize(_: UnsafePointer<pthread_attr_t>, _: UnsafeMutablePointer<Int>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_attr_init(_: UnsafeMutablePointer<pthread_attr_t>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_attr_setdetachstate(_: UnsafeMutablePointer<pthread_attr_t>, _: Int32) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_attr_setguardsize(_: UnsafeMutablePointer<pthread_attr_t>, _: Int) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_attr_setinheritsched(_: UnsafeMutablePointer<pthread_attr_t>, _: Int32) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_attr_setschedparam(_: UnsafeMutablePointer<pthread_attr_t>, _: UnsafePointer<sched_param>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_attr_setschedpolicy(_: UnsafeMutablePointer<pthread_attr_t>, _: Int32) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_attr_setscope(_: UnsafeMutablePointer<pthread_attr_t>, _: Int32) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_attr_setstack(_: UnsafeMutablePointer<pthread_attr_t>, _: UnsafeMutableRawPointer, _: Int) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_attr_setstackaddr(_: UnsafeMutablePointer<pthread_attr_t>, _: UnsafeMutableRawPointer) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_attr_setstacksize(_: UnsafeMutablePointer<pthread_attr_t>, _: Int) -> Int32

// MARK: Mutex Routines

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_mutex_destroy(_: UnsafeMutablePointer<pthread_mutex_t>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_mutex_getprioceiling(_: UnsafePointer<pthread_mutex_t>, _: UnsafeMutablePointer<Int32>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_mutex_init(_: UnsafeMutablePointer<pthread_mutex_t>, _: UnsafePointer<pthread_mutexattr_t>?) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_mutex_lock(_: UnsafeMutablePointer<pthread_mutex_t>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_mutex_setprioceiling(_: UnsafeMutablePointer<pthread_mutex_t>, _: Int32, _: UnsafeMutablePointer<Int32>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_mutex_trylock(_: UnsafeMutablePointer<pthread_mutex_t>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_mutex_unlock(_: UnsafeMutablePointer<pthread_mutex_t>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_mutexattr_destroy(_: UnsafeMutablePointer<pthread_mutexattr_t>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_mutexattr_getprioceiling(_: UnsafePointer<pthread_mutexattr_t>, _: UnsafeMutablePointer<Int32>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_mutexattr_getprotocol(_: UnsafePointer<pthread_mutexattr_t>, _: UnsafeMutablePointer<Int32>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_mutexattr_getpshared(_: UnsafePointer<pthread_mutexattr_t>, _: UnsafeMutablePointer<Int32>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_mutexattr_gettype(_: UnsafePointer<pthread_mutexattr_t>, _: UnsafeMutablePointer<Int32>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_mutexattr_getpolicy_np(_: UnsafePointer<pthread_mutexattr_t>, _: UnsafeMutablePointer<Int32>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_mutexattr_init(_: UnsafeMutablePointer<pthread_mutexattr_t>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_mutexattr_setprioceiling(_: UnsafeMutablePointer<pthread_mutexattr_t>, _: Int32) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_mutexattr_setprotocol(_: UnsafeMutablePointer<pthread_mutexattr_t>, _: Int32) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_mutexattr_setpshared(_: UnsafeMutablePointer<pthread_mutexattr_t>, _: Int32) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_mutexattr_settype(_: UnsafeMutablePointer<pthread_mutexattr_t>, _: Int32) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_mutexattr_setpolicy_np(_: UnsafeMutablePointer<pthread_mutexattr_t>, _: Int32) -> Int32

// MARK: Condition Variable Routines

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_cond_broadcast(_: UnsafeMutablePointer<pthread_cond_t>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_cond_destroy(_: UnsafeMutablePointer<pthread_cond_t>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_cond_init(_: UnsafeMutablePointer<pthread_cond_t>, _: UnsafePointer<pthread_condattr_t>?) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_cond_signal(_: UnsafeMutablePointer<pthread_cond_t>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_cond_timedwait(_: UnsafeMutablePointer<pthread_cond_t>, _: UnsafeMutablePointer<pthread_mutex_t>, _: UnsafePointer<timespec>?) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_cond_wait(_: UnsafeMutablePointer<pthread_cond_t>, _: UnsafeMutablePointer<pthread_mutex_t>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_condattr_destroy(_: UnsafeMutablePointer<pthread_condattr_t>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_condattr_init(_: UnsafeMutablePointer<pthread_condattr_t>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_condattr_getpshared(_: UnsafePointer<pthread_condattr_t>, _: UnsafeMutablePointer<Int32>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_condattr_setpshared(_: UnsafeMutablePointer<pthread_condattr_t>, _: Int32) -> Int32

// MARK: Read/Write Lock Routines

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_rwlock_destroy(_: UnsafeMutablePointer<pthread_rwlock_t>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_rwlock_init(_: UnsafeMutablePointer<pthread_rwlock_t>, _: UnsafePointer<pthread_rwlockattr_t>?) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_rwlock_rdlock(_: UnsafeMutablePointer<pthread_rwlock_t>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_rwlock_tryrdlock(_: UnsafeMutablePointer<pthread_rwlock_t>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_rwlock_trywrlock(_: UnsafeMutablePointer<pthread_rwlock_t>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_rwlock_wrlock(_: UnsafeMutablePointer<pthread_rwlock_t>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_rwlock_unlock(_: UnsafeMutablePointer<pthread_rwlock_t>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_rwlockattr_destroy(_: UnsafeMutablePointer<pthread_rwlockattr_t>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_rwlockattr_getpshared(_: UnsafePointer<pthread_rwlockattr_t>, _: UnsafeMutablePointer<Int32>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_rwlockattr_init(_: UnsafeMutablePointer<pthread_rwlockattr_t>) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_rwlockattr_setpshared(_: UnsafeMutablePointer<pthread_rwlockattr_t>, _: Int32) -> Int32

// MARK: Per-Thread Context Routines

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_key_create(_: UnsafeMutablePointer<pthread_key_t>, _: (@convention(c) (UnsafeMutableRawPointer) -> Void)?) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_key_delete(_: pthread_key_t) -> Int32

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_getspecific(_: pthread_key_t) -> UnsafeMutableRawPointer?

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_setspecific(_: pthread_key_t, _: UnsafeRawPointer?) -> Int32

// MARK: Cleanup Routines

@_extern(c)
@_alwaysEmitIntoClient @inlinable @inline(__always)
public func pthread_atfork(_: (@convention(c) () -> Void)?, _: (@convention(c) () -> Void)?, _: (@convention(c) () -> Void)?) -> Int32

