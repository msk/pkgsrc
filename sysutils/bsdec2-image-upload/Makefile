# $NetBSD: Makefile,v 1.2 2019/05/22 08:58:39 jmcneill Exp $

GITHUB_PROJECT=	bsdec2-image-upload
DISTNAME=	1.2.2
PKGNAME=	${GITHUB_PROJECT}-${DISTNAME}
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_GITHUB:=cperciva/}
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	jmcneill@NetBSD.org
HOMEPAGE=	https://github.com/cperciva/bsdec2-image-upload/
COMMENT=	Tool for creating Amazon EC2 AMIs
LICENSE=	2-clause-bsd

WRKSRC=		${WRKDIR}/bsdec2-image-upload-1.2.2

MAKE_ENV+=	NOMAN=1
CFLAGS+=	-DCERTFILE=\"${PREFIX}/share/mozilla-rootcerts/cacert.pem\"

.include "../../mk/compiler.mk"
.if !empty(PKGSRC_COMPILER:Mgcc)
CFLAGS+=	-Wno-error=pointer-sign \
		-Wno-error=maybe-uninitialized \
		-Wno-error=discarded-qualifiers
.endif

INSTALLATION_DIRS+=	bin

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bsdec2-image-upload ${DESTDIR}${PREFIX}/bin

DEPENDS+=	mozilla-rootcerts>=1.0:../../security/mozilla-rootcerts
.include "../../security/openssl/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
