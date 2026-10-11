.class public abstract Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$Recycler;
    }
.end annotation


# static fields
.field public static final w:Ljava/lang/String; = "ImageViewTouchBase"

.field public static final x:F = 1.25f


# instance fields
.field public h:Landroid/graphics/Matrix;

.field public i:Landroid/graphics/Matrix;

.field public final j:Landroid/graphics/Matrix;

.field public final k:[F

.field public final l:Lcom/onegravity/rteditor/media/crop/RotateBitmap;

.field public m:I

.field public n:I

.field public o:F

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$Recycler;

.field public u:Landroid/os/Handler;

.field public v:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->h:Landroid/graphics/Matrix;

    .line 3
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->i:Landroid/graphics/Matrix;

    .line 4
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->j:Landroid/graphics/Matrix;

    const/16 p1, 0x9

    new-array p1, p1, [F

    .line 5
    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->k:[F

    .line 6
    new-instance p1, Lcom/onegravity/rteditor/media/crop/RotateBitmap;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->l:Lcom/onegravity/rteditor/media/crop/RotateBitmap;

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->m:I

    iput p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->n:I

    .line 8
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->u:Landroid/os/Handler;

    .line 9
    iput-object v0, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->v:Ljava/lang/Runnable;

    .line 10
    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->h:Landroid/graphics/Matrix;

    .line 13
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->i:Landroid/graphics/Matrix;

    .line 14
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->j:Landroid/graphics/Matrix;

    const/16 p1, 0x9

    new-array p1, p1, [F

    .line 15
    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->k:[F

    .line 16
    new-instance p1, Lcom/onegravity/rteditor/media/crop/RotateBitmap;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->l:Lcom/onegravity/rteditor/media/crop/RotateBitmap;

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->m:I

    iput p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->n:I

    .line 18
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->u:Landroid/os/Handler;

    .line 19
    iput-object p2, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->v:Ljava/lang/Runnable;

    .line 20
    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->h()V

    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 6

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->l:Lcom/onegravity/rteditor/media/crop/RotateBitmap;

    invoke-virtual {v0}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->c()Landroid/graphics/Matrix;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->l:Lcom/onegravity/rteditor/media/crop/RotateBitmap;

    invoke-virtual {v2}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->l:Lcom/onegravity/rteditor/media/crop/RotateBitmap;

    invoke-virtual {v3}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    cmpg-float v5, v0, p2

    if-gez v5, :cond_1

    sub-float/2addr p2, v0

    div-float/2addr p2, v3

    iget v0, v1, Landroid/graphics/RectF;->top:F

    :goto_0
    sub-float/2addr p2, v0

    goto :goto_1

    :cond_1
    iget v0, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v0, v4

    if-lez v5, :cond_2

    neg-float p2, v0

    goto :goto_1

    :cond_2
    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float p2, v0, p2

    if-gez p2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_3
    move p2, v4

    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    cmpg-float v0, v2, p1

    if-gez v0, :cond_4

    sub-float/2addr p1, v2

    div-float/2addr p1, v3

    iget v0, v1, Landroid/graphics/RectF;->left:F

    :goto_2
    sub-float v4, p1, v0

    goto :goto_3

    :cond_4
    iget v0, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v0, v4

    if-lez v2, :cond_5

    neg-float v4, v0

    goto :goto_3

    :cond_5
    iget v0, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v0, p1

    if-gez v1, :cond_6

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {p0, v4, p2}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->k(FF)V

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->c()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->m(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public c()Landroid/graphics/Matrix;
    .locals 2

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->i:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->j:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final d(Lcom/onegravity/rteditor/media/crop/RotateBitmap;Landroid/graphics/Matrix;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    div-float v3, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float v5, p0, v2

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {p1}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->getRotateMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {p2, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    mul-float/2addr v2, v3

    sub-float/2addr p0, v2

    div-float/2addr p0, v4

    invoke-virtual {p2, v0, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public e()F
    .locals 1

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->i:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->f(Landroid/graphics/Matrix;)F

    move-result p0

    return p0
.end method

.method public f(Landroid/graphics/Matrix;)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->g(Landroid/graphics/Matrix;I)F

    move-result p0

    return p0
.end method

.method public g(Landroid/graphics/Matrix;I)F
    .locals 1

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->k:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->k:[F

    aget p0, p0, p2

    return p0
.end method

.method public final h()V
    .locals 1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public i()F
    .locals 2

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->l:Lcom/onegravity/rteditor/media/crop/RotateBitmap;

    invoke-virtual {v0}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->l:Lcom/onegravity/rteditor/media/crop/RotateBitmap;

    invoke-virtual {v0}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->m:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->l:Lcom/onegravity/rteditor/media/crop/RotateBitmap;

    invoke-virtual {v1}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget p0, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->n:I

    int-to-float p0, p0

    div-float/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method public j(FF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->k(FF)V

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->c()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public k(FF)V
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->i:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public final l(Landroid/graphics/Bitmap;I)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_0
    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->l:Lcom/onegravity/rteditor/media/crop/RotateBitmap;

    invoke-virtual {v0}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->l:Lcom/onegravity/rteditor/media/crop/RotateBitmap;

    invoke-virtual {v1, p1}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->l:Lcom/onegravity/rteditor/media/crop/RotateBitmap;

    invoke-virtual {v1, p2}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->setRotation(I)V

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->t:Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$Recycler;

    if-eqz p0, :cond_1

    invoke-interface {p0, v0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$Recycler;->recycle(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public m(Landroid/graphics/Bitmap;Z)V
    .locals 1

    new-instance v0, Lcom/onegravity/rteditor/media/crop/RotateBitmap;

    invoke-direct {v0, p1}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->n(Lcom/onegravity/rteditor/media/crop/RotateBitmap;Z)V

    return-void
.end method

.method public n(Lcom/onegravity/rteditor/media/crop/RotateBitmap;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$a;-><init>(Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;Lcom/onegravity/rteditor/media/crop/RotateBitmap;Z)V

    iput-object v0, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->v:Ljava/lang/Runnable;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->d(Lcom/onegravity/rteditor/media/crop/RotateBitmap;Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->getRotation()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->l(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->h:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->i:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    :cond_2
    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->c()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->i()F

    move-result p1

    iput p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->o:F

    return-void
.end method

.method public o(Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$Recycler;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->t:Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$Recycler;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->e()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->t(F)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iput p2, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->p:I

    iput p4, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->q:I

    iput p3, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->r:I

    iput p5, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->s:I

    sub-int/2addr p4, p2

    iput p4, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->m:I

    sub-int/2addr p5, p3

    iput p5, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->n:I

    iget-object p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->v:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->v:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->l:Lcom/onegravity/rteditor/media/crop/RotateBitmap;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->l:Lcom/onegravity/rteditor/media/crop/RotateBitmap;

    iget-object p2, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->d(Lcom/onegravity/rteditor/media/crop/RotateBitmap;Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->c()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method public p()V
    .locals 1

    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->q(F)V

    return-void
.end method

.method public q(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->e()F

    move-result v0

    iget v1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->o:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->l:Lcom/onegravity/rteditor/media/crop/RotateBitmap;

    invoke-virtual {v0}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->i:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p1, v0, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->c()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public r()V
    .locals 1

    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->s(F)V

    return-void
.end method

.method public s(F)V
    .locals 4

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->l:Lcom/onegravity/rteditor/media/crop/RotateBitmap;

    invoke-virtual {v0}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    new-instance v1, Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->i:Landroid/graphics/Matrix;

    invoke-direct {v1, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    const/high16 v3, 0x3f800000    # 1.0f

    div-float p1, v3, p1

    invoke-virtual {v1, p1, p1, v0, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->f(Landroid/graphics/Matrix;)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    iget-object p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->i:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3, v3, v0, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->i:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p1, v0, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :goto_0
    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->c()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->a(ZZ)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->l(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public t(F)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0, p1, v0, v2}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->u(FFF)V

    return-void
.end method

.method public u(FFF)V
    .locals 2

    iget v0, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->o:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    :cond_0
    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->e()F

    move-result v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->i:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->c()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->a(ZZ)V

    return-void
.end method

.method public v(FFFF)V
    .locals 10

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->e()F

    move-result v0

    sub-float/2addr p1, v0

    div-float v6, p1, p4

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->e()F

    move-result v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->u:Landroid/os/Handler;

    new-instance v9, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$b;

    move-object v0, v9

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$b;-><init>(Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {p1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
