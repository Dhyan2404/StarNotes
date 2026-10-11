.class public final Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
        "()V",
        "docProgress",
        "Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;",
        "getDocProgress",
        "()Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;",
        "setDocProgress",
        "(Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;)V",
        "scope",
        "",
        "getScope",
        "()Ljava/lang/String;",
        "setScope",
        "(Ljava/lang/String;)V",
        "syncStatus",
        "",
        "getSyncStatus",
        "()I",
        "setSyncStatus",
        "(I)V",
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
.field private docProgress:Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private scope:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private syncStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;->syncStatus:I

    return-void
.end method


# virtual methods
.method public final getDocProgress()Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;->docProgress:Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;

    return-object p0
.end method

.method public final getScope()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;->scope:Ljava/lang/String;

    return-object p0
.end method

.method public final getSyncStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;->syncStatus:I

    return p0
.end method

.method public final setDocProgress(Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;->docProgress:Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;

    return-void
.end method

.method public final setScope(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;->scope:Ljava/lang/String;

    return-void
.end method

.method public final setSyncStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;->syncStatus:I

    return-void
.end method
