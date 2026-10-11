.class public final Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002R\u0016\u0010\u000b\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\"\u0010\u0015\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u000e\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "m",
        "n",
        "p",
        "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
        "h",
        "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
        "layerInfo",
        "",
        "i",
        "Z",
        "visible",
        "j",
        "getPostChangedEvent",
        "()Z",
        "setPostChangedEvent",
        "(Z)V",
        "postChangedEvent",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;Z)V",
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
.field public h:Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;Z)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;->h:Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    iput-boolean p3, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;->i:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;->j:Z

    return-void
.end method

.method public static final synthetic access$apply(Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;->m()V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;Lcom/onyx/android/sdk/universal/editor/action/render/RedrawNoteAction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;->o(Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;Lcom/onyx/android/sdk/universal/editor/action/render/RedrawNoteAction;)V

    return-void
.end method

.method public static final o(Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;Lcom/onyx/android/sdk/universal/editor/action/render/RedrawNoteAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;->p()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;",
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

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "flatMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction$create$4;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction$create$4;-><init>(Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;)V

    new-instance v2, Lcom/sunia/HTREnginev2/yhm;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/yhm;-><init>(Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getPostChangedEvent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;->j:Z

    return p0
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;->h:Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;->i:Z

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->setShow(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;->n()V

    return-void
.end method

.method public final n()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->ensureGlobalNotePage()Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;->h:Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayer(I)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;->h:Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getShow()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->setShow(Z)V

    :goto_0
    return-void
.end method

.method public final p()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerInfoChangedEvent;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;->h:Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->clone()Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerInfoChangedEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final setPostChangedEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/SetNotePageLayerVisibilityAction;->j:Z

    return-void
.end method
