# Makefile.in generated by automake 1.15 from Makefile.am.
# plugins/tibia/Makefile.  Generated from Makefile.in by configure.

# Copyright (C) 1994-2014 Free Software Foundation, Inc.

# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.



# Makefile.am
# Automake file for Tibia plugin
#
# Wireshark - Network traffic analyzer
# By Gerald Combs <gerald@wireshark.org>
# Copyright 1998 Gerald Combs
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#

# Makefile.am.inc
# Include file for Makefile.am files to get additional rules
#
# Wireshark - Network traffic analyzer
# By Gerald Combs <gerald@wireshark.org>
# Copyright 1998 Gerald Combs
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

# Makefile.common for Tibia plugin
#     Contains the stuff from Makefile.am and Makefile.nmake that is
#     a) common to both files and
#     b) portable between both files
#
# Wireshark - Network traffic analyzer
# By Gerald Combs <gerald@wireshark.org>
# Copyright 1998 Gerald Combs
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

#
# Common definitions for plugin Makefile.common files
#
# Wireshark - Network traffic analyzer
# By Gerald Combs <gerald@wireshark.org>
# Copyright 1998 Gerald Combs
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

#
# Source files are divided up along several axes:
#
# C vs. C++ - this is used on Windows to generated lists of object files
# with .c=.obj or .cpp=.obj
#
# Register vs. non-register - register files are scanned for registration
# functions, non-register files aren't.
#
# Flex-generated, Lemon-generated, and non-generated:
#
#	we distribute non-generated files, as they're part of the source,
#	and distribute Flex-generated files, as we don't require that
#	people have Flex installed and don't distribute it ourself and
#	thus can't guarantee that we can run Flex in the build process,
#	but we don't distribute Lemon-generated files, as we distribute
#	Lemon and can run it in the build process;
#
#	"make maintainer-clean" on UN*X and "nmake maintainer-clean" on
#	Windows remove all generated files;
#
#	"make distclean" on UN*X removes Lemon-generated files, as they're
#	not in the distribution, but not Flex-generated files, as they
#	are in the distribution;
#
#	"make distclean" on Windows removes both Lemon-generated and
#	Flex-generated files, as the Flex-generated files in the
#	distribution were generated by Flex on UN*X, and won't compile
#	on Windows;
#
#	Flex-generated files can't be built with full warnings
#	turned on, and can't be run through the checkAPI scripts,
#	as they generate code that won't pass (we've tweaked
#	Lemon to generate code that will pass).
#


am__is_gnu_make = { \
  if test -z '$(MAKELEVEL)'; then \
    false; \
  elif test -n '$(MAKE_HOST)'; then \
    true; \
  elif test -n '$(MAKE_VERSION)' && test -n '$(CURDIR)'; then \
    true; \
  else \
    false; \
  fi; \
}
am__make_running_with_option = \
  case $${target_option-} in \
      ?) ;; \
      *) echo "am__make_running_with_option: internal error: invalid" \
              "target option '$${target_option-}' specified" >&2; \
         exit 1;; \
  esac; \
  has_opt=no; \
  sane_makeflags=$$MAKEFLAGS; \
  if $(am__is_gnu_make); then \
    sane_makeflags=$$MFLAGS; \
  else \
    case $$MAKEFLAGS in \
      *\\[\ \	]*) \
        bs=\\; \
        sane_makeflags=`printf '%s\n' "$$MAKEFLAGS" \
          | sed "s/$$bs$$bs[$$bs $$bs	]*//g"`;; \
    esac; \
  fi; \
  skip_next=no; \
  strip_trailopt () \
  { \
    flg=`printf '%s\n' "$$flg" | sed "s/$$1.*$$//"`; \
  }; \
  for flg in $$sane_makeflags; do \
    test $$skip_next = yes && { skip_next=no; continue; }; \
    case $$flg in \
      *=*|--*) continue;; \
        -*I) strip_trailopt 'I'; skip_next=yes;; \
      -*I?*) strip_trailopt 'I';; \
        -*O) strip_trailopt 'O'; skip_next=yes;; \
      -*O?*) strip_trailopt 'O';; \
        -*l) strip_trailopt 'l'; skip_next=yes;; \
      -*l?*) strip_trailopt 'l';; \
      -[dEDm]) skip_next=yes;; \
      -[JT]) skip_next=yes;; \
    esac; \
    case $$flg in \
      *$$target_option*) has_opt=yes; break;; \
    esac; \
  done; \
  test $$has_opt = yes
am__make_dryrun = (target_option=n; $(am__make_running_with_option))
am__make_keepgoing = (target_option=k; $(am__make_running_with_option))
pkgdatadir = $(datadir)/wireshark
pkgincludedir = $(includedir)/wireshark
pkglibdir = $(libdir)/wireshark
pkglibexecdir = $(libexecdir)/wireshark
am__cd = CDPATH="$${ZSH_VERSION+.}$(PATH_SEPARATOR)" && cd
install_sh_DATA = $(install_sh) -c -m 644
install_sh_PROGRAM = $(install_sh) -c
install_sh_SCRIPT = $(install_sh) -c
INSTALL_HEADER = $(INSTALL_DATA)
transform = $(program_transform_name)
NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
build_triplet = x86_64-apple-darwin16.1.0
host_triplet = x86_64-apple-darwin16.1.0
target_triplet = x86_64-apple-darwin16.1.0
subdir = plugins/tibia
ACLOCAL_M4 = $(top_srcdir)/aclocal.m4
am__aclocal_m4_deps = $(top_srcdir)/aclocal-fallback/glib-2.0.m4 \
	$(top_srcdir)/aclocal-fallback/gtk-2.0.m4 \
	$(top_srcdir)/aclocal-fallback/gtk-3.0.m4 \
	$(top_srcdir)/aclocal-fallback/libgcrypt.m4 \
	$(top_srcdir)/aclocal-fallback/libsmi.m4 \
	$(top_srcdir)/aclocal-fallback/libtool.m4 \
	$(top_srcdir)/aclocal-fallback/ltoptions.m4 \
	$(top_srcdir)/aclocal-fallback/ltsugar.m4 \
	$(top_srcdir)/aclocal-fallback/ltversion.m4 \
	$(top_srcdir)/aclocal-fallback/lt~obsolete.m4 \
	$(top_srcdir)/acinclude.m4 $(top_srcdir)/configure.ac
am__configure_deps = $(am__aclocal_m4_deps) $(CONFIGURE_DEPENDENCIES) \
	$(ACLOCAL_M4)
