#ifndef __ZMQ_PLATFORM_HPP_INCLUDED__
#define __ZMQ_PLATFORM_HPP_INCLUDED__

#define ZMQ_USE_CV_IMPL_STL11
/* #undef ZMQ_USE_CV_IMPL_WIN32API */
/* #undef ZMQ_USE_CV_IMPL_PTHREADS */
/* #undef ZMQ_USE_CV_IMPL_NONE */

#if defined(__FreeBSD__) || defined(__FreeBSD_kernel__)
#define ZMQ_IOTHREAD_POLLER_USE_KQUEUE
#endif
#if defined _WIN32
#define ZMQ_IOTHREAD_POLLER_USE_EPOLL
#endif
/* #undef ZMQ_IOTHREAD_POLLER_USE_EPOLL_CLOEXEC */
/* #undef ZMQ_IOTHREAD_POLLER_USE_DEVPOLL */
/* #undef ZMQ_IOTHREAD_POLLER_USE_POLLSET */
/* #undef ZMQ_IOTHREAD_POLLER_USE_POLL */
/* #undef ZMQ_IOTHREAD_POLLER_USE_SELECT */
#if defined(__FreeBSD__) || defined(__FreeBSD_kernel__)
#define ZMQ_HAVE_PPOLL
#endif

/* #undef ZMQ_POLL_BASED_ON_SELECT */
#define ZMQ_POLL_BASED_ON_POLL

#if defined(__FreeBSD__) || defined(__FreeBSD_kernel__)
#define HAVE_POSIX_MEMALIGN 1
#endif
#define ZMQ_CACHELINE_SIZE 64

/* #undef ZMQ_FORCE_MUTEXES */
#if defined(__FreeBSD__) || defined(__FreeBSD_kernel__)
#define HAVE_FORK 
#define HAVE_CLOCK_GETTIME 
#define HAVE_MKDTEMP 
#define ZMQ_HAVE_UIO 
#endif
/* #undef HAVE_GETHRTIME */

#define ZMQ_HAVE_NOEXCEPT

#if defined(__FreeBSD__) || defined(__FreeBSD_kernel__)
#define ZMQ_HAVE_EVENTFD
#define ZMQ_HAVE_EVENTFD_CLOEXEC
#define ZMQ_HAVE_IFADDRS
#endif
/* #undef ZMQ_HAVE_SO_BINDTODEVICE */

/* #undef ZMQ_HAVE_SO_PEERCRED */
/* #undef ZMQ_HAVE_LOCAL_PEERCRED */
/* #undef ZMQ_HAVE_BUSY_POLL */

#if defined(__FreeBSD__) || defined(__FreeBSD_kernel__)
#define ZMQ_HAVE_O_CLOEXEC

#define ZMQ_HAVE_SOCK_CLOEXEC
#define ZMQ_HAVE_SO_KEEPALIVE
#define ZMQ_HAVE_TCP_KEEPCNT
#define ZMQ_HAVE_TCP_KEEPIDLE
#define ZMQ_HAVE_TCP_KEEPINTVL
#define ZMQ_HAVE_PTHREAD_SETNAME_2
#define HAVE_ACCEPT4
#define ZMQ_HAVE_STRLCPY
#endif

/* #undef ZMQ_HAVE_SO_PRIORITY */
/* #undef ZMQ_HAVE_TCP_KEEPALIVE */
/* #undef ZMQ_HAVE_PTHREAD_SETNAME_1 */

/* #undef ZMQ_HAVE_PTHREAD_SETNAME_3 */
/* #undef ZMQ_HAVE_PTHREAD_SET_NAME */
/* #undef ZMQ_HAVE_PTHREAD_SET_AFFINITY */
#define HAVE_STRNLEN
/* #undef ZMQ_HAVE_LIBBSD */

#define ZMQ_HAVE_IPC
#define ZMQ_HAVE_STRUCT_SOCKADDR_UN

#define ZMQ_USE_BUILTIN_SHA1
/* #undef ZMQ_USE_NSS */
/* #undef ZMQ_HAVE_WS */
/* #undef ZMQ_HAVE_WSS */
/* #undef ZMQ_HAVE_TIPC */

/* #undef ZMQ_HAVE_OPENPGM */
/* #undef ZMQ_HAVE_NORM */
/* #undef ZMQ_HAVE_VMCI */

/* #undef ZMQ_MAKE_VALGRIND_HAPPY */

/* #undef ZMQ_HAVE_CURVE */
/* #undef ZMQ_USE_LIBSODIUM */
/* #undef SODIUM_STATIC */
#if defined(__FreeBSD__) || defined(__FreeBSD_kernel__)
#undef ZMQ_USE_GNUTLS
#undef ZMQ_USE_RADIX_TREE
#undef HAVE_IF_NAMETOINDEX
#endif

#ifdef _AIX
  #define ZMQ_HAVE_AIX
#endif

#if defined __ANDROID__
  #define ZMQ_HAVE_ANDROID
#endif

#if defined __CYGWIN__
  #define ZMQ_HAVE_CYGWIN
#endif

#if defined __MINGW32__
  #define ZMQ_HAVE_MINGW32
#endif

#if defined(__FreeBSD__) || defined(__FreeBSD_kernel__)
  #define ZMQ_HAVE_FREEBSD
#endif

#if defined(__DragonFly__)
  #define ZMQ_HAVE_FREEBSD
  #define ZMQ_HAVE_DRAGONFLY
#endif

#if defined __hpux
  #define ZMQ_HAVE_HPUX
#endif

#if defined __linux__
  #define ZMQ_HAVE_LINUX
#endif

#if defined __NetBSD__
  #define ZMQ_HAVE_NETBSD
#endif

#if defined __OpenBSD__
  #define ZMQ_HAVE_OPENBSD
#endif

// TODO better move OS-specific defines to the automake files, and check for availability of IPC with an explicit test there
#if defined __VMS
  #define ZMQ_HAVE_OPENVMS
  #undef ZMQ_HAVE_IPC
#endif

#if defined __APPLE__
  #define ZMQ_HAVE_OSX
#endif

#if defined __QNXNTO__
  #define ZMQ_HAVE_QNXNTO
#endif

#if defined(sun) || defined(__sun)
  #define ZMQ_HAVE_SOLARIS
#endif

#if defined _WIN32
#define ZMQ_HAVE_WINDOWS
/* #undef ZMQ_HAVE_WINDOWS_UWP */
#endif

#endif
