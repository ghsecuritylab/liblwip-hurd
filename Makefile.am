#   Copyright (C) 2017 Free Software Foundation, Inc.
#
#   This file is part of the GNU Hurd.
#
#   The GNU Hurd is free software; you can redistribute it and/or
#   modify it under the terms of the GNU General Public License as
#   published by the Free Software Foundation; either version 2, or (at
#   your option) any later version.
#
#   The GNU Hurd is distributed in the hope that it will be useful, but
#   WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#   General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program; if not, write to the Free Software
#   Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111, USA.

ACLOCAL_AMFLAGS = -I m4 --install

pkgconfigdir = $(libdir)/pkgconfig
pkgconfig_DATA = lwip.pc

include $(srcdir)/Filelists.mk

PORTDIR = $(srcdir)/port
LWIPDIR = $(srcdir)/dist

#PORTFILES: port specific files.
PORTFILES = port/sys_arch.c \
	port/route_hook.c

#PORTHEADERS: port specific headers.
PORTHEADERS = port/include/arch/cc.h \
	port/include/arch/sys_arch.h \
	port/include/lwipopts.h \
	port/include/route_hook.h

LWIPFILES = $(LWIPALLFILES) $(PORTFILES)
LWIPHEADERS = $(LWIPALLHEADERS) $(PORTHEADERS)

lib_LTLIBRARIES=liblwip.la

liblwip_la_SOURCES= $(LWIPFILES) $(LWIPHEADERS)

liblwip_la_includedir= \
	$(includedir)/lwip

liblwip_la_include_HEADERS = \
	$(PORTDIR)/include/lwipopts.h \
	$(PORTDIR)/include/route_hook.h

liblwip_la_lwip_includedir= \
	$(includedir)/lwip/lwip

liblwip_la_lwip_include_HEADERS = \
	$(LWIPDIR)/include/lwip/api.h \
	$(LWIPDIR)/include/lwip/arch.h \
	$(LWIPDIR)/include/lwip/autoip.h \
	$(LWIPDIR)/include/lwip/debug.h \
	$(LWIPDIR)/include/lwip/def.h \
	$(LWIPDIR)/include/lwip/dhcp.h \
	$(LWIPDIR)/include/lwip/err.h \
	$(LWIPDIR)/include/lwip/errno.h \
	$(LWIPDIR)/include/lwip/etharp.h \
	$(LWIPDIR)/include/lwip/ethip6.h \
	$(LWIPDIR)/include/lwip/icmp.h \
	$(LWIPDIR)/include/lwip/icmp6.h \
	$(LWIPDIR)/include/lwip/if_api.h \
	$(LWIPDIR)/include/lwip/igmp.h \
	$(LWIPDIR)/include/lwip/inet.h \
	$(LWIPDIR)/include/lwip/inet_chksum.h \
	$(LWIPDIR)/include/lwip/init.h \
	$(LWIPDIR)/include/lwip/ip.h \
	$(LWIPDIR)/include/lwip/ip4.h \
	$(LWIPDIR)/include/lwip/ip4_addr.h \
	$(LWIPDIR)/include/lwip/ip4_frag.h \
	$(LWIPDIR)/include/lwip/ip6.h \
	$(LWIPDIR)/include/lwip/ip6_addr.h \
	$(LWIPDIR)/include/lwip/ip6_frag.h \
	$(LWIPDIR)/include/lwip/ip6_zone.h \
	$(LWIPDIR)/include/lwip/ip_addr.h \
	$(LWIPDIR)/include/lwip/mem.h \
	$(LWIPDIR)/include/lwip/memp.h \
	$(LWIPDIR)/include/lwip/mld6.h \
	$(LWIPDIR)/include/lwip/nd6.h \
	$(LWIPDIR)/include/lwip/netbuf.h \
	$(LWIPDIR)/include/lwip/netdb.h \
	$(LWIPDIR)/include/lwip/netif.h \
	$(LWIPDIR)/include/lwip/netifapi.h \
	$(LWIPDIR)/include/lwip/opt.h \
	$(LWIPDIR)/include/lwip/pbuf.h \
	$(LWIPDIR)/include/lwip/raw.h \
	$(LWIPDIR)/include/lwip/snmp.h \
	$(LWIPDIR)/include/lwip/sockets.h \
	$(LWIPDIR)/include/lwip/stats.h \
	$(LWIPDIR)/include/lwip/sys.h \
	$(LWIPDIR)/include/lwip/tcp.h \
	$(LWIPDIR)/include/lwip/tcpip.h \
	$(LWIPDIR)/include/lwip/timeouts.h \
	$(LWIPDIR)/include/lwip/udp.h

liblwip_la_lwip_priv_includedir= \
	$(includedir)/lwip/lwip/priv

liblwip_la_lwip_priv_include_HEADERS = \
	$(LWIPDIR)/include/lwip/priv/api_msg.h \
	$(LWIPDIR)/include/lwip/priv/memp_priv.h \
	$(LWIPDIR)/include/lwip/priv/memp_std.h \
	$(LWIPDIR)/include/lwip/priv/nd6_priv.h \
	$(LWIPDIR)/include/lwip/priv/sockets_priv.h \
	$(LWIPDIR)/include/lwip/priv/tcp_priv.h \
	$(LWIPDIR)/include/lwip/priv/tcpip_priv.h

liblwip_la_lwip_prot_includedir= \
	$(includedir)/lwip/lwip/prot

liblwip_la_lwip_prot_include_HEADERS = \
	$(LWIPDIR)/include/lwip/prot/autoip.h \
	$(LWIPDIR)/include/lwip/prot/dhcp.h \
	$(LWIPDIR)/include/lwip/prot/dns.h \
	$(LWIPDIR)/include/lwip/prot/etharp.h \
	$(LWIPDIR)/include/lwip/prot/ethernet.h \
	$(LWIPDIR)/include/lwip/prot/icmp.h \
	$(LWIPDIR)/include/lwip/prot/icmp6.h \
	$(LWIPDIR)/include/lwip/prot/igmp.h \
	$(LWIPDIR)/include/lwip/prot/ip.h \
	$(LWIPDIR)/include/lwip/prot/ip4.h \
	$(LWIPDIR)/include/lwip/prot/ip6.h \
	$(LWIPDIR)/include/lwip/prot/mld6.h \
	$(LWIPDIR)/include/lwip/prot/nd6.h \
	$(LWIPDIR)/include/lwip/prot/tcp.h \
	$(LWIPDIR)/include/lwip/prot/udp.h

liblwip_la_netif_includedir= \
	$(includedir)/lwip/netif

liblwip_la_netif_include_HEADERS = \
	$(LWIPDIR)/include/netif/etharp.h \
	$(LWIPDIR)/include/netif/ethernet.h

liblwip_la_arch_includedir= \
	$(includedir)/lwip/arch

liblwip_la_arch_include_HEADERS = \
	$(PORTDIR)/include/arch/cc.h \
	$(PORTDIR)/include/arch/sys_arch.h

liblwip_la_CFLAGS = \
	-I$(LWIPDIR)/include \
	-I$(PORTDIR)/include \
	-D_GNU_SOURCE \
	-D_FILE_OFFSET_BITS=64 \
	-std=gnu99 -Wall

liblwip_la_LIBADD = \
	-lpthread

