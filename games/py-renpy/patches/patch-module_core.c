$NetBSD: patch-module_core.c,v 1.1 2017/06/24 19:39:47 adam Exp $

Fix for duplicate symbol PyGAME_C_API.

--- module/core.c.orig	2017-06-24 17:57:51.000000000 +0000
+++ module/core.c
@@ -1,6 +1,6 @@
 #include "renpy.h"
 #include "IMG_savepng.h"
-#include <pygame/pygame.h>
+#include <pygame/_pygame.h>
 #include <stdio.h>
 #include <math.h>
 
