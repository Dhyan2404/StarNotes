.class public final Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;
.super Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010#\u001a\u00020\"\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u00a2\u0006\u0004\u0008$\u0010%J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0007J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\tH\u0007J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\rH\u0007J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000fH\u0007J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0011H\u0007J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0013H\u0007J\u0008\u0010\u0015\u001a\u00020\u0002H\u0002J\u0008\u0010\u0016\u001a\u00020\u0002H\u0002J\u0008\u0010\u0017\u001a\u00020\u0002H\u0002J\u0008\u0010\u0019\u001a\u00020\u0018H\u0002R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u001a\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;",
        "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;",
        "",
        "destroy",
        "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;",
        "event",
        "onDocumentOpenSuccessEvent",
        "Lcom/onyx/galaxy/note/editor/event/SidebarDisplayStateChangedEvent;",
        "onSidebarDisplayStateChangedEvent",
        "Lcom/onyx/galaxy/note/editor/event/SidebarWidthChangedEvent;",
        "onSidebarWidthChangedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;",
        "onVirtualDocViewInfoEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;",
        "onScrollBeginEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ScaleBeginEvent;",
        "onScaleBeginEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/UpdateShapeLocationBarEvent;",
        "onUpdateShapeLocationBarEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/EditorContainerLayoutChangedEvent;",
        "onEditorContainerLayoutChangedEvent",
        "k",
        "l",
        "i",
        "",
        "j",
        "Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;",
        "f",
        "Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;",
        "shapesLocationBar",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "g",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "updateFilter",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;)V",
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
.field public f:Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onyx/android/sdk/base/rx/RxFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/rx/RxFilter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapesLocationBar"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;

    new-instance p2, Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-direct {p2}, Lcom/onyx/android/sdk/base/rx/RxFilter;-><init>()V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->g:Lcom/onyx/android/sdk/base/rx/RxFilter;

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutShapesLocationBarBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/LayoutShapesLocationBarBinding;->prev:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v0, Lcom/sunia/HTREnginev2/vmm;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/vmm;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutShapesLocationBarBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/LayoutShapesLocationBarBinding;->origin:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v0, Lcom/sunia/HTREnginev2/wmm;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/wmm;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutShapesLocationBarBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShapesLocationBarBinding;->next:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance p2, Lcom/sunia/HTREnginev2/xmm;

    invoke-direct {p2, p1}, Lcom/sunia/HTREnginev2/xmm;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->e(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getShapesLocationBar$p(Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;)Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;

    return-object p0
.end method

.method public static final synthetic access$updateShapeLocationBar(Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->k()V

    return-void
.end method

.method public static final synthetic access$updateView(Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->l()V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->f(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->h(Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->g(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;)V

    return-void
.end method

.method public static final e(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;)V
    .locals 0

    const-string p1, "$editorBundle"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/MoveToPrevShapeRegionEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/MoveToPrevShapeRegionEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public static final f(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;)V
    .locals 0

    const-string p1, "$editorBundle"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/MoveToOriginEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/MoveToOriginEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public static final g(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;)V
    .locals 0

    const-string p1, "$editorBundle"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/MoveToNextShapeRegionEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/MoveToNextShapeRegionEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public static final h(Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;->resetLocation()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->destroy()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->g:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxFilter;->dispose()V

    return-void
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->g:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxFilter;->dispose()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->g:Lcom/onyx/android/sdk/base/rx/RxFilter;

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler$a;-><init>(Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3, v1}, Lcom/onyx/android/sdk/base/rx/RxFilter;->subscribeDebounce(JLio/reactivex/rxjava3/functions/Consumer;)V

    return-void
.end method

.method public final j()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportShapesLocationBar()Z

    move-result p0

    return p0
.end method

.method public final k()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/draft/ResetShapeLocationBeanAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/draft/ResetShapeLocationBeanAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler$b;-><init>(Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final l()V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler$c;-><init>(Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;)V

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

.method public final onDocumentOpenSuccessEvent(Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->j()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->i()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->g:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxFilter;->dispose()V

    :goto_0
    return-void
.end method

.method public final onEditorContainerLayoutChangedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/EditorContainerLayoutChangedEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/EditorContainerLayoutChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->j()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;

    new-instance v0, Lcom/sunia/HTREnginev2/ymm;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ymm;-><init>(Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onScaleBeginEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ScaleBeginEvent;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ScaleBeginEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->j()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/draft/ResetShapeLocationBeanAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/draft/ResetShapeLocationBeanAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onScrollBeginEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->j()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/draft/ResetShapeLocationBeanAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/draft/ResetShapeLocationBeanAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onSidebarDisplayStateChangedEvent(Lcom/onyx/galaxy/note/editor/event/SidebarDisplayStateChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/SidebarDisplayStateChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/SidebarDisplayStateChangedEvent;->getShow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/SidebarDisplayStateChangedEvent;->getInfo()Lcom/onyx/galaxy/note/editor/event/EditorSideBarInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;->updateBySideBar(Lcom/onyx/galaxy/note/editor/event/EditorSideBarInfo;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;->restorePositionIf()V

    :goto_0
    return-void
.end method

.method public final onSidebarWidthChangedEvent(Lcom/onyx/galaxy/note/editor/event/SidebarWidthChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/SidebarWidthChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/SidebarWidthChangedEvent;->getInfo()Lcom/onyx/galaxy/note/editor/event/EditorSideBarInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;->updateBySideBar(Lcom/onyx/galaxy/note/editor/event/EditorSideBarInfo;)V

    return-void
.end method

.method public final onUpdateShapeLocationBarEvent(Lcom/onyx/android/sdk/universal/editor/events/note/UpdateShapeLocationBarEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/UpdateShapeLocationBarEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->j()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->g:Lcom/onyx/android/sdk/base/rx/RxFilter;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/RxFilter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onVirtualDocViewInfoEvent(Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;->isScrolling()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->l()V

    return-void
.end method
