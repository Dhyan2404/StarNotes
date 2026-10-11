.class public final Lcom/onyx/android/sdk/device/DeviceFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0006R\u001b\u0010\u000c\u001a\u00020\u00028FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/device/DeviceFactory;",
        "",
        "Lcom/onyx/android/sdk/device/CommonBaseDevice;",
        "getDevice",
        "Lcom/onyx/android/sdk/device/INotch;",
        "getNotchDevice",
        "Lcom/onyx/android/sdk/device/IScreen;",
        "getScreenDevice",
        "a",
        "Lkotlin/Lazy;",
        "getCurrentDevice",
        "()Lcom/onyx/android/sdk/device/CommonBaseDevice;",
        "currentDevice",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/device/DeviceFactory;

    invoke-direct {v0}, Lcom/onyx/android/sdk/device/DeviceFactory;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/device/DeviceFactory;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory;

    sget-object v0, Lcom/onyx/android/sdk/device/DeviceFactory$currentDevice$2;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory$currentDevice$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/device/DeviceFactory;->a:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCurrentDevice()Lcom/onyx/android/sdk/device/CommonBaseDevice;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/device/DeviceFactory;->a:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/device/CommonBaseDevice;

    return-object p0
.end method

.method public final getDevice()Lcom/onyx/android/sdk/device/CommonBaseDevice;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/device/DeviceUtils;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/device/DeviceUtils;->isLenovoDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/device/LenovoDevice;

    invoke-direct {p0}, Lcom/onyx/android/sdk/device/LenovoDevice;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/device/DeviceUtils;->isSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lcom/onyx/android/sdk/device/SamsungDevice;

    invoke-direct {p0}, Lcom/onyx/android/sdk/device/SamsungDevice;-><init>()V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/device/DeviceUtils;->isXiaomiDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lcom/onyx/android/sdk/device/XiaomiDevice;

    invoke-direct {p0}, Lcom/onyx/android/sdk/device/XiaomiDevice;-><init>()V

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/device/DeviceUtils;->isVivoDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, Lcom/onyx/android/sdk/device/VivoDevice;

    invoke-direct {p0}, Lcom/onyx/android/sdk/device/VivoDevice;-><init>()V

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/device/DeviceUtils;->isHuaWeiDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p0, Lcom/onyx/android/sdk/device/HuaWeiDevice;

    invoke-direct {p0}, Lcom/onyx/android/sdk/device/HuaWeiDevice;-><init>()V

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/device/DeviceUtils;->isOppoDevice()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p0, Lcom/onyx/android/sdk/device/OppoDevice;

    invoke-direct {p0}, Lcom/onyx/android/sdk/device/OppoDevice;-><init>()V

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/device/DeviceUtils;->isHonorDevice()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p0, Lcom/onyx/android/sdk/device/HonorDevice;

    invoke-direct {p0}, Lcom/onyx/android/sdk/device/HonorDevice;-><init>()V

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/device/DeviceUtils;->isOnePlusDevice()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p0, Lcom/onyx/android/sdk/device/OnePlusDevice;

    invoke-direct {p0}, Lcom/onyx/android/sdk/device/OnePlusDevice;-><init>()V

    return-object p0

    :cond_7
    invoke-virtual {p0}, Lcom/onyx/android/sdk/device/DeviceUtils;->isTalDevice()Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lcom/onyx/android/sdk/device/TalDevice;

    invoke-direct {p0}, Lcom/onyx/android/sdk/device/TalDevice;-><init>()V

    return-object p0

    :cond_8
    new-instance p0, Lcom/onyx/android/sdk/device/CommonBaseDevice;

    invoke-direct {p0}, Lcom/onyx/android/sdk/device/CommonBaseDevice;-><init>()V

    return-object p0
.end method

.method public final getNotchDevice()Lcom/onyx/android/sdk/device/INotch;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/16 v0, 0x1c

    invoke-static {v0}, Lcom/onyx/android/sdk/device/BuildKt;->isApiLevelAbove(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/onyx/android/sdk/device/BuildKt;->isApiLevelBelow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/device/DeviceFactory;->getDevice()Lcom/onyx/android/sdk/device/CommonBaseDevice;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Lcom/onyx/android/sdk/device/CommonBaseDevice;

    invoke-direct {p0}, Lcom/onyx/android/sdk/device/CommonBaseDevice;-><init>()V

    return-object p0
.end method

.method public final getScreenDevice()Lcom/onyx/android/sdk/device/IScreen;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/device/DeviceFactory;->getDevice()Lcom/onyx/android/sdk/device/CommonBaseDevice;

    move-result-object p0

    return-object p0
.end method
