.class public final Lio/nano/tex/Graphics2D;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CAP_BUTT:I = 0x0

.field private static final CAP_ROUND:I = 0x1

.field private static final CAP_SQUARE:I = 0x2

.field private static final JOIN_BEVEL:I = 0x0

.field private static final JOIN_MITER:I = 0x1

.field private static final JOIN_ROUND:I = 0x2

.field private static final PX:I = 0x7

.field private static final PY:I = 0x8

.field private static final R:I = 0x6

.field private static final SX:I = 0x0

.field private static final SY:I = 0x4

.field static final TAG:Ljava/lang/String; = "io.nano.tex.Graphics2D"

.field private static final TX:I = 0x2

.field private static final TY:I = 0x5


# instance fields
.field private T:[F

.field private canvas:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field private colorLocked:Z

.field private paint:Landroid/text/TextPaint;

.field private sb:Ljava/lang/StringBuilder;

.field private tr:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lio/nano/tex/Graphics2D;-><init>(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Canvas;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 4
    fill-array-data v0, :array_0

    iput-object v0, p0, Lio/nano/tex/Graphics2D;->T:[F

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/nano/tex/Graphics2D;->colorLocked:Z

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lio/nano/tex/Graphics2D;->sb:Ljava/lang/StringBuilder;

    .line 7
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/nano/tex/Graphics2D;->tr:Landroid/graphics/RectF;

    if-eqz p1, :cond_0

    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/nano/tex/Graphics2D;->canvas:Ljava/lang/ref/WeakReference;

    .line 9
    :cond_0
    invoke-direct {p0}, Lio/nano/tex/Graphics2D;->init()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p0, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    const/high16 v0, 0x42380000    # 46.0f

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private renderRect(FFFFLandroid/graphics/Paint$Style;)V
    .locals 7

    invoke-virtual {p0}, Lio/nano/tex/Graphics2D;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v6

    iget-object v1, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {v1, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p5, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {p5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p5

    iget-object v1, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {p0, p5}, Lio/nano/tex/Graphics2D;->h(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0, p1}, Lio/nano/tex/Graphics2D;->x(F)F

    move-result v1

    invoke-virtual {p0, p2}, Lio/nano/tex/Graphics2D;->y(F)F

    move-result v2

    invoke-virtual {p0, p3}, Lio/nano/tex/Graphics2D;->w(F)F

    move-result p1

    invoke-virtual {p0, p4}, Lio/nano/tex/Graphics2D;->h(F)F

    move-result p2

    add-float v3, v1, p1

    add-float v4, v2, p2

    iget-object v5, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p0, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {p0, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private renderRoundRect(FFFFFFLandroid/graphics/Paint$Style;)V
    .locals 4

    invoke-virtual {p0}, Lio/nano/tex/Graphics2D;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    iget-object v2, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {v2, p7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p7, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {p7}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p7

    iget-object v2, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {p0, p7}, Lio/nano/tex/Graphics2D;->h(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lio/nano/tex/Graphics2D;->tr:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Lio/nano/tex/Graphics2D;->x(F)F

    move-result p1

    iput p1, v2, Landroid/graphics/RectF;->left:F

    iget-object p1, p0, Lio/nano/tex/Graphics2D;->tr:Landroid/graphics/RectF;

    invoke-virtual {p0, p2}, Lio/nano/tex/Graphics2D;->y(F)F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->top:F

    iget-object p1, p0, Lio/nano/tex/Graphics2D;->tr:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, p3}, Lio/nano/tex/Graphics2D;->w(F)F

    move-result p3

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->right:F

    iget-object p1, p0, Lio/nano/tex/Graphics2D;->tr:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, p4}, Lio/nano/tex/Graphics2D;->h(F)F

    move-result p3

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, p5}, Lio/nano/tex/Graphics2D;->w(F)F

    move-result p1

    invoke-virtual {p0, p6}, Lio/nano/tex/Graphics2D;->h(F)F

    move-result p2

    iget-object p3, p0, Lio/nano/tex/Graphics2D;->tr:Landroid/graphics/RectF;

    iget-object p4, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0, p3, p1, p2, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p0, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {p0, p7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public drawChar(CFF)V
    .locals 3

    iget-object v0, p0, Lio/nano/tex/Graphics2D;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/nano/tex/Graphics2D;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lio/nano/tex/Graphics2D;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lio/nano/tex/Graphics2D;->drawText(Ljava/lang/String;FF)V

    return-void
.end method

.method public drawLine(FFFF)V
    .locals 7

    invoke-virtual {p0}, Lio/nano/tex/Graphics2D;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    invoke-virtual {p0, v6}, Lio/nano/tex/Graphics2D;->h(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v2

    if-gez v3, :cond_1

    move v1, v2

    :cond_1
    iget-object v2, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0, p1}, Lio/nano/tex/Graphics2D;->x(F)F

    move-result v1

    invoke-virtual {p0, p2}, Lio/nano/tex/Graphics2D;->y(F)F

    move-result v2

    invoke-virtual {p0, p3}, Lio/nano/tex/Graphics2D;->x(F)F

    move-result v3

    invoke-virtual {p0, p4}, Lio/nano/tex/Graphics2D;->y(F)F

    move-result v4

    iget-object v5, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object p0, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {p0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public drawRect(FFFF)V
    .locals 6

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lio/nano/tex/Graphics2D;->renderRect(FFFFLandroid/graphics/Paint$Style;)V

    return-void
.end method

.method public drawRoundRect(FFFFFF)V
    .locals 8

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lio/nano/tex/Graphics2D;->renderRoundRect(FFFFFFLandroid/graphics/Paint$Style;)V

    return-void
.end method

.method public drawText(Ljava/lang/String;FF)V
    .locals 6

    invoke-virtual {p0}, Lio/nano/tex/Graphics2D;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    iget-object v2, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v2

    iget-object v3, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lio/nano/tex/Graphics2D;->sy()F

    move-result v4

    mul-float/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lio/nano/tex/Graphics2D;->sx()F

    move-result v4

    invoke-virtual {p0}, Lio/nano/tex/Graphics2D;->sy()F

    move-result v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextScaleX(F)V

    invoke-virtual {p0, p2}, Lio/nano/tex/Graphics2D;->x(F)F

    move-result p2

    invoke-virtual {p0, p3}, Lio/nano/tex/Graphics2D;->y(F)F

    move-result p3

    iget-object v3, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p0, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    return-void
.end method

.method public fillRect(FFFF)V
    .locals 6

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lio/nano/tex/Graphics2D;->renderRect(FFFFLandroid/graphics/Paint$Style;)V

    return-void
.end method

.method public fillRoundRect(FFFFFF)V
    .locals 8

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lio/nano/tex/Graphics2D;->renderRoundRect(FFFFFFLandroid/graphics/Paint$Style;)V

    return-void
.end method

.method public getCanvas()Landroid/graphics/Canvas;
    .locals 0

    iget-object p0, p0, Lio/nano/tex/Graphics2D;->canvas:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Canvas;

    return-object p0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    return-object p0
.end method

.method public h(F)F
    .locals 1

    iget-object p0, p0, Lio/nano/tex/Graphics2D;->T:[F

    const/4 v0, 0x4

    aget p0, p0, v0

    mul-float/2addr p0, p1

    return p0
.end method

.method public lockColor()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/nano/tex/Graphics2D;->colorLocked:Z

    return-void
.end method

.method public px()F
    .locals 1

    iget-object p0, p0, Lio/nano/tex/Graphics2D;->T:[F

    const/4 v0, 0x7

    aget p0, p0, v0

    return p0
.end method

.method public py()F
    .locals 1

    iget-object p0, p0, Lio/nano/tex/Graphics2D;->T:[F

    const/16 v0, 0x8

    aget p0, p0, v0

    return p0
.end method

.method public r()F
    .locals 1

    iget-object p0, p0, Lio/nano/tex/Graphics2D;->T:[F

    const/4 v0, 0x6

    aget p0, p0, v0

    return p0
.end method

.method public reset()V
    .locals 5

    invoke-virtual {p0}, Lio/nano/tex/Graphics2D;->r()F

    move-result v0

    invoke-virtual {p0}, Lio/nano/tex/Graphics2D;->px()F

    move-result v1

    invoke-virtual {p0}, Lio/nano/tex/Graphics2D;->py()F

    move-result v2

    invoke-virtual {p0}, Lio/nano/tex/Graphics2D;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v3

    const/16 v4, 0x9

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    iput-object v4, p0, Lio/nano/tex/Graphics2D;->T:[F

    if-nez v3, :cond_0

    return-void

    :cond_0
    neg-float p0, v0

    invoke-virtual {v3, p0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public rotate(FFF)V
    .locals 4

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    double-to-float p1, v0

    iget-object v0, p0, Lio/nano/tex/Graphics2D;->T:[F

    const/4 v1, 0x6

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    const/4 v1, 0x7

    invoke-virtual {p0, p2}, Lio/nano/tex/Graphics2D;->x(F)F

    move-result p2

    aput p2, v0, v1

    iget-object p2, p0, Lio/nano/tex/Graphics2D;->T:[F

    const/16 v0, 0x8

    invoke-virtual {p0, p3}, Lio/nano/tex/Graphics2D;->y(F)F

    move-result p3

    aput p3, p2, v0

    invoke-virtual {p0}, Lio/nano/tex/Graphics2D;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lio/nano/tex/Graphics2D;->px()F

    move-result p3

    invoke-virtual {p0}, Lio/nano/tex/Graphics2D;->py()F

    move-result p0

    invoke-virtual {p2, p1, p3, p0}, Landroid/graphics/Canvas;->rotate(FFF)V

    return-void
.end method

.method public scale(FF)V
    .locals 2

    iget-object p0, p0, Lio/nano/tex/Graphics2D;->T:[F

    const/4 v0, 0x0

    aget v1, p0, v0

    mul-float/2addr v1, p1

    aput v1, p0, v0

    const/4 p1, 0x4

    aget v0, p0, p1

    mul-float/2addr v0, p2

    aput v0, p0, p1

    return-void
.end method

.method public setCanvas(Landroid/graphics/Canvas;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/nano/tex/Graphics2D;->canvas:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-boolean v0, p0, Lio/nano/tex/Graphics2D;->colorLocked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setFont(Lio/nano/tex/Font;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p0, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    const/high16 p1, 0x42380000    # 46.0f

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Lio/nano/tex/Font;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p0, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Lio/nano/tex/Font;->getSize()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_0
    return-void
.end method

.method public setStroke(FFII)V
    .locals 1

    iget-object v0, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    const/4 p1, 0x2

    const/4 p2, 0x1

    if-eqz p3, :cond_2

    if-eq p3, p2, :cond_1

    if-eq p3, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :goto_0
    if-eqz p4, :cond_5

    if-eq p4, p2, :cond_4

    if-eq p4, p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    sget-object p1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    :goto_1
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    iget-object p0, p0, Lio/nano/tex/Graphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public sx()F
    .locals 1

    iget-object p0, p0, Lio/nano/tex/Graphics2D;->T:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public sy()F
    .locals 1

    iget-object p0, p0, Lio/nano/tex/Graphics2D;->T:[F

    const/4 v0, 0x4

    aget p0, p0, v0

    return p0
.end method

.method public translate(FF)V
    .locals 3

    iget-object p0, p0, Lio/nano/tex/Graphics2D;->T:[F

    const/4 v0, 0x2

    aget v1, p0, v0

    const/4 v2, 0x0

    aget v2, p0, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    aput v1, p0, v0

    const/4 p1, 0x5

    aget v0, p0, p1

    const/4 v1, 0x4

    aget v1, p0, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    aput v0, p0, p1

    return-void
.end method

.method public unlockColor()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/nano/tex/Graphics2D;->colorLocked:Z

    return-void
.end method

.method public w(F)F
    .locals 1

    iget-object p0, p0, Lio/nano/tex/Graphics2D;->T:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    mul-float/2addr p0, p1

    return p0
.end method

.method public x(F)F
    .locals 1

    iget-object p0, p0, Lio/nano/tex/Graphics2D;->T:[F

    const/4 v0, 0x0

    aget v0, p0, v0

    mul-float/2addr p1, v0

    const/4 v0, 0x2

    aget p0, p0, v0

    add-float/2addr p1, p0

    return p1
.end method

.method public y(F)F
    .locals 1

    iget-object p0, p0, Lio/nano/tex/Graphics2D;->T:[F

    const/4 v0, 0x4

    aget v0, p0, v0

    mul-float/2addr p1, v0

    const/4 v0, 0x5

    aget p0, p0, v0

    add-float/2addr p1, p0

    return p1
.end method
