# $NetBSD: buildlink3.mk,v 1.58 2023/01/03 17:36:26 wiz Exp $

BUILDLINK_TREE+=	openimageio

.if !defined(OPENIMAGEIO_BUILDLINK3_MK)
OPENIMAGEIO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.openimageio+=	openimageio>=1.8.15
BUILDLINK_ABI_DEPENDS.openimageio+=	openimageio>=2.2.20.0nb2
BUILDLINK_PKGSRCDIR.openimageio?=	../../graphics/openimageio

.include "../../devel/boost-libs/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/glew/buildlink3.mk"
.include "../../graphics/libwebp/buildlink3.mk"
.include "../../graphics/openjpeg/buildlink3.mk"
.include "../../graphics/openexr/buildlink3.mk"
.include "../../graphics/tiff/buildlink3.mk"
.endif	# OPENIMAGEIO_BUILDLINK3_MK

BUILDLINK_TREE+=	-openimageio
