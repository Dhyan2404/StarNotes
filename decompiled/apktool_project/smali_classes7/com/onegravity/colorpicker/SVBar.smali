.class public Lcom/onegravity/colorpicker/SVBar;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final J:Ljava/lang/String; = "orientation"

.field public static final O:Z = true

.field public static final Q:Z = false

.field public static final k0:Z = true

.field public static final w:Ljava/lang/String; = "parent"

.field public static final x:Ljava/lang/String; = "color"

.field public static final y:Ljava/lang/String; = "saturation"

.field public static final z:Ljava/lang/String; = "value"


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

.field public final n:Landroid/graphics/RectF;

.field public o:Landroid/graphics/Shader;

.field public p:Z

.field public q:I

.field public final r:[F

.field public s:F

.field public t:F

.field public u:Lcom/onegravity/colorpicker/ColorWheelView;

.field public v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->n:Landroid/graphics/RectF;

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 3
    iput-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->r:[F

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->u:Lcom/onegravity/colorpicker/ColorWheelView;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/onegravity/colorpicker/SVBar;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->n:Landroid/graphics/RectF;

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 8
    iput-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->r:[F

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->u:Lcom/onegravity/colorpicker/ColorWheelView;

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p2, p1}, Lcom/onegravity/colorpicker/SVBar;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->n:Landroid/graphics/RectF;

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 13
    iput-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->r:[F

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->u:Lcom/onegravity/colorpicker/ColorWheelView;

    .line 15
    invoke-virtual {p0, p2, p3}, Lcom/onegravity/colorpicker/SVBar;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 8

    iget v0, p0, Lcom/onegravity/colorpicker/SVBar;->i:I

    sub-int/2addr p1, v0

    const/4 v1, 0x0

    if-gez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/onegravity/colorpicker/SVBar;->f:I

    if-le p1, v2, :cond_1

    move p1, v2

    :cond_1
    :goto_0
    iget v2, p0, Lcom/onegravity/colorpicker/SVBar;->f:I

    div-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    if-le p1, v3, :cond_2

    add-int v3, v0, v2

    if-ge p1, v3, :cond_2

    new-array v3, v5, [F

    iget-object v5, p0, Lcom/onegravity/colorpicker/SVBar;->r:[F

    aget v5, v5, v1

    aput v5, v3, v1

    aput v6, v3, v4

    iget v1, p0, Lcom/onegravity/colorpicker/SVBar;->s:F

    div-int/2addr v2, v7

    add-int/2addr v0, v2

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr v1, p1

    sub-float/2addr v6, v1

    aput v6, v3, v7

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    iput p1, p0, Lcom/onegravity/colorpicker/SVBar;->q:I

    goto :goto_1

    :cond_2
    if-le p1, v0, :cond_3

    add-int v3, v0, v2

    if-ge p1, v3, :cond_3

    new-array v2, v5, [F

    iget-object v3, p0, Lcom/onegravity/colorpicker/SVBar;->r:[F

    aget v3, v3, v1

    aput v3, v2, v1

    iget v1, p0, Lcom/onegravity/colorpicker/SVBar;->s:F

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr v1, p1

    aput v1, v2, v4

    aput v6, v2, v7

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    iput p1, p0, Lcom/onegravity/colorpicker/SVBar;->q:I

    goto :goto_1

    :cond_3
    if-ne p1, v0, :cond_4

    const/4 p1, -0x1

    iput p1, p0, Lcom/onegravity/colorpicker/SVBar;->q:I

    goto :goto_1

    :cond_4
    add-int/2addr v0, v2

    if-ne p1, v0, :cond_5

    const/high16 p1, -0x1000000

    iput p1, p0, Lcom/onegravity/colorpicker/SVBar;->q:I

    :cond_5
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

    iput v0, p0, Lcom/onegravity/colorpicker/SVBar;->e:I

    sget v0, Lcom/onegravity/colorpicker/R$styleable;->ColorBars_bar_length:I

    sget v1, Lcom/onegravity/colorpicker/R$dimen;->bar_length:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/onegravity/colorpicker/SVBar;->f:I

    iput v0, p0, Lcom/onegravity/colorpicker/SVBar;->g:I

    sget v0, Lcom/onegravity/colorpicker/R$styleable;->ColorBars_bar_pointer_radius:I

    sget v1, Lcom/onegravity/colorpicker/R$dimen;->bar_pointer_radius:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/onegravity/colorpicker/SVBar;->h:I

    sget v0, Lcom/onegravity/colorpicker/R$styleable;->ColorBars_bar_pointer_halo_radius:I

    sget v1, Lcom/onegravity/colorpicker/R$dimen;->bar_pointer_halo_radius:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/onegravity/colorpicker/SVBar;->i:I

    sget p2, Lcom/onegravity/colorpicker/R$styleable;->ColorBars_bar_orientation_horizontal:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/onegravity/colorpicker/SVBar;->v:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->k:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/onegravity/colorpicker/SVBar;->o:Landroid/graphics/Shader;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget p1, p0, Lcom/onegravity/colorpicker/SVBar;->f:I

    div-int/lit8 p1, p1, 0x2

    iget p2, p0, Lcom/onegravity/colorpicker/SVBar;->i:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/onegravity/colorpicker/SVBar;->j:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->m:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->m:Landroid/graphics/Paint;

    const/16 p2, 0x50

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->l:Landroid/graphics/Paint;

    const p2, -0x7e0100

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget p1, p0, Lcom/onegravity/colorpicker/SVBar;->f:I

    int-to-float p2, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float p2, v1, p2

    iput p2, p0, Lcom/onegravity/colorpicker/SVBar;->s:F

    int-to-float p1, p1

    div-float/2addr p1, v0

    div-float/2addr p1, v1

    iput p1, p0, Lcom/onegravity/colorpicker/SVBar;->t:F

    return-void
.end method

.method public getColor()I
    .locals 0

    iget p0, p0, Lcom/onegravity/colorpicker/SVBar;->q:I

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/onegravity/colorpicker/SVBar;->n:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onegravity/colorpicker/SVBar;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/onegravity/colorpicker/SVBar;->v:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/onegravity/colorpicker/SVBar;->j:I

    iget v1, p0, Lcom/onegravity/colorpicker/SVBar;->i:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/onegravity/colorpicker/SVBar;->i:I

    iget v1, p0, Lcom/onegravity/colorpicker/SVBar;->j:I

    :goto_0
    int-to-float v0, v0

    int-to-float v1, v1

    iget v2, p0, Lcom/onegravity/colorpicker/SVBar;->i:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/onegravity/colorpicker/SVBar;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v2, p0, Lcom/onegravity/colorpicker/SVBar;->h:I

    int-to-float v2, v2

    iget-object p0, p0, Lcom/onegravity/colorpicker/SVBar;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    iget v0, p0, Lcom/onegravity/colorpicker/SVBar;->g:I

    iget v1, p0, Lcom/onegravity/colorpicker/SVBar;->i:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/onegravity/colorpicker/SVBar;->v:Z

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
    iget p1, p0, Lcom/onegravity/colorpicker/SVBar;->i:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/onegravity/colorpicker/SVBar;->f:I

    iget-boolean p2, p0, Lcom/onegravity/colorpicker/SVBar;->v:Z

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

    invoke-virtual {p0, v0}, Lcom/onegravity/colorpicker/SVBar;->setColor(I)V

    const-string v0, "saturation"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onegravity/colorpicker/SVBar;->setSaturation(F)V

    goto :goto_0

    :cond_0
    const-string v0, "value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onegravity/colorpicker/SVBar;->setValue(F)V

    :goto_0
    const-string v0, "orientation"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onegravity/colorpicker/SVBar;->v:Z

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "parent"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "color"

    iget-object v2, p0, Lcom/onegravity/colorpicker/SVBar;->r:[F

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget p0, p0, Lcom/onegravity/colorpicker/SVBar;->q:I

    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x1

    aget v2, v0, p0

    const/4 v3, 0x2

    aget v0, v0, v3

    cmpg-float v3, v2, v0

    if-gez v3, :cond_0

    const-string v0, "saturation"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    :cond_0
    const-string v2, "value"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :goto_0
    const-string v0, "orientation"

    invoke-virtual {v1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .locals 23

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-boolean v1, v0, Lcom/onegravity/colorpicker/SVBar;->v:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/onegravity/colorpicker/SVBar;->f:I

    iget v3, v0, Lcom/onegravity/colorpicker/SVBar;->i:I

    add-int/2addr v1, v3

    iget v4, v0, Lcom/onegravity/colorpicker/SVBar;->e:I

    mul-int/lit8 v5, v3, 0x2

    sub-int v5, p1, v5

    iput v5, v0, Lcom/onegravity/colorpicker/SVBar;->f:I

    iget-object v6, v0, Lcom/onegravity/colorpicker/SVBar;->n:Landroid/graphics/RectF;

    int-to-float v7, v3

    div-int/lit8 v8, v4, 0x2

    sub-int v8, v3, v8

    int-to-float v8, v8

    add-int/2addr v5, v3

    int-to-float v5, v5

    div-int/lit8 v9, v4, 0x2

    add-int/2addr v3, v9

    int-to-float v3, v3

    invoke-virtual {v6, v7, v8, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/onegravity/colorpicker/SVBar;->e:I

    iget v3, v0, Lcom/onegravity/colorpicker/SVBar;->f:I

    iget v4, v0, Lcom/onegravity/colorpicker/SVBar;->i:I

    add-int/2addr v3, v4

    mul-int/lit8 v5, v4, 0x2

    sub-int v5, p2, v5

    iput v5, v0, Lcom/onegravity/colorpicker/SVBar;->f:I

    iget-object v6, v0, Lcom/onegravity/colorpicker/SVBar;->n:Landroid/graphics/RectF;

    int-to-float v7, v4

    div-int/lit8 v8, v1, 0x2

    sub-int v8, v4, v8

    int-to-float v8, v8

    div-int/lit8 v9, v1, 0x2

    add-int/2addr v9, v4

    int-to-float v9, v9

    add-int/2addr v5, v4

    int-to-float v4, v5

    invoke-virtual {v6, v7, v8, v9, v4}, Landroid/graphics/RectF;->set(FFFF)V

    move v4, v3

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    const/high16 v5, -0x1000000

    const/4 v6, -0x1

    if-nez v3, :cond_1

    new-instance v3, Landroid/graphics/LinearGradient;

    iget v7, v0, Lcom/onegravity/colorpicker/SVBar;->i:I

    int-to-float v8, v7

    const/4 v9, 0x0

    int-to-float v10, v1

    int-to-float v11, v4

    iget-object v1, v0, Lcom/onegravity/colorpicker/SVBar;->r:[F

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    filled-new-array {v6, v1, v5}, [I

    move-result-object v12

    const/4 v13, 0x0

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v3, v0, Lcom/onegravity/colorpicker/SVBar;->o:Landroid/graphics/Shader;

    goto :goto_1

    :cond_1
    new-instance v3, Landroid/graphics/LinearGradient;

    iget v7, v0, Lcom/onegravity/colorpicker/SVBar;->i:I

    int-to-float v7, v7

    const/16 v17, 0x0

    int-to-float v1, v1

    int-to-float v4, v4

    const v8, -0x7e0100

    filled-new-array {v6, v8, v5}, [I

    move-result-object v20

    const/16 v21, 0x0

    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v15, v3

    move/from16 v16, v7

    move/from16 v18, v1

    move/from16 v19, v4

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v3, v0, Lcom/onegravity/colorpicker/SVBar;->o:Landroid/graphics/Shader;

    iget-object v1, v0, Lcom/onegravity/colorpicker/SVBar;->r:[F

    invoke-static {v8, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    :goto_1
    iget-object v1, v0, Lcom/onegravity/colorpicker/SVBar;->k:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/onegravity/colorpicker/SVBar;->o:Landroid/graphics/Shader;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v1, v0, Lcom/onegravity/colorpicker/SVBar;->f:I

    int-to-float v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v3, v5, v3

    iput v3, v0, Lcom/onegravity/colorpicker/SVBar;->s:F

    int-to-float v1, v1

    div-float/2addr v1, v4

    div-float/2addr v1, v5

    iput v1, v0, Lcom/onegravity/colorpicker/SVBar;->t:F

    const/4 v1, 0x3

    new-array v1, v1, [F

    iget v3, v0, Lcom/onegravity/colorpicker/SVBar;->q:I

    invoke-static {v3, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v2, v1, v2

    const/4 v3, 0x2

    aget v1, v1, v3

    cmpg-float v4, v2, v1

    if-gez v4, :cond_2

    iget v1, v0, Lcom/onegravity/colorpicker/SVBar;->t:F

    mul-float/2addr v1, v2

    iget v2, v0, Lcom/onegravity/colorpicker/SVBar;->i:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lcom/onegravity/colorpicker/SVBar;->j:I

    goto :goto_2

    :cond_2
    iget v2, v0, Lcom/onegravity/colorpicker/SVBar;->t:F

    sub-float/2addr v5, v1

    mul-float/2addr v2, v5

    iget v1, v0, Lcom/onegravity/colorpicker/SVBar;->i:I

    int-to-float v1, v1

    add-float/2addr v2, v1

    iget v1, v0, Lcom/onegravity/colorpicker/SVBar;->f:I

    div-int/2addr v1, v3

    int-to-float v1, v1

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lcom/onegravity/colorpicker/SVBar;->j:I

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/onegravity/colorpicker/SVBar;->f:I

    div-int/2addr v1, v3

    iget v2, v0, Lcom/onegravity/colorpicker/SVBar;->i:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/onegravity/colorpicker/SVBar;->j:I

    :cond_3
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

    iget-boolean v0, p0, Lcom/onegravity/colorpicker/SVBar;->v:Z

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

    if-eqz p1, :cond_9

    if-eq p1, v1, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-boolean p1, p0, Lcom/onegravity/colorpicker/SVBar;->p:Z

    if-eqz p1, :cond_a

    iget p1, p0, Lcom/onegravity/colorpicker/SVBar;->i:I

    int-to-float v2, p1

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/onegravity/colorpicker/SVBar;->f:I

    add-int/2addr v2, p1

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/onegravity/colorpicker/SVBar;->j:I

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onegravity/colorpicker/SVBar;->a(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->l:Landroid/graphics/Paint;

    iget v0, p0, Lcom/onegravity/colorpicker/SVBar;->q:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->u:Lcom/onegravity/colorpicker/ColorWheelView;

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/onegravity/colorpicker/SVBar;->q:I

    invoke-virtual {p1, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->setNewCenterColor(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->u:Lcom/onegravity/colorpicker/ColorWheelView;

    iget v0, p0, Lcom/onegravity/colorpicker/SVBar;->q:I

    invoke-virtual {p1, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->changeOpacityBarColor(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1

    :cond_3
    int-to-float v2, p1

    cmpg-float v2, v0, v2

    if-gez v2, :cond_5

    iput p1, p0, Lcom/onegravity/colorpicker/SVBar;->j:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/onegravity/colorpicker/SVBar;->q:I

    iget-object v0, p0, Lcom/onegravity/colorpicker/SVBar;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->u:Lcom/onegravity/colorpicker/ColorWheelView;

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/onegravity/colorpicker/SVBar;->q:I

    invoke-virtual {p1, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->setNewCenterColor(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->u:Lcom/onegravity/colorpicker/ColorWheelView;

    iget v0, p0, Lcom/onegravity/colorpicker/SVBar;->q:I

    invoke-virtual {p1, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->changeOpacityBarColor(I)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/onegravity/colorpicker/SVBar;->f:I

    add-int v3, p1, v2

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_a

    add-int/2addr p1, v2

    iput p1, p0, Lcom/onegravity/colorpicker/SVBar;->j:I

    const/high16 p1, -0x1000000

    iput p1, p0, Lcom/onegravity/colorpicker/SVBar;->q:I

    iget-object v0, p0, Lcom/onegravity/colorpicker/SVBar;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->u:Lcom/onegravity/colorpicker/ColorWheelView;

    if-eqz p1, :cond_6

    iget v0, p0, Lcom/onegravity/colorpicker/SVBar;->q:I

    invoke-virtual {p1, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->setNewCenterColor(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->u:Lcom/onegravity/colorpicker/ColorWheelView;

    iget v0, p0, Lcom/onegravity/colorpicker/SVBar;->q:I

    invoke-virtual {p1, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->changeOpacityBarColor(I)V

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->u:Lcom/onegravity/colorpicker/ColorWheelView;

    if-eqz p1, :cond_8

    iget v0, p0, Lcom/onegravity/colorpicker/SVBar;->q:I

    invoke-virtual {p1, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->setNewCenterColor(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->u:Lcom/onegravity/colorpicker/ColorWheelView;

    iget v0, p0, Lcom/onegravity/colorpicker/SVBar;->q:I

    invoke-virtual {p1, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->changeOpacityBarColor(I)V

    :cond_8
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/onegravity/colorpicker/SVBar;->p:Z

    goto :goto_1

    :cond_9
    iput-boolean v1, p0, Lcom/onegravity/colorpicker/SVBar;->p:Z

    iget p1, p0, Lcom/onegravity/colorpicker/SVBar;->i:I

    int-to-float v2, p1

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_a

    iget v2, p0, Lcom/onegravity/colorpicker/SVBar;->f:I

    add-int/2addr p1, v2

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_a

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/onegravity/colorpicker/SVBar;->j:I

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onegravity/colorpicker/SVBar;->a(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->l:Landroid/graphics/Paint;

    iget v0, p0, Lcom/onegravity/colorpicker/SVBar;->q:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_a
    :goto_1
    return v1
.end method

.method public setColor(I)V
    .locals 11

    iget-boolean v0, p0, Lcom/onegravity/colorpicker/SVBar;->v:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/onegravity/colorpicker/SVBar;->f:I

    iget v1, p0, Lcom/onegravity/colorpicker/SVBar;->i:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/onegravity/colorpicker/SVBar;->e:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/onegravity/colorpicker/SVBar;->e:I

    iget v1, p0, Lcom/onegravity/colorpicker/SVBar;->f:I

    iget v2, p0, Lcom/onegravity/colorpicker/SVBar;->i:I

    add-int/2addr v1, v2

    :goto_0
    iget-object v2, p0, Lcom/onegravity/colorpicker/SVBar;->r:[F

    invoke-static {p1, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    new-instance v2, Landroid/graphics/LinearGradient;

    iget v3, p0, Lcom/onegravity/colorpicker/SVBar;->i:I

    int-to-float v4, v3

    const/4 v5, 0x0

    int-to-float v6, v0

    int-to-float v7, v1

    const/4 v0, -0x1

    const/high16 v1, -0x1000000

    filled-new-array {v0, p1, v1}, [I

    move-result-object v8

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lcom/onegravity/colorpicker/SVBar;->o:Landroid/graphics/Shader;

    iget-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget p1, p0, Lcom/onegravity/colorpicker/SVBar;->j:I

    invoke-virtual {p0, p1}, Lcom/onegravity/colorpicker/SVBar;->a(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->l:Landroid/graphics/Paint;

    iget v0, p0, Lcom/onegravity/colorpicker/SVBar;->q:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->u:Lcom/onegravity/colorpicker/ColorWheelView;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/onegravity/colorpicker/SVBar;->q:I

    invoke-virtual {p1, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->setNewCenterColor(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->u:Lcom/onegravity/colorpicker/ColorWheelView;

    invoke-virtual {p1}, Lcom/onegravity/colorpicker/ColorWheelView;->hasOpacityBar()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->u:Lcom/onegravity/colorpicker/ColorWheelView;

    iget v0, p0, Lcom/onegravity/colorpicker/SVBar;->q:I

    invoke-virtual {p1, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->changeOpacityBarColor(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setColorPicker(Lcom/onegravity/colorpicker/ColorWheelView;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->u:Lcom/onegravity/colorpicker/ColorWheelView;

    return-void
.end method

.method public setSaturation(F)V
    .locals 1

    iget v0, p0, Lcom/onegravity/colorpicker/SVBar;->t:F

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/onegravity/colorpicker/SVBar;->i:I

    int-to-float p1, p1

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/onegravity/colorpicker/SVBar;->j:I

    invoke-virtual {p0, p1}, Lcom/onegravity/colorpicker/SVBar;->a(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->l:Landroid/graphics/Paint;

    iget v0, p0, Lcom/onegravity/colorpicker/SVBar;->q:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->u:Lcom/onegravity/colorpicker/ColorWheelView;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/onegravity/colorpicker/SVBar;->q:I

    invoke-virtual {p1, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->setNewCenterColor(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->u:Lcom/onegravity/colorpicker/ColorWheelView;

    iget v0, p0, Lcom/onegravity/colorpicker/SVBar;->q:I

    invoke-virtual {p1, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->changeOpacityBarColor(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setValue(F)V
    .locals 2

    iget v0, p0, Lcom/onegravity/colorpicker/SVBar;->t:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    iget p1, p0, Lcom/onegravity/colorpicker/SVBar;->i:I

    int-to-float p1, p1

    add-float/2addr v0, p1

    iget p1, p0, Lcom/onegravity/colorpicker/SVBar;->f:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/onegravity/colorpicker/SVBar;->j:I

    invoke-virtual {p0, p1}, Lcom/onegravity/colorpicker/SVBar;->a(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->l:Landroid/graphics/Paint;

    iget v0, p0, Lcom/onegravity/colorpicker/SVBar;->q:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->u:Lcom/onegravity/colorpicker/ColorWheelView;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/onegravity/colorpicker/SVBar;->q:I

    invoke-virtual {p1, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->setNewCenterColor(I)V

    iget-object p1, p0, Lcom/onegravity/colorpicker/SVBar;->u:Lcom/onegravity/colorpicker/ColorWheelView;

    iget v0, p0, Lcom/onegravity/colorpicker/SVBar;->q:I

    invoke-virtual {p1, v0}, Lcom/onegravity/colorpicker/ColorWheelView;->changeOpacityBarColor(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
