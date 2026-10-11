.class public Lcom/onegravity/utils/AlphaPatternDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/Paint;

.field public e:I

.field public f:I

.field public g:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onegravity/utils/AlphaPatternDrawable;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onegravity/utils/AlphaPatternDrawable;->c:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/onegravity/utils/AlphaPatternDrawable;->d:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/onegravity/colorpicker/Util;->getDisplayDensity(Landroid/content/Context;)F

    move-result p1

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lcom/onegravity/utils/AlphaPatternDrawable;->a:I

    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    const p0, -0x343435

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Lcom/onegravity/colorpicker/Util;->allocateBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/onegravity/utils/AlphaPatternDrawable;->g:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/onegravity/utils/AlphaPatternDrawable;->g:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    :goto_0
    iget v5, p0, Lcom/onegravity/utils/AlphaPatternDrawable;->f:I

    if-gt v4, v5, :cond_4

    move v5, v2

    move v6, v3

    :goto_1
    iget v7, p0, Lcom/onegravity/utils/AlphaPatternDrawable;->e:I

    if-gt v5, v7, :cond_3

    iget v7, p0, Lcom/onegravity/utils/AlphaPatternDrawable;->a:I

    mul-int v8, v4, v7

    iput v8, v1, Landroid/graphics/Rect;->top:I

    mul-int v9, v5, v7

    iput v9, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v7

    iput v8, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v7

    iput v9, v1, Landroid/graphics/Rect;->right:I

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/onegravity/utils/AlphaPatternDrawable;->c:Landroid/graphics/Paint;

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/onegravity/utils/AlphaPatternDrawable;->d:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {v0, v1, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    xor-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    xor-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/onegravity/utils/AlphaPatternDrawable;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object p0, p0, Lcom/onegravity/utils/AlphaPatternDrawable;->b:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public generatePatternBitmap(II)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v0, 0x0

    if-lez p1, :cond_5

    if-gtz p2, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {p1, p2}, Lcom/onegravity/colorpicker/Util;->allocateBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-double v2, p1

    iget p1, p0, Lcom/onegravity/utils/AlphaPatternDrawable;->a:I

    int-to-double v4, p1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    iget v2, p0, Lcom/onegravity/utils/AlphaPatternDrawable;->a:I

    div-int/2addr p2, v2

    int-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p2, v2

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    :goto_0
    if-gt v5, p2, :cond_4

    move v6, v3

    move v7, v4

    :goto_1
    if-gt v6, p1, :cond_3

    iget v8, p0, Lcom/onegravity/utils/AlphaPatternDrawable;->a:I

    mul-int v9, v5, v8

    iput v9, v2, Landroid/graphics/Rect;->top:I

    mul-int v10, v6, v8

    iput v10, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v8

    iput v9, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v8

    iput v10, v2, Landroid/graphics/Rect;->right:I

    if-eqz v7, :cond_2

    iget-object v8, p0, Lcom/onegravity/utils/AlphaPatternDrawable;->c:Landroid/graphics/Paint;

    goto :goto_2

    :cond_2
    iget-object v8, p0, Lcom/onegravity/utils/AlphaPatternDrawable;->d:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {v0, v2, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    xor-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    xor-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-object v1

    :cond_5
    :goto_3
    return-object v0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-double v1, p1

    iget p1, p0, Lcom/onegravity/utils/AlphaPatternDrawable;->a:I

    int-to-double v3, p1

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    iput p1, p0, Lcom/onegravity/utils/AlphaPatternDrawable;->e:I

    iget p1, p0, Lcom/onegravity/utils/AlphaPatternDrawable;->a:I

    div-int/2addr v0, p1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/onegravity/utils/AlphaPatternDrawable;->f:I

    invoke-virtual {p0}, Lcom/onegravity/utils/AlphaPatternDrawable;->a()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
