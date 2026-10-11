.class public final Lcom/onyx/android/sdk/data/account/bean/HWRActivateConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/bean/HWRActivateConstant;",
        "",
        "()V",
        "STATE_EMPTY",
        "",
        "STATE_PRO",
        "STATE_PRO_INACTIVATED",
        "STATE_PRO_REVOKED",
        "STATE_TRIAL",
        "STATE_TRIAL_EXPIRED",
        "STATE_TRIAL_INACTIVATED",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/data/account/bean/HWRActivateConstant;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STATE_EMPTY:I = 0x0

.field public static final STATE_PRO:I = 0x4

.field public static final STATE_PRO_INACTIVATED:I = 0x2

.field public static final STATE_PRO_REVOKED:I = 0x6

.field public static final STATE_TRIAL:I = 0x3

.field public static final STATE_TRIAL_EXPIRED:I = 0x5

.field public static final STATE_TRIAL_INACTIVATED:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/HWRActivateConstant;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/HWRActivateConstant;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/account/bean/HWRActivateConstant;->INSTANCE:Lcom/onyx/android/sdk/data/account/bean/HWRActivateConstant;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
