.class public final Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$doAnimateMove$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->doAnimateMove(Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$1\n+ 4 RenderNodeAnimator.kt\ncom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,123:1\n95#2:124\n92#3:125\n114#4,7:126\n93#5:133\n*E\n"
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
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$1\n+ 4 RenderNodeAnimator.kt\ncom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,123:1\n95#2:124\n92#3:125\n114#4,7:126\n93#5:133\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;

.field public final synthetic g:I


# direct methods
.method public constructor <init>(ILcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$doAnimateMove$$inlined$addListener$default$1;->e:I

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$doAnimateMove$$inlined$addListener$default$1;->f:Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;

    iput p3, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$doAnimateMove$$inlined$addListener$default$1;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget p1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$doAnimateMove$$inlined$addListener$default$1;->e:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$doAnimateMove$$inlined$addListener$default$1;->f:Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->setTranslationX(F)V

    :cond_0
    iget p1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$doAnimateMove$$inlined$addListener$default$1;->g:I

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$doAnimateMove$$inlined$addListener$default$1;->f:Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

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
