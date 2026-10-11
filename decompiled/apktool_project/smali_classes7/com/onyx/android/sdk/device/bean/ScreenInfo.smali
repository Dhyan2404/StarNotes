.class public final Lcom/onyx/android/sdk/device/bean/ScreenInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/device/bean/ScreenInfo;",
        "",
        "",
        "a",
        "F",
        "getAppScreenDp",
        "()F",
        "setAppScreenDp",
        "(F)V",
        "appScreenDp",
        "Lcom/onyx/android/sdk/device/bean/WindowModeType;",
        "b",
        "Lcom/onyx/android/sdk/device/bean/WindowModeType;",
        "getWindowModeType",
        "()Lcom/onyx/android/sdk/device/bean/WindowModeType;",
        "setWindowModeType",
        "(Lcom/onyx/android/sdk/device/bean/WindowModeType;)V",
        "windowModeType",
        "Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;",
        "c",
        "Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;",
        "getScreenDisplayType",
        "()Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;",
        "setScreenDisplayType",
        "(Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;)V",
        "screenDisplayType",
        "<init>",
        "()V",
        "sdk-device_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:F

.field public b:Lcom/onyx/android/sdk/device/bean/WindowModeType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/device/bean/WindowModeType;->FULL_SCREEN:Lcom/onyx/android/sdk/device/bean/WindowModeType;

    iput-object v0, p0, Lcom/onyx/android/sdk/device/bean/ScreenInfo;->b:Lcom/onyx/android/sdk/device/bean/WindowModeType;

    sget-object v0, Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;->PAD:Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;

    iput-object v0, p0, Lcom/onyx/android/sdk/device/bean/ScreenInfo;->c:Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;

    return-void
.end method


# virtual methods
.method public final getAppScreenDp()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/device/bean/ScreenInfo;->a:F

    return p0
.end method

.method public final getScreenDisplayType()Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/device/bean/ScreenInfo;->c:Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;

    return-object p0
.end method

.method public final getWindowModeType()Lcom/onyx/android/sdk/device/bean/WindowModeType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/device/bean/ScreenInfo;->b:Lcom/onyx/android/sdk/device/bean/WindowModeType;

    return-object p0
.end method

.method public final setAppScreenDp(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/device/bean/ScreenInfo;->a:F

    return-void
.end method

.method public final setScreenDisplayType(Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/device/bean/ScreenInfo;->c:Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;

    return-void
.end method

.method public final setWindowModeType(Lcom/onyx/android/sdk/device/bean/WindowModeType;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/device/bean/WindowModeType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/device/bean/ScreenInfo;->b:Lcom/onyx/android/sdk/device/bean/WindowModeType;

    return-void
.end method
