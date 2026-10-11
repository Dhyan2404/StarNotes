.class public final Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0012\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0006\u0010\u0015\u001a\u00020\u0002\u0012\u0006\u0010\u0019\u001a\u00020\u0002\u00a2\u0006\u0004\u0008+\u0010,J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0002R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0010\u001a\u0004\u0008\u0017\u0010\u0012\"\u0004\u0008\u0018\u0010\u0014R(\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R$\u0010*\u001a\u0004\u0018\u00010#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)\u00a8\u0006-"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;",
        "",
        "",
        "backupEnabled",
        "isError",
        "onlyCloudBackup",
        "onlyLocalBackup",
        "",
        "a",
        "Ljava/lang/String;",
        "getDocumentId",
        "()Ljava/lang/String;",
        "setDocumentId",
        "(Ljava/lang/String;)V",
        "documentId",
        "b",
        "Z",
        "getLocalBackup",
        "()Z",
        "setLocalBackup",
        "(Z)V",
        "localBackup",
        "c",
        "getCloudBackup",
        "setCloudBackup",
        "cloudBackup",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;",
        "d",
        "Ljava/util/List;",
        "getAutoBackupModels",
        "()Ljava/util/List;",
        "setAutoBackupModels",
        "(Ljava/util/List;)V",
        "autoBackupModels",
        "Lcom/onyx/android/sdk/universal/ui/data/BackupContext;",
        "e",
        "Lcom/onyx/android/sdk/universal/ui/data/BackupContext;",
        "getBackupContext",
        "()Lcom/onyx/android/sdk/universal/ui/data/BackupContext;",
        "setBackupContext",
        "(Lcom/onyx/android/sdk/universal/ui/data/BackupContext;)V",
        "backupContext",
        "<init>",
        "(Ljava/lang/String;ZZ)V",
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
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Z

.field public c:Z

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->b:Z

    iput-boolean p3, p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->c:Z

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final backupEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->b:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->c:Z

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

.method public final getAutoBackupModels()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->d:Ljava/util/List;

    return-object p0
.end method

.method public final getBackupContext()Lcom/onyx/android/sdk/universal/ui/data/BackupContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->e:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    return-object p0
.end method

.method public final getCloudBackup()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->c:Z

    return p0
.end method

.method public final getDocumentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getLocalBackup()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->b:Z

    return p0
.end method

.method public final isError()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->e:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->isError()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onlyCloudBackup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->b:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->c:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onlyLocalBackup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->b:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->c:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setAutoBackupModels(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->d:Ljava/util/List;

    return-void
.end method

.method public final setBackupContext(Lcom/onyx/android/sdk/universal/ui/data/BackupContext;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/ui/data/BackupContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->e:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    return-void
.end method

.method public final setCloudBackup(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->c:Z

    return-void
.end method

.method public final setDocumentId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->a:Ljava/lang/String;

    return-void
.end method

.method public final setLocalBackup(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->b:Z

    return-void
.end method
