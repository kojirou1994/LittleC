import Testing
import LittleC

@Test
func createThread() throws {
#if os(macOS)
  var id: pthread_t!
#else
  var id: pthread_t = withUnsafeTemporaryAllocation(of: pthread_t.self, capacity: 1) { $0[0] }
#endif

  let v = pthread_create(&id, nil, { context in
    print("worker thread start")
    sleep(3)
    print("worker thread finished")
    return nil
  }, nil)

  #expect(v == 0, "pthread_create returns \(v)")

  print("main thread join")
  pthread_join(id, nil)
}
