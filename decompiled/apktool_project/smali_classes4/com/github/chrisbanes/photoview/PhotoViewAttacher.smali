.class public Lcom/github/chrisbanes/photoview/PhotoViewAttacher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sunia/HTREnginev2/ggk;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/chrisbanes/photoview/PhotoViewAttacher$e;,
        Lcom/github/chrisbanes/photoview/PhotoViewAttacher$d;
    }
.end annotation


# static fields
.field public static A0:I = 0x1

.field public static q0:F = 3.0f

.field public static t0:F = 1.75f

.field public static u0:F = 1.0f

.field public static v0:I = 0xc8

.field public static final w0:I = -0x1

.field public static final x0:I = 0x0

.field public static final y0:I = 0x1

.field public static final z0:I = 0x2


# instance fields
.field public J:Lcom/github/chrisbanes/photoview/PhotoViewAttacher$e;

.field public O:I

.field public Q:F

.field public Z:Z

.field public e:Landroid/view/animation/Interpolator;

.field public f:I

.field public g:F

.field public h:F

.field public i:F

.field public j:Z

.field public k:Z

.field public k0:Landroid/widget/ImageView$ScaleType;

.field public l:Landroid/widget/ImageView;

.field public m:Landroid/view/GestureDetector;

.field public n:Lcom/sunia/HTREnginev2/koe;

.field public final o:Landroid/graphics/Matrix;

.field public final p:Landroid/graphics/Matrix;

.field public final q:Landroid/graphics/Matrix;

.field public final r:Landroid/graphics/RectF;

