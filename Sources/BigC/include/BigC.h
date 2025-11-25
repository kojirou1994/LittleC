#include <time.h>
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <dirent.h>
#include <fcntl.h>
#include <pthread.h>
#include <unistd.h>

#define __swift_nonisolated_unsafe              __attribute__((__swift_attr__("nonisolated(unsafe)")))

int static inline little_open(const char *path, int oflag, mode_t mode) {
  return open(path, oflag, mode);
}

int static inline little_openat(int fd, const char *path, int oflag, mode_t mode) {
  return openat(fd, path, oflag, mode);
}

#ifdef __apple__

extern void exit(int) __attribute__((noreturn));
extern void _exit(int) __attribute__((noreturn));
extern void _Exit(int) __attribute__((noreturn));

#endif

#ifdef __linux__

extern FILE *stdin __swift_nonisolated_unsafe;
extern FILE *stdout __swift_nonisolated_unsafe;
extern FILE *stderr __swift_nonisolated_unsafe;

#endif

extern void pthread_exit(void*) __attribute__((noreturn));
