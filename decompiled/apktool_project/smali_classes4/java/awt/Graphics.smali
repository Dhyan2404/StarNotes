.class public abstract Ljava/awt/Graphics;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clearRect(IIII)V
.end method

.method public abstract clipRect(IIII)V
.end method

.method public abstract copyArea(IIIIII)V
.end method

.method public abstract create()Ljava/awt/Graphics;
.end method

.method public create(IIII)Ljava/awt/Graphics;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/awt/Graphics;->create()Ljava/awt/Graphics;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/awt/Graphics;->translate(II)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1, p1, p3, p4}, Ljava/awt/Graphics;->clipRect(IIII)V

    return-object p0
.end method

.method public abstract dispose()V
.end method

.method public draw3DRect(IIIIZ)V
    .locals 4

    invoke-virtual {p0}, Ljava/awt/Graphics;->getColor()Ljava/awt/Color;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Color;->brighter()Ljava/awt/Color;

    move-result-object v1

    invoke-virtual {v0}, Ljava/awt/Color;->darker()Ljava/awt/Color;

    move-result-object v2

    if-eqz p5, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {p0, v3}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    add-int/2addr p4, p2

    invoke-virtual {p0, p1, p2, p1, p4}, Ljava/awt/Graphics;->drawLine(IIII)V

    add-int/lit8 v3, p1, 0x1

    add-int/2addr p1, p3

    add-int/lit8 p3, p1, -0x1

    invoke-virtual {p0, v3, p2, p3, p2}, Ljava/awt/Graphics;->drawLine(IIII)V

    if-eqz p5, :cond_1

    move-object v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    invoke-virtual {p0, v3, p4, p1, p4}, Ljava/awt/Graphics;->drawLine(IIII)V

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p0, p1, p2, p1, p4}, Ljava/awt/Graphics;->drawLine(IIII)V

    invoke-virtual {p0, v0}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    return-void
.end method

.method public abstract drawArc(IIIIII)V
.end method

