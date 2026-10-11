.class public Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/geometry/hull/ConvexHull;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/hull/ConvexHull<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1335061L


# instance fields
.field private transient lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

.field private final tolerance:D

.field private final vertices:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;


# direct methods
.method public constructor <init>([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->tolerance:D

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->isConvex([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->vertices:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_CONVEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method private isConvex([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Z
    .locals 21

    move-object/from16 v0, p1

    array-length v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    return v3

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    move v4, v2

    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_5

    if-nez v2, :cond_1

    array-length v5, v0

    sub-int/2addr v5, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v2, -0x1

    :goto_1
    aget-object v5, v0, v5

    aget-object v6, v0, v2

    array-length v7, v0

    sub-int/2addr v7, v3

    if-ne v2, v7, :cond_2

    move v7, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v2, 0x1

    :goto_2
    aget-object v7, v0, v7

    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v5

    invoke-virtual {v7, v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v7

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v9

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v11

    neg-double v11, v11

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v13

    invoke-static/range {v7 .. v14}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v15

    const-wide/16 v17, 0x0

    move-object/from16 v5, p0

    iget-wide v6, v5, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->tolerance:D

    move-wide/from16 v19, v6

    invoke-static/range {v15 .. v20}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v6

    int-to-double v7, v6

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_4

    int-to-double v7, v4

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_3

    if-eq v6, v4, :cond_3

    return v1

    :cond_3
    move v4, v6

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v3
.end method

.method private retrieveLineSegments()[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
    .locals 13

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->vertices:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_0

    new-array v0, v2, [Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    goto :goto_2

    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    new-array v1, v3, [Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    aget-object v4, v0, v2

    aget-object v0, v0, v3

    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->tolerance:D

    invoke-direct {v5, v4, v0, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    invoke-direct {v3, v4, v0, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    aput-object v3, v1, v2

    goto :goto_2

    :cond_1
    new-array v1, v1, [Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    array-length v1, v0

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v6, v0, v2

    if-nez v4, :cond_2

    move-object v5, v6

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    add-int/lit8 v8, v3, 0x1

    new-instance v9, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    new-instance v10, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    iget-wide v11, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->tolerance:D

    invoke-direct {v10, v4, v6, v11, v12}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    invoke-direct {v9, v4, v6, v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    aput-object v9, v7, v3

    move v3, v8

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object v4, v6

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->tolerance:D

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    invoke-direct {v1, v4, v5, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    aput-object v1, v0, v3

    :cond_4
    :goto_2
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    return-object p0
.end method


# virtual methods
.method public createRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/InsufficientDataException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->vertices:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->retrieveLineSegments()[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    move-result-object p0

    array-length v1, p0

    new-array v1, v1, [Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->buildConvex([Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/InsufficientDataException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/InsufficientDataException;-><init>()V

    throw p0
.end method

.method public getLineSegments()[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->retrieveLineSegments()[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    move-result-object p0

    invoke-virtual {p0}, [Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    return-object p0
.end method

.method public bridge synthetic getVertices()[Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->getVertices()[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p0

    return-object p0
.end method

.method public getVertices()[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->vertices:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {p0}, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-object p0
.end method
