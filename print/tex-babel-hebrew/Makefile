# $NetBSD: Makefile,v 1.2 2019/12/06 20:18:53 markd Exp $

DISTNAME=	babel-hebrew
PKGNAME=	tex-${DISTNAME}-2.3h
TEXLIVE_REV=	30273

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://ctan.org/pkg/babel-hebrew
COMMENT=	Babel support for Hebrew
LICENSE=	lppl-1.3c

DEPENDS+=	tex-babel>=3.9l:../../print/tex-babel

TEXLIVE_UNVERSIONED=	yes
.include "../../print/texlive/package.mk"
.include "../../mk/bsd.pkg.mk"
