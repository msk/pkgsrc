# $NetBSD: Makefile,v 1.15 2019/12/06 20:18:47 markd Exp $

DISTNAME=	amsmath
PKGNAME=	tex-${DISTNAME}-2.17a.49390
TEXLIVE_REV=	49390

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://ctan.org/pkg/latex-amsmath
COMMENT=	AMS mathematical facilities for LaTeX
LICENSE=	lppl-1.3c

DEPENDS+=	tex-latex-bin-[0-9]*:../../print/tex-latex-bin

TEXLIVE_UNVERSIONED=	yes
.include "../../print/texlive/package.mk"
.include "../../mk/bsd.pkg.mk"
