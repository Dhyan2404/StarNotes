.class public final Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010!\u001a\u00020\"J\u0008\u0010#\u001a\u0004\u0018\u00010\u0010J\u0006\u0010$\u001a\u00020\u0004J\u0006\u0010%\u001a\u00020\u0004J\u0006\u0010&\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006\'"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;",
        "",
        "()V",
        "ignoreResult",
        "",
        "getIgnoreResult",
        "()Z",
        "setIgnoreResult",
        "(Z)V",
        "noteModel",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "getNoteModel",
        "()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "setNoteModel",
        "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V",
        "noteTitle",
        "",
        "getNoteTitle",
        "()Ljava/lang/String;",
        "setNoteTitle",
        "(Ljava/lang/String;)V",
        "progressInfo",
        "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        "getProgressInfo",
        "()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        "setProgressInfo",
        "(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V",
        "throwable",
        "",
        "getThrowable",
        "()Ljava/lang/Throwable;",
        "setThrowable",
        "(Ljava/lang/Throwable;)V",
        "checkNoSpaceError",
        "",
        "getImportFileName",
        "isError",
        "isFinished",
        "isSuccess",
        "sdk-universal_overseasRelease"
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
.field private ignoreResult:Z

.field private noteModel:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private noteTitle:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private progressInfo:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private throwable:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->progressInfo:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    return-void
.end method


# virtual methods
.method public final checkNoSpaceError()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->throwable:Ljava/lang/Throwable;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->checkNoSpace(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getIgnoreResult()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->ignoreResult:Z

    return p0
.end method

.method public final getImportFileName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->noteTitle:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->noteModel:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->noteModel:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-object p0
.end method

.method public final getNoteTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->noteTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->progressInfo:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    return-object p0
.end method

.method public final getThrowable()Ljava/lang/Throwable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->throwable:Ljava/lang/Throwable;

    return-object p0
.end method

.method public final isError()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->throwable:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isFinished()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->progressInfo:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->throwable:Ljava/lang/Throwable;

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

.method public final isSuccess()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->progressInfo:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->isComplete()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setIgnoreResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->ignoreResult:Z

    return-void
.end method

.method public final setNoteModel(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->noteModel:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-void
.end method

.method public final setNoteTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->noteTitle:Ljava/lang/String;

    return-void
.end method

.method public final setProgressInfo(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->progressInfo:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    return-void
.end method

.method public final setThrowable(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->throwable:Ljava/lang/Throwable;

    return-void
.end method
