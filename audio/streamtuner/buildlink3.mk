# $NetBSD: buildlink3.mk,v 1.71 2023/01/03 17:36:15 wiz Exp $

BUILDLINK_TREE+=	streamtuner

.if !defined(STREAMTUNER_BUILDLINK3_MK)
STREAMTUNER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.streamtuner+=	streamtuner>=0.99
BUILDLINK_ABI_DEPENDS.streamtuner+=	streamtuner>=0.99.99nb73
BUILDLINK_PKGSRCDIR.streamtuner?=	../../audio/streamtuner

.include "../../www/curl/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.endif # STREAMTUNER_BUILDLINK3_MK

BUILDLINK_TREE+=	-streamtuner
