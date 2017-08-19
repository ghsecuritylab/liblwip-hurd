#
# Copyright (c) 2001, 2002 Swedish Institute of Computer Science.
# All rights reserved. 
# 
# Redistribution and use in source and binary forms, with or without modification, 
# are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.
# 3. The name of the author may not be used to endorse or promote products
#    derived from this software without specific prior written permission. 
#
# THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED 
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF 
# MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
# SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT 
# OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING 
# IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY 
# OF SUCH DAMAGE.
#
# This file is part of the lwIP TCP/IP stack.
# 
# Author: Adam Dunkels <adam@sics.se>
#

# COREFILES, CORE4FILES: The minimum set of files needed for lwIP.
COREFILES=dist/core/init.c \
	dist/core/def.c \
	dist/core/dns.c \
	dist/core/inet_chksum.c \
	dist/core/ip.c \
	dist/core/mem.c \
	dist/core/memp.c \
	dist/core/netif.c \
	dist/core/pbuf.c \
	dist/core/raw.c \
	dist/core/stats.c \
	dist/core/sys.c \
	dist/core/tcp.c \
	dist/core/tcp_in.c \
	dist/core/tcp_out.c \
	dist/core/timeouts.c \
	dist/core/udp.c

CORE4FILES=dist/core/ipv4/autoip.c \
	dist/core/ipv4/dhcp.c \
	dist/core/ipv4/etharp.c \
	dist/core/ipv4/icmp.c \
	dist/core/ipv4/igmp.c \
	dist/core/ipv4/ip4_frag.c \
	dist/core/ipv4/ip4.c \
	dist/core/ipv4/ip4_addr.c

CORE6FILES=dist/core/ipv6/dhcp6.c \
	dist/core/ipv6/ethip6.c \
	dist/core/ipv6/icmp6.c \
	dist/core/ipv6/inet6.c \
	dist/core/ipv6/ip6.c \
	dist/core/ipv6/ip6_addr.c \
	dist/core/ipv6/ip6_frag.c \
	dist/core/ipv6/mld6.c \
	dist/core/ipv6/nd6.c

# APIFILES: The files which implement the sequential and socket APIs.
APIFILES=dist/api/api_lib.c \
	dist/api/api_msg.c \
	dist/api/err.c \
	dist/api/if_api.c \
	dist/api/netbuf.c \
	dist/api/netdb.c \
	dist/api/netifapi.c \
	dist/api/sockets.c \
	dist/api/tcpip.c

# NETIFFILES: Files implementing various generic network interface functions
NETIFFILES=dist/netif/ethernet.c

# LWIPALLFILES: All LWIP files without apps
LWIPALLFILES=$(COREFILES) \
	$(CORE4FILES) \
	$(CORE6FILES) \
	$(APIFILES) \
	$(NETIFFILES)

