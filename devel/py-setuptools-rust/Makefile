# $NetBSD: Makefile,v 1.1 2019/12/16 01:12:28 minskim Exp $

DISTNAME=	setuptools-rust-0.11.6
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_PYPI:=s/setuptools-rust/}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/PyO3/setuptools-rust
COMMENT=	Setuptools plugin for Rust support
LICENSE=	mit

BUILD_DEPENDS+=	${PYPKGPREFIX}-setuptools_scm>=3.4.3:../../devel/py-setuptools_scm
BUILD_DEPENDS+=	${PYPKGPREFIX}-wheel-[0-9]*:../../devel/py-wheel
DEPENDS+=	${PYPKGPREFIX}-semantic_version>=2.6.0:../../devel/py-semantic_version
DEPENDS+=	${PYPKGPREFIX}-toml>=0.9.0:../../textproc/py-toml

PYTHON_VERSIONS_INCOMPATIBLE=	27

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
