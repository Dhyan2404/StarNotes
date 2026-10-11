.class public Landroidx/transition/ChangeBounds$g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroidx/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public final e:Landroid/view/View;

.field public final f:Landroid/graphics/Rect;

.field public final g:Z

.field public final h:Landroid/graphics/Rect;

.field public final i:Z

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public r:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/Rect;ZLandroid/graphics/Rect;ZIIIIIIII)V
    .locals 0

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p1, p0, Landroidx/transition/ChangeBounds$g;->e:Landroid/view/View;

    iput-object p2, p0, Landroidx/transition/ChangeBounds$g;->f:Landroid/graphics/Rect;

    iput-boolean p3, p0, Landroidx/transition/ChangeBounds$g;->g:Z

    iput-object p4, p0, Landroidx/transition/ChangeBounds$g;->h:Landroid/graphics/Rect;

    iput-boolean p5, p0, Landroidx/transition/ChangeBounds$g;->i:Z

    iput p6, p0, Landroidx/transition/ChangeBounds$g;->j:I

    iput p7, p0, Landroidx/transition/ChangeBounds$g;->k:I

    iput p8, p0, Landroidx/transition/ChangeBounds$g;->l:I

    iput p9, p0, Landroidx/transition/ChangeBounds$g;->m:I

    iput p10, p0, Landroidx/transition/ChangeBounds$g;->n:I

    iput p11, p0, Landroidx/transition/ChangeBounds$g;->o:I

    iput p12, p0, Landroidx/transition/ChangeBounds$g;->p:I

    iput p13, p0, Landroidx/transition/ChangeBounds$g;->q:I

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/transition/ChangeBounds$g;->onAnimationEnd(Landroid/animation/Animator;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 2

    .line 2
    iget-boolean p1, p0, Landroidx/transition/ChangeBounds$g;->r:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_2

    .line 3
    iget-boolean v0, p0, Landroidx/transition/ChangeBounds$g;->g:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/transition/ChangeBounds$g;->f:Landroid/graphics/Rect;

    goto :goto_0

    .line 4
    :cond_2
    iget-boolean v0, p0, Landroidx/transition/ChangeBounds$g;->i:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/transition/ChangeBounds$g;->h:Landroid/graphics/Rect;

    .line 5
    :goto_0
    iget-object v0, p0, Landroidx/transition/ChangeBounds$g;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_4

    .line 6
    iget-object p1, p0, Landroidx/transition/ChangeBounds$g;->e:Landroid/view/View;

    iget p2, p0, Landroidx/transition/ChangeBounds$g;->j:I

    iget v0, p0, Landroidx/transition/ChangeBounds$g;->k:I

    iget v1, p0, Landroidx/transition/ChangeBounds$g;->l:I

    iget p0, p0, Landroidx/transition/ChangeBounds$g;->m:I

    invoke-static {p1, p2, v0, v1, p0}, Lcom/sunia/HTREnginev2/w4o;->e(Landroid/view/View;IIII)V

    goto :goto_1

    .line 7
    :cond_4
    iget-object p1, p0, Landroidx/transition/ChangeBounds$g;->e:Landroid/view/View;

    iget p2, p0, Landroidx/transition/ChangeBounds$g;->n:I

    iget v0, p0, Landroidx/transition/ChangeBounds$g;->o:I

    iget v1, p0, Landroidx/transition/ChangeBounds$g;->p:I

    iget p0, p0, Landroidx/transition/ChangeBounds$g;->q:I

    invoke-static {p1, p2, v0, v1, p0}, Lcom/sunia/HTREnginev2/w4o;->e(Landroid/view/View;IIII)V

    :goto_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/transition/ChangeBounds$g;->onAnimationStart(Landroid/animation/Animator;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 4

    .line 2
    iget p1, p0, Landroidx/transition/ChangeBounds$g;->l:I

    iget v0, p0, Landroidx/transition/ChangeBounds$g;->j:I

    sub-int/2addr p1, v0

    iget v0, p0, Landroidx/transition/ChangeBounds$g;->p:I

    iget v1, p0, Landroidx/transition/ChangeBounds$g;->n:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3
    iget v0, p0, Landroidx/transition/ChangeBounds$g;->m:I

    iget v1, p0, Landroidx/transition/ChangeBounds$g;->k:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/transition/ChangeBounds$g;->q:I

    iget v2, p0, Landroidx/transition/ChangeBounds$g;->o:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz p2, :cond_0

    .line 4
    iget v1, p0, Landroidx/transition/ChangeBounds$g;->n:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/transition/ChangeBounds$g;->j:I

    :goto_0
    if-eqz p2, :cond_1

    .line 5
    iget v2, p0, Landroidx/transition/ChangeBounds$g;->o:I

    goto :goto_1

    :cond_1
    iget v2, p0, Landroidx/transition/ChangeBounds$g;->k:I

    .line 6
    :goto_1
    iget-object v3, p0, Landroidx/transition/ChangeBounds$g;->e:Landroid/view/View;

    add-int/2addr p1, v1

    add-int/2addr v0, v2

    invoke-static {v3, v1, v2, p1, v0}, Lcom/sunia/HTREnginev2/w4o;->e(Landroid/view/View;IIII)V

    if-eqz p2, :cond_2

    .line 7
    iget-object p1, p0, Landroidx/transition/ChangeBounds$g;->h:Landroid/graphics/Rect;

    goto :goto_2

    :cond_2
    iget-object p1, p0, Landroidx/transition/ChangeBounds$g;->f:Landroid/graphics/Rect;

    .line 8
    :goto_2
    iget-object p0, p0, Landroidx/transition/ChangeBounds$g;->e:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/ChangeBounds$g;->r:Z

    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 2
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Landroidx/transition/ChangeBounds$g;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Landroidx/transition/ChangeBounds$g;->e:Landroid/view/View;

    sget v1, Landroidx/transition/R$id;->transition_clip:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-boolean p1, p0, Landroidx/transition/ChangeBounds$g;->i:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/transition/ChangeBounds$g;->h:Landroid/graphics/Rect;

    :goto_0
    iget-object p0, p0, Landroidx/transition/ChangeBounds$g;->e:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 3
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Landroidx/transition/ChangeBounds$g;->e:Landroid/view/View;

    sget v0, Landroidx/transition/R$id;->transition_clip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iget-object v0, p0, Landroidx/transition/ChangeBounds$g;->e:Landroid/view/View;

    sget v1, Landroidx/transition/R$id;->transition_clip:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p0, p0, Landroidx/transition/ChangeBounds$g;->e:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

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
