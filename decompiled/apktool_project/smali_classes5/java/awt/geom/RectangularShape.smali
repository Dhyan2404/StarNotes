.class public abstract Ljava/awt/geom/RectangularShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/Shape;
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/awt/InternalError;

    invoke-direct {v0, p0}, Ljava/awt/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public contains(Ljava/awt/geom/Point2D;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-interface {p0, v0, v1, v2, v3}, Ljava/awt/Shape;->contains(DD)Z

    move-result p0

    return p0
.end method

.method public contains(Ljava/awt/geom/Rectangle2D;)Z
    .locals 9

    .line 2
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-interface/range {v0 .. v8}, Ljava/awt/Shape;->contains(DDDD)Z

    move-result p0

    return p0
.end method

.method public getBounds()Ljava/awt/Rectangle;
    .locals 12

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v6, v0, v4

    if-ltz v6, :cond_1

    cmpg-double v4, v2, v4

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v4

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    add-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    add-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    new-instance p0, Ljava/awt/Rectangle;

    double-to-int v4, v8

    double-to-int v5, v10

    sub-double/2addr v0, v8

    double-to-int v0, v0

    sub-double/2addr v2, v10

    double-to-int v1, v2

    invoke-direct {p0, v4, v5, v0, v1}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/awt/Rectangle;

    invoke-direct {p0}, Ljava/awt/Rectangle;-><init>()V

    return-object p0
.end method

.method public getCenterX()D
    .locals 6

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getCenterY()D
    .locals 6

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getFrame()Ljava/awt/geom/Rectangle2D;
    .locals 10

    new-instance v9, Ljava/awt/geom/Rectangle2D$Double;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v9
.end method

.method public abstract getHeight()D
.end method

.method public getMaxX()D
    .locals 4

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getMaxY()D
    .locals 4

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getMinX()D
    .locals 2

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMinY()D
    .locals 2

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v0

    return-wide v0
.end method

.method public getPathIterator(Ljava/awt/geom/AffineTransform;D)Ljava/awt/geom/PathIterator;
    .locals 1

    new-instance v0, Ljava/awt/geom/FlatteningPathIterator;

    invoke-interface {p0, p1}, Ljava/awt/Shape;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object p0

    invoke-direct {v0, p0, p2, p3}, Ljava/awt/geom/FlatteningPathIterator;-><init>(Ljava/awt/geom/PathIterator;D)V

    return-object v0
.end method

.method public abstract getWidth()D
.end method

.method public abstract getX()D
.end method

.method public abstract getY()D
.end method

.method public intersects(Ljava/awt/geom/Rectangle2D;)Z
    .locals 9

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-interface/range {v0 .. v8}, Ljava/awt/Shape;->intersects(DDDD)Z

    move-result p0

    return p0
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract setFrame(DDDD)V
.end method

.method public setFrame(Ljava/awt/geom/Point2D;Ljava/awt/geom/Dimension2D;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-virtual {p2}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v5

    invoke-virtual {p2}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/RectangularShape;->setFrame(DDDD)V

    return-void
.end method

.method public setFrame(Ljava/awt/geom/Rectangle2D;)V
    .locals 9

    .line 2
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/RectangularShape;->setFrame(DDDD)V

    return-void
.end method

.method public setFrameFromCenter(DDDD)V
    .locals 10

    sub-double v0, p5, p1

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sub-double v2, p7, p3

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    sub-double v4, p1, v0

    sub-double v6, p3, v2

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v8

    mul-double/2addr v2, v8

    move-wide p1, v4

    move-wide p3, v6

    move-wide p5, v0

    move-wide/from16 p7, v2

    .line 3
    invoke-virtual/range {p0 .. p8}, Ljava/awt/geom/RectangularShape;->setFrame(DDDD)V

    return-void
.end method

.method public setFrameFromCenter(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)V
    .locals 9

    .line 4
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v3

    .line 5
    invoke-virtual {p2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v5

    invoke-virtual {p2}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v7

    move-object v0, p0

    .line 6
    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/RectangularShape;->setFrameFromCenter(DDDD)V

    return-void
.end method

.method public setFrameFromDiagonal(DDDD)V
    .locals 3

    cmpg-double v0, p5, p1

    if-gez v0, :cond_0

    move-wide v1, p1

    move-wide p1, p5

    move-wide p5, v1

    :cond_0
    cmpg-double v0, p7, p3

    if-gez v0, :cond_1

    move-wide v1, p3

    move-wide p3, p7

    move-wide p7, v1

    :cond_1
    sub-double/2addr p5, p1

    sub-double/2addr p7, p3

    .line 1
    invoke-virtual/range {p0 .. p8}, Ljava/awt/geom/RectangularShape;->setFrame(DDDD)V

    return-void
.end method

.method public setFrameFromDiagonal(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)V
    .locals 9

    .line 2
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-virtual {p2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v5

    invoke-virtual {p2}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/RectangularShape;->setFrameFromDiagonal(DDDD)V

    return-void
.end method
