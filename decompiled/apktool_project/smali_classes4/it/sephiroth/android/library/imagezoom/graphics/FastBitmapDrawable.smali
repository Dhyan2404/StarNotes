.class public Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lit/sephiroth/android/library/imagezoom/graphics/IBitmapDrawable;


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mIntrinsicHeight:I

.field protected mIntrinsicWidth:I

.field protected mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V
    .locals 0

    .line 10
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mIntrinsicWidth:I

    .line 4
    iget-object p1, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mIntrinsicHeight:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mIntrinsicWidth:I

    .line 6
    iput p1, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mIntrinsicHeight:I

    .line 7
    :goto_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 9
    iget-object p0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mIntrinsicHeight:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget p0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mIntrinsicWidth:I

    return p0
.end method

.method public getMinimumHeight()I
    .locals 0

    iget p0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mIntrinsicHeight:I

    return p0
.end method

.method public getMinimumWidth()I
    .locals 0

    iget p0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mIntrinsicWidth:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public setAlpha(I)V
    .locals 0

    iget-object p0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 1

    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
