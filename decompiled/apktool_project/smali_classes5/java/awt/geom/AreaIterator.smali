.class Ljava/awt/geom/AreaIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/geom/PathIterator;


# instance fields
.field private curves:Ljava/util/Vector;

.field private index:I

.field private prevcurve:Lsun/awt/geom/Curve;

.field private thiscurve:Lsun/awt/geom/Curve;

.field private transform:Ljava/awt/geom/AffineTransform;


# direct methods
.method public constructor <init>(Ljava/util/Vector;Ljava/awt/geom/AffineTransform;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/awt/geom/AreaIterator;->curves:Ljava/util/Vector;

    iput-object p2, p0, Ljava/awt/geom/AreaIterator;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsun/awt/geom/Curve;

    iput-object p1, p0, Ljava/awt/geom/AreaIterator;->thiscurve:Lsun/awt/geom/Curve;

    :cond_0
    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 9

    .line 3
    iget-object v0, p0, Ljava/awt/geom/AreaIterator;->prevcurve:Lsun/awt/geom/Curve;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Ljava/awt/geom/AreaIterator;->thiscurve:Lsun/awt/geom/Curve;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lsun/awt/geom/Curve;->getOrder()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Ljava/awt/geom/AreaIterator;->thiscurve:Lsun/awt/geom/Curve;

    invoke-virtual {v0}, Lsun/awt/geom/Curve;->getX0()D

    move-result-wide v2

    const/4 v0, 0x0

    aput-wide v2, p1, v0

    .line 6
    iget-object v0, p0, Ljava/awt/geom/AreaIterator;->thiscurve:Lsun/awt/geom/Curve;

    invoke-virtual {v0}, Lsun/awt/geom/Curve;->getY0()D

    move-result-wide v2

    aput-wide v2, p1, v1

    move v8, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x4

    return p0

    .line 7
    :cond_2
    iget-object v0, p0, Ljava/awt/geom/AreaIterator;->thiscurve:Lsun/awt/geom/Curve;

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {v0, p1}, Lsun/awt/geom/Curve;->getSegment([D)I

    move-result v0

    .line 9
    iget-object v2, p0, Ljava/awt/geom/AreaIterator;->thiscurve:Lsun/awt/geom/Curve;

    invoke-virtual {v2}, Lsun/awt/geom/Curve;->getOrder()I

    move-result v2

    if-nez v2, :cond_3

    move v8, v1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v0

    move v8, v2

    .line 10
    :goto_1
    iget-object v3, p0, Ljava/awt/geom/AreaIterator;->transform:Ljava/awt/geom/AffineTransform;

    if-eqz v3, :cond_4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    move-object v6, p1

    .line 11
    invoke-virtual/range {v3 .. v8}, Ljava/awt/geom/AffineTransform;->transform([DI[DII)V

    :cond_4
    return v1

    .line 12
    :cond_5
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "area iterator out of bounds"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public currentSegment([F)I
    .locals 6

    const/4 v0, 0x6

    new-array v0, v0, [D

    .line 1
    invoke-virtual {p0, v0}, Ljava/awt/geom/AreaIterator;->currentSegment([D)I

    move-result p0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    if-ne p0, v3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    mul-int/lit8 v4, v1, 0x2

    if-ge v2, v4, :cond_3

    .line 2
    aget-wide v4, v0, v2

    double-to-float v4, v4

    aput v4, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return p0
.end method

.method public getWindingRule()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isDone()Z
    .locals 1

    iget-object v0, p0, Ljava/awt/geom/AreaIterator;->prevcurve:Lsun/awt/geom/Curve;

    if-nez v0, :cond_0

    iget-object p0, p0, Ljava/awt/geom/AreaIterator;->thiscurve:Lsun/awt/geom/Curve;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()V
    .locals 6

    iget-object v0, p0, Ljava/awt/geom/AreaIterator;->prevcurve:Lsun/awt/geom/Curve;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Ljava/awt/geom/AreaIterator;->prevcurve:Lsun/awt/geom/Curve;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljava/awt/geom/AreaIterator;->thiscurve:Lsun/awt/geom/Curve;

    iput-object v0, p0, Ljava/awt/geom/AreaIterator;->prevcurve:Lsun/awt/geom/Curve;

    iget v0, p0, Ljava/awt/geom/AreaIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/awt/geom/AreaIterator;->index:I

    iget-object v2, p0, Ljava/awt/geom/AreaIterator;->curves:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Ljava/awt/geom/AreaIterator;->curves:Ljava/util/Vector;

    iget v2, p0, Ljava/awt/geom/AreaIterator;->index:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/awt/geom/Curve;

    iput-object v0, p0, Ljava/awt/geom/AreaIterator;->thiscurve:Lsun/awt/geom/Curve;

    invoke-virtual {v0}, Lsun/awt/geom/Curve;->getOrder()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/awt/geom/AreaIterator;->prevcurve:Lsun/awt/geom/Curve;

    invoke-virtual {v0}, Lsun/awt/geom/Curve;->getX1()D

    move-result-wide v2

    iget-object v0, p0, Ljava/awt/geom/AreaIterator;->thiscurve:Lsun/awt/geom/Curve;

    invoke-virtual {v0}, Lsun/awt/geom/Curve;->getX0()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-nez v0, :cond_2

    iget-object v0, p0, Ljava/awt/geom/AreaIterator;->prevcurve:Lsun/awt/geom/Curve;

    invoke-virtual {v0}, Lsun/awt/geom/Curve;->getY1()D

    move-result-wide v2

    iget-object v0, p0, Ljava/awt/geom/AreaIterator;->thiscurve:Lsun/awt/geom/Curve;

    invoke-virtual {v0}, Lsun/awt/geom/Curve;->getY0()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-nez v0, :cond_2

    iput-object v1, p0, Ljava/awt/geom/AreaIterator;->prevcurve:Lsun/awt/geom/Curve;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Ljava/awt/geom/AreaIterator;->thiscurve:Lsun/awt/geom/Curve;

    :cond_2
    :goto_0
    return-void
.end method
