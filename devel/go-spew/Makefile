# $NetBSD: Makefile,v 1.2 2019/12/13 07:44:02 bsiegert Exp $

GITHUB_TAG=		v${PKGVERSION_NOREV}
DISTNAME=		go-spew-1.1.1
PKGREVISION=		1
CATEGORIES=		devel
MASTER_SITES=		${MASTER_SITE_GITHUB:=davecgh/}
GITHUB_PROJECT=		go-spew

MAINTAINER=		ng0@NetBSD.org
HOMEPAGE=		https://github.com/davecgh/go-spew
COMMENT=		Deep pretty printer for Go data structures
LICENSE=		isc

GO_SRCPATH=		github.com/davecgh/go-spew
GO_DIST_BASE=		go-spew-${PKGVERSION_NOREV}

.include "../../lang/go/go-package.mk"
.include "../../mk/bsd.pkg.mk"
