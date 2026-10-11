.class public final Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B#\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\u0013\u001a\u00020\u0005R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\t\"\u0004\u0008\u0010\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\t\"\u0004\u0008\u0012\u0010\u000b\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
        "documentId",
        "",
        "localBackup",
        "",
        "cloudBackup",
        "(Ljava/lang/String;ZZ)V",
        "getCloudBackup",
        "()Z",
        "setCloudBackup",
        "(Z)V",
        "getDocumentId",
        "()Ljava/lang/String;",
        "error",
        "getError",
        "setError",
        "getLocalBackup",
        "setLocalBackup",
        "backupEnabled",
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
.field private cloudBackup:Z

.field private final documentId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private error:Z

.field private localBackup:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;-><init>(Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->documentId:Ljava/lang/String;

    .line 5
    iput-boolean p2, p0, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->localBackup:Z

    .line 6
    iput-boolean p3, p0, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->cloudBackup:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    .line 2
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public final backupEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->localBackup:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->cloudBackup:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final getCloudBackup()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->cloudBackup:Z

    return p0
.end method

.method public final getDocumentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->documentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getError()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->error:Z

    return p0
.end method

.method public final getLocalBackup()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->localBackup:Z

    return p0
.end method

.method public final setCloudBackup(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->cloudBackup:Z

    return-void
.end method

.method public final setError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->error:Z

    return-void
.end method

.method public final setLocalBackup(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;->localBackup:Z

    return-void
.end method