DIST_COMMON = $(srcdir)/Makefile.am $(am__DIST_COMMON)
mkinstalldirs = $(install_sh) -d
CONFIG_HEADER = $(top_builddir)/config.h
CONFIG_CLEAN_FILES =
CONFIG_CLEAN_VPATH_FILES =
am__vpath_adj_setup = srcdirstrip=`echo "$(srcdir)" | sed 's|.|.|g'`;
am__vpath_adj = case $$p in \
    $(srcdir)/*) f=`echo "$$p" | sed "s|^$$srcdirstrip/||"`;; \
    *) f=$$p;; \
  esac;
am__strip_dir = f=`echo $$p | sed -e 's|^.*/||'`;
am__install_max = 40
am__nobase_strip_setup = \
  srcdirstrip=`echo "$(srcdir)" | sed 's/[].[^$$\\*|]/\\\\&/g'`
am__nobase_strip = \
  for p in $$list; do echo "$$p"; done | sed -e "s|$$srcdirstrip/||"
am__nobase_list = $(am__nobase_strip_setup); \
  for p in $$list; do echo "$$p $$p"; done | \
  sed "s| $$srcdirstrip/| |;"' / .*\//!s/ .*/ ./; s,\( .*\)/[^/]*$$,\1,' | \
  $(AWK) 'BEGIN { files["."] = "" } { files[$$2] = files[$$2] " " $$1; \
    if (++n[$$2] == $(am__install_max)) \
      { print $$2, files[$$2]; n[$$2] = 0; files[$$2] = "" } } \
    END { for (dir in files) print dir, files[dir] }'
am__base_list = \
  sed '$$!N;$$!N;$$!N;$$!N;$$!N;$$!N;$$!N;s/\n/ /g' | \
  sed '$$!N;$$!N;$$!N;$$!N;s/\n/ /g'
am__uninstall_files_from_dir = { \
  test -z "$$files" \
    || { test ! -d "$$dir" && test ! -f "$$dir" && test ! -r "$$dir"; } \
    || { echo " ( cd '$$dir' && rm -f" $$files ")"; \
         $(am__cd) "$$dir" && rm -f $$files; }; \
  }
am__installdirs = "$(DESTDIR)$(plugindir)"
LTLIBRARIES = $(plugin_LTLIBRARIES)
tibia_la_DEPENDENCIES =
am__objects_1 = packet-tibia.lo
am__objects_2 = $(am__objects_1) tinc-rsa.lo xtea.lo
am__objects_3 = $(am__objects_2)
am__objects_4 =
am__objects_5 = $(am__objects_4)
am_tibia_la_OBJECTS = plugin.lo $(am__objects_3) $(am__objects_5)
tibia_la_OBJECTS = $(am_tibia_la_OBJECTS)
AM_V_lt = $(am__v_lt_$(V))
am__v_lt_ = $(am__v_lt_$(AM_DEFAULT_VERBOSITY))
am__v_lt_0 = --silent
am__v_lt_1 = 
tibia_la_LINK = $(LIBTOOL) $(AM_V_lt) --tag=CC $(AM_LIBTOOLFLAGS) \
	$(LIBTOOLFLAGS) --mode=link $(CCLD) $(AM_CFLAGS) $(CFLAGS) \
	$(tibia_la_LDFLAGS) $(LDFLAGS) -o $@
AM_V_P = $(am__v_P_$(V))
am__v_P_ = $(am__v_P_$(AM_DEFAULT_VERBOSITY))
am__v_P_0 = false
am__v_P_1 = :
AM_V_GEN = $(am__v_GEN_$(V))
am__v_GEN_ = $(am__v_GEN_$(AM_DEFAULT_VERBOSITY))
am__v_GEN_0 = @echo "  GEN     " $@;
am__v_GEN_1 = 
AM_V_at = $(am__v_at_$(V))
am__v_at_ = $(am__v_at_$(AM_DEFAULT_VERBOSITY))
am__v_at_0 = @
am__v_at_1 = 
DEFAULT_INCLUDES = -I. -I$(top_builddir)
depcomp = $(SHELL) $(top_srcdir)/depcomp
am__depfiles_maybe = depfiles
am__mv = mv -f
COMPILE = $(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) \
	$(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS)
LTCOMPILE = $(LIBTOOL) $(AM_V_lt) --tag=CC $(AM_LIBTOOLFLAGS) \
	$(LIBTOOLFLAGS) --mode=compile $(CC) $(DEFS) \
	$(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) \
	$(AM_CFLAGS) $(CFLAGS)
AM_V_CC = $(am__v_CC_$(V))
am__v_CC_ = $(am__v_CC_$(AM_DEFAULT_VERBOSITY))
am__v_CC_0 = @echo "  CC      " $@;
am__v_CC_1 = 
CCLD = $(CC)
LINK = $(LIBTOOL) $(AM_V_lt) --tag=CC $(AM_LIBTOOLFLAGS) \
	$(LIBTOOLFLAGS) --mode=link $(CCLD) $(AM_CFLAGS) $(CFLAGS) \
	$(AM_LDFLAGS) $(LDFLAGS) -o $@
AM_V_CCLD = $(am__v_CCLD_$(V))
am__v_CCLD_ = $(am__v_CCLD_$(AM_DEFAULT_VERBOSITY))
am__v_CCLD_0 = @echo "  CCLD    " $@;
am__v_CCLD_1 = 
SOURCES = $(tibia_la_SOURCES)
DIST_SOURCES = $(tibia_la_SOURCES)
am__can_run_installinfo = \
  case $$AM_UPDATE_INFO_DIR in \
    n|no|NO) false;; \
    *) (install-info --version) >/dev/null 2>&1;; \
  esac
am__tagged_files = $(HEADERS) $(SOURCES) $(TAGS_FILES) $(LISP)
# Read a list of newline-separated strings from the standard input,
# and print each of them once, without duplicates.  Input order is
# *not* preserved.
am__uniquify_input = $(AWK) '\
  BEGIN { nonempty = 0; } \
  { items[$$0] = 1; nonempty = 1; } \
  END { if (nonempty) { for (i in items) print i; }; } \
'
# Make sure the list of sources is unique.  This is necessary because,
# e.g., the same source file might be shared among _SOURCES variables
# for different programs/libraries.
am__define_uniq_tagged_files = \
  list='$(am__tagged_files)'; \
  unique=`for i in $$list; do \
    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
  done | $(am__uniquify_input)`
