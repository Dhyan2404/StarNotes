.class public final Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;->U(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Ljava/io/File;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

.field public final synthetic g:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

.field public final synthetic h:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$p;->e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$p;->f:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$p;->g:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$p;->h:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$p;->e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$p;->f:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$p;->g:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$p;->h:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;

    invoke-static {p1, v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;->access$saveNote(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$p;->e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end import:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$p;->g:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",change uuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$p;->g:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$p;->g:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$p;->a(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p0

    return-object p0
.end method
