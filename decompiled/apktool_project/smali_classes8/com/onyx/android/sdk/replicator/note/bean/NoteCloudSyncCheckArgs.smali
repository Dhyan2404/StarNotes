.class public final Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;",
        "",
        "()V",
        "checkConfig",
        "",
        "getCheckConfig",
        "()Z",
        "setCheckConfig",
        "(Z)V",
        "checkPermission",
        "getCheckPermission",
        "setCheckPermission",
        "checkSpace",
        "getCheckSpace",
        "setCheckSpace",
        "checkWifi",
        "getCheckWifi",
        "setCheckWifi",
        "showNetworkErrorToast",
        "getShowNetworkErrorToast",
        "setShowNetworkErrorToast",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private checkConfig:Z

.field private checkPermission:Z

.field private checkSpace:Z

.field private checkWifi:Z

.field private showNetworkErrorToast:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;->checkPermission:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;->checkConfig:Z

    return-void
.end method


# virtual methods
.method public final getCheckConfig()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;->checkConfig:Z

    return p0
.end method

.method public final getCheckPermission()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;->checkPermission:Z

    return p0
.end method

.method public final getCheckSpace()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;->checkSpace:Z

    return p0
.end method

.method public final getCheckWifi()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;->checkWifi:Z

    return p0
.end method

.method public final getShowNetworkErrorToast()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;->showNetworkErrorToast:Z

    return p0
.end method

.method public final setCheckConfig(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;->checkConfig:Z

    return-void
.end method

.method public final setCheckPermission(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;->checkPermission:Z

    return-void
.end method

.method public final setCheckSpace(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;->checkSpace:Z

    return-void
.end method

.method public final setCheckWifi(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;->checkWifi:Z

    return-void
.end method

.method public final setShowNetworkErrorToast(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;->showNetworkErrorToast:Z

    return-void
.end method
