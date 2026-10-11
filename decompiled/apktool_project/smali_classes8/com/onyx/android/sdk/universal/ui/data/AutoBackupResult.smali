.class public final Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u0004\u001a\u0004\u0008\u000b\u0010\u0006\"\u0004\u0008\u000c\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;",
        "",
        "",
        "a",
        "Z",
        "getLocalBackupResult",
        "()Z",
        "setLocalBackupResult",
        "(Z)V",
        "localBackupResult",
        "b",
        "getCloudBackupResult",
        "setCloudBackupResult",
        "cloudBackupResult",
        "<init>",
        "(ZZ)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;->a:Z

    .line 4
    iput-boolean p2, p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public final getCloudBackupResult()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;->b:Z

    return p0
.end method

.method public final getLocalBackupResult()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;->a:Z

    return p0
.end method

.method public final setCloudBackupResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;->b:Z

    return-void
.end method

.method public final setLocalBackupResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;->a:Z

    return-void
.end method
