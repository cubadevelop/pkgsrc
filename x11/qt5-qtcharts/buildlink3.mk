# $NetBSD: buildlink3.mk,v 1.17 2022/11/23 16:19:12 adam Exp $

BUILDLINK_TREE+=	qt5-qtcharts

.if !defined(QT5_QTCHARTS_BUILDLINK3_MK)
QT5_QTCHARTS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.qt5-qtcharts+=	qt5-qtcharts>=5.11.2
BUILDLINK_ABI_DEPENDS.qt5-qtcharts+=	qt5-qtcharts>=5.15.7nb1
BUILDLINK_PKGSRCDIR.qt5-qtcharts?=	../../x11/qt5-qtcharts

BUILDLINK_INCDIRS.qt5-qtcharts+=	qt5/include
BUILDLINK_LIBDIRS.qt5-qtcharts+=	qt5/lib
BUILDLINK_LIBDIRS.qt5-qtcharts+=	qt5/plugins

.include "../../x11/qt5-qtdeclarative/buildlink3.mk"
.endif	# QT5_QTCHARTS_BUILDLINK3_MK

BUILDLINK_TREE+=	-qt5-qtcharts
