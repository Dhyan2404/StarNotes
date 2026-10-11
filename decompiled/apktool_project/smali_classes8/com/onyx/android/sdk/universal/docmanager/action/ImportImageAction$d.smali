.class public final Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->n(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction$d;->e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;

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

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction$d;->e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->setImportModel(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction$d;->e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->access$getEnablePostEvent$p(Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction$d;->e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageResultEvent;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageResultEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction$d;->a(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;)V

    return-void
.end method
