.class public final Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;->j(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

.field public final synthetic g:Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$d;->e:Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$d;->f:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$d;->g:Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$d;->e:Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/ActivateDocumentEvent;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$d;->f:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$d;->g:Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;->getPageId()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$d;->g:Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;->getUpdateTab()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/onyx/android/sdk/universal/editor/events/app/ActivateDocumentEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/lang/String;Z)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$d;->a(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    return-void
.end method
