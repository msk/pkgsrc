# $NetBSD: Makefile,v 1.3 2019/11/04 21:43:45 rillig Exp $

DISTNAME=	antlr4-python3-runtime-4.7.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/-python3-runtime//1}
CATEGORIES=	textproc python
MASTER_SITES=	${MASTER_SITE_PYPI:=a/antlr4-python3-runtime/}

MAINTAINER=	jaapb@NetBSD.org
HOMEPAGE=	http://www.antlr.org/
COMMENT=	AntLR 4 bindings for Python
LICENSE=	modified-bsd

USE_LANGUAGES=	# none

PYTHON_VERSIONS_INCOMPATIBLE=	27

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
