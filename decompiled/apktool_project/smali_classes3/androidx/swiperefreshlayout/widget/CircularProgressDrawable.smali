.class public Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;,
        Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$ProgressDrawableSize;
    }
.end annotation


# static fields
.field public static final DEFAULT:I = 0x1

.field public static final J:F = 0.01f

.field public static final LARGE:I = 0x0

.field public static final O:F = 0.20999998f

.field public static final k:Landroid/view/animation/Interpolator;

.field public static final l:Landroid/view/animation/Interpolator;

.field public static final m:F = 11.0f

.field public static final n:F = 3.0f

.field public static final o:I = 0xc

.field public static final p:I = 0x6

.field public static final q:F = 7.5f

.field public static final r:F = 2.5f

.field public static final s:I = 0xa

.field public static final t:I = 0x5

.field public static final u:[I

.field public static final v:F = 0.75f

.field public static final w:F = 0.5f

.field public static final x:I = 0x534

.field public static final y:F = 216.0f

.field public static final z:F = 0.8f


# instance fields
.field public final e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

.field public f:F

.field public g:Landroid/content/res/Resources;

.field public h:Landroid/animation/Animator;

.field public i:F

.field public j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->k:Landroid/view/animation/Interpolator;

    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->l:Landroid/view/animation/Interpolator;

    const/high16 v0, -0x1000000

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->u:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->g:Landroid/content/res/Resources;

    new-instance p1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-direct {p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;-><init>()V

    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    sget-object v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->u:[I

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->F([I)V

    const/high16 p1, 0x40200000    # 2.5f

    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->g()V

    return-void
.end method


# virtual methods
.method public final a(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->h(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;)V

    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->r()F

    move-result p0

    const v0, 0x3f4ccccd    # 0.8f

    div-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float p0, v0

    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->s()F

    move-result v0

    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->q()F

    move-result v1

    const v2, 0x3c23d70a    # 0.01f

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->s()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->J(F)V

    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->q()F

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->G(F)V

    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->r()F

    move-result v0

    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->r()F

    move-result v1

    sub-float/2addr p0, v1

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->H(F)V

    return-void
.end method

.method public b(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;Z)V
    .locals 7

    iget-boolean v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->a(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;)V

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    if-eqz p3, :cond_3

    :cond_1
    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->r()F

    move-result p3

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v2, p1, v1

    const v3, 0x3c23d70a    # 0.01f

    const v4, 0x3f4a3d71    # 0.79f

    if-gez v2, :cond_2

    div-float v0, p1, v1

    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->s()F

    move-result v1

    sget-object v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->l:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    add-float/2addr v0, v1

    goto :goto_0

    :cond_2
    sub-float v2, p1, v1

    div-float/2addr v2, v1

    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->s()F

    move-result v1

    add-float/2addr v1, v4

    sget-object v5, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->l:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    sub-float v0, v1, v0

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_0
    const v2, 0x3e570a3c    # 0.20999998f

    mul-float/2addr v2, p1

    add-float/2addr p3, v2

    iget v2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->i:F

    add-float/2addr p1, v2

    const/high16 v2, 0x43580000    # 216.0f

    mul-float/2addr p1, v2

    invoke-virtual {p2, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->J(F)V

    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->G(F)V

    invoke-virtual {p2, p3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->H(F)V

    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final c(FII)I
    .locals 5

    shr-int/lit8 p0, p2, 0x18

    and-int/lit16 p0, p0, 0xff

    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v2, p3, 0x18

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p3, 0x10

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, p3, 0x8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 p3, p3, 0xff

    sub-int/2addr v2, p0

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr p0, v2

    shl-int/lit8 p0, p0, 0x18

    sub-int/2addr v3, v0

    int-to-float v2, v3

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    sub-int/2addr v4, v1

    int-to-float v0, v4

    mul-float/2addr v0, p1

    float-to-int v0, v0

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x8

    or-int/2addr p0, v0

    sub-int/2addr p3, p2

    int-to-float p3, p3

    mul-float/2addr p1, p3

    float-to-int p1, p1

    add-int/2addr p2, p1

    or-int/2addr p0, p2

    return p0
.end method

.method public final d()F
    .locals 0

    iget p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->f:F

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->f:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {p0, p1, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final e(F)V
    .locals 0

    iput p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->f:F

    return-void
.end method

.method public final f(FFFF)V
    .locals 1

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->g:Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p0

    invoke-virtual {v0, p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->L(F)V

    mul-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->B(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->E(I)V

    mul-float/2addr p3, p0

    mul-float/2addr p4, p0

    invoke-virtual {v0, p3, p4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->y(FF)V

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$a;

    invoke-direct {v2, p0, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$a;-><init>(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    sget-object v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->k:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$b;

    invoke-direct {v2, p0, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$b;-><init>(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->h:Landroid/animation/Animator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getAlpha()I
    .locals 0

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->c()I

    move-result p0

    return p0
.end method

.method public getArrowEnabled()Z
    .locals 0

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->n()Z

    move-result p0

    return p0
.end method

.method public getArrowHeight()F
    .locals 0

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->d()F

    move-result p0

    return p0
.end method

.method public getArrowScale()F
    .locals 0

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->e()F

    move-result p0

    return p0
.end method

.method public getArrowWidth()F
    .locals 0

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->f()F

    move-result p0

    return p0
.end method

.method public getBackgroundColor()I
    .locals 0

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->g()I

    move-result p0

    return p0
.end method

.method public getCenterRadius()F
    .locals 0

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->h()F

    move-result p0

    return p0
.end method

.method public getColorSchemeColors()[I
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->i()[I

    move-result-object p0

    return-object p0
.end method

.method public getEndTrim()F
    .locals 0

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->j()F

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getProgressRotation()F
    .locals 0

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->m()F

    move-result p0

    return p0
.end method

.method public getStartTrim()F
    .locals 0

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->o()F

    move-result p0

    return p0
.end method

.method public getStrokeCap()Landroid/graphics/Paint$Cap;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->t()Landroid/graphics/Paint$Cap;

    move-result-object p0

    return-object p0
.end method

.method public getStrokeWidth()F
    .locals 0

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->u()F

    move-result p0

    return p0
.end method

.method public h(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;)V
    .locals 2

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    sub-float/2addr p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    div-float/2addr p1, v0

    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->p()I

    move-result v0

    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->k()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->c(FII)I

    move-result p0

    invoke-virtual {p2, p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->C(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->p()I

    move-result p0

    invoke-virtual {p2, p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->C(I)V

    :goto_0
    return-void
.end method

.method public isRunning()Z
    .locals 0

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->h:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    return p0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->x(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setArrowDimensions(FF)V
    .locals 1

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {v0, p1, p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->y(FF)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setArrowEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->I(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setArrowScale(F)V
    .locals 1

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->z(F)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->A(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setCenterRadius(F)V
    .locals 1

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->B(F)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->D(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->F([I)V

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->E(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setProgressRotation(F)V
    .locals 1

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->H(F)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setStartEndTrim(FF)V
    .locals 1

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->J(F)V

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->G(F)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint$Cap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->K(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->L(F)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setStyle(I)V
    .locals 3

    if-nez p1, :cond_0

    const/high16 p1, 0x41400000    # 12.0f

    const/high16 v0, 0x40c00000    # 6.0f

    const/high16 v1, 0x41300000    # 11.0f

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {p0, v1, v2, p1, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->f(FFFF)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x41200000    # 10.0f

    const/high16 v0, 0x40a00000    # 5.0f

    const/high16 v1, 0x40f00000    # 7.5f

    const/high16 v2, 0x40200000    # 2.5f

    invoke-virtual {p0, v1, v2, p1, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->f(FFFF)V

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->h:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->M()V

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->j()F

    move-result v0

    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->o()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->j:Z

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->h:Landroid/animation/Animator;

    const-wide/16 v1, 0x29a

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->h:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->E(I)V

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->w()V

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->h:Landroid/animation/Animator;

    const-wide/16 v1, 0x534

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->h:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->h:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e(F)V

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->I(Z)V

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->E(I)V

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$c;->w()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
