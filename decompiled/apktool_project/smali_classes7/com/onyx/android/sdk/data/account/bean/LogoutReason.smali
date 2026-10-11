.class public final Lcom/onyx/android/sdk/data/account/bean/LogoutReason;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/bean/LogoutReason;",
        "",
        "()V",
        "CLUSTER_CHANGE",
        "",
        "MANUAL",
        "NOT_BIND_DEVICE",
        "TOKEN_DISABLED",
        "TOKEN_EXPIRED",
        "TOKEN_EXPIRED_REASON_API",
        "TOKEN_EXPIRED_REASON_WEBVIEW",
        "TOKEN_INVALID",
        "TOKEN_UNKNOWN",
        "UNKNOWN",
        "USER_IS_DISABLED",
        "USER_NOT_FOUND",
        "isAutoLogoutReason",
        "",
        "reason",
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
.field public static final CLUSTER_CHANGE:I = 0x2

.field public static final INSTANCE:Lcom/onyx/android/sdk/data/account/bean/LogoutReason;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MANUAL:I = 0x1

.field public static final NOT_BIND_DEVICE:I = 0x281059f

.field public static final TOKEN_DISABLED:I = 0x2810599

.field public static final TOKEN_EXPIRED:I = 0x28105a6

.field public static final TOKEN_EXPIRED_REASON_API:I = 0x0

.field public static final TOKEN_EXPIRED_REASON_WEBVIEW:I = 0x1

.field public static final TOKEN_INVALID:I = 0x281059b

.field public static final TOKEN_UNKNOWN:I = 0x281059c

.field public static final UNKNOWN:I = 0x0

.field public static final USER_IS_DISABLED:I = 0x281059e

.field public static final USER_NOT_FOUND:I = 0x281059d


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/LogoutReason;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/LogoutReason;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/account/bean/LogoutReason;->INSTANCE:Lcom/onyx/android/sdk/data/account/bean/LogoutReason;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isAutoLogoutReason(I)Z
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
