.class public final Lcom/onyx/android/sdk/device/HonorDevice;
.super Lcom/onyx/android/sdk/device/CommonBaseDevice;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/device/HonorDevice$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0004H\u0016J\u0008\u0010\u000e\u001a\u00020\u000cH\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/device/HonorDevice;",
        "Lcom/onyx/android/sdk/device/CommonBaseDevice;",
        "()V",
        "getPalmSizeFactor",
        "",
        "getWindowTopPadding",
        "",
        "windowModeType",
        "Lcom/onyx/android/sdk/device/bean/WindowModeType;",
        "multiWindowType",
        "Lcom/onyx/android/sdk/device/bean/MultiWindowType;",
        "isDynamicRefreshSupport",
        "",
        "refresh",
        "supportNativeRenderNode",
        "Companion",
        "sdk-device_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/device/HonorDevice$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HONOR_MAX_DYNAMIC_SUPPORT_REFRESH_VALUE:F = 61.0f

.field public static final HONOR_PALM_SIZE_FACTOR:F = 2.0f


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/device/HonorDevice$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/device/HonorDevice$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/device/HonorDevice;->Companion:Lcom/onyx/android/sdk/device/HonorDevice$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/device/CommonBaseDevice;-><init>()V

    return-void
.end method


# virtual methods
.method public getPalmSizeFactor()F
    .locals 0

    const/high16 p0, 0x40000000    # 2.0f

    return p0
.end method

.method public getWindowTopPadding(Lcom/onyx/android/sdk/device/bean/WindowModeType;Lcom/onyx/android/sdk/device/bean/MultiWindowType;)I
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/device/bean/WindowModeType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/device/bean/MultiWindowType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "windowModeType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "multiWindowType"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->isWindowAtTheTop()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x41a00000    # 20.0f

    invoke-static {p0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x40800000    # 4.0f

    invoke-static {p0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result p0

    :goto_0
    return p0
.end method

.method public isDynamicRefreshSupport(F)Z
    .locals 0

    const/high16 p0, 0x42740000    # 61.0f

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportNativeRenderNode()Z
    .locals 1

    const/16 v0, 0x24

    invoke-static {v0}, Lcom/onyx/android/sdk/device/BuildKt;->isApiLevelAbove(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->supportNativeRenderNode()Z

    move-result p0

    return p0
.end method
