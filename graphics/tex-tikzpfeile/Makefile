# $NetBSD: Makefile,v 1.2 2019/12/06 20:04:40 markd Exp $

DISTNAME=	tikzpfeile
PKGNAME=	tex-${DISTNAME}-1.0
TEXLIVE_REV=	25777

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://ctan.org/pkg/tikzpfeile
COMMENT=	Draw arrows using PGF/TikZ
LICENSE=	lppl-1.3c

DEPENDS+=	tex-pgf-[0-9]*:../../print/tex-pgf

TEXLIVE_UNVERSIONED=	yes
.include "../../print/texlive/package.mk"
.include "../../mk/bsd.pkg.mk"
