.class public final Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->E(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

.field public final synthetic g:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$a0;->e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$a0;->f:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$a0;->g:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$a0;->e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->getNoteModels()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$a0;->f:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;->getNoteList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$a0;->g:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$a0;->f:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;->getNoteList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->setNoteModel(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$a0;->a(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    return-void
.end method