.field public final s:[F

.field public t:Lcom/github/chrisbanes/photoview/OnMatrixChangedListener;

.field public u:Lcom/github/chrisbanes/photoview/OnPhotoTapListener;

.field public v:Lcom/github/chrisbanes/photoview/OnOutsidePhotoTapListener;

.field public w:Landroid/view/View$OnClickListener;

.field public x:Landroid/view/View$OnLongClickListener;

.field public y:Lcom/github/chrisbanes/photoview/OnScaleChangedListener;

.field public z:Lcom/github/chrisbanes/photoview/OnSingleFlingListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->e:Landroid/view/animation/Interpolator;

    sget v0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->v0:I

    iput v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->f:I

    sget v0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->u0:F

    iput v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->g:F

    sget v0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->t0:F

    iput v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->h:F

    sget v0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->q0:F

    iput v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->i:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->j:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->k:Z

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->o:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->p:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->q:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->r:Landroid/graphics/RectF;

    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->s:[F

    const/4 v1, 0x2

    iput v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->O:I

    iput-boolean v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->Z:Z

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->k0:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->l:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->Q:F

    new-instance v0, Lcom/sunia/HTREnginev2/koe;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sunia/HTREnginev2/koe;-><init>(Landroid/content/Context;Lcom/sunia/HTREnginev2/ggk;)V

    iput-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->n:Lcom/sunia/HTREnginev2/koe;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$a;

    invoke-direct {v1, p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$a;-><init>(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->m:Landroid/view/GestureDetector;

    new-instance p1, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$b;

    invoke-direct {p1, p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$b;-><init>(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)V

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->x:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method public static synthetic b(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->l:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic c(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->q:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public static synthetic d(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;
    .locals 0

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->r()Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->w(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static synthetic f(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/OnSingleFlingListener;
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->z:Lcom/github/chrisbanes/photoview/OnSingleFlingListener;

    return-object p0
.end method

.method public static synthetic g()F
    .locals 1

    sget v0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->u0:F

    return v0
.end method

.method public static synthetic h()I
    .locals 1

    sget v0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->A0:I

    return v0
.end method

.method public static synthetic i(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->w:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static synthetic j(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/OnPhotoTapListener;
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->u:Lcom/github/chrisbanes/photoview/OnPhotoTapListener;

    return-object p0
.end method

.method public static synthetic k(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Lcom/github/chrisbanes/photoview/OnOutsidePhotoTapListener;
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->v:Lcom/github/chrisbanes/photoview/OnOutsidePhotoTapListener;

    return-object p0
.end method

.method public static synthetic l(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)I
    .locals 0

    iget p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->f:I

    return p0
.end method

.method public static synthetic m(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->e:Landroid/view/animation/Interpolator;

    return-object p0
.end method


# virtual methods
.method public getDisplayMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->r()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->p()Z

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->r()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->q(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->p:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public getMaximumScale()F
    .locals 0

    iget p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->i:F

    return p0
.end method

.method public getMediumScale()F
    .locals 0

    iget p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->h:F

    return p0
.end method

.method public getMinimumScale()F
    .locals 0

    iget p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->g:F

    return p0
.end method

.method public getScale()F
    .locals 6

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->q:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->u(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->q:Landroid/graphics/Matrix;

    const/4 v4, 0x3

    invoke-virtual {p0, v1, v4}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->u(Landroid/graphics/Matrix;I)F

    move-result p0

    float-to-double v4, p0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p0, v1

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->k0:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method public getSuppMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->q:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public isZoomEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->Z:Z

    return p0
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->J:Lcom/github/chrisbanes/photoview/PhotoViewAttacher$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$e;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->J:Lcom/github/chrisbanes/photoview/PhotoViewAttacher$e;

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 1

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->r()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->w(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public onDrag(FF)V
    .locals 2

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->n:Lcom/sunia/HTREnginev2/koe;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/koe;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->q:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->o()V

    iget-object p2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->l:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    iget-boolean v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->n:Lcom/sunia/HTREnginev2/koe;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/koe;->e()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->k:Z

    if-nez v0, :cond_3

    iget p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->O:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    if-nez p0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_2

    :cond_1
    if-ne p0, v1, :cond_4

    const/high16 p0, -0x40800000    # -1.0f

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_4

    :cond_2
    if-eqz p2, :cond_4

    const/4 p0, 0x0

    invoke-interface {p2, p0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onFling(FFFF)V
    .locals 1

    new-instance p1, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$e;

    iget-object p2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->l:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$e;-><init>(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->J:Lcom/github/chrisbanes/photoview/PhotoViewAttacher$e;

    iget-object p2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->t(Landroid/widget/ImageView;)I

    move-result p2

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->s(Landroid/widget/ImageView;)I

    move-result v0

    float-to-int p3, p3

    float-to-int p4, p4

    invoke-virtual {p1, p2, v0, p3, p4}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$e;->b(IIII)V

    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->l:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->J:Lcom/github/chrisbanes/photoview/PhotoViewAttacher$e;

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->l:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->x(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onScale(FFF)V
    .locals 3

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->i:F

    cmpg-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    if-ltz v0, :cond_0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->g:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    cmpl-float v0, p1, v1

    if-lez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->y:Lcom/github/chrisbanes/photoview/OnScaleChangedListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3}, Lcom/github/chrisbanes/photoview/OnScaleChangedListener;->onScaleChange(FFF)V

    :cond_2
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->q:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->o()V

    :cond_3
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    iget-boolean v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->Z:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/ezn;->c(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->g:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v9, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$d;

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getScale()F

    move-result v5

    iget v6, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->g:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$d;-><init>(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;FFFF)V

    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move p1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->n()V

    :cond_3
    :goto_0
    move p1, v1

    :goto_1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->n:Lcom/sunia/HTREnginev2/koe;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/koe;->e()Z

    move-result p1

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->n:Lcom/sunia/HTREnginev2/koe;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/koe;->d()Z

    move-result v0

    iget-object v3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->n:Lcom/sunia/HTREnginev2/koe;

    invoke-virtual {v3, p2}, Lcom/sunia/HTREnginev2/koe;->f(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->n:Lcom/sunia/HTREnginev2/koe;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/koe;->e()Z

    move-result p1

    if-nez p1, :cond_4

    move p1, v2

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->n:Lcom/sunia/HTREnginev2/koe;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/koe;->d()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    move v1, v2

    :cond_6
    iput-boolean v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->k:Z

    move v1, v3

    goto :goto_4

    :cond_7
    move v1, p1

    :goto_4
    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->m:Landroid/view/GestureDetector;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_8

    move v1, v2

    :cond_8
    return v1
.end method

.method public final p()Z
    .locals 11

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->r()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->q(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->s(Landroid/widget/ImageView;)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v5, v2, v4

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-gtz v5, :cond_3

    sget-object v5, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$c;->a:[I

    iget-object v10, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->k0:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v5, v5, v10

    if-eq v5, v8, :cond_2

    if-eq v5, v7, :cond_1

    sub-float/2addr v4, v2

    div-float/2addr v4, v6

    iget v2, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_1
    sub-float/2addr v4, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    :goto_0
    sub-float/2addr v4, v2

    goto :goto_2

    :cond_2
    iget v2, v0, Landroid/graphics/RectF;->top:F

    goto :goto_1

    :cond_3
    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v2, v9

    if-lez v5, :cond_4

    :goto_1
    neg-float v4, v2

    goto :goto_2

    :cond_4
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v5, v2, v4

    if-gez v5, :cond_5

    goto :goto_0

    :cond_5
    move v4, v9

    :goto_2
    iget-object v2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->t(Landroid/widget/ImageView;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v5, v3, v2

    const/4 v10, 0x1

    if-gtz v5, :cond_8

    sget-object v1, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$c;->a:[I

    iget-object v5, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->k0:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v1, v1, v5

    if-eq v1, v8, :cond_7

    if-eq v1, v7, :cond_6

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_3

    :cond_6
    sub-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_3
    sub-float/2addr v2, v0

    move v9, v2

    goto :goto_4

    :cond_7
    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    move v9, v0

    :goto_4
    iput v8, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->O:I

    goto :goto_5

    :cond_8
    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v3, v9

    if-lez v5, :cond_9

    iput v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->O:I

    neg-float v9, v3

    goto :goto_5

    :cond_9
    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v0, v2

    if-gez v1, :cond_a

    sub-float v9, v2, v0

    iput v10, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->O:I

    goto :goto_5

    :cond_a
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->O:I

    :goto_5
    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->q:Landroid/graphics/Matrix;

    invoke-virtual {p0, v9, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return v10
.end method

.method public final q(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->r:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->r:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->r:Landroid/graphics/RectF;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final r()Landroid/graphics/Matrix;
    .locals 2

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->p:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->o:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->p:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->q:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->p:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final s(Landroid/widget/ImageView;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->j:Z

    return-void
.end method

.method public setBaseRotation(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    iput p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->Q:F

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->update()V

    iget p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->Q:F

    invoke-virtual {p0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setRotationBy(F)V

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->o()V

    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->q:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->r()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->w(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->p()Z

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Matrix cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaximumScale(F)V
    .locals 2

    iget v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->g:F

    iget v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->h:F

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/ezn;->a(FFF)V

    iput p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->i:F

    return-void
.end method

.method public setMediumScale(F)V
    .locals 2

    iget v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->g:F

    iget v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->i:F

    invoke-static {v0, p1, v1}, Lcom/sunia/HTREnginev2/ezn;->a(FFF)V

    iput p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->h:F

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 2

    iget v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->h:F

    iget v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->i:F

    invoke-static {p1, v0, v1}, Lcom/sunia/HTREnginev2/ezn;->a(FFF)V

    iput p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->g:F

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->w:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->m:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->x:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/github/chrisbanes/photoview/OnMatrixChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->t:Lcom/github/chrisbanes/photoview/OnMatrixChangedListener;

    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lcom/github/chrisbanes/photoview/OnOutsidePhotoTapListener;)V
    .locals 0

    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->v:Lcom/github/chrisbanes/photoview/OnOutsidePhotoTapListener;

    return-void
.end method

.method public setOnPhotoTapListener(Lcom/github/chrisbanes/photoview/OnPhotoTapListener;)V
    .locals 0

    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->u:Lcom/github/chrisbanes/photoview/OnPhotoTapListener;

    return-void
.end method

.method public setOnScaleChangeListener(Lcom/github/chrisbanes/photoview/OnScaleChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->y:Lcom/github/chrisbanes/photoview/OnScaleChangedListener;

    return-void
.end method

.method public setOnSingleFlingListener(Lcom/github/chrisbanes/photoview/OnSingleFlingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->z:Lcom/github/chrisbanes/photoview/OnSingleFlingListener;

    return-void
.end method

.method public setRotationBy(F)V
    .locals 2

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->q:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->o()V

    return-void
.end method

.method public setRotationTo(F)V
    .locals 2

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->q:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->o()V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setScale(FZ)V

    return-void
.end method

.method public setScale(FFFZ)V
    .locals 7

    .line 6
    iget v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->g:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->i:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    if-eqz p4, :cond_0

    .line 7
    iget-object p4, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->l:Landroid/widget/ImageView;

    new-instance v6, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$d;

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getScale()F

    move-result v2

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$d;-><init>(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;FFFF)V

    invoke-virtual {p4, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object p4, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->q:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 9
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->o()V

    :goto_0
    return-void

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Scale must be within the range of minScale and maxScale"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setScale(FZ)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->l:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->l:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 5
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    return-void
.end method

.method public setScaleLevels(FFF)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/sunia/HTREnginev2/ezn;->a(FFF)V

    iput p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->g:F

    iput p2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->h:F

    iput p3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->i:F

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    invoke-static {p1}, Lcom/sunia/HTREnginev2/ezn;->d(Landroid/widget/ImageView$ScaleType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->k0:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->k0:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setZoomInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->e:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .locals 0

    iput p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->f:I

    return-void
.end method

.method public setZoomable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->Z:Z

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->update()V

    return-void
.end method

.method public final t(Landroid/widget/ImageView;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public final u(Landroid/graphics/Matrix;I)F
    .locals 1

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->s:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->s:[F

    aget p0, p0, p2

    return p0
.end method

.method public update()V
    .locals 1

    iget-boolean v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->Z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->x(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->v()V

    :goto_0
    return-void
.end method

.method public final v()V
    .locals 1

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->q:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->Q:F

    invoke-virtual {p0, v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->setRotationBy(F)V

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->r()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->w(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->p()Z

    return-void
.end method

.method public final w(Landroid/graphics/Matrix;)V
    .locals 1

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->t:Lcom/github/chrisbanes/photoview/OnMatrixChangedListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->q(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->t:Lcom/github/chrisbanes/photoview/OnMatrixChangedListener;

    invoke-interface {p0, p1}, Lcom/github/chrisbanes/photoview/OnMatrixChangedListener;->onMatrixChanged(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public final x(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->t(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->s(Landroid/widget/ImageView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iget-object v3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->o:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    int-to-float v2, v2

    div-float v3, v0, v2

    int-to-float p1, p1

    div-float v4, v1, p1

    iget-object v5, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->k0:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_1

    iget-object v3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->o:Landroid/graphics/Matrix;

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    :cond_1
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v4, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->o:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v4, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->o:Landroid/graphics/Matrix;

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float/2addr p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_2
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v4, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->o:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v4, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->o:Landroid/graphics/Matrix;

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float/2addr p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_3
    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->Q:F

    float-to-int v0, v0

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_4

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v4, v4, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    :cond_4
    sget-object p1, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$c;->a:[I

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->k0:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->o:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->o:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->o:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->o:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->v()V

    return-void
.end method
