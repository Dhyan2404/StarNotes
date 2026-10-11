.class public final Lcom/onyx/android/sdk/device/DeviceStylusConst;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/device/DeviceStylusConst;",
        "",
        "()V",
        "SETTINGS_STYLUS_DOUBLE_CLICK",
        "",
        "SETTINGS_STYLUS_PRIMARY_CLICK",
        "SETTINGS_STYLUS_SECONDARY_CLICK",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/device/DeviceStylusConst;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SETTINGS_STYLUS_DOUBLE_CLICK:Ljava/lang/String; = "settings_stylus_double_click"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SETTINGS_STYLUS_PRIMARY_CLICK:Ljava/lang/String; = "settings_stylus_primary_click"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SETTINGS_STYLUS_SECONDARY_CLICK:Ljava/lang/String; = "settings_stylus_secondary_click"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/device/DeviceStylusConst;

    invoke-direct {v0}, Lcom/onyx/android/sdk/device/DeviceStylusConst;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/device/DeviceStylusConst;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceStylusConst;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
