# $NetBSD: Makefile,v 1.2 2017/05/12 11:35:49 jperkin Exp $

DISTNAME=	htmlcxx-0.85
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=htmlcxx/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://htmlcxx.sourceforge.net/
COMMENT=	Simple non-validating CSS1 and HTML parser for C++
LICENSE=	gnu-lgpl-v2 AND apache-2.0

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c c++

PKGCONFIG_OVERRIDE+=	htmlcxx.pc.in

.include "../../converters/libiconv/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
