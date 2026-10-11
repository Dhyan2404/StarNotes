.class public Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

.field public final synthetic f:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;


# direct methods
.method public constructor <init>(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;)V
    .locals 0

    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$b;->f:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iput-object p2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$b;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$b;->f:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$b;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v1, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->b(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;Z)V

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$b;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->M()V

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$b;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->v()V

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$b;->f:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iget-boolean v1, v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->j:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->j:Z

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    const-wide/16 v2, 0x534

    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$b;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {p0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->I(Z)V

    goto :goto_0

    :cond_0
    iget p0, v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->i:F

    add-float/2addr p0, v3

    iput p0, v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->i:F

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$b;->f:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->i:F

    return-void
.end method
