/*

Copyright 1985 by the Massachusetts Institute of Technology

Permission to use, copy, modify, and distribute this
software and its documentation for any purpose and without
fee is hereby granted, provided that the above copyright
notice appear in all copies and that both that copyright
notice and this permission notice appear in supporting
documentation, and that the name of M.I.T. not be used in
advertising or publicity pertaining to distribution of the
software without specific, written prior permission.
M.I.T. makes no representations about the suitability of
this software for any purpose.  It is provided "as is"
without express or implied warranty.

*/

#ifndef __MIT_COPYRIGHT_H__
#define __MIT_COPYRIGHT_H__

#ifdef __GNUC__
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <stdint.h>
#include <sys/time.h>
#include <fcntl.h>
#include <sys/socket.h>
#include <net/if.h>
#include <ifaddrs.h>
#include <arpa/inet.h>
#include <time.h>

typedef unsigned int u_int;
typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int uint;
typedef unsigned char uchar;
typedef unsigned short ushort;
typedef void* caddr_t;
#define FNDELAY O_NDELAY
#define IFNAMSIZ IF_NAMESIZE
#define _IOWRT 2
#define _IOSTRG 64
#define h_addr h_addr_list[0]
#define TIOCFLUSH CFLUSH

struct timezone {
    int tz_minuteswest;
    int tz_dsttime;
};

struct ifconf {
int               ifc_len; /* size of buffer */
union {
char         *ifc_buf; /* buffer address */
struct ifreq *ifc_req; /* array of structures */
};
};

                  struct ifmap {
                      unsigned long   mem_start;
                      unsigned long   mem_end;
                      unsigned short  base_addr;
                      unsigned char   irq;
                      unsigned char   dma;
                      unsigned char   port;
                  };


           struct ifreq {
               char ifr_name[IFNAMSIZ];  /* Interface name */
               union {
                   struct sockaddr ifr_addr;
                   struct sockaddr ifr_dstaddr;
                   struct sockaddr ifr_broadaddr;
                   struct sockaddr ifr_netmask;
                   struct sockaddr ifr_hwaddr;
                   short           ifr_flags;
                   int             ifr_ifindex;
                   int             ifr_metric;
                   int             ifr_mtu;
                   struct ifmap    ifr_map;
                   char            ifr_slave[IFNAMSIZ];
                   char            ifr_newname[IFNAMSIZ];
    char           *ifr_data;
};
};

#endif

#endif