ETAGS = etags
CTAGS = ctags
am__DIST_COMMON = $(srcdir)/../Makefile.common.inc \
	$(srcdir)/Makefile.common $(srcdir)/Makefile.in \
	$(top_srcdir)/Makefile.am.inc $(top_srcdir)/depcomp AUTHORS \
	COPYING ChangeLog
DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(TEXINFOS) $(EXTRA_DIST)
A2X = a2x
ACLOCAL = ${SHELL} /Users/a3f/prjs/wireshark/missing aclocal-1.15
AC_MIN_VERSION = 2.64
ADNS_LIBS = @ADNS_LIBS@
AMTAR = $${TAR-tar}
AM_DEFAULT_VERBOSITY = 0
APPLICATIONSERVICES_FRAMEWORKS = -framework ApplicationServices
AR = ar
AUTOCONF = ${SHELL} /Users/a3f/prjs/wireshark/missing autoconf
AUTOHEADER = ${SHELL} /Users/a3f/prjs/wireshark/missing autoheader
AUTOMAKE = ${SHELL} /Users/a3f/prjs/wireshark/missing automake-1.15
AWK = gawk
CC = clang
CCDEPMODE = depmode=gcc3
CC_FOR_BUILD = clang
CFLAGS = -g -O2
CFLAGS_FOR_BUILD = -g -O2
CFLAGS_SSE42 = -msse4.2
CONFIG_ARGS = 
COREFOUNDATION_FRAMEWORKS = -framework CoreFoundation
CPP = clang -E
CPPFLAGS = 
CXX = g++ -std=c++11
CXXCPP = g++ -E -std=c++11
CXXDEPMODE = depmode=gcc3
CXXFLAGS = -g -O2
CYGPATH_W = echo
C_ARES_LIBS = -lcares
DEFS = -DHAVE_CONFIG_H
DEPDIR = .deps
DESKTOP_FILE_INSTALL = 
DLLTOOL = false
DOXYGEN = /usr/local/bin/doxygen
DSYMUTIL = dsymutil
DUMPBIN = 
DUMPCAP_GROUP = 
ECHO_C = \c
ECHO_N = 
ECHO_T = 
EGREP = /usr/bin/grep -E
ENABLE_STATIC = 
EXEEXT = 
FGREP = /usr/bin/grep -F
FLOORL_LO = @FLOORL_LO@
FOP = fop
GEOIP_LIBS = -lGeoIP
GETOPT_LO = @GETOPT_LO@
GLIB_CFLAGS = -DG_DISABLE_SINGLE_INCLUDES -DG_DISABLE_DEPRECATED -D_REENTRANT -isystem/usr/local/Cellar/glib/2.50.1/include/glib-2.0 -isystem/usr/local/Cellar/glib/2.50.1/lib/glib-2.0/include -isystem/usr/local/opt/gettext/include -isystem/usr/local/Cellar/pcre/8.39/include
GLIB_COMPILE_RESOURCES = @GLIB_COMPILE_RESOURCES@
GLIB_GENMARSHAL = @GLIB_GENMARSHAL@
GLIB_LIBS = -L/usr/local/Cellar/glib/2.50.1/lib -L/usr/local/opt/gettext/lib -lgthread-2.0 -lgmodule-2.0 -lglib-2.0 -lintl
GLIB_MIN_VERSION = 2.22.0
GLIB_MKENUMS = @GLIB_MKENUMS@
GOBJECT_QUERY = @GOBJECT_QUERY@
GREP = /usr/bin/grep
GTK2_MIN_VERSION = 2.12.0
GTK3_MIN_VERSION = 3.0.0
GTK_CFLAGS = 
GTK_LIBS = 
GUI_CONFIGURE_FLAGS =  --with-qt
HAVE_A2X = @HAVE_A2X@
HAVE_BLESS = yes
HAVE_DOXYGEN = yes
HAVE_DPKG_BUILDPACKAGE = no
HAVE_FOP = @HAVE_FOP@
HAVE_HDIUTIL = yes
HAVE_LYNX = @HAVE_LYNX@
HAVE_OSX_PACKAGING = yes
HAVE_PKGMK = no
HAVE_PKGPROTO = no
HAVE_PKGTRANS = no
HAVE_RPM = @HAVE_RPM@
HAVE_SVR4_PACKAGING = no
HAVE_W3M = @HAVE_W3M@
HAVE_XCODEBUILD = yes
HAVE_XMLLINT = @HAVE_XMLLINT@
HAVE_XSLTPROC = @HAVE_XSLTPROC@
HTML_VIEWER = @HTML_VIEWER@
INET_ATON_LO = @INET_ATON_LO@
INET_NTOP_LO = @INET_NTOP_LO@
INET_PTON_LO = @INET_PTON_LO@
INSTALL = /usr/local/bin/ginstall -c
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_PROGRAM = ${INSTALL}
INSTALL_SCRIPT = ${INSTALL}
INSTALL_STRIP_PROGRAM = $(install_sh) -c -s
KRB5_CONFIG = /usr/bin/krb5-config
KRB5_LIBS = -dynamic -Wl,-search_paths_first -lkrb5
LD = /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ld
LDFLAGS = 
LDFLAGS_SHAREDLIB = -Wl,-single_module
LEX = flex
LEXLIB = -ll
LEX_OUTPUT_ROOT = lex.yy
LIBCAP_LIBS = 
LIBGCRYPT_CFLAGS = -I/usr/local/opt/libgcrypt/include -I/usr/local/opt/libgpg-error/include
LIBGCRYPT_CONFIG = /usr/local/bin/libgcrypt-config
LIBGCRYPT_LIBS = -L/usr/local/opt/libgcrypt/lib -lgcrypt -L/usr/local/opt/libgpg-error/lib -lgpg-error
LIBGNUTLS_CFLAGS = -I/usr/local/Cellar/gnutls/3.4.16/include -I/usr/local/Cellar/nettle/3.3/include -I/usr/local/Cellar/libtasn1/4.9/include
LIBGNUTLS_LIBS = -L/usr/local/Cellar/gnutls/3.4.16/lib -lgnutls
LIBNL1_CFLAGS = @LIBNL1_CFLAGS@
LIBNL1_LIBS = @LIBNL1_LIBS@
LIBNL2_CFLAGS = @LIBNL2_CFLAGS@
LIBNL2_LIBS = @LIBNL2_LIBS@
LIBNL3_CFLAGS = @LIBNL3_CFLAGS@
LIBNL3_LIBS = @LIBNL3_LIBS@
LIBOBJS =  ${LIBOBJDIR}popcount$U.o

