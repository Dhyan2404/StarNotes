.class public Lcom/sunia/HTREnginev2/i4o;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public e:Lcom/sunia/HTREnginev2/j4o;

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sunia/HTREnginev2/i4o;->f:I

    .line 3
    iput v0, p0, Lcom/sunia/HTREnginev2/i4o;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/sunia/HTREnginev2/i4o;->f:I

    .line 6
    iput p1, p0, Lcom/sunia/HTREnginev2/i4o;->g:I

    return-void
.end method


# virtual methods
.method public getLeftAndRightOffset()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/i4o;->e:Lcom/sunia/HTREnginev2/j4o;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/j4o;->d()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getTopAndBottomOffset()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/i4o;->e:Lcom/sunia/HTREnginev2/j4o;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/j4o;->e()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHorizontalOffsetEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/i4o;->e:Lcom/sunia/HTREnginev2/j4o;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/j4o;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVerticalOffsetEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/i4o;->e:Lcom/sunia/HTREnginev2/j4o;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/j4o;->g()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    return-void
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/i4o;->layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/i4o;->e:Lcom/sunia/HTREnginev2/j4o;

    if-nez p1, :cond_0

    new-instance p1, Lcom/sunia/HTREnginev2/j4o;

    invoke-direct {p1, p2}, Lcom/sunia/HTREnginev2/j4o;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/i4o;->e:Lcom/sunia/HTREnginev2/j4o;

    :cond_0
    iget-object p1, p0, Lcom/sunia/HTREnginev2/i4o;->e:Lcom/sunia/HTREnginev2/j4o;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/j4o;->h()V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/i4o;->e:Lcom/sunia/HTREnginev2/j4o;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/j4o;->a()V

    iget p1, p0, Lcom/sunia/HTREnginev2/i4o;->f:I

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/sunia/HTREnginev2/i4o;->e:Lcom/sunia/HTREnginev2/j4o;

    invoke-virtual {p3, p1}, Lcom/sunia/HTREnginev2/j4o;->k(I)Z

    iput p2, p0, Lcom/sunia/HTREnginev2/i4o;->f:I

    :cond_1
    iget p1, p0, Lcom/sunia/HTREnginev2/i4o;->g:I

    if-eqz p1, :cond_2

    iget-object p3, p0, Lcom/sunia/HTREnginev2/i4o;->e:Lcom/sunia/HTREnginev2/j4o;

    invoke-virtual {p3, p1}, Lcom/sunia/HTREnginev2/j4o;->j(I)Z

    iput p2, p0, Lcom/sunia/HTREnginev2/i4o;->g:I

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public setHorizontalOffsetEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/i4o;->e:Lcom/sunia/HTREnginev2/j4o;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/j4o;->i(Z)V

    :cond_0
    return-void
.end method

.method public setLeftAndRightOffset(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/i4o;->e:Lcom/sunia/HTREnginev2/j4o;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/j4o;->j(I)Z

    move-result p0

    return p0

    :cond_0
    iput p1, p0, Lcom/sunia/HTREnginev2/i4o;->g:I

    const/4 p0, 0x0

    return p0
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/i4o;->e:Lcom/sunia/HTREnginev2/j4o;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/j4o;->k(I)Z

    move-result p0

    return p0

    :cond_0
    iput p1, p0, Lcom/sunia/HTREnginev2/i4o;->f:I

    const/4 p0, 0x0

    return p0
.end method

.method public setVerticalOffsetEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/i4o;->e:Lcom/sunia/HTREnginev2/j4o;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/j4o;->l(Z)V

    :cond_0
    return-void
.end method
