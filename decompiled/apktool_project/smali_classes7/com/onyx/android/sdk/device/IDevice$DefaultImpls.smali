.class public final Lcom/onyx/android/sdk/device/IDevice$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/device/IDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static isCheckScaleSpanEnable(Lcom/onyx/android/sdk/device/IDevice;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/device/IDevice;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public static normalizeTouchAction(Lcom/onyx/android/sdk/device/IDevice;Landroid/view/MotionEvent;)I
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/device/IDevice;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "motionEvent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    return p0
.end method

.method public static supportNativeRenderNode(Lcom/onyx/android/sdk/device/IDevice;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/device/IDevice;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p0, 0x1

    return p0
.end method
