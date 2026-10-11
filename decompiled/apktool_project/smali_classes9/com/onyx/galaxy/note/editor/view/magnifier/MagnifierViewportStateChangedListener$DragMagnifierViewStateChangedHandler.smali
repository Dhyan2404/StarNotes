.class public Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;
.super Lcom/onyx/galaxy/note/editor/view/magnifier/BaseMagnifierViewStateChangedHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DragMagnifierViewStateChangedHandler"
.end annotation


# instance fields
.field public final b:F

.field public final c:J

.field public d:Lcom/onyx/android/sdk/base/rx/RxFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/rx/RxFilter<",
            "Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/BaseMagnifierViewStateChangedHandler;-><init>()V

    const/high16 p1, 0x42480000    # 50.0f

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->b:F

    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->c:J

    new-instance p1, Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-direct {p1}, Lcom/onyx/android/sdk/base/rx/RxFilter;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->d:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->p()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->k(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;Lcom/onyx/android/sdk/universal/editor/gesture/AfterStopScrollAction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->j(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;Lcom/onyx/android/sdk/universal/editor/gesture/AfterStopScrollAction;)V

    return-void
.end method

.method public static final synthetic c(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->h(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V

    return-void
.end method

.method public static final synthetic d(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;Lcom/onyx/android/sdk/universal/editor/EditorBundle;FF)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->l(Lcom/onyx/android/sdk/universal/editor/EditorBundle;FF)V

    return-void
.end method

.method public static synthetic i(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->h(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onScrollEnd"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final j(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;Lcom/onyx/android/sdk/universal/editor/gesture/AfterStopScrollAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->m()V

    return-void
.end method

.method public static final k(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->access$setScrolling$p(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;Z)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;)Z
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "currentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/BaseMagnifierViewStateChangedHandler;->getPreviousMode()Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->isDragging()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->isDragging()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public destroy()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->d:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxFilter;->dispose()V

    return-void
.end method

.method public final e()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->b:F

    return p0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->c:J

    return-wide v0
.end method

.method public final g()Lcom/onyx/android/sdk/base/rx/RxFilter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/base/rx/RxFilter<",
            "Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->d:Lcom/onyx/android/sdk/base/rx/RxFilter;

    return-object p0
.end method

.method public final h(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/gesture/AfterStopScrollAction;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/AfterStopScrollAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler$onScrollEnd$1;

    invoke-direct {v0, p2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler$onScrollEnd$1;-><init>(Z)V

    new-instance p2, Lcom/sunia/HTREnginev2/d7j;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/d7j;-><init>(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;)V

    invoke-static {p1, v0, p2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    new-instance p2, Lcom/sunia/HTREnginev2/e7j;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/e7j;-><init>(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final l(Lcom/onyx/android/sdk/universal/editor/EditorBundle;FF)V
    .locals 7

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;-><init>(FF)V

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/ScrollingEvent;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/events/app/ScrollingEvent;-><init>(FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final m()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->access$getMagnifierViewEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->postVirtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final n(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;F)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-static {v0, p2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->access$isHitTestViewportEdge(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-static {p0, p2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->access$locateRectInPage(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;Landroid/graphics/RectF;)V

    return-void

    :cond_0
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v1

    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, p1

    const/4 p1, 0x0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_1

    neg-float v0, p4

    add-float/2addr v1, v0

    :cond_1
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-static {v3}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->access$getMagnifierViewportContainer$p(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;)Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    add-float/2addr v1, p4

    :cond_2
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-static {v3}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->access$getMagnifierViewportContainer$p(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;)Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_3

    add-float/2addr v2, p4

    :cond_3
    iget p2, p2, Landroid/graphics/RectF;->top:F

    cmpg-float p2, p2, p1

    if-gtz p2, :cond_4

    neg-float p2, p4

    add-float/2addr v2, p2

    :cond_4
    cmpg-float p2, v1, p1

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_5

    move p2, v0

    goto :goto_0

    :cond_5
    move p2, v3

    :goto_0
    if-eqz p2, :cond_6

    iget p2, p3, Landroid/graphics/PointF;->x:F

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    mul-float v1, p2, p4

    :cond_6
    cmpg-float p1, v2, p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    move v0, v3

    :goto_1
    if-eqz v0, :cond_8

    iget p1, p3, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    mul-float v2, p1, p4

    :cond_8
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->d:Lcom/onyx/android/sdk/base/rx/RxFilter;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs$Companion;

    invoke-virtual {p1, v1, v2}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs$Companion;->createScrolling(FF)Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/RxFilter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final o(Lcom/onyx/android/sdk/base/rx/RxFilter;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/rx/RxFilter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/rx/RxFilter<",
            "Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->d:Lcom/onyx/android/sdk/base/rx/RxFilter;

    return-void
.end method

.method public onViewStateChanged(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "oldRectF"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "newRectF"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "offset"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "currentType"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/BaseMagnifierViewStateChangedHandler;->getPreviousMode()Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->isEnterDrag(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-static {p1, p3}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->access$locateRectInPage(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;Landroid/graphics/RectF;)V

    :cond_0
    invoke-virtual {p5}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->isDragging()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->b:F

    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->n(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;F)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/BaseMagnifierViewStateChangedHandler;->getPreviousMode()Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->isQuitDrag(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->d:Lcom/onyx/android/sdk/base/rx/RxFilter;

    sget-object p2, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs$Companion;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs$Companion;->createScrollEnd()Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/rx/RxFilter;->onNext(Ljava/lang/Object;)V

    :cond_2
    sget-object p1, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->NONE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    if-ne p5, p1, :cond_3

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-static {p0, p3}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->access$locateRectInPage(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;Landroid/graphics/RectF;)V

    :cond_3
    return-void
.end method

.method public final p()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->d:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxFilter;->dispose()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->d:Lcom/onyx/android/sdk/base/rx/RxFilter;

    iget-wide v1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->c:J

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler$a;

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;->e:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-direct {v3, v4, p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler$a;-><init>(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/rx/RxFilter;->subscribeThrottleLast(JLio/reactivex/rxjava3/functions/Consumer;)V

    return-void
.end method