# Libs must be cleared, or else libtool won't create a shared module.
# If your module needs to be linked against any particular libraries,
# add them here.
LIBS = 
LIBSMI_CFLAGS = 
LIBSMI_LDFLAGS = 
LIBSMI_VERSION = 
LIBSSH_LIBS = -lssh
LIBTOOL = $(SHELL) $(top_builddir)/libtool
LIBTOOL_DEPS = ./ltmain.sh
LIPO = lipo
LN_S = ln -s
LTLIBOBJS =  ${LIBOBJDIR}popcount$U.lo
LT_SYS_LIBRARY_PATH = 
LUA_CFLAGS = -isystem/usr/local/opt/lua/include
LUA_LIBS = -L/usr/local/opt/lua/lib -llua -lm
LYNX = @LYNX@
MAKEINFO = ${SHELL} /Users/a3f/prjs/wireshark/missing makeinfo
MANIFEST_TOOL = :
MKDIR_P = /usr/local/bin/gmkdir -p
MOC = /usr/local/bin/moc
NM = /usr/bin/nm -B
NMEDIT = nmedit
NSL_LIBS = @NSL_LIBS@
OBJDUMP = objdump
OBJEXT = o
OSX_APP_FLAGS = -sdkroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.12.sdk
OSX_DMG_FLAGS = 
OSX_MIN_VERSION = 10.12
OTOOL = otool
OTOOL64 = :
PACKAGE = wireshark
PACKAGE_BUGREPORT = http://bugs.wireshark.org/
PACKAGE_NAME = Wireshark
PACKAGE_STRING = Wireshark 2.3.0
PACKAGE_TARNAME = wireshark
PACKAGE_URL = http://www.wireshark.org/
PACKAGE_VERSION = 2.3.0
PATH_SEPARATOR = :
PCAP_CONFIG = /usr/bin/pcap-config
PCAP_LIBS = -lpcap 
PERL = /usr/local/bin/perl
PIE_CFLAGS = 
PIE_LDFLAGS = 
PKG_CONFIG = /usr/local/bin/pkg-config
PKG_CONFIG_LIBDIR = 
PKG_CONFIG_PATH = 
PLUGIN_LIBS = 
POD2HTML = /usr/local/bin/pod2html
POD2MAN = /usr/local/bin/pod2man
POPCOUNT_LO = @POPCOUNT_LO@
PORTAUDIO_INCLUDES = 
PORTAUDIO_LIBS = 
PYTHON = /usr/bin/python
QTCHOOSER = 
QT_MIN_VERSION = 4.8.0
Qt_LDFLAGS = -Wl,-rpath,/usr/local/Cellar/qt5/5.7.0/lib
Qt_LIBS =  -F/usr/local/Cellar/qt5/5.7.0/lib -framework QtCore -F/usr/local/Cellar/qt5/5.7.0/lib -framework QtGui -F/usr/local/Cellar/qt5/5.7.0/lib -framework QtCore -F/usr/local/Cellar/qt5/5.7.0/lib -framework QtWidgets -F/usr/local/Cellar/qt5/5.7.0/lib -framework QtGui -F/usr/local/Cellar/qt5/5.7.0/lib -framework QtCore -F/usr/local/Cellar/qt5/5.7.0/lib -framework QtPrintSupport -F/usr/local/Cellar/qt5/5.7.0/lib -framework QtWidgets -F/usr/local/Cellar/qt5/5.7.0/lib -framework QtGui -F/usr/local/Cellar/qt5/5.7.0/lib -framework QtCore -F/usr/local/Cellar/qt5/5.7.0/lib -framework QtMultimedia -F/usr/local/Cellar/qt5/5.7.0/lib -framework QtNetwork -F/usr/local/Cellar/qt5/5.7.0/lib -framework QtGui -F/usr/local/Cellar/qt5/5.7.0/lib -framework QtCore -F/usr/local/Cellar/qt5/5.7.0/lib -framework QtMacExtras -F/usr/local/Cellar/qt5/5.7.0/lib -framework QtGui -F/usr/local/Cellar/qt5/5.7.0/lib -framework QtCore
RANLIB = ranlib
RCC = /usr/local/bin/rcc
RPMBUILD_WITH_ARGS = --without gtk2 --without gtk3 --with qt5 --with lua
SBC_CFLAGS = 
SBC_LIBS = 
SED = /usr/local/bin/sed
SETCAP = 
SET_MAKE = 
SHELL = /bin/sh
SOCKET_LIBS = @SOCKET_LIBS@
SSL_LIBS = 
STRIP = strip
STRPTIME_LO = @STRPTIME_LO@
SYSTEMCONFIGURATION_FRAMEWORKS = -framework SystemConfiguration
UIC = /usr/local/bin/uic
VERSION = 2.3.0
W3M = @W3M@
XMLLINT = @XMLLINT@
XSLTPROC = xsltproc
YACC = bison -y
YACCDUMMY = @YACCDUMMY@
YFLAGS = 
abs_builddir = /Users/a3f/prjs/wireshark/plugins/tibia
abs_srcdir = /Users/a3f/prjs/wireshark/plugins/tibia
abs_top_builddir = /Users/a3f/prjs/wireshark
abs_top_srcdir = /Users/a3f/prjs/wireshark
ac_ct_AR = ar
ac_ct_CC = clang
ac_ct_CXX = g++
ac_ct_DUMPBIN = 
ac_cv_wireshark_have_rpm = @ac_cv_wireshark_have_rpm@
am__include = include
am__leading_dot = .
am__quote = 
am__tar = tar --format=ustar -chf - "$$tardir"
am__untar = tar -xf -
androiddump_bin = androiddump$(EXEEXT)
androiddump_man = androiddump.1
bindir = ${exec_prefix}/bin
build = x86_64-apple-darwin16.1.0
build_alias = 
build_cpu = x86_64
build_os = darwin16.1.0
build_vendor = apple
builddir = .
capinfos_bin = capinfos$(EXEEXT)
capinfos_man = capinfos.1
captype_bin = captype$(EXEEXT)
captype_man = captype.1
datadir = ${datarootdir}
datarootdir = ${prefix}/share
dftest_bin = dftest$(EXEEXT)
dftest_man = dftest.1
docdir = ${datarootdir}/doc/${PACKAGE_TARNAME}
dumpcap_bin = dumpcap$(EXEEXT)
dumpcap_man = dumpcap.1
dvidir = ${docdir}
echld_dir = 
echld_test_bin = 
editcap_bin = editcap$(EXEEXT)
editcap_man = editcap.1
exec_prefix = ${prefix}
extcapdir = ${libdir}/wireshark/extcap
have_sw_vers = yes
host = x86_64-apple-darwin16.1.0
host_alias = 
host_cpu = x86_64
host_os = darwin16.1.0
host_vendor = apple
htmldir = ${docdir}
includedir = ${prefix}/include
infodir = ${datarootdir}/info
install_sh = ${SHELL} /Users/a3f/prjs/wireshark/install-sh
libdir = ${exec_prefix}/lib
libexecdir = ${exec_prefix}/libexec
localedir = ${datarootdir}/locale
localstatedir = ${prefix}/var
mandir = ${datarootdir}/man
mergecap_bin = mergecap$(EXEEXT)
mergecap_man = mergecap.1
mkdir_p = $(MKDIR_P)
oldincludedir = /usr/include
pdfdir = ${docdir}
plugindir = ${libdir}/wireshark/plugins/2.3.0
plugins_dir = plugins
prefix = /usr/local
program_transform_name = s,x,x,
psdir = ${docdir}
randpkt_bin = randpkt$(EXEEXT)
randpkt_man = randpkt.1
randpktdump_bin = randpktdump$(EXEEXT)
randpktdump_man = randpktdump.1
rawshark_bin = rawshark$(EXEEXT)
rawshark_man = rawshark.1
reordercap_bin = reordercap$(EXEEXT)
reordercap_man = reordercap.1
sbindir = ${exec_prefix}/sbin
sharedstatedir = ${prefix}/com
srcdir = .
sshdump_bin = sshdump$(EXEEXT)
sshdump_man = sshdump.1
sysconfdir = ${prefix}/etc
target = x86_64-apple-darwin16.1.0
target_alias = 
target_cpu = x86_64
target_os = darwin16.1.0
target_vendor = apple
text2pcap_bin = text2pcap$(EXEEXT)
text2pcap_man = text2pcap.1
tfshark_bin = 
tfshark_man = 
top_build_prefix = ../../
top_builddir = ../..
top_srcdir = ../..
tshark_bin = tshark$(EXEEXT)
tshark_man = tshark.1
wireshark_SUBDIRS = codecs ui/qt
wireshark_bin = wireshark$(EXEEXT)
wireshark_man = wireshark.1
wiresharkfilter_man = wireshark-filter.4
AUTOMAKE_OPTIONS = -Wno-portability
AM_V_AWK = $(am__v_AWK_$(V))
am__v_AWK_ = $(am__v_AWK_$(AM_DEFAULT_VERBOSITY))
am__v_AWK_0 = @echo "  AWK     " $@;
AM_V_LEMON = $(am__v_LEMON_$(V))
am__v_LEMON_ = $(am__v_LEMON_$(AM_DEFAULT_VERBOSITY))
am__v_LEMON_0 = @echo "  LEMON   " $@;
AM_V_RUNLEX = $(am__v_RUNLEX_$(V))
am__v_RUNLEX_ = $(am__v_RUNLEX_$(AM_DEFAULT_VERBOSITY))
am__v_RUNLEX_0 = @echo "  RUNLEX  " $@;
AM_V_SED = $(am__v_SED_$(V))
am__v_SED_ = $(am__v_SED_$(AM_DEFAULT_VERBOSITY))
am__v_SED_0 = @echo "  SED     " $@;

