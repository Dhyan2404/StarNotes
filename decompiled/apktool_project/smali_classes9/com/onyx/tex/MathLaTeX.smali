.class public Lcom/onyx/tex/MathLaTeX;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lio/nano/tex/TeXRender;

.field public c:I

.field public d:F

.field public e:I

.field public f:I

.field public g:Lcom/onyx/tex/Insets;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x28

    .line 2
    iput v0, p0, Lcom/onyx/tex/MathLaTeX;->c:I

    const/high16 v0, 0x41200000    # 10.0f

    .line 3
    iput v0, p0, Lcom/onyx/tex/MathLaTeX;->d:F

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/onyx/tex/MathLaTeX;->e:I

    const/high16 v0, -0x1000000

    .line 5
    iput v0, p0, Lcom/onyx/tex/MathLaTeX;->f:I

    .line 6
    new-instance v0, Lcom/onyx/tex/Insets;

    const/4 v1, 0x5

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/onyx/tex/Insets;-><init>(IIII)V

    iput-object v0, p0, Lcom/onyx/tex/MathLaTeX;->g:Lcom/onyx/tex/Insets;

    .line 7
    iput-object p1, p0, Lcom/onyx/tex/MathLaTeX;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 8
    invoke-static {p1, p2}, Lcom/onyx/mml/MMLUtils;->mml2LaTeX(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/onyx/tex/MathLaTeX;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lio/nano/tex/LaTeX;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/onyx/tex/MathLaTeX$a;

    invoke-direct {v0, p0}, Lcom/onyx/tex/MathLaTeX$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lio/nano/tex/LaTeX;->init(Landroid/content/Context;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Lio/nano/tex/TeXRender;
    .locals 5

    iget-object v0, p0, Lcom/onyx/tex/MathLaTeX;->b:Lio/nano/tex/TeXRender;

    if-nez v0, :cond_0

    invoke-static {}, Lio/nano/tex/LaTeX;->instance()Lio/nano/tex/LaTeX;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/tex/MathLaTeX;->a:Ljava/lang/String;

    iget v2, p0, Lcom/onyx/tex/MathLaTeX;->c:I

    int-to-float v2, v2

    iget v3, p0, Lcom/onyx/tex/MathLaTeX;->d:F

    iget v4, p0, Lcom/onyx/tex/MathLaTeX;->f:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/nano/tex/LaTeX;->parse(Ljava/lang/String;FFI)Lio/nano/tex/TeXRender;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/tex/MathLaTeX;->b:Lio/nano/tex/TeXRender;

    :cond_0
    iget-object p0, p0, Lcom/onyx/tex/MathLaTeX;->b:Lio/nano/tex/TeXRender;

    return-object p0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/tex/MathLaTeX;->a()Lio/nano/tex/TeXRender;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/tex/MathLaTeX;->g:Lcom/onyx/tex/Insets;

    invoke-virtual {v1}, Lcom/onyx/tex/Insets;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/onyx/tex/MathLaTeX;->g:Lcom/onyx/tex/Insets;

    invoke-virtual {v2}, Lcom/onyx/tex/Insets;->getRight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/onyx/tex/MathLaTeX;->g:Lcom/onyx/tex/Insets;

    invoke-virtual {v2}, Lcom/onyx/tex/Insets;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/onyx/tex/MathLaTeX;->g:Lcom/onyx/tex/Insets;

    invoke-virtual {v3}, Lcom/onyx/tex/Insets;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lio/nano/tex/TeXRender;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0}, Lio/nano/tex/TeXRender;->getHeight()I

    move-result v1

    add-int/2addr v1, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v3, p0, Lcom/onyx/tex/MathLaTeX;->e:I

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v3, Lio/nano/tex/Graphics2D;

    invoke-direct {v3}, Lio/nano/tex/Graphics2D;-><init>()V

    invoke-virtual {v3, v2}, Lio/nano/tex/Graphics2D;->setCanvas(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/onyx/tex/MathLaTeX;->g:Lcom/onyx/tex/Insets;

    invoke-virtual {v2}, Lcom/onyx/tex/Insets;->getLeft()I

    move-result v2

    iget-object p0, p0, Lcom/onyx/tex/MathLaTeX;->g:Lcom/onyx/tex/Insets;

    invoke-virtual {p0}, Lcom/onyx/tex/Insets;->getTop()I

    move-result p0

    invoke-virtual {v0, v3, v2, p0}, Lio/nano/tex/TeXRender;->draw(Lio/nano/tex/Graphics2D;II)V

    return-object v1
.end method

.method public getSize()Lcom/onyx/tex/Size;
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/tex/MathLaTeX;->a()Lio/nano/tex/TeXRender;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/tex/MathLaTeX;->g:Lcom/onyx/tex/Insets;

    invoke-virtual {v1}, Lcom/onyx/tex/Insets;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/onyx/tex/MathLaTeX;->g:Lcom/onyx/tex/Insets;

    invoke-virtual {v2}, Lcom/onyx/tex/Insets;->getRight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/onyx/tex/MathLaTeX;->g:Lcom/onyx/tex/Insets;

    invoke-virtual {v2}, Lcom/onyx/tex/Insets;->getTop()I

    move-result v2

    iget-object p0, p0, Lcom/onyx/tex/MathLaTeX;->g:Lcom/onyx/tex/Insets;

    invoke-virtual {p0}, Lcom/onyx/tex/Insets;->getBottom()I

    move-result p0

    add-int/2addr v2, p0

    new-instance p0, Lcom/onyx/tex/Size;

    invoke-virtual {v0}, Lio/nano/tex/TeXRender;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0}, Lio/nano/tex/TeXRender;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    invoke-direct {p0, v3, v0}, Lcom/onyx/tex/Size;-><init>(II)V

    return-object p0
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/tex/MathLaTeX;->b:Lio/nano/tex/TeXRender;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/nano/tex/TeXRender;->release()V

    :cond_0
    return-void
.end method

.method public render(Landroid/graphics/Canvas;FF)V
    .locals 2

    new-instance v0, Lio/nano/tex/Graphics2D;

    invoke-direct {v0}, Lio/nano/tex/Graphics2D;-><init>()V

    invoke-virtual {v0, p1}, Lio/nano/tex/Graphics2D;->setCanvas(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/onyx/tex/MathLaTeX;->a()Lio/nano/tex/TeXRender;

    move-result-object p1

    iget-object v1, p0, Lcom/onyx/tex/MathLaTeX;->g:Lcom/onyx/tex/Insets;

    invoke-virtual {v1}, Lcom/onyx/tex/Insets;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    float-to-int p2, p2

    iget-object p0, p0, Lcom/onyx/tex/MathLaTeX;->g:Lcom/onyx/tex/Insets;

    invoke-virtual {p0}, Lcom/onyx/tex/Insets;->getTop()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p3, p0

    float-to-int p0, p3

    invoke-virtual {p1, v0, p2, p0}, Lio/nano/tex/TeXRender;->draw(Lio/nano/tex/Graphics2D;II)V

    return-void
.end method

.method public setBackground(I)Lcom/onyx/tex/MathLaTeX;
    .locals 0

    iput p1, p0, Lcom/onyx/tex/MathLaTeX;->e:I

    return-object p0
.end method

.method public setForeground(I)Lcom/onyx/tex/MathLaTeX;
    .locals 1

    iput p1, p0, Lcom/onyx/tex/MathLaTeX;->f:I

    iget-object v0, p0, Lcom/onyx/tex/MathLaTeX;->b:Lio/nano/tex/TeXRender;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lio/nano/tex/TeXRender;->setForeground(I)V

    :cond_0
    return-object p0
.end method

.method public setInsets(Lcom/onyx/tex/Insets;)Lcom/onyx/tex/MathLaTeX;
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Lcom/onyx/tex/Insets;

    invoke-direct {p1}, Lcom/onyx/tex/Insets;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/onyx/tex/MathLaTeX;->g:Lcom/onyx/tex/Insets;

    return-object p0
.end method

.method public setLineSpace(F)Lcom/onyx/tex/MathLaTeX;
    .locals 0

    iput p1, p0, Lcom/onyx/tex/MathLaTeX;->d:F

    return-object p0
.end method

.method public setTextSize(I)Lcom/onyx/tex/MathLaTeX;
    .locals 1

    iput p1, p0, Lcom/onyx/tex/MathLaTeX;->c:I

    iget-object v0, p0, Lcom/onyx/tex/MathLaTeX;->b:Lio/nano/tex/TeXRender;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lio/nano/tex/TeXRender;->setTextSize(F)V

    :cond_0
    return-object p0
.end method
