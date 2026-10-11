.class public Landroidx/transition/e$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroidx/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final e:Landroid/view/View;

.field public final f:Landroid/view/View;

.field public g:[I

.field public h:F

.field public i:F

.field public final j:F

.field public final k:F

.field public l:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;FF)V
    .locals 0

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p1, p0, Landroidx/transition/e$a;->f:Landroid/view/View;

    iput-object p2, p0, Landroidx/transition/e$a;->e:Landroid/view/View;

    iput p3, p0, Landroidx/transition/e$a;->j:F

    iput p4, p0, Landroidx/transition/e$a;->k:F

    sget p1, Landroidx/transition/R$id;->transition_position:I

    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroidx/transition/e$a;->g:[I

    if-eqz p1, :cond_0

    sget p0, Landroidx/transition/R$id;->transition_position:I

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Landroidx/transition/e$a;->g:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/transition/e$a;->g:[I

    :cond_0
    iget-object v0, p0, Landroidx/transition/e$a;->f:Landroid/view/View;

    iget-object v1, p0, Landroidx/transition/e$a;->g:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Landroidx/transition/e$a;->e:Landroid/view/View;

    sget v1, Landroidx/transition/R$id;->transition_position:I

    iget-object p0, p0, Landroidx/transition/e$a;->g:[I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/e$a;->l:Z

    iget-object p1, p0, Landroidx/transition/e$a;->f:Landroid/view/View;

    iget v0, p0, Landroidx/transition/e$a;->j:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Landroidx/transition/e$a;->f:Landroid/view/View;

    iget p0, p0, Landroidx/transition/e$a;->k:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Landroidx/transition/e$a;->onAnimationEnd(Landroid/animation/Animator;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Landroidx/transition/e$a;->f:Landroid/view/View;

    iget p2, p0, Landroidx/transition/e$a;->j:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 2
    iget-object p1, p0, Landroidx/transition/e$a;->f:Landroid/view/View;

    iget p0, p0, Landroidx/transition/e$a;->k:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 1
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/e$a;->l:Z

    iget-object p1, p0, Landroidx/transition/e$a;->f:Landroid/view/View;

    iget v0, p0, Landroidx/transition/e$a;->j:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Landroidx/transition/e$a;->f:Landroid/view/View;

    iget p0, p0, Landroidx/transition/e$a;->k:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 1
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Landroidx/transition/e$a;->onTransitionEnd(Landroidx/transition/Transition;Z)V

    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;Z)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean p1, p0, Landroidx/transition/e$a;->l:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Landroidx/transition/e$a;->e:Landroid/view/View;

    sget p1, Landroidx/transition/R$id;->transition_position:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 1
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/transition/e$a;->a()V

    iget-object p1, p0, Landroidx/transition/e$a;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iput p1, p0, Landroidx/transition/e$a;->h:F

    iget-object p1, p0, Landroidx/transition/e$a;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, p0, Landroidx/transition/e$a;->i:F

    iget-object p1, p0, Landroidx/transition/e$a;->f:Landroid/view/View;

    iget v0, p0, Landroidx/transition/e$a;->j:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Landroidx/transition/e$a;->f:Landroid/view/View;

    iget p0, p0, Landroidx/transition/e$a;->k:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 1
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Landroidx/transition/e$a;->f:Landroid/view/View;

    iget v0, p0, Landroidx/transition/e$a;->h:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Landroidx/transition/e$a;->f:Landroid/view/View;

    iget p0, p0, Landroidx/transition/e$a;->i:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onTransitionStart(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
