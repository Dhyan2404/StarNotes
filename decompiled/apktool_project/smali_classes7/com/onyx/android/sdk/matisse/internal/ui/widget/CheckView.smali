.class public Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final UNCHECKED:I = -0x80000000

.field public static final p:F = 3.0f

.field public static final q:F = 6.0f

.field public static final r:I = 0x30

.field public static final s:F = 11.5f

.field public static final t:F = 11.0f

.field public static final u:I = 0x10


# instance fields
.field public e:Z

.field public f:Z

.field public g:I

.field public h:Landroid/graphics/Paint;

.field public i:Landroid/graphics/Paint;

.field public j:Landroid/text/TextPaint;

.field public k:Landroid/graphics/Paint;

.field public l:Landroid/graphics/drawable/Drawable;

.field public m:F

.field public n:Landroid/graphics/Rect;

.field public o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->o:Z

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->e(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->o:Z

    .line 6
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->e(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->o:Z

    .line 9
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->e(Landroid/content/Context;)V

    return-void
.end method

.method private getCheckRect()Landroid/graphics/Rect;
    .locals 6

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->n:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->m:F

    const/high16 v1, 0x42400000    # 48.0f

    mul-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v4, 0x41800000    # 16.0f

    mul-float/2addr v0, v4

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    float-to-int v0, v2

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->m:F

    mul-float v4, v3, v1

    int-to-float v5, v0

    sub-float/2addr v4, v5

    float-to-int v4, v4

    mul-float/2addr v3, v1

    sub-float/2addr v3, v5

    float-to-int v1, v3

    invoke-direct {v2, v0, v0, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->n:Landroid/graphics/Rect;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->n:Landroid/graphics/Rect;

    return-object p0
.end method


# virtual methods
.method public final a(ZLandroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->f(Z)V

    iget p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->m:F

    const/high16 v0, 0x42400000    # 48.0f

    mul-float v1, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, p1

    div-float/2addr v0, v2

    const/high16 v2, 0x41300000    # 11.0f

    mul-float/2addr p1, v2

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->i:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v0, p1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final b(ZLandroid/graphics/Canvas;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->e:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->h()V

    iget p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->g:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->j:Landroid/text/TextPaint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->j:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->j:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->j:Landroid/text/TextPaint;

    invoke-virtual {p2, p1, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->l:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->getCheckRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public final c(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->g()V

    iget v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->m:F

    const/high16 v1, 0x42400000    # 48.0f

    mul-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v0

    div-float/2addr v1, v3

    const/high16 v3, 0x41980000    # 19.0f

    mul-float/2addr v0, v3

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final d(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->i()V

    iget v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->m:F

    const/high16 v1, 0x42400000    # 48.0f

    mul-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v0

    div-float/2addr v1, v3

    const/high16 v3, 0x41380000    # 11.5f

    mul-float/2addr v0, v3

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final e(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->m:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->h:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->h:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->h:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    iget v2, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->m:F

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$attr;->item_checkCircle_borderColor:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/onyx/android/sdk/imagepicker/R$color;->zhihu_item_checkCircle_borderColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$drawable;->ic_check_white_18dp:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->l:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final f(Z)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->i:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->i:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$color;->checked_bg_color:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$color;->un_checked_bg_color:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result p1

    :goto_0
    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->i:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final g()V
    .locals 10

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->k:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->k:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->k:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/RadialGradient;

    iget p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->m:F

    const/high16 v2, 0x42400000    # 48.0f

    mul-float v3, p0, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, p0

    div-float v4, v2, v4

    const/high16 v2, 0x41980000    # 19.0f

    mul-float v5, v2, p0

    const-string p0, "#00000000"

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v6, "#0D000000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    filled-new-array {v2, v7, v6, p0}, [I

    move-result-object v6

    const/4 p0, 0x4

    new-array v7, p0, [F

    const/4 p0, 0x0

    const v2, 0x3e579436

    aput v2, v7, p0

    const p0, 0x3f06bca2

    aput p0, v7, v1

    const/4 p0, 0x2

    const v1, 0x3f2f286c

    aput v1, v7, p0

    const/4 p0, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v7, p0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->j:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->j:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->j:Landroid/text/TextPaint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->j:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->j:Landroid/text/TextPaint;

    const/high16 v1, 0x41400000    # 12.0f

    iget p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->m:F

    mul-float/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$color;->white:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->g:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->c(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->a(ZLandroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->d(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->b(ZLandroid/graphics/Canvas;)V

    iget-boolean p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->o:Z

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    const/high16 p1, 0x42400000    # 48.0f

    iget p2, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->m:F

    mul-float/2addr p2, p1

    float-to-int p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p1}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->e:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->f:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "CheckView is countable, call setCheckedNum() instead."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCheckedNum(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->e:Z

    if-eqz v0, :cond_2

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "checked num can\'t be negative."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->g:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "CheckView is not countable, call setChecked() instead."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCountable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->e:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->o:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->o:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
