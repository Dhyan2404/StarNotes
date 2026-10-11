.class public abstract Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Lit/sephiroth/android/library/imagezoom/utils/IDisposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;,
        Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnLayoutChangeListener;,
        Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnDrawableChangeListener;
    }
.end annotation


# static fields
.field protected static final LOG_ENABLED:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "ImageViewTouchBase"

.field public static final VERSION:Ljava/lang/String; = "1.0.4"

.field public static final ZOOM_INVALID:F = -1.0f


# instance fields
.field protected final DEFAULT_ANIMATION_DURATION:I

.field public e:F

.field public f:F

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Landroid/graphics/PointF;

.field public l:Z

.field public m:Z

.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field protected mBitmapRect:Landroid/graphics/RectF;

.field protected mCenterRect:Landroid/graphics/RectF;

.field protected final mDisplayMatrix:Landroid/graphics/Matrix;

.field protected mEasing:Lit/sephiroth/android/library/easing/Easing;

.field protected mHandler:Landroid/os/Handler;

.field protected mLayoutRunnable:Ljava/lang/Runnable;

.field protected final mMatrixValues:[F

.field protected mNextMatrix:Landroid/graphics/Matrix;

.field protected mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

.field protected mScrollRect:Landroid/graphics/RectF;

.field protected mSuppMatrix:Landroid/graphics/Matrix;

.field protected mUserScaled:Z

.field public n:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnDrawableChangeListener;

.field public o:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnLayoutChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Lit/sephiroth/android/library/easing/Cubic;

    invoke-direct {v0}, Lit/sephiroth/android/library/easing/Cubic;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mEasing:Lit/sephiroth/android/library/easing/Easing;

    .line 5
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 6
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mLayoutRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mUserScaled:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 10
    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->e:F

    .line 11
    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->f:F

    .line 12
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 13
    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMatrixValues:[F

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->i:I

    .line 15
    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->j:I

    .line 16
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->k:Landroid/graphics/PointF;

    .line 17
    sget-object v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->NONE:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    const/16 v0, 0xc8

    .line 18
    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->DEFAULT_ANIMATION_DURATION:I

    .line 19
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapRect:Landroid/graphics/RectF;

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mCenterRect:Landroid/graphics/RectF;

    .line 21
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScrollRect:Landroid/graphics/RectF;

    .line 22
    invoke-virtual {p0, p1, p2, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public _setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float v0, p3, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    cmpl-float v0, p4, p1

    if-eqz v0, :cond_3

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    iput p3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->f:F

    iput p4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->e:F

    iput-boolean v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->h:Z

    iput-boolean v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->g:Z

    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    sget-object v3, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->FIT_TO_SCREEN:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    if-eq v0, v3, :cond_1

    sget-object v3, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->FIT_IF_BIGGER:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    if-ne v0, v3, :cond_4

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p3, p3, v0

    if-ltz p3, :cond_2

    iput-boolean v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->h:Z

    iput p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->f:F

    :cond_2
    cmpg-float p3, p4, v0

    if-gtz p3, :cond_4

    iput-boolean v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->g:Z

    iput p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->e:F

    goto :goto_1

    :cond_3
    iput p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->f:F

    iput p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->e:F

    iput-boolean v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->h:Z

    iput-boolean v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->g:Z

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1, p2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mNextMatrix:Landroid/graphics/Matrix;

    :cond_5
    iput-boolean v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->m:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public center(ZZ)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, p1, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getCenter(Landroid/graphics/Matrix;ZZ)Landroid/graphics/RectF;

    move-result-object p1

    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_1

    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_2

    :cond_1
    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, p2, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->postTranslate(FF)V

    :cond_2
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public computeMaxZoom()F
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->i:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->j:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method public computeMinZoom()F
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result p0

    div-float p0, v1, p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public dispose()V
    .locals 0

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->clear()V

    return-void
.end method

.method public fireOnDrawableChangeListener(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->n:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnDrawableChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnDrawableChangeListener;->onDrawableChanged(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public fireOnLayoutChangeListener(IIII)V
    .locals 6

    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->o:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnLayoutChangeListener;->onLayoutChanged(ZIIII)V

    :cond_0
    return-void
.end method

.method public getBaseScale()F
    .locals 1

    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result p0

    return p0
.end method

.method public getBitmapRect()Landroid/graphics/RectF;
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getBitmapRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getBitmapRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6
    iget-object p0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getCenter()Landroid/graphics/PointF;
    .locals 0

    .line 17
    iget-object p0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->k:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getCenter(Landroid/graphics/Matrix;ZZ)Landroid/graphics/RectF;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getBitmapRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 6
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p3, :cond_3

    .line 7
    iget p3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->j:I

    int-to-float v4, p3

    cmpg-float v5, v0, v4

    if-gez v5, :cond_1

    sub-float/2addr v4, v0

    div-float/2addr v4, v3

    .line 8
    iget p3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, p3

    goto :goto_0

    .line 9
    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v0, v1

    if-lez v5, :cond_2

    neg-float v4, v0

    goto :goto_0

    .line 10
    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_3

    int-to-float p3, p3

    sub-float v4, p3, v0

    goto :goto_0

    :cond_3
    move v4, v1

    :goto_0
    if-eqz p2, :cond_6

    .line 11
    iget p2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->i:I

    int-to-float p2, p2

    cmpg-float p3, v2, p2

    if-gez p3, :cond_4

    sub-float/2addr p2, v2

    div-float/2addr p2, v3

    .line 12
    iget p1, p1, Landroid/graphics/RectF;->left:F

    :goto_1
    sub-float/2addr p2, p1

    goto :goto_2

    .line 13
    :cond_4
    iget p3, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, p3, v1

    if-lez v0, :cond_5

    neg-float p2, p3

    goto :goto_2

    .line 14
    :cond_5
    iget p1, p1, Landroid/graphics/RectF;->right:F

    cmpg-float p3, p1, p2

    if-gez p3, :cond_6

    goto :goto_1

    :cond_6
    move p2, v1

    .line 15
    :goto_2
    iget-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mCenterRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, v4, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 16
    iget-object p0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mCenterRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getDefaultScale(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)F
    .locals 2

    sget-object v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->FIT_TO_SCREEN:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->FIT_IF_BIGGER:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result p0

    div-float p0, v1, p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0

    :cond_1
    iget-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result p0

    div-float/2addr v1, p0

    return v1
.end method

.method public getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 1

    new-instance v0, Landroid/graphics/Matrix;

    iget-object p0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, p0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getDisplayType()Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;
    .locals 0

    iget-object p0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    return-object p0
.end method

.method public getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public getImageViewMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 2

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 3
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 4
    iget-object p0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public getMaxScale()F
    .locals 2

    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->e:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->computeMaxZoom()F

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->e:F

    :cond_0
    iget p0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->e:F

    return p0
.end method

.method public getMinScale()F
    .locals 2

    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->f:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->computeMinZoom()F

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->f:F

    :cond_0
    iget p0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->f:F

    return p0
.end method

.method public getProperBaseMatrix(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V
    .locals 5

    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->i:I

    int-to-float v0, v0

    iget p0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->j:I

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    cmpl-float v2, v1, v0

    const/high16 v3, 0x40000000    # 2.0f

    if-gtz v2, :cond_1

    cmpl-float v2, p1, p0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    div-float v2, v0, v1

    div-float v4, p0, p1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p2, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    mul-float/2addr p1, v2

    sub-float/2addr p0, p1

    div-float/2addr p0, v3

    invoke-virtual {p2, v0, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    :cond_1
    :goto_0
    div-float v2, v0, v1

    div-float v4, p0, p1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p2, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    mul-float/2addr p1, v2

    sub-float/2addr p0, p1

    div-float/2addr p0, v3

    invoke-virtual {p2, v0, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_1
    return-void
.end method

.method public getProperBaseMatrix2(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V
    .locals 4

    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->i:I

    int-to-float v0, v0

    iget p0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->j:I

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    div-float v2, v0, v1

    div-float v3, p0, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p2, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    mul-float/2addr p1, v2

    sub-float/2addr p0, p1

    div-float/2addr p0, v1

    invoke-virtual {p2, v0, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public getRotation()F
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getScale()F
    .locals 1

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result p0

    return p0
.end method

.method public getScale(Landroid/graphics/Matrix;)F
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result p0

    return p0
.end method

.method public getValue(Landroid/graphics/Matrix;I)F
    .locals 1

    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMatrixValues:[F

    aget p0, p0, p2

    return p0
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public onDrawableChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->fireOnDrawableChangeListener(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onImageMatrixChanged()V
    .locals 0

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    iget v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->i:I

    iget v7, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->j:I

    sub-int v8, v3, v1

    iput v8, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->i:I

    sub-int v9, v4, v2

    iput v9, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->j:I

    sub-int v6, v8, v6

    sub-int v7, v9, v7

    iget-object v10, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->k:Landroid/graphics/PointF;

    int-to-float v8, v8

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v8, v11

    iput v8, v10, Landroid/graphics/PointF;->x:F

    int-to-float v8, v9

    div-float/2addr v8, v11

    iput v8, v10, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_0
    move v6, v5

    move v7, v6

    :goto_0
    iget-object v8, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mLayoutRunnable:Ljava/lang/Runnable;

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    iput-object v9, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mLayoutRunnable:Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_11

    if-nez p1, :cond_2

    iget-boolean v10, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->l:Z

    if-nez v10, :cond_2

    iget-boolean v10, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->m:Z

    if-eqz v10, :cond_16

    :cond_2
    iget-object v10, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    invoke-virtual {v0, v10}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDefaultScale(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)F

    iget-object v10, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v10}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    div-float v13, v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    iget-object v14, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8, v14}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getProperBaseMatrix(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V

    iget-object v14, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v14}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v14

    iget-boolean v15, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->m:Z

    if-nez v15, :cond_8

    iget-boolean v15, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->l:Z

    if-eqz v15, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_a

    iget-boolean v9, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->h:Z

    const/high16 v15, -0x40800000    # -1.0f

    if-nez v9, :cond_4

    iput v15, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->f:F

    :cond_4
    iget-boolean v9, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->g:Z

    if-nez v9, :cond_5

    iput v15, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->e:F

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v0, v9}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    neg-int v6, v6

    int-to-float v6, v6

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v0, v6, v7}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->postTranslate(FF)V

    iget-boolean v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mUserScaled:Z

    if-nez v6, :cond_6

    iget-object v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    invoke-virtual {v0, v6}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDefaultScale(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)F

    move-result v12

    invoke-virtual {v0, v12}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(F)V

    goto :goto_3

    :cond_6
    sub-float v6, v11, v13

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide v15, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v6, v6, v15

    if-lez v6, :cond_7

    div-float/2addr v10, v14

    mul-float/2addr v10, v11

    move v12, v10

    :cond_7
    invoke-virtual {v0, v12}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(F)V

    goto :goto_3

    :cond_8
    :goto_1
    iget-object v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mNextMatrix:Landroid/graphics/Matrix;

    if-eqz v6, :cond_9

    iget-object v7, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iput-object v9, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mNextMatrix:Landroid/graphics/Matrix;

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v6

    goto :goto_2

    :cond_9
    iget-object v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    iget-object v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    invoke-virtual {v0, v6}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDefaultScale(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)F

    move-result v6

    :goto_2
    move v12, v6

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v0, v6}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v6

    cmpl-float v6, v12, v6

    if-eqz v6, :cond_a

    invoke-virtual {v0, v12}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(F)V

    :cond_a
    :goto_3
    iput-boolean v5, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mUserScaled:Z

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result v6

    cmpl-float v6, v12, v6

    if-gtz v6, :cond_b

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMinScale()F

    move-result v6

    cmpg-float v6, v12, v6

    if-gez v6, :cond_c

    :cond_b
    invoke-virtual {v0, v12}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(F)V

    :cond_c
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v6}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->center(ZZ)V

    iget-boolean v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->m:Z

    if-eqz v6, :cond_d

    invoke-virtual {v0, v8}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onDrawableChanged(Landroid/graphics/drawable/Drawable;)V

    :cond_d
    if-nez p1, :cond_e

    iget-boolean v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->m:Z

    if-nez v6, :cond_e

    iget-boolean v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->l:Z

    if-eqz v6, :cond_f

    :cond_e
    invoke-virtual {v0, v1, v2, v3, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onLayoutChanged(IIII)V

    :cond_f
    iget-boolean v1, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->l:Z

    if-eqz v1, :cond_10

    iput-boolean v5, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->l:Z

    :cond_10
    iget-boolean v1, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->m:Z

    if-eqz v1, :cond_16

    iput-boolean v5, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->m:Z

    goto :goto_4

    :cond_11
    iget-boolean v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->m:Z

    if-eqz v6, :cond_12

    invoke-virtual {v0, v8}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onDrawableChanged(Landroid/graphics/drawable/Drawable;)V

    :cond_12
    if-nez p1, :cond_13

    iget-boolean v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->m:Z

    if-nez v6, :cond_13

    iget-boolean v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->l:Z

    if-eqz v6, :cond_14

    :cond_13
    invoke-virtual {v0, v1, v2, v3, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onLayoutChanged(IIII)V

    :cond_14
    iget-boolean v1, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->m:Z

    if-eqz v1, :cond_15

    iput-boolean v5, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->m:Z

    :cond_15
    iget-boolean v1, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->l:Z

    if-eqz v1, :cond_16

    iput-boolean v5, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->l:Z

    :cond_16
    :goto_4
    return-void
.end method

.method public onLayoutChanged(IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->fireOnLayoutChangeListener(IIII)V

    return-void
.end method

.method public onZoom(F)V
    .locals 0

    return-void
.end method

.method public onZoomAnimationCompleted(F)V
    .locals 0

    return-void
.end method

.method public panBy(DD)V
    .locals 2

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScrollRect:Landroid/graphics/RectF;

    double-to-float p1, p1

    double-to-float p2, p3

    const/4 p3, 0x0

    invoke-virtual {v1, p1, p2, p3, p3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScrollRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->updateRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    iget-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScrollRect:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, p2, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->postTranslate(FF)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->center(ZZ)V

    return-void
.end method

.method public postScale(FFF)V
    .locals 1

    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public postTranslate(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method public printMatrix(Landroid/graphics/Matrix;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {p0, p1, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "matrix: { x: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", y: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", scalex: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", scaley: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImageViewTouchBase"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resetDisplay()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->m:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public resetMatrix()V
    .locals 2

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDefaultScale(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)F

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(F)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public scrollBy(FF)V
    .locals 2

    float-to-double v0, p1

    float-to-double p1, p2

    .line 1
    invoke-virtual {p0, v0, v1, p1, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->panBy(DD)V

    return-void
.end method

.method public scrollBy(FFD)V
    .locals 10

    float-to-double v6, p1

    float-to-double v8, p2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3
    iget-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance p2, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$b;

    move-object v0, p2

    move-object v1, p0

    move-wide v2, p3

    invoke-direct/range {v0 .. v9}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$b;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;DJDD)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDisplayType(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)V
    .locals 1

    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mUserScaled:Z

    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->l:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 1
    invoke-virtual {p0, p1, v0, v1, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;FF)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;FF)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;

    invoke-direct {v0, p1}, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    :goto_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 1
    invoke-virtual {p0, p1, v0, v1, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V
    .locals 7

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    .line 3
    new-instance v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$a;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$a;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mLayoutRunnable:Ljava/lang/Runnable;

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->_setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onImageMatrixChanged()V

    :cond_3
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setMaxScale(F)V
    .locals 0

    iput p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->e:F

    return-void
.end method

.method public setMinScale(F)V
    .locals 0

    iput p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->f:F

    return-void
.end method

.method public setOnDrawableChangedListener(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnDrawableChangeListener;)V
    .locals 0

    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->n:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnDrawableChangeListener;

    return-void
.end method

.method public setOnLayoutChangeListener(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnLayoutChangeListener;)V
    .locals 0

    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->o:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnLayoutChangeListener;

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_0
    const-string p0, "ImageViewTouchBase"

    const-string p1, "Unsupported scaletype. Only MATRIX can be used"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updateRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->top:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->j:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    iput v1, p2, Landroid/graphics/RectF;->top:F

    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->i:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    iput v1, p2, Landroid/graphics/RectF;->left:F

    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->j:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    sub-float v0, v1, v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->top:F

    :cond_3
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iget v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->j:I

    add-int/lit8 v4, v3, 0x0

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_4

    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_4

    add-int/lit8 v3, v3, 0x0

    int-to-float v2, v3

    sub-float/2addr v2, v0

    float-to-int v0, v2

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->top:F

    :cond_4
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_5

    sub-float/2addr v1, v0

    float-to-int v0, v1

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->left:F

    :cond_5
    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iget p0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->i:I

    add-int/lit8 v1, p0, 0x0

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    add-int/lit8 p0, p0, 0x0

    int-to-float p0, p0

    sub-float/2addr p0, p1

    float-to-int p0, p0

    int-to-float p0, p0

    iput p0, p2, Landroid/graphics/RectF;->left:F

    :cond_6
    return-void
.end method

.method public zoomTo(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMinScale()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMinScale()F

    move-result p1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    .line 4
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1, v1, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(FFF)V

    return-void
.end method

.method public zoomTo(FF)V
    .locals 2

    .line 5
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    .line 6
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1, v1, v0, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(FFFF)V

    return-void
.end method

.method public zoomTo(FFF)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result p1

    .line 8
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v0

    div-float/2addr p1, v0

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->postScale(FFF)V

    .line 10
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result p1

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onZoom(F)V

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->center(ZZ)V

    return-void
.end method

.method public zoomTo(FFFF)V
    .locals 9

    .line 12
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result p1

    .line 13
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 14
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v6

    sub-float v5, p1, v6

    .line 15
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 16
    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0, v0, v1, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getCenter(Landroid/graphics/Matrix;ZZ)Landroid/graphics/RectF;

    move-result-object v0

    .line 18
    iget v1, v0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, p1

    add-float v7, p2, v1

    .line 19
    iget p2, v0, Landroid/graphics/RectF;->top:F

    mul-float/2addr p2, p1

    add-float v8, p3, p2

    .line 20
    iget-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance p2, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$c;

    move-object v0, p2

    move-object v1, p0

    move v2, p4

    invoke-direct/range {v0 .. v8}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$c;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
