.class public final synthetic Lcom/sunia/HTREnginev2/j8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic e:Landroid/animation/ValueAnimator;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;

.field public final synthetic g:Lio/reactivex/rxjava3/subjects/PublishSubject;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/ValueAnimator;Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;Lio/reactivex/rxjava3/subjects/PublishSubject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/j8;->e:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/j8;->f:Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/j8;->g:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/j8;->e:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/j8;->f:Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/j8;->g:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->o(Landroid/animation/ValueAnimator;Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;Lio/reactivex/rxjava3/subjects/PublishSubject;Landroid/animation/ValueAnimator;)V

    return-void
.end method
