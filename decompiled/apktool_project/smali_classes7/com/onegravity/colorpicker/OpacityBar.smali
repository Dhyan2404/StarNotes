.class public Lcom/onegravity/colorpicker/OpacityBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onegravity/colorpicker/OpacityBar$OnOpacityChangedListener;
    }
.end annotation


# static fields
.field public static final J:Ljava/lang/String; = "opacity"

.field public static final O:Ljava/lang/String; = "orientation"

.field public static final Q:Z = true

.field public static final k0:Z = false

.field public static final q0:Z = true

.field public static final y:Ljava/lang/String; = "parent"

.field public static final z:Ljava/lang/String; = "color"


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Landroid/graphics/Paint;

.field public l:Landroid/graphics/Paint;

.field public m:Landroid/graphics/Paint;

.field public n:Landroid/graphics/RectF;

.field public o:Landroid/graphics/Shader;

.field public p:Z

.field public q:I

.field public r:[F

.field public s:F

.field public t:F

.field public u:Lcom/onegravity/colorpicker/OpacityBar$OnOpacityChangedListener;

.field public v:I

.field public w:Lcom/onegravity/colorpicker/ColorWheelView;

.field public x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->n:Landroid/graphics/RectF;

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 3
    iput-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->r:[F

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->w:Lcom/onegravity/colorpicker/ColorWheelView;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/onegravity/colorpicker/OpacityBar;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->n:Landroid/graphics/RectF;

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 8
    iput-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->r:[F

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->w:Lcom/onegravity/colorpicker/ColorWheelView;

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p2, p1}, Lcom/onegravity/colorpicker/OpacityBar;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->n:Landroid/graphics/RectF;

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 13
    iput-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->r:[F

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->w:Lcom/onegravity/colorpicker/ColorWheelView;

    .line 15
    invoke-virtual {p0, p2, p3}, Lcom/onegravity/colorpicker/OpacityBar;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->i:I

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/onegravity/colorpicker/OpacityBar;->f:I

    if-le p1, v1, :cond_1

    move p1, v1

    :cond_1
    :goto_0
    iget v1, p0, Lcom/onegravity/colorpicker/OpacityBar;->s:F

    int-to-float p1, p1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v1, p0, Lcom/onegravity/colorpicker/OpacityBar;->r:[F

    invoke-static {p1, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    iput p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->q:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    const/16 v1, 0xfa

    if-le p1, v1, :cond_2

    iget-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->r:[F

    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    iput p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->q:I

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->q:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    const/4 v1, 0x5

    if-ge p1, v1, :cond_3

    iput v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->q:I

    :cond_3
    :goto_1
    return-void
.end method

.method public final b(Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/onegravity/colorpicker/R$styleable;->ColorBars:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/onegravity/colorpicker/R$styleable;->ColorBars_bar_thickness:I

    sget v1, Lcom/onegravity/colorpicker/R$dimen;->bar_thickness:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->e:I

    sget v0, Lcom/onegravity/colorpicker/R$styleable;->ColorBars_bar_length:I

    sget v1, Lcom/onegravity/colorpicker/R$dimen;->bar_length:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->f:I

    iput v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->g:I

    sget v0, Lcom/onegravity/colorpicker/R$styleable;->ColorBars_bar_pointer_radius:I

    sget v1, Lcom/onegravity/colorpicker/R$dimen;->bar_pointer_radius:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->h:I

    sget v0, Lcom/onegravity/colorpicker/R$styleable;->ColorBars_bar_pointer_halo_radius:I

    sget v1, Lcom/onegravity/colorpicker/R$dimen;->bar_pointer_halo_radius:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/onegravity/colorpicker/OpacityBar;->i:I

    sget p2, Lcom/onegravity/colorpicker/R$styleable;->ColorBars_bar_orientation_horizontal:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/onegravity/colorpicker/OpacityBar;->x:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->k:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/onegravity/colorpicker/OpacityBar;->o:Landroid/graphics/Shader;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->f:I

    iget p2, p0, Lcom/onegravity/colorpicker/OpacityBar;->i:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->j:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->m:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->m:Landroid/graphics/Paint;

    const/16 p2, 0x50

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->l:Landroid/graphics/Paint;

    const p2, -0x7e0100

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->f:I

    int-to-float p2, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float p2, v0, p2

    iput p2, p0, Lcom/onegravity/colorpicker/OpacityBar;->s:F

    int-to-float p1, p1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->t:F

    return-void
.end method

.method public getColor()I
    .locals 0

    iget p0, p0, Lcom/onegravity/colorpicker/OpacityBar;->q:I

    return p0
.end method

.method public getOnOpacityChangedListener()Lcom/onegravity/colorpicker/OpacityBar$OnOpacityChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/colorpicker/OpacityBar;->u:Lcom/onegravity/colorpicker/OpacityBar$OnOpacityChangedListener;

    return-object p0
.end method

.method public getOpacity()I
    .locals 2

    iget v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->s:F

    iget v1, p0, Lcom/onegravity/colorpicker/OpacityBar;->j:I

    iget p0, p0, Lcom/onegravity/colorpicker/OpacityBar;->i:I

    sub-int/2addr v1, p0

    int-to-float p0, v1

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/4 v0, 0x5

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0xfa

    if-le p0, v0, :cond_1

    const/16 p0, 0xff

    :cond_1
    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->n:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onegravity/colorpicker/OpacityBar;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->x:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->j:I

    iget v1, p0, Lcom/onegravity/colorpicker/OpacityBar;->i:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->i:I

    iget v1, p0, Lcom/onegravity/colorpicker/OpacityBar;->j:I

    :goto_0
    int-to-float v0, v0

    int-to-float v1, v1

    iget v2, p0, Lcom/onegravity/colorpicker/OpacityBar;->i:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/onegravity/colorpicker/OpacityBar;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v2, p0, Lcom/onegravity/colorpicker/OpacityBar;->h:I

    int-to-float v2, v2

    iget-object p0, p0, Lcom/onegravity/colorpicker/OpacityBar;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    iget v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->g:I

    iget v1, p0, Lcom/onegravity/colorpicker/OpacityBar;->i:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/onegravity/colorpicker/OpacityBar;->x:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne p2, v1, :cond_1

    move v0, p1

    goto :goto_1

    :cond_1
    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    :goto_1
    iget p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->i:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->f:I

    iget-boolean p2, p0, Lcom/onegravity/colorpicker/OpacityBar;->x:Z

    if-nez p2, :cond_3

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_2

    :cond_3
    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "parent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onegravity/colorpicker/OpacityBar;->setColor(I)V

    const-string v0, "opacity"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onegravity/colorpicker/OpacityBar;->setOpacity(I)V

    const-string v0, "orientation"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->x:Z

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

    const-string v0, "color"

    iget-object v2, p0, Lcom/onegravity/colorpicker/OpacityBar;->r:[F

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    const-string v0, "opacity"

    invoke-virtual {p0}, Lcom/onegravity/colorpicker/OpacityBar;->getOpacity()I

    move-result p0

    invoke-virtual {v1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "orientation"

    const/4 v0, 0x1

    invoke-virtual {v1, p0, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .locals 20

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-boolean v1, v0, Lcom/onegravity/colorpicker/OpacityBar;->x:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/onegravity/colorpicker/OpacityBar;->f:I

    iget v2, v0, Lcom/onegravity/colorpicker/OpacityBar;->i:I

    add-int/2addr v1, v2

    iget v3, v0, Lcom/onegravity/colorpicker/OpacityBar;->e:I

    mul-int/lit8 v4, v2, 0x2

    sub-int v4, p1, v4

    iput v4, v0, Lcom/onegravity/colorpicker/OpacityBar;->f:I

    iget-object v5, v0, Lcom/onegravity/colorpicker/OpacityBar;->n:Landroid/graphics/RectF;

    int-to-float v6, v2

    div-int/lit8 v7, v3, 0x2

    sub-int v7, v2, v7

    int-to-float v7, v7

    add-int/2addr v4, v2

    int-to-float v4, v4

    div-int/lit8 v8, v3, 0x2

    add-int/2addr v2, v8

    int-to-float v2, v2

    invoke-virtual {v5, v6, v7, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/onegravity/colorpicker/OpacityBar;->e:I

    iget v2, v0, Lcom/onegravity/colorpicker/OpacityBar;->f:I

    iget v3, v0, Lcom/onegravity/colorpicker/OpacityBar;->i:I

    add-int/2addr v2, v3

    mul-int/lit8 v4, v3, 0x2

    sub-int v4, p2, v4

    iput v4, v0, Lcom/onegravity/colorpicker/OpacityBar;->f:I

    iget-object v5, v0, Lcom/onegravity/colorpicker/OpacityBar;->n:Landroid/graphics/RectF;

    int-to-float v6, v3

    div-int/lit8 v7, v1, 0x2

    sub-int v7, v3, v7

    int-to-float v7, v7

    div-int/lit8 v8, v1, 0x2

    add-int/2addr v8, v3

    int-to-float v8, v8

    add-int/2addr v4, v3

    int-to-float v3, v4

    invoke-virtual {v5, v6, v7, v8, v3}, Landroid/graphics/RectF;->set(FFFF)V

    move v3, v2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/LinearGradient;

    iget v4, v0, Lcom/onegravity/colorpicker/OpacityBar;->i:I

    int-to-float v5, v4

    const/4 v6, 0x0

    int-to-float v7, v1

    int-to-float v8, v3

    const/4 v1, 0x0

    iget-object v3, v0, Lcom/onegravity/colorpicker/OpacityBar;->r:[F

    invoke-static {v1, v3}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    const/16 v3, 0xff

    iget-object v4, v0, Lcom/onegravity/colorpicker/OpacityBar;->r:[F

    invoke-static {v3, v4}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v3

    filled-new-array {v1, v3}, [I

    move-result-object v9

    const/4 v10, 0x0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lcom/onegravity/colorpicker/OpacityBar;->o:Landroid/graphics/Shader;

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/graphics/LinearGradient;

    iget v4, v0, Lcom/onegravity/colorpicker/OpacityBar;->i:I

    int-to-float v13, v4

    const/4 v14, 0x0

    int-to-float v15, v1

    int-to-float v1, v3

    const v3, 0x81ff00

    const v4, -0x7e0100

    filled-new-array {v3, v4}, [I

    move-result-object v17

    const/16 v18, 0x0

    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v12, v2

    move/from16 v16, v1

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lcom/onegravity/colorpicker/OpacityBar;->o:Landroid/graphics/Shader;

    iget-object v1, v0, Lcom/onegravity/colorpicker/OpacityBar;->r:[F

    invoke-static {v4, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    :goto_1
    iget-object v1, v0, Lcom/onegravity/colorpicker/OpacityBar;->k:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/onegravity/colorpicker/OpacityBar;->o:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v1, v0, Lcom/onegravity/colorpicker/OpacityBar;->f:I

    int-to-float v2, v1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float v2, v3, v2

    iput v2, v0, Lcom/onegravity/colorpicker/OpacityBar;->s:F

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, v0, Lcom/onegravity/colorpicker/OpacityBar;->t:F

    const/4 v1, 0x3

    new-array v1, v1, [F

    iget v2, v0, Lcom/onegravity/colorpicker/OpacityBar;->q:I

    invoke-static {v2, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, v0, Lcom/onegravity/colorpicker/OpacityBar;->t:F

    iget v2, v0, Lcom/onegravity/colorpicker/OpacityBar;->q:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, v0, Lcom/onegravity/colorpicker/OpacityBar;->i:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lcom/onegravity/colorpicker/OpacityBar;->j:I

    goto :goto_2

    :cond_2
    iget v1, v0, Lcom/onegravity/colorpicker/OpacityBar;->f:I

    iget v2, v0, Lcom/onegravity/colorpicker/OpacityBar;->i:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/onegravity/colorpicker/OpacityBar;->j:I

    :goto_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-boolean v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->x:Z

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_a

    const/4 v2, 0x0

    if-eq p1, v1, :cond_8

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-boolean p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->p:Z

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->i:I

    int-to-float v3, p1

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_3

    iget v3, p0, Lcom/onegravity/colorpicker/OpacityBar;->f:I

    add-int/2addr v3, p1

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->j:I

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onegravity/colorpicker/OpacityBar;->a(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->l:Landroid/graphics/Paint;

    iget v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->q:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->w:Lcom/onegravity/colorpicker/ColorWheelView;

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->q:I

    invoke-virtual {p1, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->setNewCenterColor(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_3
    int-to-float v3, p1

    cmpg-float v3, v0, v3

    if-gez v3, :cond_5

    iput p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->j:I

    iput v2, p0, Lcom/onegravity/colorpicker/OpacityBar;->q:I

    iget-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->w:Lcom/onegravity/colorpicker/ColorWheelView;

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->q:I

    invoke-virtual {p1, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->setNewCenterColor(I)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/onegravity/colorpicker/OpacityBar;->f:I

    add-int v3, p1, v2

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_7

    add-int/2addr p1, v2

    iput p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->j:I

    iget-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->r:[F

    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    iput p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->q:I

    iget-object v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->w:Lcom/onegravity/colorpicker/ColorWheelView;

    if-eqz p1, :cond_6

    iget v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->q:I

    invoke-virtual {p1, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->setNewCenterColor(I)V

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->u:Lcom/onegravity/colorpicker/OpacityBar$OnOpacityChangedListener;

    if-eqz p1, :cond_b

    iget p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->v:I

    invoke-virtual {p0}, Lcom/onegravity/colorpicker/OpacityBar;->getOpacity()I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->u:Lcom/onegravity/colorpicker/OpacityBar$OnOpacityChangedListener;

    invoke-virtual {p0}, Lcom/onegravity/colorpicker/OpacityBar;->getOpacity()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/onegravity/colorpicker/OpacityBar$OnOpacityChangedListener;->onOpacityChanged(I)V

    invoke-virtual {p0}, Lcom/onegravity/colorpicker/OpacityBar;->getOpacity()I

    move-result p1

    iput p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->v:I

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->w:Lcom/onegravity/colorpicker/ColorWheelView;

    if-eqz p1, :cond_9

    iget v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->q:I

    invoke-virtual {p1, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->setNewCenterColor(I)V

    :cond_9
    iput-boolean v2, p0, Lcom/onegravity/colorpicker/OpacityBar;->p:Z

    goto :goto_2

    :cond_a
    iput-boolean v1, p0, Lcom/onegravity/colorpicker/OpacityBar;->p:Z

    iget p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->i:I

    int-to-float v2, p1

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_b

    iget v2, p0, Lcom/onegravity/colorpicker/OpacityBar;->f:I

    add-int/2addr p1, v2

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_b

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->j:I

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onegravity/colorpicker/OpacityBar;->a(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->l:Landroid/graphics/Paint;

    iget v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->q:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_b
    :goto_2
    return v1
.end method

.method public setColor(I)V
    .locals 11

    iget-boolean v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->x:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->f:I

    iget v1, p0, Lcom/onegravity/colorpicker/OpacityBar;->i:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/onegravity/colorpicker/OpacityBar;->e:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->e:I

    iget v1, p0, Lcom/onegravity/colorpicker/OpacityBar;->f:I

    iget v2, p0, Lcom/onegravity/colorpicker/OpacityBar;->i:I

    add-int/2addr v1, v2

    :goto_0
    iget-object v2, p0, Lcom/onegravity/colorpicker/OpacityBar;->r:[F

    invoke-static {p1, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    new-instance v2, Landroid/graphics/LinearGradient;

    iget v3, p0, Lcom/onegravity/colorpicker/OpacityBar;->i:I

    int-to-float v4, v3

    const/4 v5, 0x0

    int-to-float v6, v0

    int-to-float v7, v1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/onegravity/colorpicker/OpacityBar;->r:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    filled-new-array {v0, p1}, [I

    move-result-object v8

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lcom/onegravity/colorpicker/OpacityBar;->o:Landroid/graphics/Shader;

    iget-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->j:I

    invoke-virtual {p0, p1}, Lcom/onegravity/colorpicker/OpacityBar;->a(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->l:Landroid/graphics/Paint;

    iget v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->q:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->w:Lcom/onegravity/colorpicker/ColorWheelView;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->q:I

    invoke-virtual {p1, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->setNewCenterColor(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setColorPicker(Lcom/onegravity/colorpicker/ColorWheelView;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->w:Lcom/onegravity/colorpicker/ColorWheelView;

    return-void
.end method

.method public setOnOpacityChangedListener(Lcom/onegravity/colorpicker/OpacityBar$OnOpacityChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->u:Lcom/onegravity/colorpicker/OpacityBar$OnOpacityChangedListener;

    return-void
.end method

.method public setOpacity(I)V
    .locals 1

    iget v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->t:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->i:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->j:I

    invoke-virtual {p0, p1}, Lcom/onegravity/colorpicker/OpacityBar;->a(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->l:Landroid/graphics/Paint;

    iget v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->q:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/OpacityBar;->w:Lcom/onegravity/colorpicker/ColorWheelView;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/onegravity/colorpicker/OpacityBar;->q:I

    invoke-virtual {p1, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->setNewCenterColor(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