# abi-compliance-checker descriptor
abi_incdirs = $(subst -I,NEWLINE,$(filter -I%,$(CFLAGS) -I$(abs_top_srcdir) -I$(abs_srcdir)))
abi_sysdirs = $(subst -isystem,NEWLINE,$(filter -isystem%,$(CFLAGS)))
INCLUDE_DIRS = $(abi_incdirs) $(abi_sysdirs)
AM_CPPFLAGS = -I$(top_srcdir)
PLUGIN_CPPFLAGS = $(INCLUDEDIRS) $(WS_CPPFLAGS) $(GLIB_CFLAGS)
PLUGIN_CFLAGS = 
PLUGIN_LDFLAGS = -module -avoid-version


# the name of the plugin
PLUGIN_NAME = tibia

# Non-generated sources to be scanned for registration routines
NONGENERATED_REGISTER_C_FILES = \
	packet-tibia.c


# Non-generated sources
NONGENERATED_C_FILES = \
	$(NONGENERATED_REGISTER_C_FILES) \
	tinc-rsa.c \
	xtea.c


# Headers.
CLEAN_HEADER_FILES = 
HEADER_FILES = \
	$(CLEAN_HEADER_FILES)


#
# All source files to be scanned for registration routines.
#
REGISTER_SRC_FILES = \
	$(FLEX_GENERATED_REGISTER_C_FILES) \
	$(FLEX_GENERATED_REGISTER_CPP_FILES) \
	$(LEMON_GENERATED_REGISTER_C_FILES) \
	$(LEMON_GENERATED_REGISTER_CPP_FILES) \
	$(NONGENERATED_REGISTER_C_FILES) \
	$(NONGENERATED_REGISTER_CPP_FILES)


#
# All distributed source files.
#
SRC_FILES = \
	$(FLEX_GENERATED_C_FILES) \
	$(FLEX_GENERATED_CPP_FILES) \
	$(NONGENERATED_C_FILES) \
	$(NONGENERATED_CPP_FILES)


#
# All non-distributed source files.
#
NODIST_SRC_FILES = \
	$(LEMON_GENERATED_C_FILES) \
	$(LEMON_GENERATED_CPP_FILES)


#
# All non-distributed header files.
#
NODIST_HEADER_FILES = \
	$(LEMON_GENERATED_HEADER_FILES)


#
# All Flex-generated source files.
#
FLEX_GENERATED_SRC_FILES = \
	$(FLEX_GENERATED_C_FILES) \
	$(FLEX_GENERATED_CPP_FILES)


#
# All Lemon-generated source files.
#
LEMON_GENERATED_SRC_FILES = \
	$(LEMON_GENERATED_C_FILES) \
	$(LEMON_GENERATED_CPP_FILES)


#
# All generated source files.
#
GENERATED_SRC_FILES = \
	$(FLEX_GENERATED_SRC_FILES) \
	$(LEMON_GENERATED_SRC_FILES)


#
# All generated header files.
#
GENERATED_HEADER_FILES = \
	$(FLEX_GENERATED_HEADER_FILES) \
	$(LEMON_GENERATED_HEADER_FILES) 


