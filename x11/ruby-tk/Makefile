# $NetBSD: Makefile,v 1.61 2019/11/03 09:14:17 rillig Exp $

DISTNAME=		${RUBY_DISTNAME}
PKGNAME=		${RUBY_PKGPREFIX}-${RUBY_EXTNAME}-${RUBY_VERSION}
RUBY_EXTNAME=		tk
CATEGORIES=		x11 ruby
MASTER_SITES=		${MASTER_SITE_RUBY}

MAINTAINER=		taca@NetBSD.org
HOMEPAGE=		${RUBY_HOMEPAGE}
COMMENT=		Ruby interface to the Tk widget set

# Ruby 2.4 and later do not bundle ruby-tk.
RUBY_VERSIONS_ACCEPTED=	22

USE_TOOLS+=		pax
USE_RUBY_EXTCONF=	yes
RUBY_EXTCONF_SUBDIRS=	. tkutil
EXTRACT_ELEMENTS=	${RUBY_DISTNAME}/ext/tk
WRKSRC=			${RUBY_WRKSRC}/ext/tk
CONFIGURE_ARGS+=	--with-X11-dir=${X11BASE:Q} \
			--with-X11-lib=${BUILDLINK_PREFIX.libX11}/lib

REPLACE_RUBY=		lib/tkextlib/pkg_checker.rb
REPLACE_RUBY_DIRS=	sample
INSTALLATION_DIRS=	${RUBY_EG}/tk

post-extract:
	${CHMOD} ${SHAREMODE} ${WRKSRC}/sample/tkextlib/tktable/tcllogo.gif

pre-install:
	cd ${WRKSRC}; \
	${FIND} . \( -name '*.bak' -o -name '*.orig' -o \
			-name '*.orig_dist' \) -exec ${RM} -f {} \;

post-install:
	cd ${WRKSRC}/sample; ${PAX} -rw . ${DESTDIR}${PREFIX}/${RUBY_EG}/tk

.include "../../lang/ruby/modules.mk"
.include "../../lang/ruby/Makefile.common"
.include "../../lang/tcl/buildlink3.mk"
.include "../../x11/tk/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
