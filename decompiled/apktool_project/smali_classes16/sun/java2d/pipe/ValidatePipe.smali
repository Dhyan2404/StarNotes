.class public Lsun/java2d/pipe/ValidatePipe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/pipe/PixelDrawPipe;
.implements Lsun/java2d/pipe/PixelFillPipe;
.implements Lsun/java2d/pipe/ShapeDrawPipe;
.implements Lsun/java2d/pipe/TextPipe;
.implements Lsun/java2d/pipe/DrawImagePipe;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 12

    .line 3
    invoke-virtual {p0, p1}, Lsun/java2d/pipe/ValidatePipe;->validate(Lsun/java2d/SunGraphics2D;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 4
    iget-object v1, v0, Lsun/java2d/SunGraphics2D;->imagepipe:Lsun/java2d/pipe/DrawImagePipe;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-interface/range {v1 .. v11}, Lsun/java2d/pipe/DrawImagePipe;->copyImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public copyImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lsun/java2d/pipe/ValidatePipe;->validate(Lsun/java2d/SunGraphics2D;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->imagepipe:Lsun/java2d/pipe/DrawImagePipe;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lsun/java2d/pipe/DrawImagePipe;->copyImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public draw(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V
    .locals 0

    invoke-virtual {p0, p1}, Lsun/java2d/pipe/ValidatePipe;->validate(Lsun/java2d/SunGraphics2D;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    invoke-interface {p0, p1, p2}, Lsun/java2d/pipe/ShapeDrawPipe;->draw(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    :cond_0
    return-void
.end method

.method public drawArc(Lsun/java2d/SunGraphics2D;IIIIII)V
    .locals 8

    invoke-virtual {p0, p1}, Lsun/java2d/pipe/ValidatePipe;->validate(Lsun/java2d/SunGraphics2D;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lsun/java2d/pipe/PixelDrawPipe;->drawArc(Lsun/java2d/SunGraphics2D;IIIIII)V

    :cond_0
    return-void
.end method

.method public drawChars(Lsun/java2d/SunGraphics2D;[CIIII)V
    .locals 7

    invoke-virtual {p0, p1}, Lsun/java2d/pipe/ValidatePipe;->validate(Lsun/java2d/SunGraphics2D;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lsun/java2d/pipe/TextPipe;->drawChars(Lsun/java2d/SunGraphics2D;[CIIII)V

    :cond_0
    return-void
.end method

.method public drawGlyphVector(Lsun/java2d/SunGraphics2D;Ljava/awt/font/GlyphVector;FF)V
    .locals 0

    invoke-virtual {p0, p1}, Lsun/java2d/pipe/ValidatePipe;->validate(Lsun/java2d/SunGraphics2D;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    invoke-interface {p0, p1, p2, p3, p4}, Lsun/java2d/pipe/TextPipe;->drawGlyphVector(Lsun/java2d/SunGraphics2D;Ljava/awt/font/GlyphVector;FF)V

    :cond_0
    return-void
.end method

.method public drawLine(Lsun/java2d/SunGraphics2D;IIII)V
    .locals 6

    invoke-virtual {p0, p1}, Lsun/java2d/pipe/ValidatePipe;->validate(Lsun/java2d/SunGraphics2D;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lsun/java2d/pipe/PixelDrawPipe;->drawLine(Lsun/java2d/SunGraphics2D;IIII)V

    :cond_0
    return-void
.end method

.method public drawOval(Lsun/java2d/SunGraphics2D;IIII)V
    .locals 6

    invoke-virtual {p0, p1}, Lsun/java2d/pipe/ValidatePipe;->validate(Lsun/java2d/SunGraphics2D;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lsun/java2d/pipe/PixelDrawPipe;->drawOval(Lsun/java2d/SunGraphics2D;IIII)V

    :cond_0
    return-void
.end method

.method public drawPolygon(Lsun/java2d/SunGraphics2D;[I[II)V
    .locals 0

    invoke-virtual {p0, p1}, Lsun/java2d/pipe/ValidatePipe;->validate(Lsun/java2d/SunGraphics2D;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    invoke-interface {p0, p1, p2, p3, p4}, Lsun/java2d/pipe/PixelDrawPipe;->drawPolygon(Lsun/java2d/SunGraphics2D;[I[II)V

    :cond_0
    return-void
.end method

.method public drawPolyline(Lsun/java2d/SunGraphics2D;[I[II)V
    .locals 0

    invoke-virtual {p0, p1}, Lsun/java2d/pipe/ValidatePipe;->validate(Lsun/java2d/SunGraphics2D;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    invoke-interface {p0, p1, p2, p3, p4}, Lsun/java2d/pipe/PixelDrawPipe;->drawPolyline(Lsun/java2d/SunGraphics2D;[I[II)V

    :cond_0
    return-void
.end method

.method public drawRect(Lsun/java2d/SunGraphics2D;IIII)V
    .locals 6

    invoke-virtual {p0, p1}, Lsun/java2d/pipe/ValidatePipe;->validate(Lsun/java2d/SunGraphics2D;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lsun/java2d/pipe/PixelDrawPipe;->drawRect(Lsun/java2d/SunGraphics2D;IIII)V

    :cond_0
    return-void
.end method

.method public drawRoundRect(Lsun/java2d/SunGraphics2D;IIIIII)V
    .locals 8

    invoke-virtual {p0, p1}, Lsun/java2d/pipe/ValidatePipe;->validate(Lsun/java2d/SunGraphics2D;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lsun/java2d/pipe/PixelDrawPipe;->drawRoundRect(Lsun/java2d/SunGraphics2D;IIIIII)V

    :cond_0
    return-void
.end method

.method public drawString(Lsun/java2d/SunGraphics2D;Ljava/lang/String;DD)V
    .locals 7

    invoke-virtual {p0, p1}, Lsun/java2d/pipe/ValidatePipe;->validate(Lsun/java2d/SunGraphics2D;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lsun/java2d/pipe/TextPipe;->drawString(Lsun/java2d/SunGraphics2D;Ljava/lang/String;DD)V

    :cond_0
    return-void
.end method

.method public fill(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V
    .locals 0

    invoke-virtual {p0, p1}, Lsun/java2d/pipe/ValidatePipe;->validate(Lsun/java2d/SunGraphics2D;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    invoke-interface {p0, p1, p2}, Lsun/java2d/pipe/ShapeDrawPipe;->fill(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    :cond_0
    return-void
.end method

.method public fillArc(Lsun/java2d/SunGraphics2D;IIIIII)V
    .locals 8

    invoke-virtual {p0, p1}, Lsun/java2d/pipe/ValidatePipe;->validate(Lsun/java2d/SunGraphics2D;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lsun/java2d/pipe/PixelFillPipe;->fillArc(Lsun/java2d/SunGraphics2D;IIIIII)V

    :cond_0
    return-void
.end method

.method public fillOval(Lsun/java2d/SunGraphics2D;IIII)V
    .locals 6

    invoke-virtual {p0, p1}, Lsun/java2d/pipe/ValidatePipe;->validate(Lsun/java2d/SunGraphics2D;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lsun/java2d/pipe/PixelFillPipe;->fillOval(Lsun/java2d/SunGraphics2D;IIII)V

    :cond_0
    return-void
.end method

.method public fillPolygon(Lsun/java2d/SunGraphics2D;[I[II)V
    .locals 0

    invoke-virtual {p0, p1}, Lsun/java2d/pipe/ValidatePipe;->validate(Lsun/java2d/SunGraphics2D;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    invoke-interface {p0, p1, p2, p3, p4}, Lsun/java2d/pipe/PixelFillPipe;->fillPolygon(Lsun/java2d/SunGraphics2D;[I[II)V

    :cond_0
    return-void
.end method

.method public fillRect(Lsun/java2d/SunGraphics2D;IIII)V
    .locals 6

    invoke-virtual {p0, p1}, Lsun/java2d/pipe/ValidatePipe;->validate(Lsun/java2d/SunGraphics2D;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lsun/java2d/pipe/PixelFillPipe;->fillRect(Lsun/java2d/SunGraphics2D;IIII)V

    :cond_0
    return-void
.end method

.method public fillRoundRect(Lsun/java2d/SunGraphics2D;IIIIII)V
    .locals 8

    invoke-virtual {p0, p1}, Lsun/java2d/pipe/ValidatePipe;->validate(Lsun/java2d/SunGraphics2D;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lsun/java2d/pipe/PixelFillPipe;->fillRoundRect(Lsun/java2d/SunGraphics2D;IIIIII)V

    :cond_0
    return-void
.end method

.method public scaleImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 14

    .line 3
    invoke-virtual {p0, p1}, Lsun/java2d/pipe/ValidatePipe;->validate(Lsun/java2d/SunGraphics2D;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 4
    iget-object v1, v0, Lsun/java2d/SunGraphics2D;->imagepipe:Lsun/java2d/pipe/DrawImagePipe;

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-interface/range {v1 .. v13}, Lsun/java2d/pipe/DrawImagePipe;->scaleImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public scaleImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lsun/java2d/pipe/ValidatePipe;->validate(Lsun/java2d/SunGraphics2D;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 2
    iget-object v1, v0, Lsun/java2d/SunGraphics2D;->imagepipe:Lsun/java2d/pipe/DrawImagePipe;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lsun/java2d/pipe/DrawImagePipe;->scaleImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public transformImage(Lsun/java2d/SunGraphics2D;Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImageOp;II)V
    .locals 6

    .line 3
    invoke-virtual {p0, p1}, Lsun/java2d/pipe/ValidatePipe;->validate(Lsun/java2d/SunGraphics2D;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->imagepipe:Lsun/java2d/pipe/DrawImagePipe;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lsun/java2d/pipe/DrawImagePipe;->transformImage(Lsun/java2d/SunGraphics2D;Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImageOp;II)V

    :cond_0
    return-void
.end method

.method public transformImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsun/java2d/pipe/ValidatePipe;->validate(Lsun/java2d/SunGraphics2D;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    iget-object p0, p1, Lsun/java2d/SunGraphics2D;->imagepipe:Lsun/java2d/pipe/DrawImagePipe;

    invoke-interface {p0, p1, p2, p3, p4}, Lsun/java2d/pipe/DrawImagePipe;->transformImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public validate(Lsun/java2d/SunGraphics2D;)Z
    .locals 0

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->validatePipe()V

    const/4 p0, 0x1

    return p0
.end method
