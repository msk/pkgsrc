# $NetBSD$

DISTNAME=	mplfinance-0.12.3a3
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	finance python
MASTER_SITES=	${MASTER_SITE_PYPI:=m/mplfinance/}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/matplotlib/mplfinance
COMMENT=	Utilities for the visualization of financial data

DEPENDS+=	${PYPKGPREFIX}-matplotlib-[0-9]*:../../graphics/py-matplotlib
DEPENDS+=	${PYPKGPREFIX}-pandas-[0-9]*:../../math/py-pandas

USE_LANGUAGES=	# none

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
