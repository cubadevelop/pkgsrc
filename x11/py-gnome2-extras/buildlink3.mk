# $NetBSD: buildlink3.mk,v 1.65 2023/01/03 17:36:38 wiz Exp $

BUILDLINK_TREE+=	pygnome2ex

.if !defined(PYGNOME2EX_BUILDLINK3_MK)
PYGNOME2EX_BUILDLINK3_MK:=

.include "../../lang/python/pyversion.mk"

BUILDLINK_API_DEPENDS.pygnome2ex+=	${PYPKGPREFIX}-gnome2-extras>=2.12.0nb3
BUILDLINK_ABI_DEPENDS.pygnome2ex+=	${PYPKGPREFIX}-gnome2-extras>=2.25.3nb52
BUILDLINK_PKGSRCDIR.pygnome2ex?=	../../x11/py-gnome2-extras

.include "../../x11/py-gnome2/buildlink3.mk"
.endif # PYGNOME2EX_BUILDLINK3_MK

BUILDLINK_TREE+=	-pygnome2ex
