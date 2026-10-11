.class public final Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler;
.super Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010!\u001a\u00020 \u0012\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018\u00a2\u0006\u0004\u0008\"\u0010#J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0007J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\tH\u0007J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\rH\u0007J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000fH\u0007J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0011H\u0007J\u0008\u0010\u0013\u001a\u00020\u0002H\u0002J\u000c\u0010\u0015\u001a\u0006\u0012\u0002\u0008\u00030\u0014H\u0002J\u0008\u0010\u0017\u001a\u00020\u0016H\u0002R\u001a\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006$"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler;",
        "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;",
        "",
        "destroy",
        "Lcom/onyx/android/sdk/universal/editor/events/note/EndEraseEvent;",
        "event",
        "onEndEraseEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/NoShapeSelectedEvent;",
        "onNoShapeSelectedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/CurrentLayerLockedEvent;",
        "onCurrentLayerLockedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/CurrentLayerHiddenEvent;",
        "onCurrentLayerHiddenEvent",
        "Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;",
        "onConfigurationChangedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/PagesRemovedEvent;",
        "onPagesRemovedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ShowStylusFunctionInvalidEvent;",
        "onShowStylusFunctionInvalidEvent",
        "c",
        "Lio/reactivex/rxjava3/core/Observable;",
        "a",
        "Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;",
        "b",
        "Lkotlin/Function0;",
        "Landroid/graphics/Rect;",
        "f",
        "Lkotlin/jvm/functions/Function0;",
        "getEditorContainerRectFunc",
        "g",
        "Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;",
        "popup",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function0;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final f:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lkotlin/jvm/functions/Function0<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getEditorContainerRectFunc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler;->f:Lkotlin/jvm/functions/Function0;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getToolOperationTipPopup(Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler;)Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler;->b()Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/layer/LoadNotePageLayersAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/layer/LoadNotePageLayersAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler$a;->e:Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler$a;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "filter(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final b()Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler;->g:Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler;->f:Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler;->g:Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;

    :cond_0
    return-object v0
.end method

.method public final c()V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler;->a()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler$b;-><init>(Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string p0, "doOnNext(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler;->g:Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;->destroy()V

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->destroy()V

    return-void
.end method

.method public final onConfigurationChangedEvent(Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler;->b()Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;->updatePositionIf()V

    return-void
.end method

.method public final onCurrentLayerHiddenEvent(Lcom/onyx/android/sdk/universal/editor/events/note/CurrentLayerHiddenEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/CurrentLayerHiddenEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler;->b()Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;->showCurrentLayerHidden()V

    return-void
.end method

.method public final onCurrentLayerLockedEvent(Lcom/onyx/android/sdk/universal/editor/events/note/CurrentLayerLockedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/CurrentLayerLockedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler;->b()Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;->showCurrentLayerLocked()V

    return-void
.end method

.method public final onEndEraseEvent(Lcom/onyx/android/sdk/universal/editor/events/note/EndEraseEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/EndEraseEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/EndEraseEvent;->getSingleTap()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getEraserElementsOnlyOption()Lcom/onyx/android/sdk/data/utils/JSONListOption;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/EndEraseEvent;->getRemovedShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/EndEraseEvent;->getHitTestShapeTypes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler;->c()V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/EndEraseEvent;->getRemovedShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/EndEraseEvent;->getHitTestShapeTypes()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler$onEndEraseEvent$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler$onEndEraseEvent$1;

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/EndEraseEvent;->getHitTestShapeTypes()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler$onEndEraseEvent$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler$onEndEraseEvent$2;

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler;->b()Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;->showTextCanNotErase()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/EndEraseEvent;->getRemovedShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONListOption;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler;->b()Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;->showOnlyEraseTape()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/EndEraseEvent;->getRemovedShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONListOption;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler;->b()Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;->showOnlyEraseHighlight()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/EndEraseEvent;->getRemovedShapes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler;->c()V

    :cond_5
    :goto_0
    return-void
.end method

.method public final onNoShapeSelectedEvent(Lcom/onyx/android/sdk/universal/editor/events/note/NoShapeSelectedEvent;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/NoShapeSelectedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler;->a()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler$c;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler$c;-><init>(Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string p0, "doOnNext(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onPagesRemovedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/PagesRemovedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/PagesRemovedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler;->b()Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/PagesRemovedEvent;->getPageIdList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;->showPageRemovedMsg(Ljava/util/List;)V

    return-void
.end method

.method public final onShowStylusFunctionInvalidEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ShowStylusFunctionInvalidEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ShowStylusFunctionInvalidEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/OperationTipEventHandler;->b()Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;->showStylusFunctionInvalid()V

    return-void
.end method
