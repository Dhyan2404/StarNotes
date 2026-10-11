.class public Lcom/onegravity/colorpicker/ColorWheelView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onegravity/colorpicker/ColorWheelView$OnColorSelectedListener;
    }
.end annotation


# static fields
.field public static final F0:Ljava/lang/String; = "parent"

.field public static final G0:Ljava/lang/String; = "angle"

.field public static final H0:Ljava/lang/String; = "color"

.field public static final I0:Ljava/lang/String; = "showColor"

.field public static final J0:[I


# instance fields
.field public A0:Lcom/onegravity/colorpicker/ColorWheelView$OnColorSelectedListener;

.field public B0:I

.field public C0:I

.field public D0:Lcom/onegravity/utils/AlphaPatternDrawable;

.field public E0:Z

.field public J:F

.field public O:F

.field public Q:F

.field public e:Landroid/graphics/Paint;

.field public f:Landroid/graphics/Paint;

.field public g:Landroid/graphics/Paint;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public k0:Landroid/graphics/Paint;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public final q:Landroid/graphics/RectF;

.field public q0:Landroid/graphics/Paint;

.field public final r:Landroid/graphics/RectF;

.field public final s:Landroid/graphics/Rect;

.field public final t:Landroid/graphics/Path;

.field public t0:Landroid/graphics/Paint;

.field public u:Z

.field public final u0:[F

.field public v:I

.field public v0:Lcom/onegravity/colorpicker/SVBar;

.field public w:I

.field public w0:Lcom/onegravity/colorpicker/OpacityBar;

.field public x:Z

.field public x0:Lcom/onegravity/colorpicker/SaturationBar;

.field public y:I

.field public y0:Lcom/onegravity/colorpicker/ValueBar;

.field public z:F

.field public z0:Lcom/onegravity/colorpicker/OnColorChangedListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/onegravity/colorpicker/ColorWheelView;->J0:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x10000
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->q:Landroid/graphics/RectF;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->r:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->s:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->t:Landroid/graphics/Path;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->u:Z

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 7
    iput-object v1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->u0:[F

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->v0:Lcom/onegravity/colorpicker/SVBar;

    .line 9
    iput-object v1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->w0:Lcom/onegravity/colorpicker/OpacityBar;

    .line 10
    iput-object v1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->x0:Lcom/onegravity/colorpicker/SaturationBar;

    .line 11
    iput-object v1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->y0:Lcom/onegravity/colorpicker/ValueBar;

    .line 12
    invoke-virtual {p0, p1, v1, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->f(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->q:Landroid/graphics/RectF;

    .line 15
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->r:Landroid/graphics/RectF;

    .line 16
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->s:Landroid/graphics/Rect;

    .line 17
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->t:Landroid/graphics/Path;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->u:Z

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 19
    iput-object v1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->u0:[F

    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->v0:Lcom/onegravity/colorpicker/SVBar;

    .line 21
    iput-object v1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->w0:Lcom/onegravity/colorpicker/OpacityBar;

    .line 22
    iput-object v1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->x0:Lcom/onegravity/colorpicker/SaturationBar;

    .line 23
    iput-object v1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->y0:Lcom/onegravity/colorpicker/ValueBar;

    .line 24
    invoke-virtual {p0, p1, p2, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->f(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->q:Landroid/graphics/RectF;

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->r:Landroid/graphics/RectF;

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->s:Landroid/graphics/Rect;

    .line 29
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->t:Landroid/graphics/Path;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->u:Z

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 31
    iput-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->u0:[F

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->v0:Lcom/onegravity/colorpicker/SVBar;

    .line 33
    iput-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->w0:Lcom/onegravity/colorpicker/OpacityBar;

    .line 34
    iput-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->x0:Lcom/onegravity/colorpicker/SaturationBar;

    .line 35
    iput-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->y0:Lcom/onegravity/colorpicker/ValueBar;

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/onegravity/colorpicker/ColorWheelView;->f(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(IIF)I
    .locals 0

    sub-int/2addr p2, p1

    int-to-float p0, p2

    mul-float/2addr p3, p0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public addOpacityBar(Lcom/onegravity/colorpicker/OpacityBar;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->w0:Lcom/onegravity/colorpicker/OpacityBar;

    invoke-virtual {p1, p0}, Lcom/onegravity/colorpicker/OpacityBar;->setColorPicker(Lcom/onegravity/colorpicker/ColorWheelView;)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->w0:Lcom/onegravity/colorpicker/OpacityBar;

    iget p0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->v:I

    invoke-virtual {p1, p0}, Lcom/onegravity/colorpicker/OpacityBar;->setColor(I)V

    return-void
.end method

.method public addSVBar(Lcom/onegravity/colorpicker/SVBar;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->v0:Lcom/onegravity/colorpicker/SVBar;

    invoke-virtual {p1, p0}, Lcom/onegravity/colorpicker/SVBar;->setColorPicker(Lcom/onegravity/colorpicker/ColorWheelView;)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->v0:Lcom/onegravity/colorpicker/SVBar;

    iget p0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->v:I

    invoke-virtual {p1, p0}, Lcom/onegravity/colorpicker/SVBar;->setColor(I)V

    return-void
.end method

.method public addSaturationBar(Lcom/onegravity/colorpicker/SaturationBar;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->x0:Lcom/onegravity/colorpicker/SaturationBar;

    invoke-virtual {p1, p0}, Lcom/onegravity/colorpicker/SaturationBar;->setColorPicker(Lcom/onegravity/colorpicker/ColorWheelView;)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->x0:Lcom/onegravity/colorpicker/SaturationBar;

    iget p0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->v:I

    invoke-virtual {p1, p0}, Lcom/onegravity/colorpicker/SaturationBar;->setColor(I)V

    return-void
.end method

.method public addValueBar(Lcom/onegravity/colorpicker/ValueBar;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->y0:Lcom/onegravity/colorpicker/ValueBar;

    invoke-virtual {p1, p0}, Lcom/onegravity/colorpicker/ValueBar;->setColorPicker(Lcom/onegravity/colorpicker/ColorWheelView;)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->y0:Lcom/onegravity/colorpicker/ValueBar;

    iget p0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->v:I

    invoke-virtual {p1, p0}, Lcom/onegravity/colorpicker/ValueBar;->setColor(I)V

    return-void
.end method

.method public final b(F)I
    .locals 6

    float-to-double v0, p1

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v0, v2

    double-to-float p1, v0

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    add-float/2addr p1, v2

    :cond_0
    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    sget-object p1, Lcom/onegravity/colorpicker/ColorWheelView;->J0:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    iput p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->v:I

    return p1

    :cond_1
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_2

    sget-object p1, Lcom/onegravity/colorpicker/ColorWheelView;->J0:[I

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->v:I

    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    aget p0, p1, p0

    return p0

    :cond_2
    sget-object v0, Lcom/onegravity/colorpicker/ColorWheelView;->J0:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    aget v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-virtual {p0, v1, v3, p1}, Lcom/onegravity/colorpicker/ColorWheelView;->a(IIF)I

    move-result v1

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-virtual {p0, v3, v4, p1}, Lcom/onegravity/colorpicker/ColorWheelView;->a(IIF)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-virtual {p0, v4, v5, p1}, Lcom/onegravity/colorpicker/ColorWheelView;->a(IIF)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-virtual {p0, v2, v0, p1}, Lcom/onegravity/colorpicker/ColorWheelView;->a(IIF)I

    move-result p1

    invoke-static {v1, v3, v4, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->v:I

    invoke-static {v1, v3, v4, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public final c(F)[F
    .locals 6

    iget v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->i:I

    int-to-double v0, v0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    double-to-float p1, v0

    iget p0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->i:I

    int-to-double v0, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float p0, v0

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p0, v0, p1

    return-object v0
.end method

.method public changeOpacityBarColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->w0:Lcom/onegravity/colorpicker/OpacityBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onegravity/colorpicker/OpacityBar;->setColor(I)V

    :cond_0
    return-void
.end method

.method public changeSaturationBarColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->x0:Lcom/onegravity/colorpicker/SaturationBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onegravity/colorpicker/SaturationBar;->setColor(I)V

    :cond_0
    return-void
.end method

.method public changeValueBarColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->y0:Lcom/onegravity/colorpicker/ValueBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onegravity/colorpicker/ValueBar;->setColor(I)V

    :cond_0
    return-void
.end method

.method public final d(I)F
    .locals 0

    const/4 p0, 0x3

    new-array p0, p0, [F

    invoke-static {p1, p0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x0

    aget p0, p0, p1

    neg-float p0, p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public final e()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public final f(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/onegravity/colorpicker/ColorWheelView;->e()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/onegravity/colorpicker/R$styleable;->ColorWheelView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/onegravity/colorpicker/R$styleable;->ColorWheelView_color_wheel_enabled:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->E0:Z

    sget v0, Lcom/onegravity/colorpicker/R$styleable;->ColorWheelView_color_wheel_thickness:I

    sget v3, Lcom/onegravity/colorpicker/R$dimen;->color_wheel_thickness:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->h:I

    sget v0, Lcom/onegravity/colorpicker/R$styleable;->ColorWheelView_color_wheel_radius:I

    sget v3, Lcom/onegravity/colorpicker/R$dimen;->color_wheel_radius:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->i:I

    iput v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->j:I

    sget v0, Lcom/onegravity/colorpicker/R$styleable;->ColorWheelView_color_center_radius:I

    sget v3, Lcom/onegravity/colorpicker/R$dimen;->color_center_radius:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->k:I

    iput v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->l:I

    sget v0, Lcom/onegravity/colorpicker/R$styleable;->ColorWheelView_color_center_halo_radius:I

    sget v3, Lcom/onegravity/colorpicker/R$dimen;->color_center_halo_radius:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->m:I

    iput v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->n:I

    sget v0, Lcom/onegravity/colorpicker/R$styleable;->ColorWheelView_color_pointer_radius:I

    sget v3, Lcom/onegravity/colorpicker/R$dimen;->color_pointer_radius:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->o:I

    sget v0, Lcom/onegravity/colorpicker/R$styleable;->ColorWheelView_color_pointer_halo_radius:I

    sget v3, Lcom/onegravity/colorpicker/R$dimen;->color_pointer_halo_radius:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/onegravity/colorpicker/ColorWheelView;->p:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const p2, -0x4036f025

    iput p2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->Q:F

    new-instance p2, Landroid/graphics/SweepGradient;

    sget-object p3, Lcom/onegravity/colorpicker/ColorWheelView;->J0:[I

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-direct {p2, v3, v3, p3, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/onegravity/colorpicker/ColorWheelView;->e:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->e:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->e:Landroid/graphics/Paint;

    iget p3, p0, Lcom/onegravity/colorpicker/ColorWheelView;->h:I

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->f:Landroid/graphics/Paint;

    const/high16 p3, -0x1000000

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->f:Landroid/graphics/Paint;

    const/16 v0, 0x50

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->g:Landroid/graphics/Paint;

    iget v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->Q:F

    invoke-virtual {p0, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->b(F)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->q0:Landroid/graphics/Paint;

    iget v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->Q:F

    invoke-virtual {p0, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->b(F)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->q0:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->k0:Landroid/graphics/Paint;

    iget v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->Q:F

    invoke-virtual {p0, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->b(F)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->k0:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->t0:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->t0:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget p2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->Q:F

    invoke-virtual {p0, p2}, Lcom/onegravity/colorpicker/ColorWheelView;->b(F)I

    move-result p2

    iput p2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->y:I

    iget p2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->Q:F

    invoke-virtual {p0, p2}, Lcom/onegravity/colorpicker/ColorWheelView;->b(F)I

    move-result p2

    iput p2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->w:I

    iput-boolean v1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->x:Z

    new-instance p2, Lcom/onegravity/utils/AlphaPatternDrawable;

    invoke-direct {p2, p1}, Lcom/onegravity/utils/AlphaPatternDrawable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->D0:Lcom/onegravity/utils/AlphaPatternDrawable;

    return-void
.end method

.method public getColor()I
    .locals 0

    iget p0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->y:I

    return p0
.end method

.method public getOldCenterColor()I
    .locals 0

    iget p0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->w:I

    return p0
.end method

.method public getOnColorChangedListener()Lcom/onegravity/colorpicker/OnColorChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->z0:Lcom/onegravity/colorpicker/OnColorChangedListener;

    return-object p0
.end method

.method public getOnColorSelectedListener()Lcom/onegravity/colorpicker/ColorWheelView$OnColorSelectedListener;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->A0:Lcom/onegravity/colorpicker/ColorWheelView$OnColorSelectedListener;

    return-object p0
.end method

.method public getShowOldCenterColor()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->x:Z

    return p0
.end method

.method public hasOpacityBar()Z
    .locals 0

    iget-object p0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->w0:Lcom/onegravity/colorpicker/OpacityBar;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasSVBar()Z
    .locals 0

    iget-object p0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->v0:Lcom/onegravity/colorpicker/SVBar;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasSaturationBar()Z
    .locals 0

    iget-object p0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->x0:Lcom/onegravity/colorpicker/SaturationBar;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasValueBar()Z
    .locals 0

    iget-object p0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->y0:Lcom/onegravity/colorpicker/ValueBar;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    iget v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->z:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->E0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->q:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->Q:F

    invoke-virtual {p0, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->c(F)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    iget v5, p0, Lcom/onegravity/colorpicker/ColorWheelView;->p:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/onegravity/colorpicker/ColorWheelView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    aget v1, v0, v1

    aget v0, v0, v3

    iget v2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->o:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/onegravity/colorpicker/ColorWheelView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->m:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->t0:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->D0:Lcom/onegravity/utils/AlphaPatternDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->t:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->D0:Lcom/onegravity/utils/AlphaPatternDrawable;

    iget-object v1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->s:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->D0:Lcom/onegravity/utils/AlphaPatternDrawable;

    invoke-virtual {v0, p1}, Lcom/onegravity/utils/AlphaPatternDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    iget-boolean v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->x:Z

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->r:Landroid/graphics/RectF;

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/onegravity/colorpicker/ColorWheelView;->k0:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v8, p0, Lcom/onegravity/colorpicker/ColorWheelView;->r:Landroid/graphics/RectF;

    const/high16 v9, 0x43870000    # 270.0f

    const/high16 v10, 0x43340000    # 180.0f

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/onegravity/colorpicker/ColorWheelView;->q0:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->r:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/onegravity/colorpicker/ColorWheelView;->q0:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    iget v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->j:I

    iget v1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->p:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-ne v2, v4, :cond_2

    move v0, p2

    goto :goto_1

    :cond_2
    if-ne v2, v3, :cond_3

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_3
    :goto_1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/lit8 p2, p1, 0x2

    iget v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->h:I

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->p:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->i:I

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->q:Landroid/graphics/RectF;

    neg-int v1, p2

    int-to-float v1, v1

    neg-int v2, p2

    int-to-float v2, v2

    int-to-float v3, p2

    int-to-float p2, p2

    invoke-virtual {v0, v1, v2, v3, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget p2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->l:I

    int-to-float p2, p2

    iget v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->i:I

    int-to-float v1, v0

    iget v2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->j:I

    int-to-float v3, v2

    div-float/2addr v1, v3

    mul-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->k:I

    iget v1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->n:I

    int-to-float v1, v1

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->m:I

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->r:Landroid/graphics/RectF;

    neg-int v1, p2

    int-to-float v1, v1

    neg-int v2, p2

    int-to-float v2, v2

    int-to-float v3, p2

    int-to-float p2, p2

    invoke-virtual {v0, v1, v2, v3, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->s:Landroid/graphics/Rect;

    iget v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->k:I

    neg-int v1, v0

    neg-int v2, v0

    invoke-virtual {p2, v1, v2, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->t:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    iget-object p2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->t:Landroid/graphics/Path;

    iget v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->k:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v3, v0, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-boolean p2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->E0:Z

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    iget p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->k:I

    mul-int/lit8 p1, p1, 0x2

    :goto_2
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    int-to-float p1, p1

    mul-float/2addr p1, v1

    iput p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->z:F

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "parent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "angle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->Q:F

    const-string v0, "color"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->setOldCenterColor(I)V

    const-string v0, "showColor"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->x:Z

    iget p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->Q:F

    invoke-virtual {p0, p1}, Lcom/onegravity/colorpicker/ColorWheelView;->b(F)I

    move-result p1

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, p1}, Lcom/onegravity/colorpicker/ColorWheelView;->setNewCenterColor(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "parent"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "angle"

    iget v2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->Q:F

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "color"

    iget v2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->w:I

    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "showColor"

    iget-boolean p0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->x:Z

    invoke-virtual {v1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->E0:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->z:F

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/onegravity/colorpicker/ColorWheelView;->z:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_a

    if-eq p1, v1, :cond_8

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->A0:Lcom/onegravity/colorpicker/ColorWheelView$OnColorSelectedListener;

    if-eqz p1, :cond_c

    iget v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->y:I

    iget v2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->C0:I

    if-eq v0, v2, :cond_c

    invoke-interface {p1, v0}, Lcom/onegravity/colorpicker/ColorWheelView$OnColorSelectedListener;->onColorSelected(I)V

    iget p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->y:I

    iput p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->C0:I

    goto/16 :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->u:Z

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->O:F

    sub-float/2addr v2, p1

    float-to-double v2, v2

    iget p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->J:F

    sub-float/2addr v0, p1

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float p1, v2

    iput p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->Q:F

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->g:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/onegravity/colorpicker/ColorWheelView;->b(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->Q:F

    invoke-virtual {p0, p1}, Lcom/onegravity/colorpicker/ColorWheelView;->b(F)I

    move-result p1

    iput p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->y:I

    invoke-virtual {p0, p1}, Lcom/onegravity/colorpicker/ColorWheelView;->setNewCenterColor(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->w0:Lcom/onegravity/colorpicker/OpacityBar;

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->v:I

    invoke-virtual {p1, v0}, Lcom/onegravity/colorpicker/OpacityBar;->setColor(I)V

    :cond_3
    iget-object p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->y0:Lcom/onegravity/colorpicker/ValueBar;

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->v:I

    invoke-virtual {p1, v0}, Lcom/onegravity/colorpicker/ValueBar;->setColor(I)V

    :cond_4
    iget-object p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->x0:Lcom/onegravity/colorpicker/SaturationBar;

    if-eqz p1, :cond_5

    iget v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->v:I

    invoke-virtual {p1, v0}, Lcom/onegravity/colorpicker/SaturationBar;->setColor(I)V

    :cond_5
    iget-object p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->v0:Lcom/onegravity/colorpicker/SVBar;

    if-eqz p1, :cond_6

    iget v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->v:I

    invoke-virtual {p1, v0}, Lcom/onegravity/colorpicker/SVBar;->setColor(I)V

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v3

    :cond_8
    iput-boolean v3, p0, Lcom/onegravity/colorpicker/ColorWheelView;->u:Z

    iget-object p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->t0:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->A0:Lcom/onegravity/colorpicker/ColorWheelView$OnColorSelectedListener;

    if-eqz p1, :cond_9

    iget v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->y:I

    iget v2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->C0:I

    if-eq v0, v2, :cond_9

    invoke-interface {p1, v0}, Lcom/onegravity/colorpicker/ColorWheelView$OnColorSelectedListener;->onColorSelected(I)V

    iget p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->y:I

    iput p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->C0:I

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_a
    iget p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->Q:F

    invoke-virtual {p0, p1}, Lcom/onegravity/colorpicker/ColorWheelView;->c(F)[F

    move-result-object p1

    aget v4, p1, v3

    iget v5, p0, Lcom/onegravity/colorpicker/ColorWheelView;->p:I

    int-to-float v6, v5

    sub-float v6, v4, v6

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_b

    int-to-float v6, v5

    add-float/2addr v6, v4

    cmpg-float v6, v0, v6

    if-gtz v6, :cond_b

    aget p1, p1, v1

    int-to-float v6, v5

    sub-float v6, p1, v6

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_b

    int-to-float v5, v5

    add-float/2addr v5, p1

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_b

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->J:F

    sub-float/2addr v2, p1

    iput v2, p0, Lcom/onegravity/colorpicker/ColorWheelView;->O:F

    iput-boolean v1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->u:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_b
    iget p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->k:I

    neg-int v4, p1

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_d

    int-to-float v4, p1

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_d

    neg-int v0, p1

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_d

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gtz p1, :cond_d

    iget-boolean p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->x:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->t0:Landroid/graphics/Paint;

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/onegravity/colorpicker/ColorWheelView;->getOldCenterColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onegravity/colorpicker/ColorWheelView;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_c
    :goto_0
    return v1

    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v3
.end method

.method public setColor(I)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/onegravity/colorpicker/ColorWheelView;->d(I)F

    move-result v0

    iput v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->Q:F

    iget-object v1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->g:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->b(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->q0:Landroid/graphics/Paint;

    iget v1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->Q:F

    invoke-virtual {p0, v1}, Lcom/onegravity/colorpicker/ColorWheelView;->b(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->w0:Lcom/onegravity/colorpicker/OpacityBar;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->v:I

    invoke-virtual {v0, v1}, Lcom/onegravity/colorpicker/OpacityBar;->setColor(I)V

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->w0:Lcom/onegravity/colorpicker/OpacityBar;

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onegravity/colorpicker/OpacityBar;->setOpacity(I)V

    :cond_0
    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->v0:Lcom/onegravity/colorpicker/SVBar;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->u0:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->v0:Lcom/onegravity/colorpicker/SVBar;

    iget v3, p0, Lcom/onegravity/colorpicker/ColorWheelView;->v:I

    invoke-virtual {v0, v3}, Lcom/onegravity/colorpicker/SVBar;->setColor(I)V

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->u0:[F

    aget v3, v0, v1

    aget v0, v0, v2

    cmpg-float v4, v3, v0

    if-gez v4, :cond_1

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->v0:Lcom/onegravity/colorpicker/SVBar;

    invoke-virtual {v0, v3}, Lcom/onegravity/colorpicker/SVBar;->setSaturation(F)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/onegravity/colorpicker/ColorWheelView;->v0:Lcom/onegravity/colorpicker/SVBar;

    invoke-virtual {v3, v0}, Lcom/onegravity/colorpicker/SVBar;->setValue(F)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->x0:Lcom/onegravity/colorpicker/SaturationBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->u0:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->x0:Lcom/onegravity/colorpicker/SaturationBar;

    iget v3, p0, Lcom/onegravity/colorpicker/ColorWheelView;->v:I

    invoke-virtual {v0, v3}, Lcom/onegravity/colorpicker/SaturationBar;->setColor(I)V

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->x0:Lcom/onegravity/colorpicker/SaturationBar;

    iget-object v3, p0, Lcom/onegravity/colorpicker/ColorWheelView;->u0:[F

    aget v1, v3, v1

    invoke-virtual {v0, v1}, Lcom/onegravity/colorpicker/SaturationBar;->setSaturation(F)V

    :cond_3
    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->y0:Lcom/onegravity/colorpicker/ValueBar;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->x0:Lcom/onegravity/colorpicker/SaturationBar;

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->u0:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->y0:Lcom/onegravity/colorpicker/ValueBar;

    iget v1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->v:I

    invoke-virtual {v0, v1}, Lcom/onegravity/colorpicker/ValueBar;->setColor(I)V

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->y0:Lcom/onegravity/colorpicker/ValueBar;

    iget-object v1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->u0:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/onegravity/colorpicker/ValueBar;->setValue(F)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->u0:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->y0:Lcom/onegravity/colorpicker/ValueBar;

    iget-object v1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->u0:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/onegravity/colorpicker/ValueBar;->setValue(F)V

    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lcom/onegravity/colorpicker/ColorWheelView;->setNewCenterColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setNewCenterColor(I)V
    .locals 2

    iput p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->y:I

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->q0:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->w:I

    if-nez v0, :cond_0

    iput p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->w:I

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->k0:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->z0:Lcom/onegravity/colorpicker/OnColorChangedListener;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->B0:I

    if-eq p1, v1, :cond_1

    invoke-interface {v0, p1}, Lcom/onegravity/colorpicker/OnColorChangedListener;->onColorChanged(I)V

    iput p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->B0:I

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOldCenterColor(I)V
    .locals 1

    iput p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->w:I

    iget-object v0, p0, Lcom/onegravity/colorpicker/ColorWheelView;->k0:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnColorChangedListener(Lcom/onegravity/colorpicker/OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->z0:Lcom/onegravity/colorpicker/OnColorChangedListener;

    return-void
.end method

.method public setOnColorSelectedListener(Lcom/onegravity/colorpicker/ColorWheelView$OnColorSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->A0:Lcom/onegravity/colorpicker/ColorWheelView$OnColorSelectedListener;

    return-void
.end method

.method public setShowOldCenterColor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onegravity/colorpicker/ColorWheelView;->x:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
