.class final Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$parseCopyPBToDBData$userPBDataContext$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;->i0(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;",
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;",
        "it",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $noteImportArgs:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$parseCopyPBToDBData$userPBDataContext$1;->$noteImportArgs:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$parseCopyPBToDBData$userPBDataContext$1;->$noteImportArgs:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getCopyNoteListArgs()Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->setCopyNoteListArgs(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;)V

    .line 4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getCopyNoteListArgs()Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getUseOriginParentId()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;->setCopyAllFolder(Z)V

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getCopyNoteListArgs()Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getUseOriginParentId()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;->setCopyAllTag(Z)V

    :goto_1
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$parseCopyPBToDBData$userPBDataContext$1;->invoke(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;

    move-result-object p0

    return-object p0
.end method
