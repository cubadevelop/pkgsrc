# $NetBSD: buildlink3.mk,v 1.19 2023/01/03 17:36:21 wiz Exp $

BUILDLINK_TREE+=	libspatialite

.if !defined(LIBSPATIALITE_BUILDLINK3_MK)
LIBSPATIALITE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libspatialite+=	libspatialite>=4.3.0a
BUILDLINK_ABI_DEPENDS.libspatialite?=	libspatialite>=4.3.0anb19
BUILDLINK_PKGSRCDIR.libspatialite?=	../../geography/libspatialite

.include "../../converters/libiconv/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../geography/geos/buildlink3.mk"
.include "../../geography/proj/buildlink3.mk"
.include "../../textproc/freexl/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.endif	# LIBSPATIALITE_BUILDLINK3_MK

BUILDLINK_TREE+=	-libspatialite
