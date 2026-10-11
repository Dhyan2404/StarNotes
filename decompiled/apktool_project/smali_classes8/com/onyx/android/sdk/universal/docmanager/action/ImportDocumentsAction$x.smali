.class public final Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->D(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;
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

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$x;->e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$x;->f:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$x;->e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->getNoteModels()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$x;->f:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->setNoteModel(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$x;->e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->getCompletedFileTotalCount()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->setCompletedFileTotalCount(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$x;->a(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;)V

    return-void
.end method
