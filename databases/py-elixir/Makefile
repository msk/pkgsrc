# $NetBSD: Makefile,v 1.17 2019/11/02 15:38:09 rillig Exp $

DISTNAME=	Elixir-0.7.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	databases python
MASTER_SITES=	${MASTER_SITE_PYPI:=E/Elixir/}

MAINTAINER=	pkgsrc-users@NetBSD.org
#HOMEPAGE=	http://elixir.ematia.de/trac/wiki
COMMENT=	Elixir is a declarative layer on top of the SQLAlchemy library
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-sqlalchemy>=0.4.0:../../databases/py-sqlalchemy
DEPENDS+=	${PYPKGPREFIX}-sqlite2-[0-9]*:../../databases/py-sqlite2
DEPENDS+=	${PYPKGPREFIX}-crypto-[0-9]*:../../security/py-crypto

USE_LANGUAGES=	# none

PYTHON_VERSIONS_ACCEPTED=	27 # py-sqlite2

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
