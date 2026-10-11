.class public final Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdaptiveScaleAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdaptiveScaleAction.kt\ncom/onyx/galaxy/note/editor/action/AdaptiveScaleAction\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,158:1\n91#2,14:159\n*S KotlinDebug\n*F\n+ 1 AdaptiveScaleAction.kt\ncom/onyx/galaxy/note/editor/action/AdaptiveScaleAction\n*L\n124#1:159,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010!\u001a\u00020 \u00a2\u0006\u0004\u0008\"\u0010#J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\u000c\u001a\u00020\u000bH\u0002J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0004H\u0002J\u000c\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002J\u001e\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00022\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0018\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u000e\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006$"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "t",
        "Landroid/graphics/Matrix;",
        "matrix",
        "",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "u",
        "",
        "x",
        "block",
        "s",
        "p",
        "",
        "matrixScale",
        "Landroid/graphics/RectF;",
        "viewport",
        "q",
        "scale",
        "B",
        "z",
        "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;",
        "y",
        "h",
        "Landroid/graphics/Matrix;",
        "Landroid/animation/Animator;",
        "i",
        "Landroid/animation/Animator;",
        "animator",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAdaptiveScaleAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdaptiveScaleAction.kt\ncom/onyx/galaxy/note/editor/action/AdaptiveScaleAction\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,158:1\n91#2,14:159\n*S KotlinDebug\n*F\n+ 1 AdaptiveScaleAction.kt\ncom/onyx/galaxy/note/editor/action/AdaptiveScaleAction\n*L\n124#1:159,14\n*E\n"
    }
.end annotation


# instance fields
.field public h:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Landroid/animation/Animator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->h:Landroid/graphics/Matrix;

    return-void
.end method

.method public static final A(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getUiStateInfo()Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->setScaleEnding(Z)V

    return-void
.end method

.method public static final synthetic access$adaptiveScale(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->p()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$animateAdaptiveScale(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;FLandroid/graphics/RectF;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->q(FLandroid/graphics/RectF;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$blockUserGesture(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->s(Z)V

    return-void
.end method

.method public static final synthetic access$canScale(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->t()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$collectVisibleBoxList(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;Landroid/graphics/Matrix;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->u(Landroid/graphics/Matrix;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMatrix$p(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->h:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public static final synthetic access$quitPendingHandler(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->x()V

    return-void
.end method

.method public static final synthetic access$scale(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->y(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$scaleEnd(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->z()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setScale(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;FLandroid/graphics/RectF;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->B(FLandroid/graphics/RectF;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->w(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->v(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->A(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V

    return-void
.end method

.method public static synthetic o(Landroid/animation/ValueAnimator;Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;Lio/reactivex/rxjava3/subjects/PublishSubject;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->r(Landroid/animation/ValueAnimator;Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;Lio/reactivex/rxjava3/subjects/PublishSubject;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final r(Landroid/animation/ValueAnimator;Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;Lio/reactivex/rxjava3/subjects/PublishSubject;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$publishSubject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    const-string p3, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object p3

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getViewSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p3

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/Size;->toRectF()Landroid/graphics/RectF;

    move-result-object p3

    invoke-virtual {p1, p0, p3}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->B(FLandroid/graphics/RectF;)V

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p2, p0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static final v(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->s(Z)V

    return-void
.end method

.method public static final w(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->i:Landroid/animation/Animator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final B(FLandroid/graphics/RectF;)V
    .locals 2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->h:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p2, v1

    invoke-virtual {p0, p1, p1, v0, p2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    return-void
.end method

.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$e;-><init>(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$f;-><init>(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$g;-><init>(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$h;-><init>(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$i;-><init>(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/h8;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/h8;-><init>(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/i8;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/i8;-><init>(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$j;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$j;-><init>(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isEnabledScale()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->make()Lcom/blankj/utilcode/util/ToastUtils;

    move-result-object p0

    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/blankj/utilcode/util/ToastUtils;->setGravity(III)Lcom/blankj/utilcode/util/ToastUtils;

    move-result-object p0

    sget v0, Lcom/onyx/galaxy/note/R$string;->page_scale_locked:I

    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils;->show(I)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getViewSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->toRectF()Landroid/graphics/RectF;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$adaptiveScale$1;

    invoke-direct {v1, p0, v0}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$adaptiveScale$1;-><init>(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;Landroid/graphics/RectF;)V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createCoreObservable(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$a;

    invoke-direct {v2, p0, v0}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$a;-><init>(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;Landroid/graphics/RectF;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$b;-><init>(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$c;-><init>(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$d;-><init>(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final q(FLandroid/graphics/RectF;)Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroid/graphics/RectF;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v1

    const-string v4, "create(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v0, v4, v3

    aput p1, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$integer;->adaptive_scale_time:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/sunia/HTREnginev2/j8;

    invoke-direct {v2, v0, p0, v1}, Lcom/sunia/HTREnginev2/j8;-><init>(Landroid/animation/ValueAnimator;Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$animateAdaptiveScale$$inlined$addListener$default$1;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$animateAdaptiveScale$$inlined$addListener$default$1;-><init>(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;FLandroid/graphics/RectF;Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->i:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-object v1
.end method

.method public final s(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->setEnabledAnimationUpdateEditorView(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V

    return-void
.end method

.method public final t()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getShapeHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->isTransformHandler()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final u(Landroid/graphics/Matrix;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Matrix;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->obtainBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object v0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->scaleRange(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lorg/apache/commons/lang3/Range;

    move-result-object p0

    const-string v1, "scaleRange(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->toBoxManagerViewArgs(Landroid/graphics/Matrix;Lorg/apache/commons/lang3/Range;)Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->collectVisibleBoxList(Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final x()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getShapeHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->isExcerptHandler()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/QuitExcerptSelectionEvent;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitExcerptSelectionEvent;-><init>(ZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getShapeHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->isTextInputHandler()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getShapeHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->isUniversalShapeHandler()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final y(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/ScaleRequest;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/ScaleRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/request/ScaleRequest;->getVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object p0

    return-object p0
.end method

.method public final z()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getUiStateInfo()Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->setScaleEnding(Z)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$k;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$k;-><init>(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$l;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$l;-><init>(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$m;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$m;-><init>(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/k8;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/k8;-><init>(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$n;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$n;-><init>(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$o;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$o;-><init>(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$p;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$p;-><init>(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
