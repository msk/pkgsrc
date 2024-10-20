# $NetBSD: buildlink3.mk,v 1.6 2022/10/04 10:21:19 wiz Exp $

BUILDLINK_TREE+=	oce

.if !defined(OCE_BUILDLINK3_MK)
OCE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.oce+=	oce>=0.18
BUILDLINK_ABI_DEPENDS.oce?=	oce>=0.18.3nb2
BUILDLINK_PKGSRCDIR.oce?=	../../cad/oce

BUILDLINK_INCDIRS.oce+=	include/oce

pkgbase := oce
.include "../../mk/pkg-build-options.mk"

.if ${PKG_BUILD_OPTIONS.oce:Mx11}
.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../graphics/glu/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../lang/tcl/buildlink3.mk"
.include "../../x11/tk/buildlink3.mk"
.endif
.endif	# OCE_BUILDLINK3_MK

BUILDLINK_TREE+=	-oce
