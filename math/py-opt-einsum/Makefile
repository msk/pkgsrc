# $NetBSD$

DISTNAME=	opt_einsum-3.2.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/_/-/}
CATEGORIES=	math python
MASTER_SITES=	${MASTER_SITE_PYPI:=o/opt_einsum/}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/dgasmith/opt_einsum
COMMENT=	Optimizing numpys einsum function
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-numpy>=1.7:../../math/py-numpy

USE_LANGUAGES=	# none

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
