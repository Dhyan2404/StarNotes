.class final Lsun/font/Decoration$DecorationImpl;
.super Lsun/font/Decoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/Decoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DecorationImpl"
.end annotation


# instance fields
.field private bgPaint:Ljava/awt/Paint;

.field private fgPaint:Ljava/awt/Paint;

.field private imUnderline:Lsun/font/Underline;

.field private stdUnderline:Lsun/font/Underline;

.field private strikethrough:Z

.field private swapColors:Z


# direct methods
.method public constructor <init>(Ljava/awt/Paint;Ljava/awt/Paint;ZZLsun/font/Underline;Lsun/font/Underline;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsun/font/Decoration;-><init>(Lsun/font/Decoration$1;)V

    iput-object p1, p0, Lsun/font/Decoration$DecorationImpl;->fgPaint:Ljava/awt/Paint;

    iput-object p2, p0, Lsun/font/Decoration$DecorationImpl;->bgPaint:Ljava/awt/Paint;

    iput-boolean p3, p0, Lsun/font/Decoration$DecorationImpl;->swapColors:Z

    iput-boolean p4, p0, Lsun/font/Decoration$DecorationImpl;->strikethrough:Z

    iput-object p5, p0, Lsun/font/Decoration$DecorationImpl;->stdUnderline:Lsun/font/Underline;

    iput-object p6, p0, Lsun/font/Decoration$DecorationImpl;->imUnderline:Lsun/font/Underline;

    return-void
.end method

.method private static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private drawTextAndEmbellishments(Lsun/font/Decoration$Label;Ljava/awt/Graphics2D;FF)V
    .locals 8

    invoke-interface {p1, p2, p3, p4}, Lsun/font/Decoration$Label;->handleDraw(Ljava/awt/Graphics2D;FF)V

    iget-boolean v0, p0, Lsun/font/Decoration$DecorationImpl;->strikethrough:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/font/Decoration$DecorationImpl;->stdUnderline:Lsun/font/Underline;

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/font/Decoration$DecorationImpl;->imUnderline:Lsun/font/Underline;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lsun/font/Decoration$Label;->getLogicalBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    double-to-float v0, v0

    add-float/2addr v0, p3

    invoke-interface {p1}, Lsun/font/Decoration$Label;->getCoreMetrics()Lsun/font/CoreMetrics;

    move-result-object p1

    iget-boolean v1, p0, Lsun/font/Decoration$DecorationImpl;->strikethrough:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/awt/Graphics2D;->getStroke()Ljava/awt/Stroke;

    move-result-object v1

    new-instance v2, Ljava/awt/BasicStroke;

    iget v3, p1, Lsun/font/CoreMetrics;->strikethroughThickness:F

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Ljava/awt/BasicStroke;-><init>(FII)V

    invoke-virtual {p2, v2}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    iget v2, p1, Lsun/font/CoreMetrics;->strikethroughOffset:F

    add-float/2addr v2, p4

    new-instance v3, Ljava/awt/geom/Line2D$Float;

    invoke-direct {v3, p3, v2, v0, v2}, Ljava/awt/geom/Line2D$Float;-><init>(FFFF)V

    invoke-virtual {p2, v3}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    invoke-virtual {p2, v1}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    :cond_1
    iget v7, p1, Lsun/font/CoreMetrics;->underlineOffset:F

    iget p1, p1, Lsun/font/CoreMetrics;->underlineThickness:F

    iget-object v1, p0, Lsun/font/Decoration$DecorationImpl;->stdUnderline:Lsun/font/Underline;

    if-eqz v1, :cond_2

    add-float v6, p4, v7

    move-object v2, p2

    move v3, p1

    move v4, p3

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Lsun/font/Underline;->drawUnderline(Ljava/awt/Graphics2D;FFFF)V

    :cond_2
    iget-object v1, p0, Lsun/font/Decoration$DecorationImpl;->imUnderline:Lsun/font/Underline;

    if-eqz v1, :cond_3

    add-float v6, p4, v7

    move-object v2, p2

    move v3, p1

    move v4, p3

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Lsun/font/Underline;->drawUnderline(Ljava/awt/Graphics2D;FFFF)V

    :cond_3
    return-void
.end method

.method private getUnderlineMaxY(Lsun/font/CoreMetrics;)F
    .locals 4

    iget-object v0, p0, Lsun/font/Decoration$DecorationImpl;->stdUnderline:Lsun/font/Underline;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p1, Lsun/font/CoreMetrics;->underlineOffset:F

    iget v3, p1, Lsun/font/CoreMetrics;->underlineThickness:F

    invoke-virtual {v0, v3}, Lsun/font/Underline;->getLowerDrawLimit(F)F

    move-result v0

    add-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_0
    iget-object p0, p0, Lsun/font/Decoration$DecorationImpl;->imUnderline:Lsun/font/Underline;

    if-eqz p0, :cond_1

    iget v0, p1, Lsun/font/CoreMetrics;->underlineOffset:F

    iget p1, p1, Lsun/font/CoreMetrics;->underlineThickness:F

    invoke-virtual {p0, p1}, Lsun/font/Underline;->getLowerDrawLimit(F)F

    move-result p0

    add-float/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_1
    return v1
.end method


# virtual methods
.method public drawTextAndDecorations(Lsun/font/Decoration$Label;Ljava/awt/Graphics2D;FF)V
    .locals 10

    iget-object v0, p0, Lsun/font/Decoration$DecorationImpl;->fgPaint:Ljava/awt/Paint;

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/font/Decoration$DecorationImpl;->bgPaint:Ljava/awt/Paint;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lsun/font/Decoration$DecorationImpl;->swapColors:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lsun/font/Decoration$DecorationImpl;->drawTextAndEmbellishments(Lsun/font/Decoration$Label;Ljava/awt/Graphics2D;FF)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Ljava/awt/Graphics2D;->getPaint()Ljava/awt/Paint;

    move-result-object v0

    iget-boolean v1, p0, Lsun/font/Decoration$DecorationImpl;->swapColors:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lsun/font/Decoration$DecorationImpl;->fgPaint:Ljava/awt/Paint;

    if-nez v1, :cond_1

    move-object v1, v0

    :cond_1
    iget-object v2, p0, Lsun/font/Decoration$DecorationImpl;->bgPaint:Ljava/awt/Paint;

    if-nez v2, :cond_6

    instance-of v2, v1, Ljava/awt/Color;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getRed()I

    move-result v3

    mul-int/lit8 v3, v3, 0x21

    invoke-virtual {v2}, Ljava/awt/Color;->getGreen()I

    move-result v4

    mul-int/lit8 v4, v4, 0x35

    add-int/2addr v3, v4

    invoke-virtual {v2}, Ljava/awt/Color;->getBlue()I

    move-result v2

    mul-int/lit8 v2, v2, 0xe

    add-int/2addr v3, v2

    const/16 v2, 0x4844

    if-le v3, v2, :cond_2

    sget-object v2, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    goto :goto_1

    :cond_2
    sget-object v2, Ljava/awt/Color;->WHITE:Ljava/awt/Color;

    goto :goto_1

    :cond_3
    sget-object v2, Ljava/awt/Color;->WHITE:Ljava/awt/Color;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lsun/font/Decoration$DecorationImpl;->fgPaint:Ljava/awt/Paint;

    if-nez v1, :cond_5

    move-object v2, v0

    goto :goto_0

    :cond_5
    move-object v2, v1

    :goto_0
    iget-object v1, p0, Lsun/font/Decoration$DecorationImpl;->bgPaint:Ljava/awt/Paint;

    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    invoke-interface {p1}, Lsun/font/Decoration$Label;->getLogicalBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v3

    new-instance v4, Ljava/awt/geom/Rectangle2D$Float;

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v5

    double-to-float v5, v5

    add-float/2addr v5, p3

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v6

    double-to-float v6, v6

    add-float/2addr v6, p4

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v7

    double-to-float v7, v7

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v8

    double-to-float v3, v8

    invoke-direct {v4, v5, v6, v7, v3}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    invoke-virtual {p2, v1}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    invoke-virtual {p2, v4}, Ljava/awt/Graphics2D;->fill(Ljava/awt/Shape;)V

    :cond_7
    invoke-virtual {p2, v2}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lsun/font/Decoration$DecorationImpl;->drawTextAndEmbellishments(Lsun/font/Decoration$Label;Ljava/awt/Graphics2D;FF)V

    invoke-virtual {p2, v0}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    :goto_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    :try_start_0
    check-cast p1, Lsun/font/Decoration$DecorationImpl;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v1, p0, Lsun/font/Decoration$DecorationImpl;->swapColors:Z

    iget-boolean v2, p1, Lsun/font/Decoration$DecorationImpl;->swapColors:Z

    if-ne v1, v2, :cond_6

    iget-boolean v1, p0, Lsun/font/Decoration$DecorationImpl;->strikethrough:Z

    iget-boolean v2, p1, Lsun/font/Decoration$DecorationImpl;->strikethrough:Z

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lsun/font/Decoration$DecorationImpl;->stdUnderline:Lsun/font/Underline;

    iget-object v2, p1, Lsun/font/Decoration$DecorationImpl;->stdUnderline:Lsun/font/Underline;

    invoke-static {v1, v2}, Lsun/font/Decoration$DecorationImpl;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-object v1, p0, Lsun/font/Decoration$DecorationImpl;->fgPaint:Ljava/awt/Paint;

    iget-object v2, p1, Lsun/font/Decoration$DecorationImpl;->fgPaint:Ljava/awt/Paint;

    invoke-static {v1, v2}, Lsun/font/Decoration$DecorationImpl;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lsun/font/Decoration$DecorationImpl;->bgPaint:Ljava/awt/Paint;

    iget-object v2, p1, Lsun/font/Decoration$DecorationImpl;->bgPaint:Ljava/awt/Paint;

    invoke-static {v1, v2}, Lsun/font/Decoration$DecorationImpl;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    :cond_5
    iget-object p0, p0, Lsun/font/Decoration$DecorationImpl;->imUnderline:Lsun/font/Underline;

    iget-object p1, p1, Lsun/font/Decoration$DecorationImpl;->imUnderline:Lsun/font/Underline;

    invoke-static {p0, p1}, Lsun/font/Decoration$DecorationImpl;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :catch_0
    :cond_6
    :goto_0
    return v0
.end method

.method public getOutline(Lsun/font/Decoration$Label;FF)Ljava/awt/Shape;
    .locals 8

    iget-boolean v0, p0, Lsun/font/Decoration$DecorationImpl;->strikethrough:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/font/Decoration$DecorationImpl;->stdUnderline:Lsun/font/Underline;

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/font/Decoration$DecorationImpl;->imUnderline:Lsun/font/Underline;

    if-nez v0, :cond_0

    invoke-interface {p1, p2, p3}, Lsun/font/Decoration$Label;->handleGetOutline(FF)Ljava/awt/Shape;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lsun/font/Decoration$Label;->getCoreMetrics()Lsun/font/CoreMetrics;

    move-result-object v0

    iget v1, v0, Lsun/font/CoreMetrics;->underlineThickness:F

    iget v2, v0, Lsun/font/CoreMetrics;->underlineOffset:F

    invoke-interface {p1}, Lsun/font/Decoration$Label;->getLogicalBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v3, p2

    iget-object v4, p0, Lsun/font/Decoration$DecorationImpl;->stdUnderline:Lsun/font/Underline;

    if-eqz v4, :cond_1

    add-float v5, p3, v2

    invoke-virtual {v4, v1, p2, v3, v5}, Lsun/font/Underline;->getUnderlineShape(FFFF)Ljava/awt/Shape;

    move-result-object v4

    new-instance v5, Ljava/awt/geom/Area;

    invoke-direct {v5, v4}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    iget-boolean v4, p0, Lsun/font/Decoration$DecorationImpl;->strikethrough:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/awt/BasicStroke;

    iget v6, v0, Lsun/font/CoreMetrics;->strikethroughThickness:F

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7, v7}, Ljava/awt/BasicStroke;-><init>(FII)V

    iget v0, v0, Lsun/font/CoreMetrics;->strikethroughOffset:F

    add-float/2addr v0, p3

    new-instance v6, Ljava/awt/geom/Line2D$Float;

    invoke-direct {v6, p2, v0, v3, v0}, Ljava/awt/geom/Line2D$Float;-><init>(FFFF)V

    new-instance v0, Ljava/awt/geom/Area;

    invoke-interface {v4, v6}, Ljava/awt/Stroke;->createStrokedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    if-nez v5, :cond_2

    move-object v5, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v0}, Ljava/awt/geom/Area;->add(Ljava/awt/geom/Area;)V

    :cond_3
    :goto_1
    iget-object p0, p0, Lsun/font/Decoration$DecorationImpl;->imUnderline:Lsun/font/Underline;

    if-eqz p0, :cond_5

    add-float/2addr v2, p3

    invoke-virtual {p0, v1, p2, v3, v2}, Lsun/font/Underline;->getUnderlineShape(FFFF)Ljava/awt/Shape;

    move-result-object p0

    new-instance v0, Ljava/awt/geom/Area;

    invoke-direct {v0, p0}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    if-nez v5, :cond_4

    move-object v5, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v5, v0}, Ljava/awt/geom/Area;->add(Ljava/awt/geom/Area;)V

    :cond_5
    :goto_2
    new-instance p0, Ljava/awt/geom/Area;

    invoke-interface {p1, p2, p3}, Lsun/font/Decoration$Label;->handleGetOutline(FF)Ljava/awt/Shape;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    invoke-virtual {v5, p0}, Ljava/awt/geom/Area;->add(Ljava/awt/geom/Area;)V

    new-instance p0, Ljava/awt/geom/GeneralPath;

    invoke-direct {p0, v5}, Ljava/awt/geom/GeneralPath;-><init>(Ljava/awt/Shape;)V

    return-object p0
