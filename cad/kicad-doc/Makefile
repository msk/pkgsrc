# $NetBSD: Makefile,v 1.6 2019/08/29 15:36:40 bouyer Exp $
#

V=		5.1.4
DISTNAME=	kicad-doc-${V}
CATEGORIES=	cad
MASTER_SITES=	https://kicad-downloads.s3.cern.ch/docs/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://kicad-pcb.org/
COMMENT=	Documentation for the PCB CAD software
LICENSE=	gnu-gpl-v3

DOCDIR=		${DESTDIR}${PREFIX}/share/doc/kicad

do-build:
	${FIND} ${WRKSRC} -name PaxHeader -print |  ${XARGS} ${RM} -rf

do-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${CP} -R ${WRKSRC}/share/doc/kicad/help ${DOCDIR}/
	${FIND} ${DOCDIR} -type d -print | ${XARGS} ${CHMOD} ${PKGDIRMODE}
	${FIND} ${DOCDIR} -type f -print | ${XARGS} ${CHMOD} ${SHAREMODE}

.include "../../mk/bsd.prefs.mk"
.include "../../mk/bsd.pkg.mk"
