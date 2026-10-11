.class public final Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$animateAdaptiveScale$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->q(FLandroid/graphics/RectF;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 AdaptiveScaleAction.kt\ncom/onyx/galaxy/note/editor/action/AdaptiveScaleAction\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,123:1\n95#2:124\n125#3,3:125\n94#4:128\n93#5:129\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\t\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/core/animation/AnimatorKt$addListener$listener$1",
        "Landroid/animation/Animator$AnimatorListener;",
        "onAnimationCancel",
        "",
        "animator",
        "Landroid/animation/Animator;",
        "onAnimationEnd",
        "onAnimationRepeat",
        "onAnimationStart",
        "core-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 AdaptiveScaleAction.kt\ncom/onyx/galaxy/note/editor/action/AdaptiveScaleAction\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,123:1\n95#2:124\n125#3,3:125\n94#4:128\n93#5:129\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;

.field public final synthetic f:F

.field public final synthetic g:Landroid/graphics/RectF;

.field public final synthetic h:Lio/reactivex/rxjava3/subjects/PublishSubject;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;FLandroid/graphics/RectF;Lio/reactivex/rxjava3/subjects/PublishSubject;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$animateAdaptiveScale$$inlined$addListener$default$1;->e:Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;

    iput p2, p0, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$animateAdaptiveScale$$inlined$addListener$default$1;->f:F

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$animateAdaptiveScale$$inlined$addListener$default$1;->g:Landroid/graphics/RectF;

    iput-object p4, p0, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$animateAdaptiveScale$$inlined$addListener$default$1;->h:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$animateAdaptiveScale$$inlined$addListener$default$1;->e:Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;

    iget v0, p0, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$animateAdaptiveScale$$inlined$addListener$default$1;->f:F

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$animateAdaptiveScale$$inlined$addListener$default$1;->g:Landroid/graphics/RectF;

    invoke-static {p1, v0, v1}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->access$setScale(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;FLandroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$animateAdaptiveScale$$inlined$addListener$default$1;->h:Lio/reactivex/rxjava3/subjects/PublishSubject;

    iget p0, p0, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$animateAdaptiveScale$$inlined$addListener$default$1;->f:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method
