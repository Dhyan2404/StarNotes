.class public final Lcom/onyx/galaxy/note/settings/data/ImportResultBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008 \u0010!J\u000e\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0000R\"\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\u0013\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\"\u0010\u001b\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\"\u0010\u001f\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u0016\u001a\u0004\u0008\u001d\u0010\u0018\"\u0004\u0008\u001e\u0010\u001a\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/data/ImportResultBean;",
        "",
        "importResultBean",
        "",
        "copy",
        "",
        "a",
        "Z",
        "isSuccess",
        "()Z",
        "setSuccess",
        "(Z)V",
        "Lcom/onyx/galaxy/note/settings/data/BackupErrorType;",
        "b",
        "Lcom/onyx/galaxy/note/settings/data/BackupErrorType;",
        "getErrorType",
        "()Lcom/onyx/galaxy/note/settings/data/BackupErrorType;",
        "setErrorType",
        "(Lcom/onyx/galaxy/note/settings/data/BackupErrorType;)V",
        "errorType",
        "",
        "c",
        "Ljava/lang/String;",
        "getBackupName",
        "()Ljava/lang/String;",
        "setBackupName",
        "(Ljava/lang/String;)V",
        "backupName",
        "d",
        "getDocId",
        "setDocId",
        "docId",
        "<init>",
        "()V",
        "note_overseasRelease"
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

.field public b:Lcom/onyx/galaxy/note/settings/data/BackupErrorType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final copy(Lcom/onyx/galaxy/note/settings/data/ImportResultBean;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/settings/data/ImportResultBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "importResultBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->a:Z

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->a:Z

    iget-object p1, p1, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->b:Lcom/onyx/galaxy/note/settings/data/BackupErrorType;

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->b:Lcom/onyx/galaxy/note/settings/data/BackupErrorType;

    return-void
.end method

.method public final getBackupName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getDocId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getErrorType()Lcom/onyx/galaxy/note/settings/data/BackupErrorType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->b:Lcom/onyx/galaxy/note/settings/data/BackupErrorType;

    return-object p0
.end method

.method public final isSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->a:Z

    return p0
.end method

.method public final setBackupName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->c:Ljava/lang/String;

    return-void
.end method

.method public final setDocId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->d:Ljava/lang/String;

    return-void
.end method

.method public final setErrorType(Lcom/onyx/galaxy/note/settings/data/BackupErrorType;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/settings/data/BackupErrorType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->b:Lcom/onyx/galaxy/note/settings/data/BackupErrorType;

    return-void
.end method

.method public final setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->a:Z

    return-void
.end method
