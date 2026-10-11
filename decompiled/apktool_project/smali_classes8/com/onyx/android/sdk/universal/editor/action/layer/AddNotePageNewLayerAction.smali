.class public final Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001b\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "m",
        "",
        "h",
        "Ljava/lang/Integer;",
        "layerId",
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
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Integer;)V",
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
.field public final h:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    .line 3
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction;->h:Ljava/lang/Integer;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction;->i:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic access$addNewLayerInfo(Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction;->m()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction;->n(Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    return-void
.end method

.method public static final n(Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerAddedEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerAddedEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
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

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "flatMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction$create$2;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction$create$2;-><init>(Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction;)V

    new-instance v3, Lcom/sunia/HTREnginev2/p8;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/p8;-><init>(Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction;)V

    invoke-static {v0, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction$c;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getPostChangedEvent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction;->i:Z

    return p0
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
            ">;"
        }
    .end annotation

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

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction;->h:Ljava/lang/Integer;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction$addNewLayerInfo$layerId$1;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction$addNewLayerInfo$layerId$1;-><init>(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->addNewLayerInfo(I)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/note/request/SaveNoteModelRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/note/request/SaveNoteModelRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToNote(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction$a;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction$a;-><init>(Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setPostChangedEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/AddNotePageNewLayerAction;->i:Z

    return-void
.end method
