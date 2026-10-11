.class public Lcom/onegravity/colorpreference/ColorPreferenceView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# static fields
.field public static final n:Ljava/lang/String; = "#IMAGE_VIEW_TAG#"


# instance fields
.field public h:I

.field public i:I

.field public j:Landroid/graphics/Paint;

.field public k:Landroid/graphics/Paint;

.field public final l:Landroid/graphics/Rect;

.field public m:Lcom/onegravity/utils/AlphaPatternDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/onegravity/colorpreference/ColorPreferenceView;->l:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p0, p1}, Lcom/onegravity/colorpreference/ColorPreferenceView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/onegravity/colorpreference/ColorPreferenceView;->l:Landroid/graphics/Rect;

    .line 6
    invoke-virtual {p0, p1}, Lcom/onegravity/colorpreference/ColorPreferenceView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/onegravity/colorpreference/ColorPreferenceView;->l:Landroid/graphics/Rect;

    .line 9
    invoke-virtual {p0, p1}, Lcom/onegravity/colorpreference/ColorPreferenceView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static b(II)I
    .locals 2

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    const/high16 v1, 0xff0000

    invoke-static {p0, v1, p1}, Lcom/onegravity/colorpreference/ColorPreferenceView;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0xff00

    invoke-static {p0, v1, p1}, Lcom/onegravity/colorpreference/ColorPreferenceView;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xff

    invoke-static {p0, v1, p1}, Lcom/onegravity/colorpreference/ColorPreferenceView;->c(III)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static c(III)I
    .locals 0

    and-int/2addr p0, p1

    ushr-int/2addr p0, p2

    and-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "#IMAGE_VIEW_TAG#"

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-static {p1}, Lcom/onegravity/colorpicker/Util;->getDisplayDensity(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x41f80000    # 31.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/onegravity/colorpreference/ColorPreferenceView;->h:I

    iput v0, p0, Lcom/onegravity/colorpreference/ColorPreferenceView;->i:I

    invoke-virtual {p0, p1, v0}, Lcom/onegravity/colorpreference/ColorPreferenceView;->e(Landroid/content/Context;I)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final d(II)V
    .locals 1

    iget v0, p0, Lcom/onegravity/colorpreference/ColorPreferenceView;->h:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget p2, p0, Lcom/onegravity/colorpreference/ColorPreferenceView;->i:I

    if-eq p1, p2, :cond_0

    iput p1, p0, Lcom/onegravity/colorpreference/ColorPreferenceView;->i:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/onegravity/colorpreference/ColorPreferenceView;->i:I

    invoke-virtual {p0, p1, p2}, Lcom/onegravity/colorpreference/ColorPreferenceView;->e(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public final e(Landroid/content/Context;I)V
    .locals 1

    new-instance v0, Lcom/onegravity/utils/AlphaPatternDrawable;

    invoke-direct {v0, p1}, Lcom/onegravity/utils/AlphaPatternDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/onegravity/colorpreference/ColorPreferenceView;->m:Lcom/onegravity/utils/AlphaPatternDrawable;

    add-int/lit8 p1, p2, -0x2

    invoke-virtual {v0, p1, p1}, Lcom/onegravity/utils/AlphaPatternDrawable;->generatePatternBitmap(II)Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/onegravity/colorpreference/ColorPreferenceView;->l:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/onegravity/colorpreference/ColorPreferenceView;->m:Lcom/onegravity/utils/AlphaPatternDrawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onegravity/colorpreference/ColorPreferenceView;->l:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/onegravity/colorpreference/ColorPreferenceView;->m:Lcom/onegravity/utils/AlphaPatternDrawable;

    invoke-virtual {v0, p1}, Lcom/onegravity/utils/AlphaPatternDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    const/4 v0, 0x0

    int-to-float v7, v0

    iget v1, p0, Lcom/onegravity/colorpreference/ColorPreferenceView;->i:I

    int-to-float v4, v1

    int-to-float v5, v1

    iget-object v6, p0, Lcom/onegravity/colorpreference/ColorPreferenceView;->j:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v7

    move v3, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/onegravity/colorpreference/ColorPreferenceView;->i:I

    add-int/2addr v1, v0

    int-to-float v4, v1

    iget-object v6, p0, Lcom/onegravity/colorpreference/ColorPreferenceView;->k:Landroid/graphics/Paint;

    move-object v1, p1

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/onegravity/colorpreference/ColorPreferenceView;->i:I

    add-int/2addr v1, v0

    int-to-float v5, v1

    iget-object v6, p0, Lcom/onegravity/colorpreference/ColorPreferenceView;->k:Landroid/graphics/Paint;

    move-object v1, p1

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/onegravity/colorpreference/ColorPreferenceView;->i:I

    add-int v2, v0, v1

    int-to-float v2, v2

    add-int v3, v0, v1

    int-to-float v4, v3

    add-int/2addr v1, v0

    int-to-float v5, v1

    iget-object v6, p0, Lcom/onegravity/colorpreference/ColorPreferenceView;->k:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/onegravity/colorpreference/ColorPreferenceView;->i:I

    add-int v2, v0, v1

    int-to-float v3, v2

    add-int v2, v0, v1

    int-to-float v4, v2

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/onegravity/colorpreference/ColorPreferenceView;->k:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/onegravity/colorpreference/ColorPreferenceView;->d(II)V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/onegravity/colorpreference/ColorPreferenceView;->d(II)V

    :cond_1
    return-void
.end method

.method public setColor(II)V
    .locals 1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onegravity/colorpreference/ColorPreferenceView;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/onegravity/colorpreference/ColorPreferenceView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/onegravity/colorpreference/ColorPreferenceView;->k:Landroid/graphics/Paint;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPreviewColor(IZ)V
    .locals 1

    const-string v0, "#IMAGE_VIEW_TAG#"

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, -0x1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/onegravity/colorpreference/ColorPreferenceView;->b(II)I

    move-result p1

    invoke-static {v0, p2}, Lcom/onegravity/colorpreference/ColorPreferenceView;->b(II)I

    move-result v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/onegravity/colorpreference/ColorPreferenceView;->setColor(II)V

    return-void
.end method
