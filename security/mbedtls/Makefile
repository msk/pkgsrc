# $NetBSD: Makefile,v 1.9 2019/10/01 17:44:11 nia Exp $

DISTNAME=	mbedtls-2.16.3-apache
PKGNAME=	${DISTNAME:-apache=}
CATEGORIES=	security devel
MASTER_SITES=	https://tls.mbed.org/download/
EXTRACT_SUFX=	.tgz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://tls.mbed.org/
COMMENT=	Lightweight, modular cryptographic and SSL/TLS library
LICENSE=	apache-2.0

CONFLICTS+=	polarssl-[0-9]*
SUPERSEDES+=	polarssl-[0-9]*

WRKSRC=		${WRKDIR}/${PKGNAME_NOREV}
USE_CMAKE=	yes
USE_LANGUAGES=	c99
USE_TOOLS+=	gmake perl pkg-config

GCC_REQD+=	4.4
REPLACE_PERL=	tests/scripts/*.pl

.include "options.mk"

CMAKE_ARGS+=	-Wno-dev
CMAKE_ARGS+=	-DUSE_SHARED_MBEDTLS_LIBRARY=ON
MAKE_ENV+=	RANLIB=${RANLIB:Q}

LDFLAGS.SunOS+=	-lsocket

PYTHON_FOR_BUILD_ONLY=	tool

.include "../../lang/python/tool.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