.method public drawBytes([BIIII)V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Ljava/lang/String;-><init>([BIII)V

    invoke-virtual {p0, v0, p4, p5}, Ljava/awt/Graphics;->drawString(Ljava/lang/String;II)V

    return-void
.end method

.method public drawChars([CIIII)V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0, p4, p5}, Ljava/awt/Graphics;->drawString(Ljava/lang/String;II)V

    return-void
.end method

.method public abstract drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
.end method

.method public abstract drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/image/ImageObserver;)Z
.end method

.method public abstract drawImage(Ljava/awt/Image;IIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
.end method

.method public abstract drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z
.end method

.method public abstract drawImage(Ljava/awt/Image;IILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
.end method

.method public abstract drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
.end method

.method public abstract drawLine(IIII)V
.end method

.method public abstract drawOval(IIII)V
.end method

.method public drawPolygon(Ljava/awt/Polygon;)V
    .locals 2

    .line 1
    iget-object v0, p1, Ljava/awt/Polygon;->xpoints:[I

    iget-object v1, p1, Ljava/awt/Polygon;->ypoints:[I

    iget p1, p1, Ljava/awt/Polygon;->npoints:I

    invoke-virtual {p0, v0, v1, p1}, Ljava/awt/Graphics;->drawPolygon([I[II)V

    return-void
.end method

.method public abstract drawPolygon([I[II)V
.end method

.method public abstract drawPolyline([I[II)V
.end method

.method public drawRect(IIII)V
    .locals 1

    if-ltz p3, :cond_3

    if-gez p4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr p3, p1

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, p2, v0, p2}, Ljava/awt/Graphics;->drawLine(IIII)V

    add-int/2addr p4, p2

    add-int/lit8 v0, p4, -0x1

    invoke-virtual {p0, p3, p2, p3, v0}, Ljava/awt/Graphics;->drawLine(IIII)V

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p3, p4, v0, p4}, Ljava/awt/Graphics;->drawLine(IIII)V

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p4, p1, p2}, Ljava/awt/Graphics;->drawLine(IIII)V

    goto :goto_1

    :cond_2
    :goto_0
    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/Graphics;->drawLine(IIII)V

    :cond_3
    :goto_1
    return-void
.end method

.method public abstract drawRoundRect(IIIIII)V
.end method

.method public abstract drawString(Ljava/lang/String;II)V
.end method

.method public abstract drawString(Ljava/text/AttributedCharacterIterator;II)V
.end method

.method public fill3DRect(IIIIZ)V
    .locals 7

    invoke-virtual {p0}, Ljava/awt/Graphics;->getColor()Ljava/awt/Color;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Color;->brighter()Ljava/awt/Color;

    move-result-object v1

    invoke-virtual {v0}, Ljava/awt/Color;->darker()Ljava/awt/Color;

    move-result-object v2

    if-nez p5, :cond_0

    invoke-virtual {p0, v2}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    :cond_0
    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p3, -0x2

    add-int/lit8 v6, p4, -0x2

    invoke-virtual {p0, v3, v4, v5, v6}, Ljava/awt/Graphics;->fillRect(IIII)V

    if-eqz p5, :cond_1

    move-object v4, v1

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    invoke-virtual {p0, v4}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    add-int/2addr p4, p2

    add-int/lit8 v4, p4, -0x1

    invoke-virtual {p0, p1, p2, p1, v4}, Ljava/awt/Graphics;->drawLine(IIII)V

    add-int/2addr p1, p3

    add-int/lit8 p3, p1, -0x2

    invoke-virtual {p0, v3, p2, p3, p2}, Ljava/awt/Graphics;->drawLine(IIII)V

    if-eqz p5, :cond_2

    move-object v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, v3, v4, p1, v4}, Ljava/awt/Graphics;->drawLine(IIII)V

    add-int/lit8 p4, p4, -0x2

    invoke-virtual {p0, p1, p2, p1, p4}, Ljava/awt/Graphics;->drawLine(IIII)V

    invoke-virtual {p0, v0}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    return-void
.end method

.method public abstract fillArc(IIIIII)V
.end method

.method public abstract fillOval(IIII)V
.end method

.method public fillPolygon(Ljava/awt/Polygon;)V
    .locals 2

    .line 1
    iget-object v0, p1, Ljava/awt/Polygon;->xpoints:[I

    iget-object v1, p1, Ljava/awt/Polygon;->ypoints:[I

    iget p1, p1, Ljava/awt/Polygon;->npoints:I

    invoke-virtual {p0, v0, v1, p1}, Ljava/awt/Graphics;->fillPolygon([I[II)V

    return-void
.end method

.method public abstract fillPolygon([I[II)V
.end method

.method public abstract fillRect(IIII)V
.end method

.method public abstract fillRoundRect(IIIIII)V
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Ljava/awt/Graphics;->dispose()V

    return-void
.end method

.method public abstract getClip()Ljava/awt/Shape;
.end method

.method public abstract getClipBounds()Ljava/awt/Rectangle;
.end method

.method public getClipBounds(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/awt/Graphics;->getClipBounds()Ljava/awt/Rectangle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    iget v0, p0, Ljava/awt/Rectangle;->x:I

    iput v0, p1, Ljava/awt/Rectangle;->x:I

    .line 3
    iget v0, p0, Ljava/awt/Rectangle;->y:I

    iput v0, p1, Ljava/awt/Rectangle;->y:I

    .line 4
    iget v0, p0, Ljava/awt/Rectangle;->width:I

    iput v0, p1, Ljava/awt/Rectangle;->width:I

    .line 5
    iget p0, p0, Ljava/awt/Rectangle;->height:I

    iput p0, p1, Ljava/awt/Rectangle;->height:I

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    return-object p1

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null rectangle parameter"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getClipRect()Ljava/awt/Rectangle;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/awt/Graphics;->getClipBounds()Ljava/awt/Rectangle;

    move-result-object p0

    return-object p0
.end method

.method public abstract getColor()Ljava/awt/Color;
.end method

.method public abstract getFont()Ljava/awt/Font;
.end method

.method public getFontMetrics()Ljava/awt/FontMetrics;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/awt/Graphics;->getFont()Ljava/awt/Font;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/awt/Graphics;->getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;

    move-result-object p0

    return-object p0
.end method

.method public abstract getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;
.end method

.method public hitClip(IIII)Z
    .locals 9

    invoke-virtual {p0}, Ljava/awt/Graphics;->getClipBounds()Ljava/awt/Rectangle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    int-to-double v1, p1

    int-to-double v3, p2

    int-to-double v5, p3

    int-to-double v7, p4

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D;->intersects(DDDD)Z

    move-result p0

    return p0
.end method

.method public abstract setClip(IIII)V
.end method

.method public abstract setClip(Ljava/awt/Shape;)V
.end method

.method public abstract setColor(Ljava/awt/Color;)V
.end method

.method public abstract setFont(Ljava/awt/Font;)V
.end method

.method public abstract setPaintMode()V
.end method

.method public abstract setXORMode(Ljava/awt/Color;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[font="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/Graphics;->getFont()Ljava/awt/Font;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/Graphics;->getColor()Ljava/awt/Color;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract translate(II)V
.end method
