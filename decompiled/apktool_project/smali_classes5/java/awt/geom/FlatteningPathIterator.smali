.class public Ljava/awt/geom/FlatteningPathIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/geom/PathIterator;


# static fields
.field static final GROW_SIZE:I = 0x18


# instance fields
.field curx:D

.field cury:D

.field done:Z

.field hold:[D

.field holdEnd:I

.field holdIndex:I

.field holdType:I

.field levelIndex:I

.field levels:[I

.field limit:I

.field movx:D

.field movy:D

.field squareflat:D

.field src:Ljava/awt/geom/PathIterator;


# direct methods
.method public constructor <init>(Ljava/awt/geom/PathIterator;D)V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/awt/geom/FlatteningPathIterator;-><init>(Ljava/awt/geom/PathIterator;DI)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/geom/PathIterator;DI)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    new-array v0, v0, [D

    .line 3
    iput-object v0, p0, Ljava/awt/geom/FlatteningPathIterator;->hold:[D

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-ltz v0, :cond_1

    if-ltz p4, :cond_0

    .line 4
    iput-object p1, p0, Ljava/awt/geom/FlatteningPathIterator;->src:Ljava/awt/geom/PathIterator;

    mul-double/2addr p2, p2

    .line 5
    iput-wide p2, p0, Ljava/awt/geom/FlatteningPathIterator;->squareflat:D

    .line 6
    iput p4, p0, Ljava/awt/geom/FlatteningPathIterator;->limit:I

    add-int/lit8 p4, p4, 0x1

    .line 7
    new-array p1, p4, [I

    iput-object p1, p0, Ljava/awt/geom/FlatteningPathIterator;->levels:[I

    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Ljava/awt/geom/FlatteningPathIterator;->next(Z)V

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "limit must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "flatness must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private next(Z)V
    .locals 13

    .line 2
    iget v0, p0, Ljava/awt/geom/FlatteningPathIterator;->holdIndex:I

    iget v1, p0, Ljava/awt/geom/FlatteningPathIterator;->holdEnd:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_2

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Ljava/awt/geom/FlatteningPathIterator;->src:Ljava/awt/geom/PathIterator;

    invoke-interface {p1}, Ljava/awt/geom/PathIterator;->next()V

    .line 4
    :cond_0
    iget-object p1, p0, Ljava/awt/geom/FlatteningPathIterator;->src:Ljava/awt/geom/PathIterator;

    invoke-interface {p1}, Ljava/awt/geom/PathIterator;->isDone()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iput-boolean v3, p0, Ljava/awt/geom/FlatteningPathIterator;->done:Z

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Ljava/awt/geom/FlatteningPathIterator;->src:Ljava/awt/geom/PathIterator;

    iget-object v0, p0, Ljava/awt/geom/FlatteningPathIterator;->hold:[D

    invoke-interface {p1, v0}, Ljava/awt/geom/PathIterator;->currentSegment([D)I

    move-result p1

    iput p1, p0, Ljava/awt/geom/FlatteningPathIterator;->holdType:I

    .line 7
    iput v2, p0, Ljava/awt/geom/FlatteningPathIterator;->levelIndex:I

    .line 8
    iget-object p1, p0, Ljava/awt/geom/FlatteningPathIterator;->levels:[I

    aput v2, p1, v2

    .line 9
    :cond_2
    iget p1, p0, Ljava/awt/geom/FlatteningPathIterator;->holdType:I

    if-eqz p1, :cond_c

    if-eq p1, v3, :cond_c

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v4, 0x6

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eq p1, v5, :cond_8

    if-eq p1, v1, :cond_4

    if-eq p1, v6, :cond_3

    goto/16 :goto_4

    .line 10
    :cond_3
    iget-wide v0, p0, Ljava/awt/geom/FlatteningPathIterator;->movx:D

    iput-wide v0, p0, Ljava/awt/geom/FlatteningPathIterator;->curx:D

    .line 11
    iget-wide v0, p0, Ljava/awt/geom/FlatteningPathIterator;->movy:D

    iput-wide v0, p0, Ljava/awt/geom/FlatteningPathIterator;->cury:D

    .line 12
    iput v2, p0, Ljava/awt/geom/FlatteningPathIterator;->holdIndex:I

    .line 13
    iput v2, p0, Ljava/awt/geom/FlatteningPathIterator;->holdEnd:I

    goto/16 :goto_4

    .line 14
    :cond_4
    iget p1, p0, Ljava/awt/geom/FlatteningPathIterator;->holdIndex:I

    iget v7, p0, Ljava/awt/geom/FlatteningPathIterator;->holdEnd:I

    if-lt p1, v7, :cond_5

    .line 15
    iget-object p1, p0, Ljava/awt/geom/FlatteningPathIterator;->hold:[D

    array-length v7, p1

    add-int/lit8 v7, v7, -0x8

    iput v7, p0, Ljava/awt/geom/FlatteningPathIterator;->holdIndex:I

    .line 16
    array-length v8, p1

    sub-int/2addr v8, v5

    iput v8, p0, Ljava/awt/geom/FlatteningPathIterator;->holdEnd:I

    add-int/lit8 v8, v7, 0x0

    .line 17
    iget-wide v9, p0, Ljava/awt/geom/FlatteningPathIterator;->curx:D

    aput-wide v9, p1, v8

    add-int/lit8 v8, v7, 0x1

    .line 18
    iget-wide v9, p0, Ljava/awt/geom/FlatteningPathIterator;->cury:D

    aput-wide v9, p1, v8

    add-int/lit8 v8, v7, 0x2

    .line 19
    aget-wide v9, p1, v2

    aput-wide v9, p1, v8

    add-int/lit8 v2, v7, 0x3

    .line 20
    aget-wide v8, p1, v3

    aput-wide v8, p1, v2

    add-int/lit8 v2, v7, 0x4

    .line 21
    aget-wide v8, p1, v5

    aput-wide v8, p1, v2

    add-int/lit8 v2, v7, 0x5

    .line 22
    aget-wide v8, p1, v1

    aput-wide v8, p1, v2

    add-int/lit8 v1, v7, 0x6

    .line 23
    aget-wide v5, p1, v6

    iput-wide v5, p0, Ljava/awt/geom/FlatteningPathIterator;->curx:D

    aput-wide v5, p1, v1

    add-int/lit8 v7, v7, 0x7

    .line 24
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljava/awt/geom/FlatteningPathIterator;->cury:D

    aput-wide v0, p1, v7

    .line 25
    :cond_5
    iget-object p1, p0, Ljava/awt/geom/FlatteningPathIterator;->levels:[I

    iget v0, p0, Ljava/awt/geom/FlatteningPathIterator;->levelIndex:I

    aget p1, p1, v0

    .line 26
    :goto_0
    iget v0, p0, Ljava/awt/geom/FlatteningPathIterator;->limit:I

    if-ge p1, v0, :cond_7

    .line 27
    iget-object v0, p0, Ljava/awt/geom/FlatteningPathIterator;->hold:[D

    iget v1, p0, Ljava/awt/geom/FlatteningPathIterator;->holdIndex:I

    invoke-static {v0, v1}, Ljava/awt/geom/CubicCurve2D;->getFlatnessSq([DI)D

    move-result-wide v0

    iget-wide v5, p0, Ljava/awt/geom/FlatteningPathIterator;->squareflat:D

    cmpg-double v0, v0, v5

    if-gez v0, :cond_6

    goto :goto_1

    .line 28
    :cond_6
    invoke-virtual {p0, v4}, Ljava/awt/geom/FlatteningPathIterator;->ensureHoldCapacity(I)V

    .line 29
    iget-object v9, p0, Ljava/awt/geom/FlatteningPathIterator;->hold:[D

    iget v10, p0, Ljava/awt/geom/FlatteningPathIterator;->holdIndex:I

    add-int/lit8 v8, v10, -0x6

    move-object v5, v9

    move v6, v10

    move-object v7, v9

    invoke-static/range {v5 .. v10}, Ljava/awt/geom/CubicCurve2D;->subdivide([DI[DI[DI)V

    .line 30
    iget v0, p0, Ljava/awt/geom/FlatteningPathIterator;->holdIndex:I

    sub-int/2addr v0, v4

    iput v0, p0, Ljava/awt/geom/FlatteningPathIterator;->holdIndex:I

    add-int/lit8 p1, p1, 0x1

    .line 31
    iget-object v0, p0, Ljava/awt/geom/FlatteningPathIterator;->levels:[I

    iget v1, p0, Ljava/awt/geom/FlatteningPathIterator;->levelIndex:I

    aput p1, v0, v1

    add-int/2addr v1, v3

    .line 32
    iput v1, p0, Ljava/awt/geom/FlatteningPathIterator;->levelIndex:I

    .line 33
    aput p1, v0, v1

    goto :goto_0

    .line 34
    :cond_7
    :goto_1
    iget p1, p0, Ljava/awt/geom/FlatteningPathIterator;->holdIndex:I

    add-int/2addr p1, v4

    iput p1, p0, Ljava/awt/geom/FlatteningPathIterator;->holdIndex:I

    .line 35
    iget p1, p0, Ljava/awt/geom/FlatteningPathIterator;->levelIndex:I

    sub-int/2addr p1, v3

    iput p1, p0, Ljava/awt/geom/FlatteningPathIterator;->levelIndex:I

    goto/16 :goto_4

    .line 36
    :cond_8
    iget p1, p0, Ljava/awt/geom/FlatteningPathIterator;->holdIndex:I

    iget v7, p0, Ljava/awt/geom/FlatteningPathIterator;->holdEnd:I

    if-lt p1, v7, :cond_9

    .line 37
    iget-object p1, p0, Ljava/awt/geom/FlatteningPathIterator;->hold:[D

    array-length v7, p1

    sub-int/2addr v7, v4

    iput v7, p0, Ljava/awt/geom/FlatteningPathIterator;->holdIndex:I

    .line 38
    array-length v4, p1

    sub-int/2addr v4, v5

    iput v4, p0, Ljava/awt/geom/FlatteningPathIterator;->holdEnd:I

    add-int/lit8 v4, v7, 0x0

    .line 39
    iget-wide v8, p0, Ljava/awt/geom/FlatteningPathIterator;->curx:D

    aput-wide v8, p1, v4

    add-int/lit8 v4, v7, 0x1

    .line 40
    iget-wide v8, p0, Ljava/awt/geom/FlatteningPathIterator;->cury:D

    aput-wide v8, p1, v4

    add-int/lit8 v4, v7, 0x2

    .line 41
    aget-wide v8, p1, v2

    aput-wide v8, p1, v4

    add-int/lit8 v2, v7, 0x3

    .line 42
    aget-wide v8, p1, v3

    aput-wide v8, p1, v2

    add-int/lit8 v2, v7, 0x4

    .line 43
    aget-wide v4, p1, v5

    iput-wide v4, p0, Ljava/awt/geom/FlatteningPathIterator;->curx:D

    aput-wide v4, p1, v2

    add-int/2addr v7, v0

    .line 44
    aget-wide v0, p1, v1

    iput-wide v0, p0, Ljava/awt/geom/FlatteningPathIterator;->cury:D

    aput-wide v0, p1, v7

    .line 45
    :cond_9
    iget-object p1, p0, Ljava/awt/geom/FlatteningPathIterator;->levels:[I

    iget v0, p0, Ljava/awt/geom/FlatteningPathIterator;->levelIndex:I

    aget p1, p1, v0

    .line 46
    :goto_2
    iget v0, p0, Ljava/awt/geom/FlatteningPathIterator;->limit:I

    if-ge p1, v0, :cond_b

    .line 47
    iget-object v0, p0, Ljava/awt/geom/FlatteningPathIterator;->hold:[D

    iget v1, p0, Ljava/awt/geom/FlatteningPathIterator;->holdIndex:I

    invoke-static {v0, v1}, Ljava/awt/geom/QuadCurve2D;->getFlatnessSq([DI)D

    move-result-wide v0

    iget-wide v4, p0, Ljava/awt/geom/FlatteningPathIterator;->squareflat:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_a

    goto :goto_3

    .line 48
    :cond_a
    invoke-virtual {p0, v6}, Ljava/awt/geom/FlatteningPathIterator;->ensureHoldCapacity(I)V

    .line 49
    iget-object v11, p0, Ljava/awt/geom/FlatteningPathIterator;->hold:[D

    iget v12, p0, Ljava/awt/geom/FlatteningPathIterator;->holdIndex:I

    add-int/lit8 v10, v12, -0x4

    move-object v7, v11

    move v8, v12

    move-object v9, v11

    invoke-static/range {v7 .. v12}, Ljava/awt/geom/QuadCurve2D;->subdivide([DI[DI[DI)V

    .line 50
    iget v0, p0, Ljava/awt/geom/FlatteningPathIterator;->holdIndex:I

    sub-int/2addr v0, v6

    iput v0, p0, Ljava/awt/geom/FlatteningPathIterator;->holdIndex:I

    add-int/lit8 p1, p1, 0x1

    .line 51
    iget-object v0, p0, Ljava/awt/geom/FlatteningPathIterator;->levels:[I

    iget v1, p0, Ljava/awt/geom/FlatteningPathIterator;->levelIndex:I

    aput p1, v0, v1

    add-int/2addr v1, v3

    .line 52
    iput v1, p0, Ljava/awt/geom/FlatteningPathIterator;->levelIndex:I

    .line 53
    aput p1, v0, v1

    goto :goto_2

    .line 54
    :cond_b
    :goto_3
    iget p1, p0, Ljava/awt/geom/FlatteningPathIterator;->holdIndex:I

    add-int/2addr p1, v6

    iput p1, p0, Ljava/awt/geom/FlatteningPathIterator;->holdIndex:I

    .line 55
    iget p1, p0, Ljava/awt/geom/FlatteningPathIterator;->levelIndex:I

    sub-int/2addr p1, v3

    iput p1, p0, Ljava/awt/geom/FlatteningPathIterator;->levelIndex:I

    goto :goto_4

    .line 56
    :cond_c
    iget-object v0, p0, Ljava/awt/geom/FlatteningPathIterator;->hold:[D

    aget-wide v4, v0, v2

    iput-wide v4, p0, Ljava/awt/geom/FlatteningPathIterator;->curx:D

    .line 57
    aget-wide v0, v0, v3

    iput-wide v0, p0, Ljava/awt/geom/FlatteningPathIterator;->cury:D

    if-nez p1, :cond_d

    .line 58
    iput-wide v4, p0, Ljava/awt/geom/FlatteningPathIterator;->movx:D

    .line 59
    iput-wide v0, p0, Ljava/awt/geom/FlatteningPathIterator;->movy:D

    .line 60
    :cond_d
    iput v2, p0, Ljava/awt/geom/FlatteningPathIterator;->holdIndex:I

    .line 61
    iput v2, p0, Ljava/awt/geom/FlatteningPathIterator;->holdEnd:I

    :goto_4
    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 5

    .line 6
    invoke-virtual {p0}, Ljava/awt/geom/FlatteningPathIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget v0, p0, Ljava/awt/geom/FlatteningPathIterator;->holdType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 8
    iget-object v1, p0, Ljava/awt/geom/FlatteningPathIterator;->hold:[D

    iget p0, p0, Ljava/awt/geom/FlatteningPathIterator;->holdIndex:I

    add-int/lit8 v2, p0, 0x0

    aget-wide v2, v1, v2

    const/4 v4, 0x0

    aput-wide v2, p1, v4

    const/4 v2, 0x1

    add-int/2addr p0, v2

    .line 9
    aget-wide v3, v1, p0

    aput-wide v3, p1, v2

    if-eqz v0, :cond_0

    move v0, v2

    :cond_0
    return v0

    .line 10
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "flattening iterator out of bounds"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public currentSegment([F)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/awt/geom/FlatteningPathIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Ljava/awt/geom/FlatteningPathIterator;->holdType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Ljava/awt/geom/FlatteningPathIterator;->hold:[D

    iget p0, p0, Ljava/awt/geom/FlatteningPathIterator;->holdIndex:I

    add-int/lit8 v2, p0, 0x0

    aget-wide v2, v1, v2

    double-to-float v2, v2

    const/4 v3, 0x0

    aput v2, p1, v3

    const/4 v2, 0x1

    add-int/2addr p0, v2

    .line 4
    aget-wide v3, v1, p0

    double-to-float p0, v3

    aput p0, p1, v2

    if-eqz v0, :cond_0

    move v0, v2

    :cond_0
    return v0

    .line 5
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "flattening iterator out of bounds"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public ensureHoldCapacity(I)V
    .locals 4

    iget v0, p0, Ljava/awt/geom/FlatteningPathIterator;->holdIndex:I

    sub-int p1, v0, p1

    if-gez p1, :cond_0

    iget-object p1, p0, Ljava/awt/geom/FlatteningPathIterator;->hold:[D

    array-length v1, p1

    sub-int/2addr v1, v0

    array-length v2, p1

    add-int/lit8 v2, v2, 0x18

    new-array v2, v2, [D

    add-int/lit8 v3, v0, 0x18

    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Ljava/awt/geom/FlatteningPathIterator;->hold:[D

    iget p1, p0, Ljava/awt/geom/FlatteningPathIterator;->holdIndex:I

    add-int/lit8 p1, p1, 0x18

    iput p1, p0, Ljava/awt/geom/FlatteningPathIterator;->holdIndex:I

    iget p1, p0, Ljava/awt/geom/FlatteningPathIterator;->holdEnd:I

    add-int/lit8 p1, p1, 0x18

    iput p1, p0, Ljava/awt/geom/FlatteningPathIterator;->holdEnd:I

    :cond_0
    return-void
.end method

.method public getFlatness()D
    .locals 2

    iget-wide v0, p0, Ljava/awt/geom/FlatteningPathIterator;->squareflat:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getRecursionLimit()I
    .locals 0

    iget p0, p0, Ljava/awt/geom/FlatteningPathIterator;->limit:I

    return p0
.end method

.method public getWindingRule()I
    .locals 0

    iget-object p0, p0, Ljava/awt/geom/FlatteningPathIterator;->src:Ljava/awt/geom/PathIterator;

    invoke-interface {p0}, Ljava/awt/geom/PathIterator;->getWindingRule()I

    move-result p0

    return p0
.end method

.method public isDone()Z
    .locals 0

    iget-boolean p0, p0, Ljava/awt/geom/FlatteningPathIterator;->done:Z

    return p0
.end method

.method public next()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Ljava/awt/geom/FlatteningPathIterator;->next(Z)V

    return-void
.end method
