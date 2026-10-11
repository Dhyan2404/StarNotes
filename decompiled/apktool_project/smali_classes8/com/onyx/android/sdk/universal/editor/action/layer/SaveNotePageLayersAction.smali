.class public final Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u000c\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0016\u0010\u000c\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\"\u0010\u0014\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "n",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;",
        "virtualDocPolicy",
        "",
        "o",
        "h",
        "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
        "pageInfo",
        "",
        "i",
        "Z",
        "getPostChangedEvent",
        "()Z",
        "setPostChangedEvent",
        "(Z)V",
        "postChangedEvent",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public h:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;->h:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;->i:Z

    return-void
.end method

.method public static final synthetic access$getPageInfo$p(Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;->h:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    return-object p0
.end method

.method public static final synthetic access$save(Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;->n()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;->m(Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    return-void
.end method

.method public static final m(Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerUpdatedEvent;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;->h:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->clone()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerUpdatedEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction$create$2;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction$create$2;-><init>(Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;)V

    new-instance v3, Lcom/sunia/HTREnginev2/w0m;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/w0m;-><init>(Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;)V

    invoke-static {v0, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction$b;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction$c;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction$d;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getPostChangedEvent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;->i:Z

    return p0
.end method

.method public final n()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;->o(Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocSave;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocSave;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocSave;->saveNoteModel(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;->h:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    return-object p0
.end method

.method public final o(Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;)V
    .locals 2

    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->ensureGlobalNotePage()Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;->h:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->setLayerList(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;->h:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getCurrentLayerId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->setCurrentLayerId(I)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    return-void
.end method

.method public final setPostChangedEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;->i:Z

    return-void
.end method