#
# All "clean" source files; they can be compiled with the regular
# warning options, including -Werror with GCC-compatible compilers,
# and can be run through checkAPI.  Neither Flex-generated nor
# Lemon-generated files can currently be guaranteed to be clean.
#
CLEAN_SRC_FILES = \
	$(NONGENERATED_C_FILES) \
	$(NONGENERATED_CPP_FILES)


# C source files
C_FILES = \
	$(FLEX_GENERATED_C_FILES) \
	$(LEMON_GENERATED_C_FILES) \
	$(NONGENERATED_C_FILES)


# C++ source files
CPP_FILES = \
	$(FLEX_GENERATED_CPP_FILES) \
	$(LEMON_GENERATED_CPP_FILES) \
	$(NONGENERATED_CPP_FILES)

AM_CFLAGS = -Werror
plugin_LTLIBRARIES = tibia.la
tibia_la_SOURCES = \
	plugin.c \
	moduleinfo.h \
	$(SRC_FILES)	\
	$(HEADER_FILES)

tibia_la_CPPFLAGS = $(AM_CPPFLAGS) $(PLUGIN_CPPFLAGS)
CPPFLAGS += $(tibia_la_CPPFLAGS)
tibia_la_CFLAGS = $(AM_CFLAGS) $(PLUGIN_CFLAGS)
tibia_la_LDFLAGS = -module -avoid-version
tibia_la_LIBADD = 

#
# Currently plugin.c can be included in the distribution because
# we always build all protocol dissectors. We used to have to check
# whether or not to build the snmp dissector. If we again need to
# variably build something, making plugin.c non-portable, uncomment
# the dist-hook line below.
#
# Oh, yuk.  We don't want to include "plugin.c" in the distribution, as
# its contents depend on the configuration, and therefore we want it
# to be built when the first "make" is done; however, Automake insists
# on putting *all* source into the distribution.
#
# We work around this by having a "dist-hook" rule that deletes
# "plugin.c", so that "dist" won't pick it up.
#
#dist-hook:
#	@rm -f $(distdir)/plugin.c
CLEANFILES = \
	tibia \
	*~

DISTCLEANFILES = \
	$(NODIST_SRC_FILES) \
	$(NODIST_HEADER_FILES)

MAINTAINERCLEANFILES = \
	Makefile.in	\
	$(GENERATED_SRC_FILES) \
	$(GENERATED_HEADER_FILES) \
	plugin.c

EXTRA_DIST = \
	Makefile.common		\
	Makefile.nmake		\
	moduleinfo.nmake	\
	plugin.rc.in		\
	CMakeLists.txt

all: all-am

.SUFFIXES:
.SUFFIXES: .c .def .l .lo .o .obj .sym
$(srcdir)/Makefile.in:  $(srcdir)/Makefile.am $(top_srcdir)/Makefile.am.inc $(srcdir)/Makefile.common $(srcdir)/../Makefile.common.inc $(am__configure_deps)
	@for dep in $?; do \
	  case '$(am__configure_deps)' in \
	    *$$dep*) \
	      ( cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh ) \
	        && { if test -f $@; then exit 0; else break; fi; }; \
	      exit 1;; \
	  esac; \
	done; \
	echo ' cd $(top_srcdir) && $(AUTOMAKE) --gnu plugins/tibia/Makefile'; \
	$(am__cd) $(top_srcdir) && \
	  $(AUTOMAKE) --gnu plugins/tibia/Makefile
Makefile: $(srcdir)/Makefile.in $(top_builddir)/config.status
	@case '$?' in \
	  *config.status*) \
	    cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh;; \
	  *) \
	    echo ' cd $(top_builddir) && $(SHELL) ./config.status $(subdir)/$@ $(am__depfiles_maybe)'; \
	    cd $(top_builddir) && $(SHELL) ./config.status $(subdir)/$@ $(am__depfiles_maybe);; \
	esac;
$(top_srcdir)/Makefile.am.inc $(srcdir)/Makefile.common $(srcdir)/../Makefile.common.inc $(am__empty):

$(top_builddir)/config.status: $(top_srcdir)/configure $(CONFIG_STATUS_DEPENDENCIES)
	cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh

$(top_srcdir)/configure:  $(am__configure_deps)
	cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh
$(ACLOCAL_M4):  $(am__aclocal_m4_deps)
	cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh
$(am__aclocal_m4_deps):

install-pluginLTLIBRARIES: $(plugin_LTLIBRARIES)
	@$(NORMAL_INSTALL)
	@list='$(plugin_LTLIBRARIES)'; test -n "$(plugindir)" || list=; \
	list2=; for p in $$list; do \
	  if test -f $$p; then \
	    list2="$$list2 $$p"; \
	  else :; fi; \
	done; \
	test -z "$$list2" || { \
	  echo " $(MKDIR_P) '$(DESTDIR)$(plugindir)'"; \
	  $(MKDIR_P) "$(DESTDIR)$(plugindir)" || exit 1; \
	  echo " $(LIBTOOL) $(AM_LIBTOOLFLAGS) $(LIBTOOLFLAGS) --mode=install $(INSTALL) $(INSTALL_STRIP_FLAG) $$list2 '$(DESTDIR)$(plugindir)'"; \
	  $(LIBTOOL) $(AM_LIBTOOLFLAGS) $(LIBTOOLFLAGS) --mode=install $(INSTALL) $(INSTALL_STRIP_FLAG) $$list2 "$(DESTDIR)$(plugindir)"; \
	}

uninstall-pluginLTLIBRARIES:
	@$(NORMAL_UNINSTALL)
	@list='$(plugin_LTLIBRARIES)'; test -n "$(plugindir)" || list=; \
	for p in $$list; do \
	  $(am__strip_dir) \
	  echo " $(LIBTOOL) $(AM_LIBTOOLFLAGS) $(LIBTOOLFLAGS) --mode=uninstall rm -f '$(DESTDIR)$(plugindir)/$$f'"; \
	  $(LIBTOOL) $(AM_LIBTOOLFLAGS) $(LIBTOOLFLAGS) --mode=uninstall rm -f "$(DESTDIR)$(plugindir)/$$f"; \
	done

clean-pluginLTLIBRARIES:
	-test -z "$(plugin_LTLIBRARIES)" || rm -f $(plugin_LTLIBRARIES)
	@list='$(plugin_LTLIBRARIES)'; \
	locs=`for p in $$list; do echo $$p; done | \
	      sed 's|^[^/]*$$|.|; s|/[^/]*$$||; s|$$|/so_locations|' | \
	      sort -u`; \
	test -z "$$locs" || { \
	  echo rm -f $${locs}; \
	  rm -f $${locs}; \
	}

