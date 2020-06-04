# $NetBSD: Makefile,v 1.9 2024/10/14 06:45:52 wiz Exp $

DISTNAME=	tensorboard-${GITHUB_TAG:S/-//}
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	math python
MASTER_SITES=	${MASTER_SITE_GITHUB:=tensorflow/}
GITHUB_PROJECT=	tensorboard
GITHUB_TAG=	2.2.0

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/tensorflow/tensorboard
COMMENT=	Web applications for inspecting TensorFlow runs and graphs
LICENSE=	apache-2.0

DEPENDS+=	${PYPKGPREFIX}-absl-py>=0.4:../../devel/py-absl-py
DEPENDS+=	${PYPKGPREFIX}-grpcio>=1.24.3:../../net/py-grpcio
DEPENDS+=	${PYPKGPREFIX}-google-auth>=1.6.3:../../security/py-google-auth
DEPENDS+=	${PYPKGPREFIX}-google-auth-oauthlib>=0.4.1:../../security/py-google-auth-oauthlib
DEPENDS+=	${PYPKGPREFIX}-markdown>=2.6.8:../../textproc/py-markdown
DEPENDS+=	${PYPKGPREFIX}-numpy>=1.12.0:../../math/py-numpy
DEPENDS+=	${PYPKGPREFIX}-protobuf>=3.6.0:../../devel/py-protobuf
DEPENDS+=	${PYPKGPREFIX}-requests>=2.21.0:../../devel/py-requests
DEPENDS+=	${PYPKGPREFIX}-six>=1.10.0:../../lang/py-six
DEPENDS+=	${PYPKGPREFIX}-werkzeug>=0.11.15:../../www/py-werkzeug

USE_LANGUAGES=	# none

USE_PKG_RESOURCES=	yes

post-extract:
.for f in MANIFEST.in README.rst requirements.txt setup.cfg setup.py
	${CP} ${WRKSRC}/tensorboard/pip_package/${f} ${WRKSRC}
.endfor
	${RM} -f ${WRKSRC}/BUILD

post-install:
	cd ${DESTDIR}${PREFIX}/bin && ${MV} tensorboard tensorboard${PYVERSSUFFIX}

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
