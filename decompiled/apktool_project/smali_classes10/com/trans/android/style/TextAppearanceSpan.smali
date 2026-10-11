.class public Lcom/trans/android/style/TextAppearanceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "SourceFile"


# instance fields
.field private codePoint:I

.field private font:Ljava/awt/Font;


# direct methods
.method public constructor <init>(Ljava/awt/Font;I)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput-object p1, p0, Lcom/trans/android/style/TextAppearanceSpan;->font:Ljava/awt/Font;

    iput p2, p0, Lcom/trans/android/style/TextAppearanceSpan;->codePoint:I

    return-void
.end method

.method private apply(Landroid/graphics/Paint;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/trans/android/style/TextAppearanceSpan;->font:Ljava/awt/Font;

    invoke-static {v1}, Lcom/trans/android/font/FontManager;->getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;

    move-result-object v1

    iget-object v2, p0, Lcom/trans/android/style/TextAppearanceSpan;->font:Ljava/awt/Font;

    invoke-virtual {v2}, Ljava/awt/Font;->getStyle()I

    move-result v2

    or-int/2addr v0, v2

    iget v2, p0, Lcom/trans/android/style/TextAppearanceSpan;->codePoint:I

    invoke-virtual {v1, v2}, Lsun/font/Font2D;->getTypeface(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1}, Lsun/font/Font2D;->getStyle()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_1
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const/high16 v0, -0x41800000    # -0.25f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    :cond_2
    iget-object p0, p0, Lcom/trans/android/style/TextAppearanceSpan;->font:Ljava/awt/Font;

    invoke-virtual {p0}, Ljava/awt/Font;->getSize2D()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/trans/android/style/TextAppearanceSpan;->apply(Landroid/graphics/Paint;)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/trans/android/style/TextAppearanceSpan;->apply(Landroid/graphics/Paint;)V

    return-void
.end method