tibia.la: $(tibia_la_OBJECTS) $(tibia_la_DEPENDENCIES) $(EXTRA_tibia_la_DEPENDENCIES) 
	$(AM_V_CCLD)$(tibia_la_LINK) -rpath $(plugindir) $(tibia_la_OBJECTS) $(tibia_la_LIBADD) $(LIBS)

mostlyclean-compile:
	-rm -f *.$(OBJEXT)

distclean-compile:
	-rm -f *.tab.c

include ./$(DEPDIR)/packet-tibia.Plo
include ./$(DEPDIR)/plugin.Plo
include ./$(DEPDIR)/tinc-rsa.Plo
include ./$(DEPDIR)/xtea.Plo

.c.o:
	$(AM_V_CC)depbase=`echo $@ | sed 's|[^/]*$$|$(DEPDIR)/&|;s|\.o$$||'`;\
	$(COMPILE) -MT $@ -MD -MP -MF $$depbase.Tpo -c -o $@ $< &&\
	$(am__mv) $$depbase.Tpo $$depbase.Po
#	$(AM_V_CC)source='$<' object='$@' libtool=no \
#	DEPDIR=$(DEPDIR) $(CCDEPMODE) $(depcomp) \
#	$(AM_V_CC_no)$(COMPILE) -c -o $@ $<

.c.obj:
	$(AM_V_CC)depbase=`echo $@ | sed 's|[^/]*$$|$(DEPDIR)/&|;s|\.obj$$||'`;\
	$(COMPILE) -MT $@ -MD -MP -MF $$depbase.Tpo -c -o $@ `$(CYGPATH_W) '$<'` &&\
	$(am__mv) $$depbase.Tpo $$depbase.Po
#	$(AM_V_CC)source='$<' object='$@' libtool=no \
#	DEPDIR=$(DEPDIR) $(CCDEPMODE) $(depcomp) \
#	$(AM_V_CC_no)$(COMPILE) -c -o $@ `$(CYGPATH_W) '$<'`

.c.lo:
	$(AM_V_CC)depbase=`echo $@ | sed 's|[^/]*$$|$(DEPDIR)/&|;s|\.lo$$||'`;\
	$(LTCOMPILE) -MT $@ -MD -MP -MF $$depbase.Tpo -c -o $@ $< &&\
	$(am__mv) $$depbase.Tpo $$depbase.Plo
#	$(AM_V_CC)source='$<' object='$@' libtool=yes \
#	DEPDIR=$(DEPDIR) $(CCDEPMODE) $(depcomp) \
#	$(AM_V_CC_no)$(LTCOMPILE) -c -o $@ $<

mostlyclean-libtool:
	-rm -f *.lo

clean-libtool:
	-rm -rf .libs _libs

ID: $(am__tagged_files)
	$(am__define_uniq_tagged_files); mkid -fID $$unique
tags: tags-am
TAGS: tags

tags-am: $(TAGS_DEPENDENCIES) $(am__tagged_files)
	set x; \
	here=`pwd`; \
	$(am__define_uniq_tagged_files); \
	shift; \
	if test -z "$(ETAGS_ARGS)$$*$$unique"; then :; else \
	  test -n "$$unique" || unique=$$empty_fix; \
	  if test $$# -gt 0; then \
	    $(ETAGS) $(ETAGSFLAGS) $(AM_ETAGSFLAGS) $(ETAGS_ARGS) \
	      "$$@" $$unique; \
	  else \
	    $(ETAGS) $(ETAGSFLAGS) $(AM_ETAGSFLAGS) $(ETAGS_ARGS) \
	      $$unique; \
	  fi; \
	fi
ctags: ctags-am

CTAGS: ctags
ctags-am: $(TAGS_DEPENDENCIES) $(am__tagged_files)
	$(am__define_uniq_tagged_files); \
	test -z "$(CTAGS_ARGS)$$unique" \
	  || $(CTAGS) $(CTAGSFLAGS) $(AM_CTAGSFLAGS) $(CTAGS_ARGS) \
	     $$unique

GTAGS:
	here=`$(am__cd) $(top_builddir) && pwd` \
	  && $(am__cd) $(top_srcdir) \
	  && gtags -i $(GTAGS_ARGS) "$$here"
cscopelist: cscopelist-am

cscopelist-am: $(am__tagged_files)
	list='$(am__tagged_files)'; \
	case "$(srcdir)" in \
	  [\\/]* | ?:[\\/]*) sdir="$(srcdir)" ;; \
	  *) sdir=$(subdir)/$(srcdir) ;; \
	esac; \
	for i in $$list; do \
	  if test -f "$$i"; then \
	    echo "$(subdir)/$$i"; \
	  else \
	    echo "$$sdir/$$i"; \
	  fi; \
	done >> $(top_builddir)/cscope.files

distclean-tags:
	-rm -f TAGS ID GTAGS GRTAGS GSYMS GPATH tags

distdir: $(DISTFILES)
	@srcdirstrip=`echo "$(srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	topsrcdirstrip=`echo "$(top_srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	list='$(DISTFILES)'; \
	  dist_files=`for file in $$list; do echo $$file; done | \
	  sed -e "s|^$$srcdirstrip/||;t" \
	      -e "s|^$$topsrcdirstrip/|$(top_builddir)/|;t"`; \
	case $$dist_files in \
	  */*) $(MKDIR_P) `echo "$$dist_files" | \
			   sed '/\//!d;s|^|$(distdir)/|;s,/[^/]*$$,,' | \
			   sort -u` ;; \
	esac; \
	for file in $$dist_files; do \
	  if test -f $$file || test -d $$file; then d=.; else d=$(srcdir); fi; \
	  if test -d $$d/$$file; then \
	    dir=`echo "/$$file" | sed -e 's,/[^/]*$$,,'`; \
	    if test -d "$(distdir)/$$file"; then \
	      find "$(distdir)/$$file" -type d ! -perm -700 -exec chmod u+rwx {} \;; \
	    fi; \
	    if test -d $(srcdir)/$$file && test $$d != $(srcdir); then \
	      cp -fpR $(srcdir)/$$file "$(distdir)$$dir" || exit 1; \
	      find "$(distdir)/$$file" -type d ! -perm -700 -exec chmod u+rwx {} \;; \
	    fi; \
	    cp -fpR $$d/$$file "$(distdir)$$dir" || exit 1; \
	  else \
	    test -f "$(distdir)/$$file" \
	    || cp -p $$d/$$file "$(distdir)/$$file" \
	    || exit 1; \
	  fi; \
	done
