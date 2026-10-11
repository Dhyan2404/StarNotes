.class public final Lcom/onyx/android/sdk/universal/editor/display/RotationHandleRenderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0007\n\u0002\u0008\t\"\u0017\u0010\u0005\u001a\u00020\u00008\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0001\u0010\u0002\u001a\u0004\u0008\u0003\u0010\u0004\"\u0017\u0010\u0008\u001a\u00020\u00008\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0002\u001a\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\t"
    }
    d2 = {
        "",
        "a",
        "F",
        "getRotationPointSize",
        "()F",
        "rotationPointSize",
        "b",
        "getRotationPointMargin",
        "rotationPointMargin",
        "sdk-universal_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final a:F

.field public static final b:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/universal/R$dimen;->rotation_point_size:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    sput v1, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleRenderKt;->a:F

    sget v1, Lcom/onyx/android/sdk/universal/R$dimen;->rotation_point_margin:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    sput v0, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleRenderKt;->b:F

    return-void
.end method

.method public static final getRotationPointMargin()F
    .locals 1

    sget v0, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleRenderKt;->b:F

    return v0
.end method

.method public static final getRotationPointSize()F
    .locals 1

    sget v0, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleRenderKt;->a:F

    return v0
.end method
