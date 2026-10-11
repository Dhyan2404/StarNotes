.class public Ljava/awt/geom/Path2D$Double;
.super Ljava/awt/geom/Path2D;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/geom/Path2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Double"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/awt/geom/Path2D$Double$TxIterator;,
        Ljava/awt/geom/Path2D$Double$CopyIterator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1959f6d4f9360808L


# instance fields
.field transient doubleCoords:[D


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x14

    .line 1
    invoke-direct {p0, v0, v1}, Ljava/awt/geom/Path2D$Double;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x14

    .line 2
    invoke-direct {p0, p1, v0}, Ljava/awt/geom/Path2D$Double;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/awt/geom/Path2D;-><init>(II)V

    mul-int/lit8 p2, p2, 0x2

    .line 4
    new-array p1, p2, [D

    iput-object p1, p0, Ljava/awt/geom/Path2D$Double;->doubleCoords:[D

    return-void
.end method

.method public constructor <init>(Ljava/awt/Shape;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Ljava/awt/geom/Path2D$Double;-><init>(Ljava/awt/Shape;Ljava/awt/geom/AffineTransform;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/Shape;Ljava/awt/geom/AffineTransform;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/awt/geom/Path2D;-><init>()V

    .line 7
    instance-of v0, p1, Ljava/awt/geom/Path2D;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Ljava/awt/geom/Path2D;

    .line 9
    iget v0, p1, Ljava/awt/geom/Path2D;->windingRule:I

    invoke-virtual {p0, v0}, Ljava/awt/geom/Path2D;->setWindingRule(I)V

    .line 10
    iget v0, p1, Ljava/awt/geom/Path2D;->numTypes:I

    iput v0, p0, Ljava/awt/geom/Path2D;->numTypes:I

    .line 11
    iget-object v0, p1, Ljava/awt/geom/Path2D;->pointTypes:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Ljava/awt/geom/Path2D;->pointTypes:[B

    .line 12
    iget v0, p1, Ljava/awt/geom/Path2D;->numCoords:I

    iput v0, p0, Ljava/awt/geom/Path2D;->numCoords:I

    .line 13
    invoke-virtual {p1, p2}, Ljava/awt/geom/Path2D;->cloneCoordsDouble(Ljava/awt/geom/AffineTransform;)[D

    move-result-object p1

    iput-object p1, p0, Ljava/awt/geom/Path2D$Double;->doubleCoords:[D

    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {p1, p2}, Ljava/awt/Shape;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/awt/geom/PathIterator;->getWindingRule()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/awt/geom/Path2D;->setWindingRule(I)V

    const/16 p2, 0x14

    new-array p2, p2, [B

    .line 16
    iput-object p2, p0, Ljava/awt/geom/Path2D;->pointTypes:[B

    const/16 p2, 0x28

    new-array p2, p2, [D

    .line 17
    iput-object p2, p0, Ljava/awt/geom/Path2D$Double;->doubleCoords:[D

    const/4 p2, 0x0

    .line 18
    invoke-virtual {p0, p1, p2}, Ljava/awt/geom/Path2D$Double;->append(Ljava/awt/geom/PathIterator;Z)V

    :goto_0
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-super {p0, p1, v0}, Ljava/awt/geom/Path2D;->readObject(Ljava/io/ObjectInputStream;Z)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-super {p0, p1, v0}, Ljava/awt/geom/Path2D;->writeObject(Ljava/io/ObjectOutputStream;Z)V

    return-void
.end method


# virtual methods
.method public append(DD)V
    .locals 3

    .line 3
    iget-object v0, p0, Ljava/awt/geom/Path2D$Double;->doubleCoords:[D

    iget v1, p0, Ljava/awt/geom/Path2D;->numCoords:I

    add-int/lit8 v2, v1, 0x1

    aput-wide p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    .line 4
    iput p1, p0, Ljava/awt/geom/Path2D;->numCoords:I

    aput-wide p3, v0, v2

    return-void
.end method

.method public append(FF)V
    .locals 5

    .line 1
    iget-object v0, p0, Ljava/awt/geom/Path2D$Double;->doubleCoords:[D

    iget v1, p0, Ljava/awt/geom/Path2D;->numCoords:I

    add-int/lit8 v2, v1, 0x1

    float-to-double v3, p1

    aput-wide v3, v0, v1

    add-int/lit8 p1, v2, 0x1

    .line 2
    iput p1, p0, Ljava/awt/geom/Path2D;->numCoords:I

    float-to-double p0, p2

    aput-wide p0, v0, v2

    return-void
.end method

.method public final append(Ljava/awt/geom/PathIterator;Z)V
    .locals 21

    move-object/from16 v13, p0

    const/4 v0, 0x6

    new-array v14, v0, [D

    move/from16 v0, p2

    .line 5
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/awt/geom/PathIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_8

    move-object/from16 v15, p1

    .line 6
    invoke-interface {v15, v14}, Ljava/awt/geom/PathIterator;->currentSegment([D)I

    move-result v1

    const/4 v2, 0x4

    const/16 v16, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    const/4 v0, 0x3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    if-eq v1, v0, :cond_1

    if-eq v1, v2, :cond_0

    goto/16 :goto_2

    .line 7
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/Path2D;->closePath()V

    goto/16 :goto_2

    :cond_1
    aget-wide v5, v14, v16

    aget-wide v7, v14, v3

    aget-wide v9, v14, v4

    aget-wide v11, v14, v0

    aget-wide v17, v14, v2

    const/4 v0, 0x5

    aget-wide v19, v14, v0

    move-object/from16 v0, p0

    move-wide v1, v5

    move-wide v3, v7

    move-wide v5, v9

    move-wide v7, v11

    move-wide/from16 v9, v17

    move-wide/from16 v11, v19

    .line 8
    invoke-virtual/range {v0 .. v12}, Ljava/awt/geom/Path2D$Double;->curveTo(DDDDDD)V

    goto :goto_2

    :cond_2
    aget-wide v1, v14, v16

    aget-wide v5, v14, v3

    aget-wide v7, v14, v4

    aget-wide v9, v14, v0

    move-object/from16 v0, p0

    move-wide v3, v5

    move-wide v5, v7

    move-wide v7, v9

    .line 9
    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/Path2D$Double;->quadTo(DDDD)V

    goto :goto_2

    :cond_3
    aget-wide v0, v14, v16

    aget-wide v2, v14, v3

    .line 10
    invoke-virtual {v13, v0, v1, v2, v3}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_7

    .line 11
    iget v0, v13, Ljava/awt/geom/Path2D;->numTypes:I

    if-lt v0, v3, :cond_7

    iget v1, v13, Ljava/awt/geom/Path2D;->numCoords:I

    if-ge v1, v3, :cond_5

    goto :goto_1

    .line 12
    :cond_5
    iget-object v4, v13, Ljava/awt/geom/Path2D;->pointTypes:[B

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v4, v0

    if-eq v0, v2, :cond_6

    iget-object v0, v13, Ljava/awt/geom/Path2D$Double;->doubleCoords:[D

    add-int/lit8 v2, v1, -0x2

    aget-wide v4, v0, v2

    aget-wide v6, v14, v16

    cmpl-double v2, v4, v6

    if-nez v2, :cond_6

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    aget-wide v4, v14, v3

    cmpl-double v0, v0, v4

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    aget-wide v0, v14, v16

    aget-wide v2, v14, v3

    .line 13
    invoke-virtual {v13, v0, v1, v2, v3}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    goto :goto_2

    :cond_7
    :goto_1
    aget-wide v0, v14, v16

    aget-wide v2, v14, v3

    .line 14
    invoke-virtual {v13, v0, v1, v2, v3}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    .line 15
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/awt/geom/PathIterator;->next()V

    move/from16 v0, v16

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v0, p0}, Ljava/awt/geom/Path2D$Double;-><init>(Ljava/awt/Shape;)V

    return-object v0
.end method

.method public cloneCoordsDouble(Ljava/awt/geom/AffineTransform;)[D
    .locals 7

    if-nez p1, :cond_0

    iget-object p0, p0, Ljava/awt/geom/Path2D$Double;->doubleCoords:[D

    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ljava/awt/geom/Path2D$Double;->doubleCoords:[D

    array-length v0, v1

    new-array v6, v0, [D

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget p0, p0, Ljava/awt/geom/Path2D;->numCoords:I

    div-int/lit8 v5, p0, 0x2

    move-object v0, p1

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Ljava/awt/geom/AffineTransform;->transform([DI[DII)V

    move-object p0, v6

    :goto_0
    return-object p0
.end method

.method public cloneCoordsFloat(Ljava/awt/geom/AffineTransform;)[F
    .locals 7

    iget-object v1, p0, Ljava/awt/geom/Path2D$Double;->doubleCoords:[D

    array-length v0, v1

    new-array v6, v0, [F

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Ljava/awt/geom/Path2D;->numCoords:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Ljava/awt/geom/Path2D$Double;->doubleCoords:[D

    aget-wide v0, v0, p1

    double-to-float v0, v0

    aput v0, v6, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    iget p0, p0, Ljava/awt/geom/Path2D;->numCoords:I

    div-int/lit8 v5, p0, 0x2

    move-object v0, p1

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Ljava/awt/geom/AffineTransform;->transform([DI[FII)V

    :cond_1
    return-object v6
.end method

.method public final declared-synchronized curveTo(DDDDDD)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x6

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v0}, Ljava/awt/geom/Path2D$Double;->needRoom(ZI)V

    iget-object v0, p0, Ljava/awt/geom/Path2D;->pointTypes:[B

    iget v1, p0, Ljava/awt/geom/Path2D;->numTypes:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/awt/geom/Path2D;->numTypes:I

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    iget-object v0, p0, Ljava/awt/geom/Path2D$Double;->doubleCoords:[D

    iget v1, p0, Ljava/awt/geom/Path2D;->numCoords:I

    add-int/lit8 v2, v1, 0x1

    aput-wide p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    aput-wide p3, v0, v2

    add-int/lit8 p2, p1, 0x1

    aput-wide p5, v0, p1

    add-int/lit8 p1, p2, 0x1

    aput-wide p7, v0, p2

    add-int/lit8 p2, p1, 0x1

    aput-wide p9, v0, p1

    add-int/lit8 p1, p2, 0x1

    iput p1, p0, Ljava/awt/geom/Path2D;->numCoords:I

    aput-wide p11, v0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getBounds2D()Ljava/awt/geom/Rectangle2D;
    .locals 17

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget v0, v1, Ljava/awt/geom/Path2D;->numCoords:I

    if-lez v0, :cond_5

    iget-object v2, v1, Ljava/awt/geom/Path2D$Double;->doubleCoords:[D

    add-int/lit8 v0, v0, -0x1

    aget-wide v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    aget-wide v5, v2, v0

    move-wide v7, v5

    move-wide v9, v7

    move-wide v5, v3

    :cond_0
    :goto_0
    if-lez v0, :cond_4

    iget-object v2, v1, Ljava/awt/geom/Path2D$Double;->doubleCoords:[D

    add-int/lit8 v0, v0, -0x1

    aget-wide v11, v2, v0

    add-int/lit8 v0, v0, -0x1

    aget-wide v13, v2, v0

    cmpg-double v2, v13, v7

    if-gez v2, :cond_1

    move-wide v7, v13

    :cond_1
    cmpg-double v2, v11, v3

    if-gez v2, :cond_2

    move-wide v3, v11

    :cond_2
    cmpl-double v2, v13, v9

    if-lez v2, :cond_3

    move-wide v9, v13

    :cond_3
    cmpl-double v2, v11, v5

    if-lez v2, :cond_0

    move-wide v5, v11

    goto :goto_0

    :cond_4
    move-wide v10, v9

    move-wide v15, v3

    move-wide v3, v7

    move-wide v8, v15

    goto :goto_1

    :cond_5
    const-wide/16 v3, 0x0

    move-wide v5, v3

    move-wide v8, v5

    move-wide v10, v8

    :goto_1
    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    sub-double/2addr v10, v3

    sub-double v12, v5, v8

    move-object v5, v0

    move-wide v6, v3

    invoke-direct/range {v5 .. v13}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/awt/geom/Path2D$Double$CopyIterator;

    invoke-direct {p1, p0}, Ljava/awt/geom/Path2D$Double$CopyIterator;-><init>(Ljava/awt/geom/Path2D$Double;)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/awt/geom/Path2D$Double$TxIterator;

    invoke-direct {v0, p0, p1}, Ljava/awt/geom/Path2D$Double$TxIterator;-><init>(Ljava/awt/geom/Path2D$Double;Ljava/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public getPoint(I)Ljava/awt/geom/Point2D;
    .locals 3

    new-instance v0, Ljava/awt/geom/Point2D$Double;

    iget-object p0, p0, Ljava/awt/geom/Path2D$Double;->doubleCoords:[D

    aget-wide v1, p0, p1

    add-int/lit8 p1, p1, 0x1

    aget-wide p0, p0, p1

    invoke-direct {v0, v1, v2, p0, p1}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v0
.end method

.method public final declared-synchronized lineTo(DD)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v0}, Ljava/awt/geom/Path2D$Double;->needRoom(ZI)V

    iget-object v0, p0, Ljava/awt/geom/Path2D;->pointTypes:[B

    iget v2, p0, Ljava/awt/geom/Path2D;->numTypes:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/awt/geom/Path2D;->numTypes:I

    aput-byte v1, v0, v2

    iget-object v0, p0, Ljava/awt/geom/Path2D$Double;->doubleCoords:[D

    iget v1, p0, Ljava/awt/geom/Path2D;->numCoords:I

    add-int/lit8 v2, v1, 0x1

    aput-wide p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    iput p1, p0, Ljava/awt/geom/Path2D;->numCoords:I

    aput-wide p3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized moveTo(DD)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/awt/geom/Path2D;->numTypes:I

    if-lez v0, :cond_0

    iget-object v1, p0, Ljava/awt/geom/Path2D;->pointTypes:[B

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/awt/geom/Path2D$Double;->doubleCoords:[D

    iget v1, p0, Ljava/awt/geom/Path2D;->numCoords:I

    add-int/lit8 v2, v1, -0x2

    aput-wide p1, v0, v2

    add-int/lit8 v1, v1, -0x1

    aput-wide p3, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/awt/geom/Path2D$Double;->needRoom(ZI)V

    iget-object v0, p0, Ljava/awt/geom/Path2D;->pointTypes:[B

    iget v2, p0, Ljava/awt/geom/Path2D;->numTypes:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/awt/geom/Path2D;->numTypes:I

    aput-byte v1, v0, v2

    iget-object v0, p0, Ljava/awt/geom/Path2D$Double;->doubleCoords:[D

    iget v1, p0, Ljava/awt/geom/Path2D;->numCoords:I

    add-int/lit8 v2, v1, 0x1

    aput-wide p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    iput p1, p0, Ljava/awt/geom/Path2D;->numCoords:I

    aput-wide p3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public needRoom(ZI)V
    .locals 2

    if-eqz p1, :cond_1

    iget p1, p0, Ljava/awt/geom/Path2D;->numTypes:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/awt/geom/IllegalPathStateException;

    const-string p1, "missing initial moveto in path definition"

    invoke-direct {p0, p1}, Ljava/awt/geom/IllegalPathStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p1, p0, Ljava/awt/geom/Path2D;->pointTypes:[B

    array-length v0, p1

    iget v1, p0, Ljava/awt/geom/Path2D;->numTypes:I

    if-lt v1, v0, :cond_4

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Ljava/awt/geom/Path2D;->pointTypes:[B

    :cond_4
    iget-object p1, p0, Ljava/awt/geom/Path2D$Double;->doubleCoords:[D

    array-length v0, p1

    iget v1, p0, Ljava/awt/geom/Path2D;->numCoords:I

    add-int/2addr v1, p2

    if-le v1, v0, :cond_7

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_5

    goto :goto_2

    :cond_5
    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_6

    goto :goto_3

    :cond_6
    move p2, v1

    :goto_3
    add-int/2addr v0, p2

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p1

    iput-object p1, p0, Ljava/awt/geom/Path2D$Double;->doubleCoords:[D

    :cond_7
    return-void
.end method

.method public pointCrossings(DD)I
    .locals 36

    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/awt/geom/Path2D$Double;->doubleCoords:[D

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const/4 v5, 0x1

    aget-wide v6, v1, v5

    const/4 v8, 0x2

    move-wide v13, v3

    move v11, v5

    move-wide v15, v6

    move/from16 v21, v8

    :goto_0
    iget v9, v0, Ljava/awt/geom/Path2D;->numTypes:I

    if-ge v11, v9, :cond_7

    iget-object v9, v0, Ljava/awt/geom/Path2D;->pointTypes:[B

    aget-byte v9, v9, v11

    if-eqz v9, :cond_5

    if-eq v9, v5, :cond_4

    if-eq v9, v8, :cond_3

    const/4 v10, 0x3

    if-eq v9, v10, :cond_2

    const/4 v10, 0x4

    if-eq v9, v10, :cond_0

    move/from16 v30, v11

    goto/16 :goto_2

    :cond_0
    cmpl-double v9, v15, v6

    if-eqz v9, :cond_1

    move-wide/from16 v9, p1

    move/from16 v30, v11

    move-wide/from16 v11, p3

    move-wide/from16 v17, v3

    move-wide/from16 v19, v6

    invoke-static/range {v9 .. v20}, Lsun/awt/geom/Curve;->pointCrossingsForLine(DDDDDD)I

    move-result v9

    add-int/2addr v2, v9

    goto :goto_1

    :cond_1
    move/from16 v30, v11

    :goto_1
    move-wide v13, v3

    move-wide v15, v6

    goto/16 :goto_2

    :cond_2
    move/from16 v30, v11

    add-int/lit8 v9, v21, 0x1

    aget-wide v17, v1, v21

    add-int/lit8 v10, v9, 0x1

    aget-wide v19, v1, v9

    add-int/lit8 v9, v10, 0x1

    aget-wide v21, v1, v10

    add-int/lit8 v10, v9, 0x1

    aget-wide v23, v1, v9

    add-int/lit8 v9, v10, 0x1

    aget-wide v31, v1, v10

    move-wide/from16 v25, v31

    add-int/lit8 v33, v9, 0x1

    aget-wide v34, v1, v9

    move-wide/from16 v27, v34

    const/16 v29, 0x0

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    invoke-static/range {v9 .. v29}, Lsun/awt/geom/Curve;->pointCrossingsForCubic(DDDDDDDDDDI)I

    move-result v9

    add-int/2addr v2, v9

    move-wide/from16 v13, v31

    move/from16 v21, v33

    move-wide/from16 v15, v34

    goto/16 :goto_2

    :cond_3
    move/from16 v30, v11

    add-int/lit8 v9, v21, 0x1

    aget-wide v17, v1, v21

    add-int/lit8 v10, v9, 0x1

    aget-wide v19, v1, v9

    add-int/lit8 v9, v10, 0x1

    aget-wide v26, v1, v10

    move-wide/from16 v21, v26

    add-int/lit8 v28, v9, 0x1

    aget-wide v31, v1, v9

    move-wide/from16 v23, v31

    const/16 v25, 0x0

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    invoke-static/range {v9 .. v25}, Lsun/awt/geom/Curve;->pointCrossingsForQuad(DDDDDDDDI)I

    move-result v9

    add-int/2addr v2, v9

    move-wide/from16 v13, v26

    move/from16 v21, v28

    move-wide/from16 v15, v31

    goto :goto_2

    :cond_4
    move/from16 v30, v11

    add-int/lit8 v9, v21, 0x1

    aget-wide v21, v1, v21

    add-int/lit8 v23, v9, 0x1

    aget-wide v24, v1, v9

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-wide/from16 v17, v21

    move-wide/from16 v19, v24

    invoke-static/range {v9 .. v20}, Lsun/awt/geom/Curve;->pointCrossingsForLine(DDDDDD)I

    move-result v9

    add-int/2addr v2, v9

    move-wide/from16 v13, v21

    move/from16 v21, v23

    move-wide/from16 v15, v24

    goto :goto_2

    :cond_5
    move/from16 v30, v11

    cmpl-double v9, v15, v6

    if-eqz v9, :cond_6

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-wide/from16 v17, v3

    move-wide/from16 v19, v6

    invoke-static/range {v9 .. v20}, Lsun/awt/geom/Curve;->pointCrossingsForLine(DDDDDD)I

    move-result v3

    add-int/2addr v2, v3

    :cond_6
    add-int/lit8 v3, v21, 0x1

    aget-wide v6, v1, v21

    add-int/lit8 v21, v3, 0x1

    aget-wide v3, v1, v3

    move-wide v15, v3

    move-wide v13, v6

    move-wide v3, v13

    move-wide v6, v15

    :goto_2
    add-int/lit8 v11, v30, 0x1

    goto/16 :goto_0

    :cond_7
    cmpl-double v0, v15, v6

    if-eqz v0, :cond_8

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-wide/from16 v17, v3

    move-wide/from16 v19, v6

    invoke-static/range {v9 .. v20}, Lsun/awt/geom/Curve;->pointCrossingsForLine(DDDDDD)I

    move-result v0

    add-int/2addr v2, v0

    :cond_8
    return v2
.end method

.method public final declared-synchronized quadTo(DDDD)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v0}, Ljava/awt/geom/Path2D$Double;->needRoom(ZI)V

    iget-object v0, p0, Ljava/awt/geom/Path2D;->pointTypes:[B

    iget v1, p0, Ljava/awt/geom/Path2D;->numTypes:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/awt/geom/Path2D;->numTypes:I

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    iget-object v0, p0, Ljava/awt/geom/Path2D$Double;->doubleCoords:[D

    iget v1, p0, Ljava/awt/geom/Path2D;->numCoords:I

    add-int/lit8 v2, v1, 0x1

    aput-wide p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    aput-wide p3, v0, v2

    add-int/lit8 p2, p1, 0x1

    aput-wide p5, v0, p1

    add-int/lit8 p1, p2, 0x1

    iput p1, p0, Ljava/awt/geom/Path2D;->numCoords:I

    aput-wide p7, v0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public rectCrossings(DDDD)I
    .locals 40

    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/awt/geom/Path2D$Double;->doubleCoords:[D

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const/4 v5, 0x1

    aget-wide v6, v1, v5

    const/4 v8, 0x2

    move v9, v2

    move-wide/from16 v18, v3

    move v2, v5

    move-wide/from16 v20, v6

    move/from16 v26, v8

    :goto_0
    const/high16 v10, -0x80000000

    if-eq v9, v10, :cond_9

    iget v11, v0, Ljava/awt/geom/Path2D;->numTypes:I

    if-ge v2, v11, :cond_9

    iget-object v10, v0, Ljava/awt/geom/Path2D;->pointTypes:[B

    aget-byte v10, v10, v2

    if-eqz v10, :cond_6

    if-eq v10, v5, :cond_5

    if-eq v10, v8, :cond_4

    const/4 v11, 0x3

    if-eq v10, v11, :cond_3

    const/4 v11, 0x4

    if-eq v10, v11, :cond_0

    goto/16 :goto_1

    :cond_0
    cmpl-double v10, v18, v3

    if-nez v10, :cond_1

    cmpl-double v10, v20, v6

    if-eqz v10, :cond_2

    :cond_1
    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    move-wide/from16 v16, p7

    move-wide/from16 v22, v3

    move-wide/from16 v24, v6

    invoke-static/range {v9 .. v25}, Lsun/awt/geom/Curve;->rectCrossingsForLine(IDDDDDDDD)I

    move-result v9

    :cond_2
    move-wide/from16 v18, v3

    move-wide/from16 v20, v6

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v10, v26, 0x1

    aget-wide v22, v1, v26

    add-int/lit8 v11, v10, 0x1

    aget-wide v24, v1, v10

    add-int/lit8 v10, v11, 0x1

    aget-wide v26, v1, v11

    add-int/lit8 v11, v10, 0x1

    aget-wide v28, v1, v10

    add-int/lit8 v10, v11, 0x1

    aget-wide v35, v1, v11

    move-wide/from16 v30, v35

    add-int/lit8 v37, v10, 0x1

    aget-wide v38, v1, v10

    move-wide/from16 v32, v38

    const/16 v34, 0x0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    move-wide/from16 v16, p7

    invoke-static/range {v9 .. v34}, Lsun/awt/geom/Curve;->rectCrossingsForCubic(IDDDDDDDDDDDDI)I

    move-result v9

    move-wide/from16 v18, v35

    move/from16 v26, v37

    move-wide/from16 v20, v38

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v10, v26, 0x1

    aget-wide v22, v1, v26

    add-int/lit8 v11, v10, 0x1

    aget-wide v24, v1, v10

    add-int/lit8 v10, v11, 0x1

    aget-wide v31, v1, v11

    move-wide/from16 v26, v31

    add-int/lit8 v33, v10, 0x1

    aget-wide v34, v1, v10

    move-wide/from16 v28, v34

    const/16 v30, 0x0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    move-wide/from16 v16, p7

    invoke-static/range {v9 .. v30}, Lsun/awt/geom/Curve;->rectCrossingsForQuad(IDDDDDDDDDDI)I

    move-result v9

    move-wide/from16 v18, v31

    move/from16 v26, v33

    move-wide/from16 v20, v34

    goto :goto_1

    :cond_5
    add-int/lit8 v10, v26, 0x1

    aget-wide v26, v1, v26

    move-wide/from16 v22, v26

    add-int/lit8 v28, v10, 0x1

    aget-wide v29, v1, v10

    move-wide/from16 v24, v29

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    move-wide/from16 v16, p7

    invoke-static/range {v9 .. v25}, Lsun/awt/geom/Curve;->rectCrossingsForLine(IDDDDDDDD)I

    move-result v9

    move-wide/from16 v18, v26

    move/from16 v26, v28

    move-wide/from16 v20, v29

    goto :goto_1

    :cond_6
    cmpl-double v10, v18, v3

    if-nez v10, :cond_7

    cmpl-double v10, v20, v6

    if-eqz v10, :cond_8

    :cond_7
    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    move-wide/from16 v16, p7

    move-wide/from16 v22, v3

    move-wide/from16 v24, v6

    invoke-static/range {v9 .. v25}, Lsun/awt/geom/Curve;->rectCrossingsForLine(IDDDDDDDD)I

    move-result v9

    :cond_8
    add-int/lit8 v3, v26, 0x1

    aget-wide v6, v1, v26

    add-int/lit8 v26, v3, 0x1

    aget-wide v3, v1, v3

    move-wide/from16 v20, v3

    move-wide/from16 v18, v6

    move-wide/from16 v3, v18

    move-wide/from16 v6, v20

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    if-eq v9, v10, :cond_b

    cmpl-double v0, v18, v3

    if-nez v0, :cond_a

    cmpl-double v0, v20, v6

    if-eqz v0, :cond_b

    :cond_a
    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    move-wide/from16 v16, p7

    move-wide/from16 v22, v3

    move-wide/from16 v24, v6

    invoke-static/range {v9 .. v25}, Lsun/awt/geom/Curve;->rectCrossingsForLine(IDDDDDDDD)I

    move-result v9

    :cond_b
    return v9
.end method

.method public final transform(Ljava/awt/geom/AffineTransform;)V
    .locals 6

    iget-object v3, p0, Ljava/awt/geom/Path2D$Double;->doubleCoords:[D

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget p0, p0, Ljava/awt/geom/Path2D;->numCoords:I

    div-int/lit8 v5, p0, 0x2

    move-object v0, p1

    move-object v1, v3

    invoke-virtual/range {v0 .. v5}, Ljava/awt/geom/AffineTransform;->transform([DI[DII)V

    return-void
.end method
