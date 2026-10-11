.class public final Lcom/onyx/android/sdk/note/extension/PhysiceExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0001\u00a8\u0006\u0004"
    }
    d2 = {
        "getPhysicsToScreenRatio",
        "",
        "toPhysicsStrokeWidth",
        "toScreenStrokeWidth",
        "sdk-note_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getPhysicsToScreenRatio()F
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->A4:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    const v1, 0x410451ec    # 8.27f

    const/16 v2, 0x12c

    int-to-float v2, v2

    mul-float/2addr v2, v1

    int-to-float v0, v0

    div-float/2addr v2, v0

    return v2
.end method

.method public static final toPhysicsStrokeWidth(F)F
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/note/extension/PhysiceExtKt;->getPhysicsToScreenRatio()F

    move-result v0

    div-float/2addr p0, v0

    return p0
.end method

.method public static final toScreenStrokeWidth(F)F
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/note/extension/PhysiceExtKt;->getPhysicsToScreenRatio()F

    move-result v0

    mul-float/2addr p0, v0

    return p0
.end method
