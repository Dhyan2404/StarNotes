.class public final Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->A()V
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Unit;)V
    .locals 1
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->access$getSearchProgressResult$p(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->access$getNoteModel$p(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->setCurrentSearchId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->access$getSearchProgressResult$p(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->access$getNoteModel$p(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->setCurrentSearchName(Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$Companion;->postSearchProgressEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Number;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$d;->a(Lkotlin/Unit;)V

    return-void
.end method
