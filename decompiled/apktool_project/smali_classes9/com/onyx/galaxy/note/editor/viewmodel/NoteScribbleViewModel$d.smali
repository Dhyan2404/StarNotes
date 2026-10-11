.class public final Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->onUserNoteListImported(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;Lio/reactivex/rxjava3/functions/Consumer;)V
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$d;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;->Companion:Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent$Companion;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent$Companion;->createFrom$default(Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent$Companion;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;ZILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;->setSaveBeforeActivate(Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$d;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$d;->a(Ljava/util/List;)V

    return-void
.end method
