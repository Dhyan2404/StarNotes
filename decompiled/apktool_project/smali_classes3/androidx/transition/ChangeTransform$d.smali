.class public Landroidx/transition/ChangeTransform$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public e:Z

.field public final f:Landroid/graphics/Matrix;

.field public final g:Z

.field public final h:Z

.field public final i:Landroid/view/View;

.field public final j:Landroidx/transition/ChangeTransform$f;

.field public final k:Landroidx/transition/ChangeTransform$e;

.field public final l:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/transition/ChangeTransform$f;Landroidx/transition/ChangeTransform$e;Landroid/graphics/Matrix;ZZ)V
    .locals 1

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/transition/ChangeTransform$d;->f:Landroid/graphics/Matrix;

    iput-boolean p5, p0, Landroidx/transition/ChangeTransform$d;->g:Z

    iput-boolean p6, p0, Landroidx/transition/ChangeTransform$d;->h:Z

    iput-object p1, p0, Landroidx/transition/ChangeTransform$d;->i:Landroid/view/View;

    iput-object p2, p0, Landroidx/transition/ChangeTransform$d;->j:Landroidx/transition/ChangeTransform$f;

    iput-object p3, p0, Landroidx/transition/ChangeTransform$d;->k:Landroidx/transition/ChangeTransform$e;

    iput-object p4, p0, Landroidx/transition/ChangeTransform$d;->l:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Matrix;)V
    .locals 2

    iget-object v0, p0, Landroidx/transition/ChangeTransform$d;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Landroidx/transition/ChangeTransform$d;->i:Landroid/view/View;

    sget v0, Landroidx/transition/R$id;->transition_transform:I

    iget-object v1, p0, Landroidx/transition/ChangeTransform$d;->f:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/transition/ChangeTransform$d;->j:Landroidx/transition/ChangeTransform$f;

    iget-object p0, p0, Landroidx/transition/ChangeTransform$d;->i:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroidx/transition/ChangeTransform$f;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/ChangeTransform$d;->e:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean p1, p0, Landroidx/transition/ChangeTransform$d;->e:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/transition/ChangeTransform$d;->g:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/transition/ChangeTransform$d;->h:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/transition/ChangeTransform$d;->l:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroidx/transition/ChangeTransform$d;->a(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/transition/ChangeTransform$d;->i:Landroid/view/View;

    sget v1, Landroidx/transition/R$id;->transition_transform:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/transition/ChangeTransform$d;->i:Landroid/view/View;

    sget v1, Landroidx/transition/R$id;->parent_matrix:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/transition/ChangeTransform$d;->i:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/sunia/HTREnginev2/w4o;->d(Landroid/view/View;Landroid/graphics/Matrix;)V

    iget-object p1, p0, Landroidx/transition/ChangeTransform$d;->j:Landroidx/transition/ChangeTransform$f;

    iget-object p0, p0, Landroidx/transition/ChangeTransform$d;->i:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroidx/transition/ChangeTransform$f;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Landroidx/transition/ChangeTransform$d;->k:Landroidx/transition/ChangeTransform$e;

    invoke-virtual {p1}, Landroidx/transition/ChangeTransform$e;->a()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/transition/ChangeTransform$d;->a(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Landroidx/transition/ChangeTransform$d;->i:Landroid/view/View;

    invoke-static {p0}, Landroidx/transition/ChangeTransform;->P(Landroid/view/View;)V

    return-void
.end method
