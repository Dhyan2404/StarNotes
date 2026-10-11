.class public final Lcom/onyx/android/sdk/data/account/bean/DevicePushAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/bean/DevicePushAction;",
        "",
        "()V",
        "DEVICE_PASSWORD_RESET",
        "",
        "DOCUMENT_PASSWORD_RESET",
        "LOCK_DEVICE",
        "NOTE_PASSWORD_RESET",
        "UNLOCK_DEVICE",
        "sdk-data_release"
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
.field public static final DEVICE_PASSWORD_RESET:Ljava/lang/String; = "resetDevicePwd"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DOCUMENT_PASSWORD_RESET:Ljava/lang/String; = "resetDocPwd"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/onyx/android/sdk/data/account/bean/DevicePushAction;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LOCK_DEVICE:Ljava/lang/String; = "lock"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NOTE_PASSWORD_RESET:Ljava/lang/String; = "resetNotePwd"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UNLOCK_DEVICE:Ljava/lang/String; = "unlock"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/DevicePushAction;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/DevicePushAction;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/account/bean/DevicePushAction;->INSTANCE:Lcom/onyx/android/sdk/data/account/bean/DevicePushAction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
