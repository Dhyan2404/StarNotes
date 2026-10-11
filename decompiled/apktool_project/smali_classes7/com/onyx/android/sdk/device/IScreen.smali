.class public interface abstract Lcom/onyx/android/sdk/device/IScreen;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\tH&J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0003H&J\u0008\u0010\r\u001a\u00020\u000eH&J\u0008\u0010\u000f\u001a\u00020\u000eH&J\u0008\u0010\u0010\u001a\u00020\u000eH&J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/device/IScreen;",
        "",
        "getMultiWindowType",
        "Lcom/onyx/android/sdk/device/bean/MultiWindowType;",
        "activity",
        "Landroid/app/Activity;",
        "windowModeType",
        "Lcom/onyx/android/sdk/device/bean/WindowModeType;",
        "getScreenInfo",
        "Lcom/onyx/android/sdk/device/bean/ScreenInfo;",
        "getWindowTopPadding",
        "",
        "multiWindowType",
        "isFreedomWindowMode",
        "",
        "isFullScreen",
        "isMultiWindowMode",
        "isSmallScreen",
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


# virtual methods
.method public abstract getMultiWindowType(Landroid/app/Activity;Lcom/onyx/android/sdk/device/bean/WindowModeType;)Lcom/onyx/android/sdk/device/bean/MultiWindowType;
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/device/bean/WindowModeType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getScreenInfo()Lcom/onyx/android/sdk/device/bean/ScreenInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getWindowTopPadding(Lcom/onyx/android/sdk/device/bean/WindowModeType;Lcom/onyx/android/sdk/device/bean/MultiWindowType;)I
    .param p1    # Lcom/onyx/android/sdk/device/bean/WindowModeType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/device/bean/MultiWindowType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract isFreedomWindowMode()Z
.end method

.method public abstract isFullScreen()Z
.end method

.method public abstract isMultiWindowMode()Z
.end method

.method public abstract isSmallScreen(Landroid/app/Activity;)Z
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
