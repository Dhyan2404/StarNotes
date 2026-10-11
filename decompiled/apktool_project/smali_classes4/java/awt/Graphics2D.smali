.class public abstract Ljava/awt/Graphics2D;
.super Ljava/awt/Graphics;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/awt/Graphics;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addRenderingHints(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation
.end method

.method public abstract clearRect(IIII)V
.end method

.method public abstract clip(Ljava/awt/Shape;)V
.end method

.method public abstract clipRect(IIII)V
.end method

.method public abstract copyArea(IIIIII)V
.end method

.method public abstract create()Ljava/awt/Graphics;
.end method

.method public abstract dispose()V
.end method

.method public abstract draw(Ljava/awt/Shape;)V
.end method

.method public draw3DRect(IIIIZ)V
    .locals 6

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->getPaint()Ljava/awt/Paint;

    move-result-object v0

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->getColor()Ljava/awt/Color;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/Color;->brighter()Ljava/awt/Color;

    move-result-object v2

    invoke-virtual {v1}, Ljava/awt/Color;->darker()Ljava/awt/Color;

    move-result-object v1

    if-eqz p5, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {p0, v3}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    add-int/lit8 v3, p4, 0x1

    const/4 v4, 0x1

    invoke-virtual {p0, p1, p2, v4, v3}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v5, p3, -0x1

    invoke-virtual {p0, v3, p2, v5, v4}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    if-eqz p5, :cond_1

    move-object v2, v1

    :cond_1
    invoke-virtual {p0, v2}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    add-int p5, p2, p4

    invoke-virtual {p0, v3, p5, p3, v4}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    add-int/2addr p1, p3

    invoke-virtual {p0, p1, p2, v4, p4}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    invoke-virtual {p0, v0}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    return-void
.end method

.method public abstract drawArc(IIIIII)V
.end method

.method public abstract drawGlyphVector(Ljava/awt/font/GlyphVector;FF)V
.end method

.method public abstract drawImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImageOp;II)V
.end method

.method public abstract drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
.end method

.method public abstract drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z
.end method

.method public abstract drawLine(IIII)V
.end method

.method public abstract drawOval(IIII)V
.end method

.method public abstract drawPolygon([I[II)V
.end method

.method public abstract drawPolyline([I[II)V
.end method

.method public abstract drawRenderableImage(Ljava/awt/image/renderable/RenderableImage;Ljava/awt/geom/AffineTransform;)V
.end method

.method public abstract drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V
.end method

.method public abstract drawRoundRect(IIIIII)V
.end method

.method public abstract drawString(Ljava/lang/String;FF)V
.end method

.method public abstract drawString(Ljava/lang/String;II)V
.end method

.method public abstract drawString(Ljava/text/AttributedCharacterIterator;FF)V
.end method

.method public abstract drawString(Ljava/text/AttributedCharacterIterator;II)V
.end method

.method public abstract fill(Ljava/awt/Shape;)V
.end method

.method public fill3DRect(IIIIZ)V
    .locals 7

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->getPaint()Ljava/awt/Paint;

    move-result-object v0

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->getColor()Ljava/awt/Color;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/Color;->brighter()Ljava/awt/Color;

    move-result-object v2

    invoke-virtual {v1}, Ljava/awt/Color;->darker()Ljava/awt/Color;

    move-result-object v3

    if-nez p5, :cond_0

    invoke-virtual {p0, v3}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    goto :goto_0

    :cond_0
    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    :cond_1
    :goto_0
    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p3, -0x2

    add-int/lit8 v6, p4, -0x2

    invoke-virtual {p0, v1, v4, v5, v6}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    if-eqz p5, :cond_2

    move-object v4, v2

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    invoke-virtual {p0, v4}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    const/4 v4, 0x1

    invoke-virtual {p0, p1, p2, v4, p4}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    invoke-virtual {p0, v1, p2, v5, v4}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    if-eqz p5, :cond_3

    move-object v2, v3

    :cond_3
    invoke-virtual {p0, v2}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    add-int p5, p2, p4

    sub-int/2addr p5, v4

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p0, v1, p5, v2, v4}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    add-int/2addr p1, p3

    sub-int/2addr p1, v4

    sub-int/2addr p4, v4

    invoke-virtual {p0, p1, p2, v4, p4}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    invoke-virtual {p0, v0}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    return-void
.end method

.method public abstract fillArc(IIIIII)V
.end method

.method public abstract fillOval(IIII)V
.end method

.method public abstract fillPolygon([I[II)V
.end method

.method public abstract fillRect(IIII)V
.end method

.method public abstract fillRoundRect(IIIIII)V
.end method

.method public abstract getBackground()Ljava/awt/Color;
.end method

.method public abstract getClip()Ljava/awt/Shape;
.end method

.method public abstract getClipBounds()Ljava/awt/Rectangle;
.end method

.method public abstract getColor()Ljava/awt/Color;
.end method

.method public abstract getComposite()Ljava/awt/Composite;
.end method

.method public abstract getDeviceConfiguration()Ljava/awt/GraphicsConfiguration;
.end method

.method public abstract getFont()Ljava/awt/Font;
.end method

.method public abstract getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;
.end method

.method public abstract getFontRenderContext()Ljava/awt/font/FontRenderContext;
.end method

.method public abstract getPaint()Ljava/awt/Paint;
.end method

.method public abstract getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;
.end method

.method public abstract getRenderingHints()Ljava/awt/RenderingHints;
.end method

.method public abstract getStroke()Ljava/awt/Stroke;
.end method

.method public abstract getTransform()Ljava/awt/geom/AffineTransform;
.end method

.method public abstract hit(Ljava/awt/Rectangle;Ljava/awt/Shape;Z)Z
.end method

.method public abstract rotate(D)V
.end method

.method public abstract rotate(DDD)V
.end method

.method public abstract scale(DD)V
.end method

.method public abstract setBackground(Ljava/awt/Color;)V
.end method

.method public abstract setClip(IIII)V
.end method

.method public abstract setClip(Ljava/awt/Shape;)V
.end method

.method public abstract setColor(Ljava/awt/Color;)V
.end method

.method public abstract setComposite(Ljava/awt/Composite;)V
.end method

.method public abstract setFont(Ljava/awt/Font;)V
.end method

.method public abstract setPaint(Ljava/awt/Paint;)V
.end method

.method public abstract setPaintMode()V
.end method

.method public abstract setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V
.end method

.method public abstract setRenderingHints(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation
.end method

.method public abstract setStroke(Ljava/awt/Stroke;)V
.end method

.method public abstract setTransform(Ljava/awt/geom/AffineTransform;)V
.end method

.method public abstract setXORMode(Ljava/awt/Color;)V
.end method

.method public abstract shear(DD)V
.end method

.method public abstract transform(Ljava/awt/geom/AffineTransform;)V
.end method

.method public abstract translate(DD)V
.end method

.method public abstract translate(II)V
.end method
