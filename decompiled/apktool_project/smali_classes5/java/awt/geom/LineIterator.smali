.class Ljava/awt/geom/LineIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/geom/PathIterator;


# instance fields
.field affine:Ljava/awt/geom/AffineTransform;

.field index:I

.field line:Ljava/awt/geom/Line2D;


# direct methods
.method public constructor <init>(Ljava/awt/geom/Line2D;Ljava/awt/geom/AffineTransform;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/awt/geom/LineIterator;->line:Ljava/awt/geom/Line2D;

    iput-object p2, p0, Ljava/awt/geom/LineIterator;->affine:Ljava/awt/geom/AffineTransform;

    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 8

    .line 10
    invoke-virtual {p0}, Ljava/awt/geom/LineIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    iget v0, p0, Ljava/awt/geom/LineIterator;->index:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Ljava/awt/geom/LineIterator;->line:Ljava/awt/geom/Line2D;

    invoke-virtual {v0}, Ljava/awt/geom/Line2D;->getX1()D

    move-result-wide v3

    aput-wide v3, p1, v2

    .line 13
    iget-object v0, p0, Ljava/awt/geom/LineIterator;->line:Ljava/awt/geom/Line2D;

    invoke-virtual {v0}, Ljava/awt/geom/Line2D;->getY1()D

    move-result-wide v3

    aput-wide v3, p1, v1

    move v1, v2

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Ljava/awt/geom/LineIterator;->line:Ljava/awt/geom/Line2D;

    invoke-virtual {v0}, Ljava/awt/geom/Line2D;->getX2()D

    move-result-wide v3

    aput-wide v3, p1, v2

    .line 15
    iget-object v0, p0, Ljava/awt/geom/LineIterator;->line:Ljava/awt/geom/Line2D;

    invoke-virtual {v0}, Ljava/awt/geom/Line2D;->getY2()D

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 16
    :goto_0
    iget-object v2, p0, Ljava/awt/geom/LineIterator;->affine:Ljava/awt/geom/AffineTransform;

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, p1

    move-object v5, p1

    .line 17
    invoke-virtual/range {v2 .. v7}, Ljava/awt/geom/AffineTransform;->transform([DI[DII)V

    :cond_1
    return v1

    .line 18
    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "line iterator out of bounds"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public currentSegment([F)I
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/awt/geom/LineIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget v0, p0, Ljava/awt/geom/LineIterator;->index:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Ljava/awt/geom/LineIterator;->line:Ljava/awt/geom/Line2D;

    invoke-virtual {v0}, Ljava/awt/geom/Line2D;->getX1()D

    move-result-wide v3

    double-to-float v0, v3

    aput v0, p1, v2

    .line 4
    iget-object v0, p0, Ljava/awt/geom/LineIterator;->line:Ljava/awt/geom/Line2D;

    invoke-virtual {v0}, Ljava/awt/geom/Line2D;->getY1()D

    move-result-wide v3

    double-to-float v0, v3

    aput v0, p1, v1

    move v1, v2

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Ljava/awt/geom/LineIterator;->line:Ljava/awt/geom/Line2D;

    invoke-virtual {v0}, Ljava/awt/geom/Line2D;->getX2()D

    move-result-wide v3

    double-to-float v0, v3

    aput v0, p1, v2

    .line 6
    iget-object v0, p0, Ljava/awt/geom/LineIterator;->line:Ljava/awt/geom/Line2D;

    invoke-virtual {v0}, Ljava/awt/geom/Line2D;->getY2()D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 7
    :goto_0
    iget-object v2, p0, Ljava/awt/geom/LineIterator;->affine:Ljava/awt/geom/AffineTransform;

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, p1

    move-object v5, p1

    .line 8
    invoke-virtual/range {v2 .. v7}, Ljava/awt/geom/AffineTransform;->transform([FI[FII)V

    :cond_1
    return v1

    .line 9
    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "line iterator out of bounds"

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

    iget p0, p0, Ljava/awt/geom/LineIterator;->index:I

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()V
    .locals 1

    iget v0, p0, Ljava/awt/geom/LineIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/awt/geom/LineIterator;->index:I

    return-void
.end method