# LWIPALLFILES: All LWIP headers
LWIPALLHEADERS=dist/include/lwip/api.h \
	dist/include/lwip/arch.h \
	dist/include/lwip/autoip.h \
	dist/include/lwip/debug.h \
	dist/include/lwip/def.h \
	dist/include/lwip/dhcp.h \
	dist/include/lwip/dhcp6.h \
	dist/include/lwip/dns.h \
	dist/include/lwip/err.h \
	dist/include/lwip/errno.h \
	dist/include/lwip/etharp.h \
	dist/include/lwip/ethip6.h \
	dist/include/lwip/icmp.h \
	dist/include/lwip/icmp6.h \
	dist/include/lwip/if_api.h \
	dist/include/lwip/igmp.h \
	dist/include/lwip/inet.h \
	dist/include/lwip/inet_chksum.h \
	dist/include/lwip/init.h \
	dist/include/lwip/ip.h \
	dist/include/lwip/ip4.h \
	dist/include/lwip/ip4_addr.h \
	dist/include/lwip/ip4_frag.h \
	dist/include/lwip/ip6.h \
	dist/include/lwip/ip6_addr.h \
	dist/include/lwip/ip6_frag.h \
	dist/include/lwip/ip6_zone.h \
	dist/include/lwip/ip_addr.h \
	dist/include/lwip/mem.h \
	dist/include/lwip/memp.h \
	dist/include/lwip/mld6.h \
	dist/include/lwip/nd6.h \
	dist/include/lwip/netbuf.h \
	dist/include/lwip/netdb.h \
	dist/include/lwip/netif.h \
	dist/include/lwip/netifapi.h \
	dist/include/lwip/opt.h \
	dist/include/lwip/pbuf.h \
	dist/include/lwip/priv/api_msg.h \
	dist/include/lwip/priv/memp_priv.h \
	dist/include/lwip/priv/memp_std.h \
	dist/include/lwip/priv/nd6_priv.h \
	dist/include/lwip/priv/sockets_priv.h \
	dist/include/lwip/priv/tcp_priv.h \
	dist/include/lwip/priv/tcpip_priv.h \
	dist/include/lwip/prot/autoip.h \
	dist/include/lwip/prot/dhcp.h \
	dist/include/lwip/prot/dns.h \
	dist/include/lwip/prot/etharp.h \
	dist/include/lwip/prot/ethernet.h \
	dist/include/lwip/prot/icmp.h \
	dist/include/lwip/prot/icmp6.h \
	dist/include/lwip/prot/igmp.h \
	dist/include/lwip/prot/ip.h \
	dist/include/lwip/prot/ip4.h \
	dist/include/lwip/prot/ip6.h \
	dist/include/lwip/prot/mld6.h \
	dist/include/lwip/prot/nd6.h \
	dist/include/lwip/prot/tcp.h \
	dist/include/lwip/prot/udp.h \
	dist/include/lwip/raw.h \
	dist/include/lwip/sio.h \
	dist/include/lwip/snmp.h \
	dist/include/lwip/sockets.h \
	dist/include/lwip/stats.h \
	dist/include/lwip/sys.h \
	dist/include/lwip/tcp.h \
	dist/include/lwip/tcpip.h \
	dist/include/lwip/timeouts.h \
	dist/include/lwip/udp.h \
	dist/include/netif/etharp.h \
	dist/include/netif/ethernet.h \
	dist/include/netif/lowpan6.h \
	dist/include/netif/lowpan6_opts.h \
	dist/include/netif/ppp/ccp.h \
	dist/include/netif/ppp/chap-md5.h \
	dist/include/netif/ppp/chap-new.h \
	dist/include/netif/ppp/chap_ms.h \
	dist/include/netif/ppp/eap.h \
	dist/include/netif/ppp/ecp.h \
	dist/include/netif/ppp/eui64.h \
	dist/include/netif/ppp/fsm.h \
	dist/include/netif/ppp/ipcp.h \
	dist/include/netif/ppp/ipv6cp.h \
	dist/include/netif/ppp/lcp.h \
	dist/include/netif/ppp/magic.h \
	dist/include/netif/ppp/mppe.h \
	dist/include/netif/ppp/polarssl/arc4.h \
	dist/include/netif/ppp/polarssl/des.h \
	dist/include/netif/ppp/polarssl/md4.h \
	dist/include/netif/ppp/polarssl/md5.h \
	dist/include/netif/ppp/polarssl/sha1.h \
	dist/include/netif/ppp/ppp.h \
	dist/include/netif/ppp/ppp_impl.h \
	dist/include/netif/ppp/ppp_opts.h \
	dist/include/netif/ppp/pppapi.h \
	dist/include/netif/ppp/pppcrypt.h \
	dist/include/netif/ppp/pppdebug.h \
	dist/include/netif/ppp/pppoe.h \
	dist/include/netif/ppp/pppol2tp.h \
	dist/include/netif/ppp/pppos.h \
	dist/include/netif/ppp/upap.h \
	dist/include/netif/ppp/vj.h \
	dist/include/netif/slipif.h \
	dist/include/posix/errno.h \
	dist/include/posix/net/if.h \
	dist/include/posix/netdb.h \
	dist/include/posix/sys/socket.h

