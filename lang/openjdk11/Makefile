# $NetBSD: Makefile,v 1.7 2019/11/06 23:04:31 wiz Exp $

DISTNAME=	openjdk-jdk11u-${GITHUB_TAG:C/\+/-/}
PKGNAME=	openjdk11-1.${GITHUB_TAG:C/\+/./:C/jdk-([.0-9]+).*/\1/}
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_GITHUB:=battleblow/}
GITHUB_PROJECT=	openjdk-jdk11u
GITHUB_TAG=	jdk-11.0.5+10-1

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://openjdk.java.net/
COMMENT=	Open-source implementation of the Java Platform, Standard Edition
LICENSE=	gnu-gpl-v2

DISTFILES=	${DEFAULT_DISTFILES}
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

JAVA_NAME=	openjdk11
JAVA_HOME=	${PREFIX}/java/${JAVA_NAME}
JAVA_WRAPPERS=	jar java javac javadoc javah javap jcmd jhat jps jstack \
		keytool orbd policytool rmid rmiregistry servertool tnameserv

BUILD_DEPENDS+=		mozilla-rootcerts>=1.0.20140820nb2:../../security/mozilla-rootcerts

GNU_CONFIGURE=		yes
USE_GNU_CONFIGURE_HOST=	no
CONFIGURE_SCRIPT=	configure
CONFIG_SHELL=		bash
CONFIG_SUB_OVERRIDE+=	make/autoconf/build-aux/config.sub
CONFIG_GUESS_OVERRIDE+=	make/autoconf/build-aux/config.guess
CONFIG_SUB_OVERRIDE+=	make/autoconf/build-aux/autoconf-config.sub
CONFIG_GUESS_OVERRIDE+=	make/autoconf/build-aux/autoconf-config.guess
USE_LANGUAGES=		c c++
USE_TOOLS+=		bash gmake pax pkg-config unzip:run zip:run autoconf automake
UNLIMIT_RESOURCES=	datasize stacksize

BUILDLINK_PASSTHRU_DIRS+=	${ALT_BOOTDIR}

# Try to use less POSIX semaphores (large MAKE_JOBS can consume them all)
BOOT_JVMARGS=	-XX:+UnlockDiagnosticVMOptions \
		-XX:-UseSemaphoreGCThreadsSynchronization

CONFIGURE_ARGS+=	--prefix=${PREFIX:Q}
CONFIGURE_ARGS+=	--openjdk-target=${MACHINE_GNU_PLATFORM:Q}
CONFIGURE_ARGS+=	--with-boot-jdk=${ALT_BOOTDIR}
CONFIGURE_ARGS+=	--with-boot-jdk-jvmargs=${BOOT_JVMARGS:Q}
CONFIGURE_ARGS+=	--with-zlib=system
CONFIGURE_ARGS+=	--with-giflib=bundled
CONFIGURE_ARGS+=	--with-lcms=bundled
CONFIGURE_ARGS+=	--with-cups-include=${BUILDLINK_PREFIX.cups-base}/include
CONFIGURE_ARGS+=	--with-freetype=system
CONFIGURE_ARGS+=	--with-freetype-lib=${BUILDLINK_PREFIX.freetype2}/lib
CONFIGURE_ARGS+=	--with-freetype-include=${BUILDLINK_PREFIX.freetype2}/include
CONFIGURE_ARGS+=	--with-jobs=${MAKE_JOBS:U1}
CONFIGURE_ARGS+=	--with-num-cores=${MAKE_JOBS:U1}
CONFIGURE_ARGS+=	--disable-precompiled-headers
CONFIGURE_ARGS+=	--disable-ccache
CONFIGURE_ARGS+=	--disable-javac-server
CONFIGURE_ARGS+=	--with-extra-ldflags=${LDFLAGS:Q}
CONFIGURE_ARGS+=	--with-extra-cflags=${CFLAGS:Q}
CONFIGURE_ARGS+=	--with-extra-cxxflags=${CXXFLAGS:Q}
CONFIGURE_ARGS+=	--disable-warnings-as-errors
CONFIGURE_ARGS+=	--with-cacerts-file=${WRKDIR}/cacerts.out
CONFIGURE_ARGS+=	--with-default-make-target=product-images
# It is intentional to use CONFIGURE_ARGS instead of CONFIGURE_ENV here.
CONFIGURE_ARGS+=	USER=pkgsrc

# Avoid build errors when JAVA_HOME and CLASSPATH are defined by user.
MAKE_ENV+=	JAVA_HOME=
MAKE_ENV+=	CLASSPATH=

BUILD_OPSYS=			${OPSYS:C/.*BSD/bsd/:S/DragonFly/bsd/:S/SunOS/solaris/:S/Linux/linux/}
BUILD_ARCH=			${MACHINE_ARCH:S/i386/x86/:S/sparc64/sparcv9/:C/^e?arm.*$/arm/}
BUILDDIR=			${WRKSRC}/build/${BUILD_OPSYS}-${BUILD_ARCH}-normal-${BUILD_VARIANT}-${BUILD_DEBUG_LEVEL}
BUILDLINK_PASSTHRU_RPATHDIRS+=	${PREFIX}/java/${JAVA_NAME}/lib
BUILDLINK_PASSTHRU_RPATHDIRS+=	${PREFIX}/java/${JAVA_NAME}/lib/server
WRKSRC=				${WRKDIR}/${DISTNAME}

