.class public Landroidx/transition/b;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/r2h;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field public e:Landroid/view/ViewGroup;

.field public f:Landroid/view/View;

.field public final g:Landroid/view/View;

.field public h:I

.field public i:Landroid/graphics/Matrix;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final j:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroidx/transition/b$a;

    invoke-direct {v0, p0}, Landroidx/transition/b$a;-><init>(Landroidx/transition/b;)V

    iput-object v0, p0, Landroidx/transition/b;->j:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iput-object p1, p0, Landroidx/transition/b;->g:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public static b(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/b;
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    invoke-static {p1}, Landroidx/transition/a;->b(Landroid/view/ViewGroup;)Landroidx/transition/a;

    move-result-object v0

    invoke-static {p0}, Landroidx/transition/b;->e(Landroid/view/View;)Landroidx/transition/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroidx/transition/a;

    if-eq v2, v0, :cond_0

    iget v3, v1, Landroidx/transition/b;->h:I

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v1, :cond_3

    if-nez p2, :cond_1

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {p0, p1, p2}, Landroidx/transition/b;->c(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V

    :cond_1
    new-instance v1, Landroidx/transition/b;

    invoke-direct {v1, p0}, Landroidx/transition/b;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, p2}, Landroidx/transition/b;->h(Landroid/graphics/Matrix;)V

    if-nez v0, :cond_2

    new-instance v0, Landroidx/transition/a;

    invoke-direct {v0, p1}, Landroidx/transition/a;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/transition/a;->g()V

    :goto_1
    invoke-static {p1, v0}, Landroidx/transition/b;->d(Landroid/view/View;Landroid/view/View;)V

    invoke-static {p1, v1}, Landroidx/transition/b;->d(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroidx/transition/a;->a(Landroidx/transition/b;)V

    iput v3, v1, Landroidx/transition/b;->h:I

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v1, p2}, Landroidx/transition/b;->h(Landroid/graphics/Matrix;)V

    :cond_4
    :goto_2
    iget p0, v1, Landroidx/transition/b;->h:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Landroidx/transition/b;->h:I

    return-object v1

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Ghosted views must be parented by a ViewGroup"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    invoke-static {p0, p2}, Lcom/sunia/HTREnginev2/w4o;->h(Landroid/view/View;Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p2, v0, p0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-static {p1, p2}, Lcom/sunia/HTREnginev2/w4o;->i(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static d(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v3, p0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/sunia/HTREnginev2/w4o;->e(Landroid/view/View;IIII)V

    return-void
.end method

.method public static e(Landroid/view/View;)Landroidx/transition/b;
    .locals 1

    sget v0, Landroidx/transition/R$id;->ghost_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/transition/b;

    return-object p0
.end method

.method public static f(Landroid/view/View;)V
    .locals 1

    invoke-static {p0}, Landroidx/transition/b;->e(Landroid/view/View;)Landroidx/transition/b;

    move-result-object p0

    if-eqz p0, :cond_0

    iget v0, p0, Landroidx/transition/b;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/transition/b;->h:I

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/transition/a;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static g(Landroid/view/View;Landroidx/transition/b;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/transition/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Landroidx/transition/R$id;->ghost_view:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/b;->e:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/transition/b;->f:Landroid/view/View;

    return-void
.end method

.method public h(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/transition/b;->i:Landroid/graphics/Matrix;

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Landroidx/transition/b;->g:Landroid/view/View;

    invoke-static {v0, p0}, Landroidx/transition/b;->g(Landroid/view/View;Landroidx/transition/b;)V

    iget-object v0, p0, Landroidx/transition/b;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/transition/b;->j:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Landroidx/transition/b;->g:Landroid/view/View;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/w4o;->g(Landroid/view/View;I)V

    iget-object v0, p0, Landroidx/transition/b;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/transition/b;->g:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Landroidx/transition/b;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/transition/b;->j:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Landroidx/transition/b;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/w4o;->g(Landroid/view/View;I)V

    iget-object v0, p0, Landroidx/transition/b;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/transition/b;->g(Landroid/view/View;Landroidx/transition/b;)V

    iget-object v0, p0, Landroidx/transition/b;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/transition/b;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sunia/HTREnginev2/jnd;->a(Landroid/graphics/Canvas;Z)V

    iget-object v0, p0, Landroidx/transition/b;->i:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Landroidx/transition/b;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/w4o;->g(Landroid/view/View;I)V

    iget-object v0, p0, Landroidx/transition/b;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Landroidx/transition/b;->g:Landroid/view/View;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/sunia/HTREnginev2/w4o;->g(Landroid/view/View;I)V

    iget-object v0, p0, Landroidx/transition/b;->g:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    invoke-static {p1, v1}, Lcom/sunia/HTREnginev2/jnd;->a(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroidx/transition/b;->g:Landroid/view/View;

    invoke-static {v0}, Landroidx/transition/b;->e(Landroid/view/View;)Landroidx/transition/b;

    move-result-object v0

    if-ne v0, p0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Landroidx/transition/b;->g:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/w4o;->g(Landroid/view/View;I)V

    :cond_1
    return-void
.end method
