# $NetBSD$

DISTNAME=	alpaca-trade-api-0.46
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	finance python
MASTER_SITES=	${MASTER_SITE_PYPI:=a/alpaca-trade-api/}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/alpacahq/alpaca-trade-api-python
COMMENT=	Alpaca API python client
LICENSE=	apache-2.0

DEPENDS+=	${PYPKGPREFIX}-Deprecated-[0-9]*:../../devel/py-Deprecated
DEPENDS+=	${PYPKGPREFIX}-alpha_vantage-[0-9]*:../../finance/py-alpha_vantage
DEPENDS+=	${PYPKGPREFIX}-asyncio-nats-client-[0-9]*:../../net/py-asyncio-nats-client
DEPENDS+=	${PYPKGPREFIX}-pandas-[0-9]*:../../math/py-pandas
DEPENDS+=	${PYPKGPREFIX}-requests-[0-9]*:../../devel/py-requests
DEPENDS+=	${PYPKGPREFIX}-websocket-client-[0-9]*:../../www/py-websocket-client
DEPENDS+=	${PYPKGPREFIX}-websockets>=8.0:../../www/py-websockets

PYTHON_VERSIONS_INCOMPATIBLE=	27

USE_LANGUAGES=	# none

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
