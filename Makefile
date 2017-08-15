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

dir			= liblwip
makemode	= library

PORTDIR = $(srcdir)/port
DISTDIR = $(srcdir)/dist

include $(srcdir)/Filelists.mk

SRCS		= $(LWIPALLFILES)
ARCHSRCS	= sys_arch.c
OBJS		= $(patsubst %.S,%.o,$(patsubst %.c,%.o,\
				$(SRCS) $(ARCHSRCS)))

libname = liblwip
LDLIBS = -lpthread

include ../Makeconf

vpath %.c $(DISTDIR)/api \
		$(DISTDIR)/core \
		$(DISTDIR)/core/ipv4 \
		$(DISTDIR)/core/ipv6 \
		$(DISTDIR)/netif \
		$(PORTDIR)

CFLAGS += -I$(DISTDIR)/include -I$(PORTDIR)/include
CPPFLAGS += -imacros $(srcdir)/config.h

$(OBJS): config.h

