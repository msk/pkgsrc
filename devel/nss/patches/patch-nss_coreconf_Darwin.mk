$NetBSD$

Set CPU_ARCH for Apple Silicon.

--- nss/coreconf/Darwin.mk.orig	2021-02-23 01:22:53.000000000 +0000
+++ nss/coreconf/Darwin.mk
@@ -31,7 +31,7 @@ override CPU_ARCH	= x86
 endif
 else
 ifeq (arm,$(CPU_ARCH))
-# Nothing set for arm currently.
+override CPU_ARCH	= aarch64
 else
 OS_REL_CFLAGS	= -Dppc
 CC              += -arch ppc
