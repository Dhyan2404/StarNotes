.class public Lsun/java2d/pipe/PixelToShapeConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/pipe/PixelDrawPipe;
.implements Lsun/java2d/pipe/PixelFillPipe;


# instance fields
.field outpipe:Lsun/java2d/pipe/ShapeDrawPipe;


# direct methods
.method public constructor <init>(Lsun/java2d/pipe/ShapeDrawPipe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/java2d/pipe/PixelToShapeConverter;->outpipe:Lsun/java2d/pipe/ShapeDrawPipe;

    return-void
.end method

.method private makePoly([I[IIZ)Ljava/awt/Shape;
    .locals 3

    new-instance p0, Ljava/awt/geom/GeneralPath;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/awt/geom/GeneralPath;-><init>(I)V

    if-lez p3, :cond_1

    aget v1, p1, v0

    int-to-float v1, v1

    aget v0, p2, v0

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Ljava/awt/geom/Path2D$Float;->moveTo(FF)V

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p3, :cond_0

    aget v1, p1, v0

    int-to-float v1, v1

    aget v2, p2, v0

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2}, Ljava/awt/geom/Path2D$Float;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p0}, Ljava/awt/geom/Path2D;->closePath()V

    :cond_1
    return-object p0
.end method


# virtual methods
.method public drawArc(Lsun/java2d/SunGraphics2D;IIIIII)V
    .locals 10

    move-object v0, p0

    iget-object v0, v0, Lsun/java2d/pipe/PixelToShapeConverter;->outpipe:Lsun/java2d/pipe/ShapeDrawPipe;

    new-instance v9, Ljava/awt/geom/Arc2D$Float;

    move v1, p2

    int-to-float v2, v1

    move v1, p3

    int-to-float v3, v1

    move v1, p4

    int-to-float v4, v1

    move v1, p5

    int-to-float v5, v1

    move/from16 v1, p6

    int-to-float v6, v1

    move/from16 v1, p7

    int-to-float v7, v1

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/awt/geom/Arc2D$Float;-><init>(FFFFFFI)V

    move-object v1, p1

    invoke-interface {v0, p1, v9}, Lsun/java2d/pipe/ShapeDrawPipe;->draw(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void
.end method

.method public drawLine(Lsun/java2d/SunGraphics2D;IIII)V
    .locals 1

    iget-object p0, p0, Lsun/java2d/pipe/PixelToShapeConverter;->outpipe:Lsun/java2d/pipe/ShapeDrawPipe;

    new-instance v0, Ljava/awt/geom/Line2D$Float;

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    int-to-float p5, p5

    invoke-direct {v0, p2, p3, p4, p5}, Ljava/awt/geom/Line2D$Float;-><init>(FFFF)V

    invoke-interface {p0, p1, v0}, Lsun/java2d/pipe/ShapeDrawPipe;->draw(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void
.end method

.method public drawOval(Lsun/java2d/SunGraphics2D;IIII)V
    .locals 1

    iget-object p0, p0, Lsun/java2d/pipe/PixelToShapeConverter;->outpipe:Lsun/java2d/pipe/ShapeDrawPipe;

    new-instance v0, Ljava/awt/geom/Ellipse2D$Float;

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    int-to-float p5, p5

    invoke-direct {v0, p2, p3, p4, p5}, Ljava/awt/geom/Ellipse2D$Float;-><init>(FFFF)V

    invoke-interface {p0, p1, v0}, Lsun/java2d/pipe/ShapeDrawPipe;->draw(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void
.end method

.method public drawPolygon(Lsun/java2d/SunGraphics2D;[I[II)V
    .locals 2

    iget-object v0, p0, Lsun/java2d/pipe/PixelToShapeConverter;->outpipe:Lsun/java2d/pipe/ShapeDrawPipe;

    const/4 v1, 0x1

    invoke-direct {p0, p2, p3, p4, v1}, Lsun/java2d/pipe/PixelToShapeConverter;->makePoly([I[IIZ)Ljava/awt/Shape;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lsun/java2d/pipe/ShapeDrawPipe;->draw(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void
.end method

.method public drawPolyline(Lsun/java2d/SunGraphics2D;[I[II)V
    .locals 2

    iget-object v0, p0, Lsun/java2d/pipe/PixelToShapeConverter;->outpipe:Lsun/java2d/pipe/ShapeDrawPipe;

    const/4 v1, 0x0

    invoke-direct {p0, p2, p3, p4, v1}, Lsun/java2d/pipe/PixelToShapeConverter;->makePoly([I[IIZ)Ljava/awt/Shape;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lsun/java2d/pipe/ShapeDrawPipe;->draw(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void
.end method

.method public drawRect(Lsun/java2d/SunGraphics2D;IIII)V
    .locals 1

    iget-object p0, p0, Lsun/java2d/pipe/PixelToShapeConverter;->outpipe:Lsun/java2d/pipe/ShapeDrawPipe;

    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0, p2, p3, p4, p5}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-interface {p0, p1, v0}, Lsun/java2d/pipe/ShapeDrawPipe;->draw(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void
.end method

.method public drawRoundRect(Lsun/java2d/SunGraphics2D;IIIIII)V
    .locals 8

    iget-object p0, p0, Lsun/java2d/pipe/PixelToShapeConverter;->outpipe:Lsun/java2d/pipe/ShapeDrawPipe;

    new-instance v7, Ljava/awt/geom/RoundRectangle2D$Float;

    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    int-to-float v5, p6

    int-to-float v6, p7

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/awt/geom/RoundRectangle2D$Float;-><init>(FFFFFF)V

    invoke-interface {p0, p1, v7}, Lsun/java2d/pipe/ShapeDrawPipe;->draw(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void
.end method

.method public fillArc(Lsun/java2d/SunGraphics2D;IIIIII)V
    .locals 10

    move-object v0, p0

    iget-object v0, v0, Lsun/java2d/pipe/PixelToShapeConverter;->outpipe:Lsun/java2d/pipe/ShapeDrawPipe;

    new-instance v9, Ljava/awt/geom/Arc2D$Float;

    move v1, p2

    int-to-float v2, v1

    move v1, p3

    int-to-float v3, v1

    move v1, p4

    int-to-float v4, v1

    move v1, p5

    int-to-float v5, v1

    move/from16 v1, p6

    int-to-float v6, v1

    move/from16 v1, p7

    int-to-float v7, v1

    const/4 v8, 0x2

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/awt/geom/Arc2D$Float;-><init>(FFFFFFI)V

    move-object v1, p1

    invoke-interface {v0, p1, v9}, Lsun/java2d/pipe/ShapeDrawPipe;->fill(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void
.end method

.method public fillOval(Lsun/java2d/SunGraphics2D;IIII)V
    .locals 1

    iget-object p0, p0, Lsun/java2d/pipe/PixelToShapeConverter;->outpipe:Lsun/java2d/pipe/ShapeDrawPipe;

    new-instance v0, Ljava/awt/geom/Ellipse2D$Float;

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    int-to-float p5, p5

    invoke-direct {v0, p2, p3, p4, p5}, Ljava/awt/geom/Ellipse2D$Float;-><init>(FFFF)V

    invoke-interface {p0, p1, v0}, Lsun/java2d/pipe/ShapeDrawPipe;->fill(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void
.end method

.method public fillPolygon(Lsun/java2d/SunGraphics2D;[I[II)V
    .locals 2

    iget-object v0, p0, Lsun/java2d/pipe/PixelToShapeConverter;->outpipe:Lsun/java2d/pipe/ShapeDrawPipe;

    const/4 v1, 0x1

    invoke-direct {p0, p2, p3, p4, v1}, Lsun/java2d/pipe/PixelToShapeConverter;->makePoly([I[IIZ)Ljava/awt/Shape;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lsun/java2d/pipe/ShapeDrawPipe;->fill(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void
.end method

.method public fillRect(Lsun/java2d/SunGraphics2D;IIII)V
    .locals 1

    iget-object p0, p0, Lsun/java2d/pipe/PixelToShapeConverter;->outpipe:Lsun/java2d/pipe/ShapeDrawPipe;

    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0, p2, p3, p4, p5}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-interface {p0, p1, v0}, Lsun/java2d/pipe/ShapeDrawPipe;->fill(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void
.end method

.method public fillRoundRect(Lsun/java2d/SunGraphics2D;IIIIII)V
    .locals 8

    iget-object p0, p0, Lsun/java2d/pipe/PixelToShapeConverter;->outpipe:Lsun/java2d/pipe/ShapeDrawPipe;

    new-instance v7, Ljava/awt/geom/RoundRectangle2D$Float;

    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    int-to-float v5, p6

    int-to-float v6, p7

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/awt/geom/RoundRectangle2D$Float;-><init>(FFFFFF)V

    invoke-interface {p0, p1, v7}, Lsun/java2d/pipe/ShapeDrawPipe;->fill(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void
.end method