.end method

.method public getVisualBounds(Lsun/font/Decoration$Label;)Ljava/awt/geom/Rectangle2D;
    .locals 6

    invoke-interface {p1}, Lsun/font/Decoration$Label;->handleGetVisualBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    iget-boolean v1, p0, Lsun/font/Decoration$DecorationImpl;->swapColors:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lsun/font/Decoration$DecorationImpl;->bgPaint:Ljava/awt/Paint;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lsun/font/Decoration$DecorationImpl;->strikethrough:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lsun/font/Decoration$DecorationImpl;->stdUnderline:Lsun/font/Underline;

    if-nez v1, :cond_0

    iget-object v1, p0, Lsun/font/Decoration$DecorationImpl;->imUnderline:Lsun/font/Underline;

    if-eqz v1, :cond_3

    :cond_0
    invoke-interface {p1}, Lsun/font/Decoration$Label;->getLogicalBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    iget-boolean v2, p0, Lsun/font/Decoration$DecorationImpl;->swapColors:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-object v2, p0, Lsun/font/Decoration$DecorationImpl;->bgPaint:Ljava/awt/Paint;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    move v4, v2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v4

    double-to-float v2, v4

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v4

    double-to-float v4, v4

    add-float/2addr v4, v2

    :goto_1
    invoke-interface {p1}, Lsun/font/Decoration$Label;->getCoreMetrics()Lsun/font/CoreMetrics;

    move-result-object p1

    invoke-direct {p0, p1}, Lsun/font/Decoration$DecorationImpl;->getUnderlineMaxY(Lsun/font/CoreMetrics;)F

    move-result p0

    invoke-static {v4, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    new-instance p1, Ljava/awt/geom/Rectangle2D$Float;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v4

    double-to-float v1, v4

    sub-float/2addr p0, v2

    invoke-direct {p1, v3, v2, v1, p0}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    invoke-virtual {v0, p1}, Ljava/awt/geom/Rectangle2D;->add(Ljava/awt/geom/Rectangle2D;)V

    :cond_3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lsun/font/Decoration$DecorationImpl;->strikethrough:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lsun/font/Decoration$DecorationImpl;->swapColors:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object p0, p0, Lsun/font/Decoration$DecorationImpl;->stdUnderline:Lsun/font/Underline;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lsun/font/Decoration$DecorationImpl;->fgPaint:Ljava/awt/Paint;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fgPaint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/font/Decoration$DecorationImpl;->fgPaint:Ljava/awt/Paint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lsun/font/Decoration$DecorationImpl;->bgPaint:Ljava/awt/Paint;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " bgPaint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/font/Decoration$DecorationImpl;->bgPaint:Ljava/awt/Paint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-boolean v1, p0, Lsun/font/Decoration$DecorationImpl;->swapColors:Z

    if-eqz v1, :cond_2

    const-string v1, " swapColors: true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-boolean v1, p0, Lsun/font/Decoration$DecorationImpl;->strikethrough:Z

    if-eqz v1, :cond_3

    const-string v1, " strikethrough: true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v1, p0, Lsun/font/Decoration$DecorationImpl;->stdUnderline:Lsun/font/Underline;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " stdUnderline: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/font/Decoration$DecorationImpl;->stdUnderline:Lsun/font/Underline;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v1, p0, Lsun/font/Decoration$DecorationImpl;->imUnderline:Lsun/font/Underline;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " imUnderline: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lsun/font/Decoration$DecorationImpl;->imUnderline:Lsun/font/Underline;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
