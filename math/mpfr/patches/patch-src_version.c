$NetBSD: patch-src_version.c,v 1.1 2022/11/27 03:17:13 mef Exp $

openscad-2021.01nb13 failed with math/mpfr-4.1.1
patch is supplied at  
 https://www.mpfr.org/mpfr-4.1.1/patch01
and this is one of piece for file to file from above
See:
 http://mail-index.netbsd.org/pkgsrc-users/2022/11/26/msg036540.html

--- mpfr-4.1.1-a/src/version.c	2022-11-17 13:28:44.000000000 +0000
+++ ./src/version.c	2022-11-23 11:45:26.844475966 +0000
@@ -25,5 +25,5 @@
 const char *
 mpfr_get_version (void)
 {
-  return "4.1.1";
+  return "4.1.1-p1";
 }
