# $NetBSD: Makefile,v 1.29 2019/11/12 18:39:46 nros Exp $

DISTNAME=	mini_httpd-1.30
CATEGORIES=	www
MASTER_SITES=	http://www.acme.com/software/mini_httpd/

MAINTAINER=	reed@reedmedia.net
HOMEPAGE=	http://www.acme.com/software/mini_httpd/
COMMENT=	Small, forking webserver with IPv6 and SSL support

DIST_SUBDIR=	${PKGNAME_NOREV}

USE_FEATURES=	snprintf

MAKE_ENV+=	PKG_CFLAGS=${CFLAGS:Q}
MAKE_ENV+=	PKG_LDFLAGS=${LDFLAGS:Q}
MAKE_ENV+=	PKG_LIBS=${LIBS:Q}

MAKE_ENV.NetBSD+=	CRYPT_LIB=-lcrypt
MAKE_ENV.SunOS+=	SYSV_LIBS="-lnsl -lsocket -lsendfile"

SUBST_CLASSES=		htpasswd
SUBST_MESSAGE.htpasswd=	Fix name of (m)htpasswd in manual pages.
SUBST_STAGE.htpasswd=	pre-build
SUBST_FILES.htpasswd=	htpasswd.1 mini_httpd.8
SUBST_SED.htpasswd=	-e 's/\([^.]\)htpasswd/\1mhtpasswd/g'
SUBST_SED.htpasswd+=	-e 's/^htpasswd/m&/'

.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
