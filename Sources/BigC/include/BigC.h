#include <errno.h>
#include <stdio.h>
#include <dirent.h>
#include <fcntl.h>
#include <unistd.h>

#define __swift_nonisolated_unsafe              __attribute__((__swift_attr__("nonisolated(unsafe)")))

int static inline little_open(const char *path, int oflag, mode_t mode) {
  return open(path, oflag, mode);
}

int static inline little_openat(int fd, const char *path, int oflag, mode_t mode) {
  return openat(fd, path, oflag, mode);
}

#ifdef __linux__

extern FILE *stdin __swift_nonisolated_unsafe;
extern FILE *stdout __swift_nonisolated_unsafe;
extern FILE *stderr __swift_nonisolated_unsafe;

#endif
