# $NetBSD: Makefile,v 1.5 2019/12/06 20:18:53 markd Exp $

DISTNAME=	babel-greek
PKGNAME=	tex-${DISTNAME}-1.9h
TEXLIVE_REV=	51628

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://ctan.org/pkg/babel-greek
COMMENT=	Babel support for documents written in Greek
LICENSE=	lppl-1.3c

DEPENDS+=	tex-babel>=3.9l:../../print/tex-babel

TEXLIVE_UNVERSIONED=	yes
.include "../../print/texlive/package.mk"
.include "../../mk/bsd.pkg.mk"
