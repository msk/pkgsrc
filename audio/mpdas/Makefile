# $NetBSD: Makefile,v 1.25 2019/08/22 12:22:51 ryoon Exp $
#

DISTNAME=		mpdas-0.3.2
PKGREVISION=		12
CATEGORIES=		audio
MASTER_SITES=		http://50hz.ws/mpdas/

MAINTAINER=		gls@NetBSD.org
HOMEPAGE=		http://50hz.ws/mpdas/
COMMENT=		Mpdas is an AudioScrobbler client for MPD written in C++
LICENSE=		modified-bsd

USE_TOOLS+=		pkg-config
USE_LANGUAGES=		c++03

INSTALLATION_DIRS+=	bin ${PKGMANDIR}/man1 ${DOCDIR} ${EGDIR}
RCD_SCRIPTS=		mpdas
DOCDIR=			share/doc/mpdas
EGDIR=			share/examples/mpdas

CONF_FILES+=		${EGDIR}/mpdasrc.example \
				${PKG_SYSCONFDIR}/mpdasrc

post-install:
	${INSTALL_DATA}	${WRKSRC}/README \
		${DESTDIR}${PREFIX}/${DOCDIR}
	${INSTALL_DATA}	${WRKSRC}/mpdasrc.example \
		${DESTDIR}${PREFIX}/${EGDIR}

.include "../../audio/libmpd/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
