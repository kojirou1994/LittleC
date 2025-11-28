#include <string.h>
#include <sys/socket.h>
#include <sys/resource.h>

#ifdef __linux__
#define __USE_GNU
#define _GNU_SOURCE
#endif
#include <stdint.h>
#include <time.h>
#if __has_include(<sys/errno.h>)
#include <sys/errno.h>
#else
#include <errno.h>
#endif
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <arpa/inet.h>
#include <dirent.h>
#include <fcntl.h>
#include <netdb.h>
#include <poll.h>
#include <pthread.h>
#include <spawn.h>
#include <sys/stat.h>
#include <sys/statvfs.h>
#include <sys/types.h>
#include <sys/un.h>
#include <sys/wait.h>
#include <sys/ioctl.h>
#include <sys/xattr.h>
#include <unistd.h>
#include <ifaddrs.h>
#include <fts.h>


#define SWIFT_NONISOLATED           __attribute__((__swift_attr__("nonisolated(unsafe)")))
#define SWIFT_INLINE                static inline __attribute__((__always_inline__))

SWIFT_INLINE int swift_open(const char *path, int oflag, mode_t mode) {
  return open(path, oflag, mode);
}

SWIFT_INLINE int swift_openat(int fd, const char *path, int oflag, mode_t mode) {
  return openat(fd, path, oflag, mode);
}

SWIFT_INLINE int swift_ioctl(int fd, unsigned long int request) {
  return ioctl(fd, request);
}

SWIFT_INLINE int swift_ioctl_int(int fd, unsigned long int request, int value) {
  return ioctl(fd, request, value);
}

SWIFT_INLINE int swift_ioctl_ptr(int fd, unsigned long int request, void* ptr) {
  return ioctl(fd, request, ptr);
}

SWIFT_INLINE int swift_fcntl(int fd, int cmd) {
  return fcntl(fd, cmd);
}

SWIFT_INLINE int swift_fcntl_int(int fd, int cmd, int value) {
  return fcntl(fd, cmd, value);
}

SWIFT_INLINE int swift_fcntl_ptr(int fd, int cmd, void* ptr) {
  return fcntl(fd, cmd, ptr);
}

#ifdef __APPLE__

#include <libproc.h>
#include <removefile.h>

SWIFT_INLINE unsigned long swift_FIOSETOWN() {
  return FIOSETOWN;
}

SWIFT_INLINE unsigned long swift_FIOGETOWN() {
  return FIOGETOWN;
}

SWIFT_INLINE unsigned long swift_FIODTYPE() {
  return FIODTYPE;
}

#endif

#ifdef __linux__

extern FILE *stdin SWIFT_NONISOLATED;
extern FILE *stdout SWIFT_NONISOLATED;
extern FILE *stderr SWIFT_NONISOLATED;
extern char **environ SWIFT_NONISOLATED;

#include <gnu/libc-version.h>
#include <sys/vfs.h>
#endif

extern void pthread_exit(void*) __attribute__((noreturn));

SWIFT_INLINE int swift_WIFEXITED(int status) {
  return WIFEXITED(status);
}

SWIFT_INLINE int swift_WIFSIGNALED(int status) {
  return WIFSIGNALED(status);
}

SWIFT_INLINE int swift_WIFSTOPPED(int status) {
  return WIFSTOPPED(status);
}

SWIFT_INLINE int swift_WEXITSTATUS(int status) {
  return WEXITSTATUS(status);
}

SWIFT_INLINE int swift_WTERMSIG(int status) {
  return WTERMSIG(status);
}

SWIFT_INLINE int swift_WCOREDUMP(int status) {
  return WCOREDUMP(status);
}

SWIFT_INLINE int swift_WSTOPSIG(int status) {
  return WSTOPSIG(status);
}

SWIFT_INLINE int swift_WIFCONTINUED(int status) {
  return WIFCONTINUED(status);
}

SWIFT_INLINE int swift_W_EXITCODE(int ret, int sig) {
  return W_EXITCODE(ret, sig);
}

SWIFT_INLINE int swift_W_STOPCODE(int sig) {
  return W_STOPCODE(sig);
}

SWIFT_INLINE unsigned long swift_FIOCLEX() {
  return FIOCLEX;
}

SWIFT_INLINE unsigned long swift_FIONCLEX() {
  return FIONCLEX;
}

SWIFT_INLINE unsigned long swift_FIONREAD() {
  return FIONREAD;
}

SWIFT_INLINE unsigned long swift_FIONBIO() {
  return FIONBIO;
}

SWIFT_INLINE unsigned long swift_FIOASYNC() {
  return FIOASYNC;
}

SWIFT_INLINE rlim_t swift_RLIM_INFINITY() {
  return RLIM_INFINITY;
}

SWIFT_INLINE int swift_RLIMIT_MEMLOCK() {
  return RLIMIT_MEMLOCK;
}

SWIFT_INLINE int swift_RLIMIT_NPROC() {
  return RLIMIT_NPROC;
}

SWIFT_INLINE int swift_RLIMIT_RSS() {
  return RLIMIT_RSS;
}

SWIFT_INLINE void swift_clearerr_unlocked(FILE *stream) {
  return clearerr_unlocked(stream);
}

SWIFT_INLINE int swift_feof_unlocked(FILE *stream) {
  return feof_unlocked(stream);
}

SWIFT_INLINE int swift_ferror_unlocked(FILE *stream) {
  return ferror_unlocked(stream);
}

SWIFT_INLINE int swift_fileno_unlocked(FILE *stream) {
  return fileno_unlocked(stream);
}

SWIFT_INLINE u_int32_t swift_major(dev_t dev) {
  return major(dev);
}

SWIFT_INLINE u_int32_t swift_minor(dev_t dev) {
  return minor(dev);
}

SWIFT_INLINE dev_t swift_makedev(u_int32_t major, u_int32_t minor) {
  return makedev(major, minor);
}

SWIFT_INLINE int swift_get_errno() {
  return errno;
}

SWIFT_INLINE void swift_set_errno(int value) {
  errno = value;
}

SWIFT_INLINE FILE* swift_get_stdin() {
  return stdin;
}

SWIFT_INLINE FILE* swift_get_stdout() {
  return stdout;
}

SWIFT_INLINE FILE* swift_get_stderr() {
  return stderr;
}

// MARK: hton

SWIFT_INLINE uint64_t swift_hton_u64_to_u64(uint64_t value) {
  return htonll(value);
}

SWIFT_INLINE uint32_t swift_hton_u32_to_u32(uint32_t value) {
  return htonl(value);
}

SWIFT_INLINE uint16_t swift_hton_u16_to_u16(uint16_t value) {
  return htons(value);
}

// MARK: ntoh
SWIFT_INLINE uint16_t swift_ntoh_u16_to_u16(uint16_t value) {
  return ntohs(value);
}

SWIFT_INLINE uint32_t swift_ntoh_u32_to_u32(uint32_t value) {
  return ntohl(value);
}

SWIFT_INLINE uint64_t swift_ntoh_u64_to_u64(uint64_t value) {
  return ntohll(value);
}
