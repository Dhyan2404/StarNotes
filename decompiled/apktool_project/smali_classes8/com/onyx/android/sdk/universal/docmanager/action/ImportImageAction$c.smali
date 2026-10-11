.class public final Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->create()Lio/reactivex/rxjava3/core/Observable;
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

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction$c;->e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 7
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/CleanupImportFailedDocumentAction;

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction$c;->e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction$c;->e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->getNoteCreateInfo()Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/onyx/android/sdk/universal/docmanager/action/CleanupImportFailedDocumentAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction$c;->e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;->ERROR:Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;->access$postImportProgressEventByState(Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction$c;->a(Ljava/lang/Throwable;)V

    return-void
.end method
