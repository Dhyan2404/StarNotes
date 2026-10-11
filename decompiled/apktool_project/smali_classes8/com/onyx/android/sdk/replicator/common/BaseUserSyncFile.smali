.class public abstract Lcom/onyx/android/sdk/replicator/common/BaseUserSyncFile;
.super Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0007\u001a\u00020\u00028\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/common/BaseUserSyncFile;",
        "Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;",
        "",
        "d",
        "Ljava/lang/String;",
        "getOssFilePrefix",
        "()Ljava/lang/String;",
        "ossFilePrefix",
        "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;",
        "dataReplicator",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dataReplicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V

    sget-object p1, Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->getSyncUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;->ossUserDataDir(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;->ossPathString(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/common/BaseUserSyncFile;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getOssFilePrefix()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/common/BaseUserSyncFile;->d:Ljava/lang/String;

    return-object p0
.end method
