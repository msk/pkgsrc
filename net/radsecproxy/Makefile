# $NetBSD: Makefile,v 1.8 2019/11/03 11:45:52 rillig Exp $

VERSION=	1.8.1
DISTNAME=	radsecproxy-${VERSION}
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_GITHUB:=radsecproxy/}

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Secure radius proxy
HOMEPAGE=	https://radsecproxy.github.io/
GITHUB_RELEASE=	${VERSION}
LICENSE=	modified-bsd

USE_TOOLS+=	gmake

GNU_CONFIGURE=		YES
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFBASEDIR:Q}
CONFIGURE_ARGS+=	--with-ssl=${BUILDLINK_PREFIX.openssl}

EGDIR=		${PREFIX}/share/examples/radsecproxy
INSTALLATION_DIRS+=	${EGDIR}

CONF=		radsecproxy.conf
CONF_FILES+=	${EGDIR}/${CONF} ${PKG_SYSCONFDIR}/${CONF}

post-install:
	${INSTALL_DATA} ${WRKSRC}/radsecproxy.conf-example \
		${DESTDIR}${EGDIR}/${CONF}

.include "../../security/openssl/buildlink3.mk"
.include "../../security/nettle/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
