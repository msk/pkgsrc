# $NetBSD: Makefile,v 1.58 2019/11/03 11:45:40 rillig Exp $

DISTNAME=	libsoup-2.68.2
CATEGORIES=	net gnome
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/libsoup/${PKGVERSION_NOREV:R}/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://wiki.gnome.org/Projects/libsoup
COMMENT=	HTTP library implementation in C
LICENSE=	gnu-lgpl-v2

DEPENDS+=	glib-networking-[0-9]*:../../net/glib-networking

USE_TOOLS+=		pkg-config gmake intltool msgfmt

PKGCONFIG_OVERRIDE+=		output/meson-private/libsoup-2.4.pc
PKGCONFIG_OVERRIDE+=		output/meson-private/libsoup-gnome-2.4.pc
PKGCONFIG_OVERRIDE_STAGE=	pre-install
MAKE_ENV+=			LD_LIBRARY_PATH=${WRKSRC}/output/${PKGBASE}

# disable vala detection
MESON_ARGS+=		-Dvapi=disabled

.include "../../mk/compiler.mk"
.if !empty(PKGSRC_COMPILER:Mclang)

_WRAP_EXTRA_ARGS.CC+=	-Wno-error=format-nonliteral
CWRAPPERS_APPEND.cc+=	-Wno-error=format-nonliteral
.endif

.include "options.mk"

.include "../../archivers/brotli/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
BUILDLINK_API_DEPENDS.glib2+=	glib2>=2.38.0
.include "../../devel/glib2/buildlink3.mk"
BUILDLINK_API_DEPENDS.gobject-introspection+=	gobject-introspection>=0.9.5
BUILDLINK_DEPMETHOD.gobject-introspection=	build
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../www/libpsl/buildlink3.mk"
.include "../../devel/meson/build.mk"
.include "../../mk/bsd.pkg.mk"
