# $NetBSD: Makefile,v 1.111 2019/11/05 07:40:16 adam Exp $

DISTNAME=	Django-1.11.26
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:tl}
CATEGORIES=	www python
MASTER_SITES=	https://www.djangoproject.com/m/releases/${PKGVERSION_NOREV:R}/

MAINTAINER=	joerg@NetBSD.org
HOMEPAGE=	https://www.djangoproject.com/
COMMENT=	Django, a high-level Python Web framework
LICENSE=	modified-bsd

DEPENDS+=	${PYPKGPREFIX}-pytz-[0-9]*:../../time/py-pytz

USE_LANGUAGES=	# none

REPLACE_PYTHON+=	django/bin/django-admin.py
REPLACE_PYTHON+=	django/conf/project_template/manage.py-tpl

post-install:
	cd ${DESTDIR}${PREFIX}/bin && \
	${MV} django-admin django-admin-${PYVERSSUFFIX} && \
	${MV} django-admin.py django-admin-${PYVERSSUFFIX}.py || ${TRUE}

.include "../../lang/python/application.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
