.class Ljava/awt/geom/RectIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/geom/PathIterator;


# instance fields
.field affine:Ljava/awt/geom/AffineTransform;

.field h:D

.field index:I

.field w:D

.field x:D

.field y:D


# direct methods
.method public constructor <init>(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    iput-wide v0, p0, Ljava/awt/geom/RectIterator;->x:D

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v0

    iput-wide v0, p0, Ljava/awt/geom/RectIterator;->y:D

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    iput-wide v0, p0, Ljava/awt/geom/RectIterator;->w:D

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    iput-wide v0, p0, Ljava/awt/geom/RectIterator;->h:D

    iput-object p2, p0, Ljava/awt/geom/RectIterator;->affine:Ljava/awt/geom/AffineTransform;

    iget-wide p1, p0, Ljava/awt/geom/RectIterator;->w:D

    const-wide/16 v2, 0x0

    cmpg-double p1, p1, v2

    if-ltz p1, :cond_0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_1

    :cond_0
    const/4 p1, 0x6

    iput p1, p0, Ljava/awt/geom/RectIterator;->index:I

    :cond_1
    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 13

    .line 11
    invoke-virtual {p0}, Ljava/awt/geom/RectIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_7

    .line 12
    iget v0, p0, Ljava/awt/geom/RectIterator;->index:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 p0, 0x4

    return p0

    .line 13
    :cond_0
    iget-wide v1, p0, Ljava/awt/geom/RectIterator;->x:D

    const/4 v3, 0x0

    aput-wide v1, p1, v3

    .line 14
    iget-wide v4, p0, Ljava/awt/geom/RectIterator;->y:D

    const/4 v6, 0x1

    aput-wide v4, p1, v6

    const/4 v7, 0x2

    if-eq v0, v6, :cond_1

    if-ne v0, v7, :cond_2

    .line 15
    :cond_1
    iget-wide v8, p0, Ljava/awt/geom/RectIterator;->w:D

    add-double/2addr v1, v8

    aput-wide v1, p1, v3

    :cond_2
    if-eq v0, v7, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 16
    :cond_3
    iget-wide v0, p0, Ljava/awt/geom/RectIterator;->h:D

    add-double/2addr v4, v0

    aput-wide v4, p1, v6

    .line 17
    :cond_4
    iget-object v7, p0, Ljava/awt/geom/RectIterator;->affine:Ljava/awt/geom/AffineTransform;

    if-eqz v7, :cond_5

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v8, p1

    move-object v10, p1

    .line 18
    invoke-virtual/range {v7 .. v12}, Ljava/awt/geom/AffineTransform;->transform([DI[DII)V

    .line 19
    :cond_5
    iget p0, p0, Ljava/awt/geom/RectIterator;->index:I

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move v3, v6

    :goto_0
    return v3

    .line 20
    :cond_7
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "rect iterator out of bounds"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public currentSegment([F)I
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/awt/geom/RectIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2
    iget v0, p0, Ljava/awt/geom/RectIterator;->index:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 p0, 0x4

    return p0

    .line 3
    :cond_0
    iget-wide v1, p0, Ljava/awt/geom/RectIterator;->x:D

    double-to-float v1, v1

    const/4 v2, 0x0

    aput v1, p1, v2

    .line 4
    iget-wide v3, p0, Ljava/awt/geom/RectIterator;->y:D

    double-to-float v3, v3

    const/4 v4, 0x1

    aput v3, p1, v4

    const/4 v5, 0x2

    if-eq v0, v4, :cond_1

    if-ne v0, v5, :cond_2

    .line 5
    :cond_1
    iget-wide v6, p0, Ljava/awt/geom/RectIterator;->w:D

    double-to-float v6, v6

    add-float/2addr v1, v6

    aput v1, p1, v2

    :cond_2
    if-eq v0, v5, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 6
    :cond_3
    iget-wide v0, p0, Ljava/awt/geom/RectIterator;->h:D

    double-to-float v0, v0

    add-float/2addr v3, v0

    aput v3, p1, v4

    .line 7
    :cond_4
    iget-object v5, p0, Ljava/awt/geom/RectIterator;->affine:Ljava/awt/geom/AffineTransform;

    if-eqz v5, :cond_5

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v6, p1

    move-object v8, p1

    .line 8
    invoke-virtual/range {v5 .. v10}, Ljava/awt/geom/AffineTransform;->transform([FI[FII)V

    .line 9
    :cond_5
    iget p0, p0, Ljava/awt/geom/RectIterator;->index:I

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move v2, v4

    :goto_0
    return v2

    .line 10
    :cond_7
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "rect iterator out of bounds"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWindingRule()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isDone()Z
    .locals 1

    iget p0, p0, Ljava/awt/geom/RectIterator;->index:I

    const/4 v0, 0x5

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()V
    .locals 1

    iget v0, p0, Ljava/awt/geom/RectIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/awt/geom/RectIterator;->index:I

    return-void
.end method
