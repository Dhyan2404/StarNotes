.class public Landroidx/transition/Visibility$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroidx/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Visibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final e:Landroid/view/View;

.field public final f:I

.field public final g:Landroid/view/ViewGroup;

.field public final h:Z

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/view/View;IZ)V
    .locals 1

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/transition/Visibility$a;->j:Z

    iput-object p1, p0, Landroidx/transition/Visibility$a;->e:Landroid/view/View;

    iput p2, p0, Landroidx/transition/Visibility$a;->f:I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Landroidx/transition/Visibility$a;->g:Landroid/view/ViewGroup;

    iput-boolean p3, p0, Landroidx/transition/Visibility$a;->h:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/transition/Visibility$a;->b(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Landroidx/transition/Visibility$a;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/transition/Visibility$a;->e:Landroid/view/View;

    iget v1, p0, Landroidx/transition/Visibility$a;->f:I

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/w4o;->g(Landroid/view/View;I)V

    iget-object v0, p0, Landroidx/transition/Visibility$a;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/transition/Visibility$a;->b(Z)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/transition/Visibility$a;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/transition/Visibility$a;->i:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroidx/transition/Visibility$a;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroidx/transition/Visibility$a;->i:Z

    invoke-static {v0, p1}, Lcom/sunia/HTREnginev2/l3o;->c(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/Visibility$a;->j:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/transition/Visibility$a;->a()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/transition/Visibility$a;->a()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/transition/Visibility$a;->e:Landroid/view/View;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sunia/HTREnginev2/w4o;->g(Landroid/view/View;I)V

    .line 3
    iget-object p0, p0, Landroidx/transition/Visibility$a;->g:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/transition/Visibility$a;->b(Z)V

    iget-boolean p1, p0, Landroidx/transition/Visibility$a;->j:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/transition/Visibility$a;->e:Landroid/view/View;

    iget p0, p0, Landroidx/transition/Visibility$a;->f:I

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/w4o;->g(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/transition/Visibility$a;->b(Z)V

    iget-boolean p1, p0, Landroidx/transition/Visibility$a;->j:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/transition/Visibility$a;->e:Landroid/view/View;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/w4o;->g(Landroid/view/View;I)V

    :cond_0
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
