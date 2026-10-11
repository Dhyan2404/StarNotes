.class public Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$a;
    }
.end annotation


# instance fields
.field public a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object p0
.end method


# virtual methods
.method public final d([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;II)Z
    .locals 12

    add-int p0, p3, p2

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    rem-int/2addr p0, p2

    aget-object p0, p1, p0

    aget-object v1, p1, p3

    add-int/2addr p3, v0

    rem-int/2addr p3, p2

    aget-object p1, p1, p3

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide p2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v2

    sub-double/2addr p2, v2

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide p0

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v6

    sub-double/2addr p0, v6

    mul-double v6, p2, p0

    mul-double v8, v4, v2

    sub-double/2addr v6, v8

    mul-double v8, p2, v4

    mul-double v10, v2, p0

    add-double/2addr v8, v10

    mul-double/2addr p2, p2

    mul-double/2addr v2, v2

    add-double/2addr p2, v2

    mul-double/2addr v4, v4

    mul-double/2addr p0, p0

    add-double/2addr v4, p0

    mul-double/2addr p2, v4

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p2

    const-wide v1, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr p0, v1

    cmpg-double p0, p2, p0

    if-gtz p0, :cond_0

    const-wide/16 p0, 0x0

    cmpl-double p0, v8, p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOutline(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;)[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 8

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$a;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTolerance()D

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$a;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;D)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$a;->b()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getVertices()[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    aget-object v2, p1, v1

    array-length v3, v2

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_2

    invoke-virtual {p0, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->d([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;II)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v4

    :goto_2
    add-int/lit8 v6, v3, -0x1

    if-ge v5, v6, :cond_0

    add-int/lit8 v6, v5, 0x1

    aget-object v7, v2, v6

    aput-object v7, v2, v5

    move v5, v6

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    array-length v4, v2

    if-eq v3, v4, :cond_3

    new-array v4, v3, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    aput-object v4, p1, v1

    invoke-static {v2, v0, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p1
.end method