check-am: all-am
check: check-am
all-am: Makefile $(LTLIBRARIES)
installdirs:
	for dir in "$(DESTDIR)$(plugindir)"; do \
	  test -z "$$dir" || $(MKDIR_P) "$$dir"; \
	done
install: install-am
install-exec: install-exec-am
install-data: install-data-am
uninstall: uninstall-am

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am

installcheck: installcheck-am
install-strip:
	if test -z '$(STRIP)'; then \
	  $(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	    install_sh_PROGRAM="$(INSTALL_STRIP_PROGRAM)" INSTALL_STRIP_FLAG=-s \
	      install; \
	else \
	  $(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	    install_sh_PROGRAM="$(INSTALL_STRIP_PROGRAM)" INSTALL_STRIP_FLAG=-s \
	    "INSTALL_PROGRAM_ENV=STRIPPROG='$(STRIP)'" install; \
	fi
mostlyclean-generic:

clean-generic:
	-test -z "$(CLEANFILES)" || rm -f $(CLEANFILES)

distclean-generic:
	-test -z "$(CONFIG_CLEAN_FILES)" || rm -f $(CONFIG_CLEAN_FILES)
	-test . = "$(srcdir)" || test -z "$(CONFIG_CLEAN_VPATH_FILES)" || rm -f $(CONFIG_CLEAN_VPATH_FILES)
	-test -z "$(DISTCLEANFILES)" || rm -f $(DISTCLEANFILES)

maintainer-clean-generic:
	@echo "This command is intended for maintainers to use"
	@echo "it deletes files that may require special tools to rebuild."
	-test -z "$(MAINTAINERCLEANFILES)" || rm -f $(MAINTAINERCLEANFILES)
clean: clean-am

clean-am: clean-generic clean-libtool clean-pluginLTLIBRARIES \
	mostlyclean-am

distclean: distclean-am
	-rm -rf ./$(DEPDIR)
	-rm -f Makefile
distclean-am: clean-am distclean-compile distclean-generic \
	distclean-tags

dvi: dvi-am

dvi-am:

html: html-am

html-am:

info: info-am

info-am:

install-data-am: install-pluginLTLIBRARIES

install-dvi: install-dvi-am

install-dvi-am:

install-exec-am:

install-html: install-html-am

install-html-am:

install-info: install-info-am

install-info-am:

install-man:

install-pdf: install-pdf-am

install-pdf-am:

install-ps: install-ps-am

install-ps-am:

installcheck-am:

maintainer-clean: maintainer-clean-am
	-rm -rf ./$(DEPDIR)
	-rm -f Makefile
maintainer-clean-am: distclean-am maintainer-clean-generic

mostlyclean: mostlyclean-am

mostlyclean-am: mostlyclean-compile mostlyclean-generic \
	mostlyclean-libtool

pdf: pdf-am

pdf-am:

ps: ps-am

ps-am:

uninstall-am: uninstall-pluginLTLIBRARIES

.MAKE: install-am install-strip

.PHONY: CTAGS GTAGS TAGS all all-am check check-am clean clean-generic \
	clean-libtool clean-pluginLTLIBRARIES cscopelist-am ctags \
	ctags-am distclean distclean-compile distclean-generic \
	distclean-libtool distclean-tags distdir dvi dvi-am html \
	html-am info info-am install install-am install-data \
	install-data-am install-dvi install-dvi-am install-exec \
	install-exec-am install-html install-html-am install-info \
	install-info-am install-man install-pdf install-pdf-am \
	install-pluginLTLIBRARIES install-ps install-ps-am \
	install-strip installcheck installcheck-am installdirs \
	maintainer-clean maintainer-clean-generic mostlyclean \
	mostlyclean-compile mostlyclean-generic mostlyclean-libtool \
	pdf pdf-am ps ps-am tags tags-am uninstall uninstall-am \
	uninstall-pluginLTLIBRARIES

.PRECIOUS: Makefile


.l.c:
	$(AM_V_RUNLEX)$(RUNLEX) "$(LEX)" "$(SED)" -o$@ $<

.def.sym:
	$(AM_V_AWK)$(AWK) '/^EXPORTS$$/ {next;}; ${def_sym_filter_symbols} /^[^;]/ { print $$1;}' < $< > $@
abi-descriptor.xml: ../abi-descriptor.template
	$(AM_V_SED)sed \
		-e 's|@INCLUDE_DIRS@|$(INCLUDE_DIRS)|g' \
		-e 's/ *NEWLINE/\n    /g' \
		-e 's|@LIBRARY_OUTPUT_PATH@|{RELPATH}/.libs|' $< > $@

#
# Build plugin.c, which contains the plugin version[] string, a
# function plugin_register() that calls the register routines for all
# protocols, and a function plugin_reg_handoff() that calls the handoff
# registration routines for all protocols.
#
# We do this by scanning sources.  If that turns out to be too slow,
# maybe we could just require every .o file to have an register routine
# of a given name (packet-aarp.o -> proto_register_aarp, etc.).
#
# Formatting conventions:  The name of the proto_register_* routines an
# proto_reg_handoff_* routines must start in column zero, or must be
# preceded only by "void " starting in column zero, and must not be
# inside #if.
#
# REGISTER_SRC_FILES is assumed to have all the files that need to be scanned.
#
# For some unknown reason, having a big "for" loop in the Makefile
# to scan all the files doesn't work with some "make"s; they seem to
# pass only the first few names in the list to the shell, for some
# reason.
#
# Therefore, we use a script to generate the register.c file.
# The first argument is the directory in which the source files live.
# The second argument is "plugin", to indicate that we should build
# a plugin.c file for a plugin.
# All subsequent arguments are the files to scan.
#
plugin.c: $(REGISTER_SRC_FILES) Makefile.common $(top_srcdir)/tools/make-dissector-reg.py
	@echo Making plugin.c
	@$(PYTHON) $(top_srcdir)/tools/make-dissector-reg.py $(srcdir) \
		plugin $(REGISTER_SRC_FILES)

checkapi:
	$(PERL) $(top_srcdir)/tools/checkAPIs.pl -g abort -g termoutput -build \
	-sourcedir=$(srcdir) \
	$(CLEAN_SRC_FILES) $(CLEAN_HEADER_FILES)

# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
