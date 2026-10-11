.class Ljava/awt/geom/EllipseIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/geom/PathIterator;


# static fields
.field public static final CtrlVal:D = 0.5522847498307933

.field private static ctrlpts:[[D = null

.field private static final ncv:D = 0.22385762508460333

.field private static final pcv:D = 0.7761423749153966


# instance fields
.field affine:Ljava/awt/geom/AffineTransform;

.field h:D

.field index:I

.field w:D

.field x:D

.field y:D


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [[D

    const/4 v1, 0x6

    new-array v2, v1, [D

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v1, v1, [D

    fill-array-data v1, :array_3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Ljava/awt/geom/EllipseIterator;->ctrlpts:[[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fe8d62888a9a510L    # 0.7761423749153966
        0x3fe8d62888a9a510L    # 0.7761423749153966
        0x3ff0000000000000L    # 1.0
        0x3fe0000000000000L    # 0.5
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x3fcca75ddd596bbeL    # 0.22385762508460333
        0x3ff0000000000000L    # 1.0
        0x0
        0x3fe8d62888a9a510L    # 0.7761423749153966
        0x0
        0x3fe0000000000000L    # 0.5
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x3fcca75ddd596bbeL    # 0.22385762508460333
        0x3fcca75ddd596bbeL    # 0.22385762508460333
        0x0
        0x3fe0000000000000L    # 0.5
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x3fe8d62888a9a510L    # 0.7761423749153966
        0x0
        0x3ff0000000000000L    # 1.0
        0x3fcca75ddd596bbeL    # 0.22385762508460333
        0x3ff0000000000000L    # 1.0
        0x3fe0000000000000L    # 0.5
    .end array-data
.end method

.method public constructor <init>(Ljava/awt/geom/Ellipse2D;Ljava/awt/geom/AffineTransform;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    iput-wide v0, p0, Ljava/awt/geom/EllipseIterator;->x:D

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v0

    iput-wide v0, p0, Ljava/awt/geom/EllipseIterator;->y:D

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    iput-wide v0, p0, Ljava/awt/geom/EllipseIterator;->w:D

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    iput-wide v0, p0, Ljava/awt/geom/EllipseIterator;->h:D

    iput-object p2, p0, Ljava/awt/geom/EllipseIterator;->affine:Ljava/awt/geom/AffineTransform;

    iget-wide p1, p0, Ljava/awt/geom/EllipseIterator;->w:D

    const-wide/16 v2, 0x0

    cmpg-double p1, p1, v2

    if-ltz p1, :cond_0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_1

    :cond_0
    const/4 p1, 0x6

    iput p1, p0, Ljava/awt/geom/EllipseIterator;->index:I

    :cond_1
    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 16

    move-object/from16 v0, p0

    .line 18
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/EllipseIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_4

    .line 19
    iget v1, v0, Ljava/awt/geom/EllipseIterator;->index:I

    const/4 v2, 0x4

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_2

    .line 20
    sget-object v1, Ljava/awt/geom/EllipseIterator;->ctrlpts:[[D

    aget-object v1, v1, v6

    .line 21
    iget-wide v5, v0, Ljava/awt/geom/EllipseIterator;->x:D

    aget-wide v8, v1, v2

    iget-wide v10, v0, Ljava/awt/geom/EllipseIterator;->w:D

    mul-double/2addr v8, v10

    add-double/2addr v5, v8

    aput-wide v5, p1, v7

    .line 22
    iget-wide v5, v0, Ljava/awt/geom/EllipseIterator;->y:D

    aget-wide v1, v1, v3

    iget-wide v8, v0, Ljava/awt/geom/EllipseIterator;->h:D

    mul-double/2addr v1, v8

    add-double/2addr v5, v1

    aput-wide v5, p1, v4

    .line 23
    iget-object v0, v0, Ljava/awt/geom/EllipseIterator;->affine:Ljava/awt/geom/AffineTransform;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, p1

    .line 24
    invoke-virtual/range {v0 .. v5}, Ljava/awt/geom/AffineTransform;->transform([DI[DII)V

    :cond_1
    return v7

    .line 25
    :cond_2
    sget-object v5, Ljava/awt/geom/EllipseIterator;->ctrlpts:[[D

    sub-int/2addr v1, v4

    aget-object v1, v5, v1

    .line 26
    iget-wide v8, v0, Ljava/awt/geom/EllipseIterator;->x:D

    aget-wide v10, v1, v7

    iget-wide v12, v0, Ljava/awt/geom/EllipseIterator;->w:D

    mul-double/2addr v10, v12

    add-double/2addr v10, v8

    aput-wide v10, p1, v7

    .line 27
    iget-wide v10, v0, Ljava/awt/geom/EllipseIterator;->y:D

    aget-wide v14, v1, v4

    iget-wide v2, v0, Ljava/awt/geom/EllipseIterator;->h:D

    mul-double/2addr v14, v2

    add-double/2addr v14, v10

    aput-wide v14, p1, v4

    const/4 v4, 0x2

    .line 28
    aget-wide v14, v1, v4

    mul-double/2addr v14, v12

    add-double/2addr v14, v8

    aput-wide v14, p1, v4

    .line 29
    aget-wide v14, v1, v6

    mul-double/2addr v14, v2

    add-double/2addr v14, v10

    aput-wide v14, p1, v6

    const/4 v4, 0x4

    .line 30
    aget-wide v14, v1, v4

    mul-double/2addr v14, v12

    add-double/2addr v8, v14

    aput-wide v8, p1, v4

    const/4 v4, 0x5

    .line 31
    aget-wide v7, v1, v4

    mul-double/2addr v7, v2

    add-double/2addr v10, v7

    aput-wide v10, p1, v4

    .line 32
    iget-object v0, v0, Ljava/awt/geom/EllipseIterator;->affine:Ljava/awt/geom/AffineTransform;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object/from16 v1, p1

    move-object/from16 v3, p1

    .line 33
    invoke-virtual/range {v0 .. v5}, Ljava/awt/geom/AffineTransform;->transform([DI[DII)V

    :cond_3
    return v6

    .line 34
    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "ellipse iterator out of bounds"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public currentSegment([F)I
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/EllipseIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2
    iget v1, v0, Ljava/awt/geom/EllipseIterator;->index:I

    const/4 v2, 0x4

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_2

    .line 3
    sget-object v1, Ljava/awt/geom/EllipseIterator;->ctrlpts:[[D

    aget-object v1, v1, v6

    .line 4
    iget-wide v5, v0, Ljava/awt/geom/EllipseIterator;->x:D

    aget-wide v8, v1, v2

    iget-wide v10, v0, Ljava/awt/geom/EllipseIterator;->w:D

    mul-double/2addr v8, v10

    add-double/2addr v5, v8

    double-to-float v2, v5

    aput v2, p1, v7

    .line 5
    iget-wide v5, v0, Ljava/awt/geom/EllipseIterator;->y:D

    aget-wide v1, v1, v3

    iget-wide v8, v0, Ljava/awt/geom/EllipseIterator;->h:D

    mul-double/2addr v1, v8

    add-double/2addr v5, v1

    double-to-float v1, v5

    aput v1, p1, v4

    .line 6
    iget-object v0, v0, Ljava/awt/geom/EllipseIterator;->affine:Ljava/awt/geom/AffineTransform;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, p1

    .line 7
    invoke-virtual/range {v0 .. v5}, Ljava/awt/geom/AffineTransform;->transform([FI[FII)V

    :cond_1
    return v7

    .line 8
    :cond_2
    sget-object v5, Ljava/awt/geom/EllipseIterator;->ctrlpts:[[D

    sub-int/2addr v1, v4

    aget-object v1, v5, v1

    .line 9
    iget-wide v8, v0, Ljava/awt/geom/EllipseIterator;->x:D

    aget-wide v10, v1, v7

    iget-wide v12, v0, Ljava/awt/geom/EllipseIterator;->w:D

    mul-double/2addr v10, v12

    add-double/2addr v10, v8

    double-to-float v5, v10

    aput v5, p1, v7

    .line 10
    iget-wide v10, v0, Ljava/awt/geom/EllipseIterator;->y:D

    aget-wide v14, v1, v4

    iget-wide v2, v0, Ljava/awt/geom/EllipseIterator;->h:D

    mul-double/2addr v14, v2

    add-double/2addr v14, v10

    double-to-float v14, v14

    aput v14, p1, v4

    const/4 v4, 0x2

    .line 11
    aget-wide v14, v1, v4

    mul-double/2addr v14, v12

    add-double/2addr v14, v8

    double-to-float v14, v14

    aput v14, p1, v4

    .line 12
    aget-wide v14, v1, v6

    mul-double/2addr v14, v2

    add-double/2addr v14, v10

    double-to-float v4, v14

    aput v4, p1, v6

    const/4 v4, 0x4

    .line 13
    aget-wide v14, v1, v4

    mul-double/2addr v14, v12

    add-double/2addr v8, v14

    double-to-float v5, v8

    aput v5, p1, v4

    const/4 v4, 0x5

    .line 14
    aget-wide v7, v1, v4

    mul-double/2addr v7, v2

    add-double/2addr v10, v7

    double-to-float v1, v10

    aput v1, p1, v4

    .line 15
    iget-object v0, v0, Ljava/awt/geom/EllipseIterator;->affine:Ljava/awt/geom/AffineTransform;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object/from16 v1, p1

    move-object/from16 v3, p1

    .line 16
    invoke-virtual/range {v0 .. v5}, Ljava/awt/geom/AffineTransform;->transform([FI[FII)V

    :cond_3
    return v6

    .line 17
    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "ellipse iterator out of bounds"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWindingRule()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isDone()Z
    .locals 1

    iget p0, p0, Ljava/awt/geom/EllipseIterator;->index:I

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

    iget v0, p0, Ljava/awt/geom/EllipseIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/awt/geom/EllipseIterator;->index:I

    return-void
.end method
