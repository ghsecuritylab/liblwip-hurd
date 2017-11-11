/*
   Copyright (C) 2017 Free Software Foundation, Inc.
   Written by Joan Lledó.

   This file is part of the GNU Hurd.

   The GNU Hurd is free software; you can redistribute it and/or
   modify it under the terms of the GNU General Public License as
   published by the Free Software Foundation; either version 2, or (at
   your option) any later version.

   The GNU Hurd is distributed in the hope that it will be useful, but
   WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with the GNU Hurd.  If not, see <http://www.gnu.org/licenses/>.
*/

/* Routing module */

#include <route_hook.h>

#include <lwip/ip4_addr.h>

/*
 * Hook for adding custom routes
 */
struct netif *
lwip_hook_ip4_route(const ip4_addr_t * dest)
{
  struct netif *netif;

  /*
   * Add route for DHCPDISCOVER messages.
   *
   * When destination is broadcast, look for a netif with IP == IPADDR_ANY
   * to send the message through it.
   */
  for (netif = netif_list; netif != NULL; netif = netif->next) {
    /* is the netif up and does it have a link? */
    if(netif_is_up(netif) && netif_is_link_up(netif)
        && ip4_addr_isbroadcast(dest, netif)
        && ip4_addr_isany_val(*netif_ip4_addr(netif))) {
      return netif;
    }
  }

  return 0;
}
