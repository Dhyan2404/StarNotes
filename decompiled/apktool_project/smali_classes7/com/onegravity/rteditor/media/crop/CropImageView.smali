.class Lcom/onegravity/rteditor/media/crop/CropImageView;
.super Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;
.source "SourceFile"


# instance fields
.field public J:F

.field public O:F

.field public Q:I

.field public k0:Landroid/content/Context;

.field public y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onegravity/rteditor/media/crop/HighlightView;",
            ">;"
        }
    .end annotation
.end field

.field public z:Lcom/onegravity/rteditor/media/crop/HighlightView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->y:Ljava/util/ArrayList;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->z:Lcom/onegravity/rteditor/media/crop/HighlightView;

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->k0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public k(FF)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->k(FF)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onegravity/rteditor/media/crop/HighlightView;

    iget-object v2, v1, Lcom/onegravity/rteditor/media/crop/HighlightView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v1}, Lcom/onegravity/rteditor/media/crop/HighlightView;->j()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onegravity/rteditor/media/crop/HighlightView;

    invoke-virtual {v1, p1}, Lcom/onegravity/rteditor/media/crop/HighlightView;->b(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->l:Lcom/onegravity/rteditor/media/crop/RotateBitmap;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->y:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onegravity/rteditor/media/crop/HighlightView;

    iget-object p3, p2, Lcom/onegravity/rteditor/media/crop/HighlightView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {p2}, Lcom/onegravity/rteditor/media/crop/HighlightView;->j()V

    iget-boolean p3, p2, Lcom/onegravity/rteditor/media/crop/HighlightView;->b:Z

    if-eqz p3, :cond_0

    invoke-virtual {p0, p2}, Lcom/onegravity/rteditor/media/crop/CropImageView;->x(Lcom/onegravity/rteditor/media/crop/HighlightView;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->k0:Landroid/content/Context;

    check-cast v0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;

    iget-boolean v1, v0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->M0:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_9

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-boolean v0, v0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->L0:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/media/crop/CropImageView;->z(Landroid/view/MotionEvent;)V

    goto/16 :goto_5

    :cond_2
    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->z:Lcom/onegravity/rteditor/media/crop/HighlightView;

    if-eqz v0, :cond_d

    iget v1, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->Q:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v5, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->J:F

    sub-float/2addr v2, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->O:F

    sub-float/2addr v5, v6

    invoke-virtual {v0, v1, v2, v5}, Lcom/onegravity/rteditor/media/crop/HighlightView;->g(IFF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->J:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->O:F

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->z:Lcom/onegravity/rteditor/media/crop/HighlightView;

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/media/crop/CropImageView;->y(Lcom/onegravity/rteditor/media/crop/HighlightView;)V

    goto/16 :goto_5

    :cond_3
    iget-boolean v1, v0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->L0:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_0
    iget-object v5, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->y:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    iget-object v5, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->y:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onegravity/rteditor/media/crop/HighlightView;

    invoke-virtual {v5}, Lcom/onegravity/rteditor/media/crop/HighlightView;->h()Z

    move-result v6

    if-eqz v6, :cond_6

    iput-object v5, v0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->N0:Lcom/onegravity/rteditor/media/crop/HighlightView;

    move p1, v2

    :goto_1
    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onegravity/rteditor/media/crop/HighlightView;

    invoke-virtual {v0, v4}, Lcom/onegravity/rteditor/media/crop/HighlightView;->m(Z)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v5}, Lcom/onegravity/rteditor/media/crop/CropImageView;->x(Lcom/onegravity/rteditor/media/crop/HighlightView;)V

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->k0:Landroid/content/Context;

    check-cast p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;

    iput-boolean v2, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->L0:Z

    return v4

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->z:Lcom/onegravity/rteditor/media/crop/HighlightView;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/media/crop/CropImageView;->x(Lcom/onegravity/rteditor/media/crop/HighlightView;)V

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->z:Lcom/onegravity/rteditor/media/crop/HighlightView;

    sget-object v1, Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;->None:Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

    invoke-virtual {v0, v1}, Lcom/onegravity/rteditor/media/crop/HighlightView;->n(Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;)V

    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->z:Lcom/onegravity/rteditor/media/crop/HighlightView;

    goto :goto_5

    :cond_9
    iget-boolean v0, v0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->L0:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/media/crop/CropImageView;->z(Landroid/view/MotionEvent;)V

    goto :goto_5

    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_d

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onegravity/rteditor/media/crop/HighlightView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v0, v1, v5}, Lcom/onegravity/rteditor/media/crop/HighlightView;->d(FF)I

    move-result v1

    if-eq v1, v4, :cond_c

    iput v1, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->Q:I

    iput-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->z:Lcom/onegravity/rteditor/media/crop/HighlightView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->J:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->O:F

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->z:Lcom/onegravity/rteditor/media/crop/HighlightView;

    const/16 v2, 0x20

    if-ne v1, v2, :cond_b

    sget-object v1, Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;->Move:Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

    goto :goto_4

    :cond_b
    sget-object v1, Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;->Grow:Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

    :goto_4
    invoke-virtual {v0, v1}, Lcom/onegravity/rteditor/media/crop/HighlightView;->n(Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;)V

    goto :goto_5

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    :goto_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v4, :cond_f

    if-eq p1, v3, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->e()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_10

    invoke-virtual {p0, v4, v4}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->a(ZZ)V

    goto :goto_6

    :cond_f
    invoke-virtual {p0, v4, v4}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->a(ZZ)V

    :cond_10
    :goto_6
    return v4
.end method

.method public p()V
    .locals 4

    invoke-super {p0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->p()V

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onegravity/rteditor/media/crop/HighlightView;

    iget-object v2, v1, Lcom/onegravity/rteditor/media/crop/HighlightView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v1}, Lcom/onegravity/rteditor/media/crop/HighlightView;->j()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r()V
    .locals 4

    invoke-super {p0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->r()V

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onegravity/rteditor/media/crop/HighlightView;

    iget-object v2, v1, Lcom/onegravity/rteditor/media/crop/HighlightView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v1}, Lcom/onegravity/rteditor/media/crop/HighlightView;->j()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public u(FFF)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->u(FFF)V

    iget-object p1, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->y:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onegravity/rteditor/media/crop/HighlightView;

    iget-object p3, p2, Lcom/onegravity/rteditor/media/crop/HighlightView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {p2}, Lcom/onegravity/rteditor/media/crop/HighlightView;->j()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w(Lcom/onegravity/rteditor/media/crop/HighlightView;)V
    .locals 1

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final x(Lcom/onegravity/rteditor/media/crop/HighlightView;)V
    .locals 5

    iget-object v0, p1, Lcom/onegravity/rteditor/media/crop/HighlightView;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v1

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v1

    div-float/2addr v3, v0

    mul-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->e()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->e()F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    float-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p1, Lcom/onegravity/rteditor/media/crop/HighlightView;->g:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v2, p1, Lcom/onegravity/rteditor/media/crop/HighlightView;->g:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v2, v1, v3

    aget v1, v1, v4

    const/high16 v3, 0x43960000    # 300.0f

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->v(FFFF)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/media/crop/CropImageView;->y(Lcom/onegravity/rteditor/media/crop/HighlightView;)V

    return-void
.end method

.method public final y(Lcom/onegravity/rteditor/media/crop/HighlightView;)V
    .locals 5

    iget-object p1, p1, Lcom/onegravity/rteditor/media/crop/HighlightView;->e:Landroid/graphics/Rect;

    iget v0, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->p:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->q:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->r:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->s:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, p1

    :goto_1
    if-nez v0, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    int-to-float p1, v0

    int-to-float v0, v3

    invoke-virtual {p0, p1, v0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->j(FF)V

    :cond_3
    return-void
.end method

.method public final z(Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->y:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onegravity/rteditor/media/crop/HighlightView;

    invoke-virtual {v2, v0}, Lcom/onegravity/rteditor/media/crop/HighlightView;->l(Z)V

    invoke-virtual {v2}, Lcom/onegravity/rteditor/media/crop/HighlightView;->j()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/CropImageView;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onegravity/rteditor/media/crop/HighlightView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/onegravity/rteditor/media/crop/HighlightView;->d(FF)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/onegravity/rteditor/media/crop/HighlightView;->h()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1, v3}, Lcom/onegravity/rteditor/media/crop/HighlightView;->l(Z)V

    invoke-virtual {v1}, Lcom/onegravity/rteditor/media/crop/HighlightView;->j()V

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
