# $NetBSD: Makefile,v 1.4 2019/12/06 19:30:13 markd Exp $

DISTNAME=	manfnt-font
PKGNAME=	tex-${DISTNAME}-2014
TEXLIVE_REV=	35799

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Font for LaTeX support for the TeX book symbols
LICENSE=	lppl-1.3c

TEX_MIXEDMAP_FILES+=	manfnt.map

TEXLIVE_UNVERSIONED=	yes
.include "../../print/texlive/package.mk"
.include "../../mk/bsd.pkg.mk"