.include "../../mk/compiler.mk"

.if !empty(PKGSRC_COMPILER:Mclang)
CONFIGURE_ARGS+=	--with-toolchain-type=clang
_WRAP_EXTRA_ARGS.CC+=	-Wno-format-nonliteral -Wno-sign-compare -Wno-char-subscripts
CWRAPPERS_APPEND.cc+=	-Wno-format-nonliteral -Wno-sign-compare -Wno-char-subscripts
_WRAP_EXTRA_ARGS.CXX+=	-Wno-tautological-undefined-compare
CWRAPPERS_APPEND.cxx+=	-Wno-tautological-undefined-compare

BUILDLINK_TRANSFORM+=	rm:-fcheck-new
BUILDLINK_TRANSFORM+=	rm:-fpch-deps
.  if ${MACHINE_ARCH} == "x86_64"
_WRAP_EXTRA_ARGS.CXX+=	-mstackrealign
CWRAPPERS_APPEND.cxx+=	-mstackrealign
.  endif
.else
# GCC
CONFIGURE_ARGS+=	--with-toolchain-type=gcc
.endif

.include "bootstrap.mk"
.include "options.mk"

SUBST_CLASSES+=		libpath
SUBST_STAGE.libpath=	pre-configure
SUBST_FILES.libpath+=	src/hotspot/os/bsd/os_bsd.cpp
SUBST_FILES.libpath+=	make/autoconf/flags-cflags.m4
SUBST_FILES.libpath+=	make/autoconf/lib-bundled.m4
SUBST_FILES.libpath+=	make/autoconf/lib-freetype.m4
SUBST_FILES.libpath+=	make/autoconf/lib-x11.m4
SUBST_VARS.libpath=	PREFIX COMPILER_RPATH_FLAG JAVA_NAME BUILDLINK_PREFIX.zlib X11BASE

SUBST_CLASSES+=			fontpaths
SUBST_STAGE.fontpaths=		pre-configure
SUBST_MESSAGE.fontpaths=	fixing font paths
SUBST_FILES.fontpaths=		make/data/fontconfig/bsd.fontconfig.properties
SUBST_FILES.fontpaths+=		src/java.desktop/unix/native/common/awt/fontpath.c
SUBST_VARS.fontpaths=		PREFIX BUILDLINK_PREFIX.fontconfig

PLIST_VARS+=			aot
PLIST_VARS+=			internal_vm_compiler
.if ${MACHINE_ARCH} == "x86_64"
PLIST.aot=			yes
PLIST.internal_vm_compiler=	yes
.endif

.if ${OPSYS} == "NetBSD"
TOOLS_PLATFORM.unzip=

# not completely true, but too many jobs kill the build on NetBSD 9.99.x
# see PR 54619
MAKE_JOBS_SAFE=		no
.endif

post-extract:
# These libs are bundled w/ the netbsd-7 bootstrap to facilitate building with
# MKLLVM=yes / MKGCC=no. Nuke them from bootstrap if they are present in base.
.if exists(/lib/libgcc_s.so.1)
	${RM} -f ${ALT_BOOTDIR}/lib/libgcc_s.so*
.endif

pre-configure: ${WRKDIR}/cacerts.out

${WRKDIR}/cacerts.out:
	mkdir ${WRKDIR}/cacerts && cd ${WRKDIR}/cacerts && 		\
		${PREFIX}/sbin/mozilla-rootcerts extract
	for cert in ${WRKDIR}/cacerts/*.pem; do				\
		${INFO_MSG} "Importing $$cert" &&			\
		 ${SETENV} ${CONFIGURE_ENV} LC_ALL=C			\
		  ${ALT_BOOTDIR}/bin/keytool				\
		  -noprompt						\
		  -importcert						\
		  -keystore ${.TARGET}.tmp				\
		  -alias `${ECHO} $$cert | sed 's,.*/\\([^/]*\\)\\.pem,\\1,'` \
		  -file $$cert						\
		  -storepass changeit;					\
	done
	mv ${.TARGET}.tmp ${.TARGET}

do-build:
	rm -f ${WRKSRC}/make/data/fontconfig/*.orig
	${_ULIMIT_CMD} cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} LD_LIBRARY_PATH=${ALT_BOOTDIR}/lib ${MAKE_PROGRAM}

do-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${JAVA_HOME}
	cd ${BUILDDIR}/images/jdk && pax -rwpp .		\
	  ${DESTDIR}${JAVA_HOME}/.

.if ${OPSYS} == "Linux"
.include "../../audio/alsa-lib/buildlink3.mk"
.endif
.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../fonts/fontconfig/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
# Headers from CUPS are required to build the native implementation of
# sun.print.* which is used by java.awt.print.
BUILDLINK_DEPMETHOD.cups-base?=	build
.include "../../print/cups-base/buildlink3.mk"
.include "../../mk/java-env.mk"
.include "../../mk/bsd.pkg.mk"
