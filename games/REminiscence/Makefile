# $NetBSD: Makefile,v 1.16 2019/09/11 19:02:14 nia Exp $

DISTNAME=		REminiscence-0.3.7
CATEGORIES=		games
MASTER_SITES=		http://cyxdown.free.fr/reminiscence/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://cyxdown.free.fr/reminiscence/
COMMENT=		Engine to play Flashback by Delphine Software
LICENSE=		gnu-gpl-v3

USE_LANGUAGES=		c++

BUILD_TARGET=		rs

INSTALLATION_DIRS=	bin share/applications share/doc/REminiscence

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rs ${DESTDIR}${PREFIX}/bin
	${INSTALL_DATA} ${FILESDIR}/reminiscence.desktop \
		${DESTDIR}${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/README.txt \
		${DESTDIR}${PREFIX}/share/doc/REminiscence

.include "../../audio/libmodplug/buildlink3.mk"
.include "../../audio/tremor/buildlink3.mk"
.include "../../devel/SDL2/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../multimedia/libogg/buildlink3.mk"
.include "../../mk/dlopen.buildlink3.mk"
BUILDLINK_TRANSFORM+=	opt:-ldl:${BUILDLINK_LDADD.dl:Q}
.include "../../mk/bsd.pkg.mk"
