.class public Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

.field public b:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

.field public final c:D

.field public final d:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLorg/apache/commons/math3/geometry/spherical/twod/Circle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->a:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    iput-object p2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->b:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->c:D

    iput-object p5, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->d:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->c(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V

    invoke-virtual {p2, p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->b(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;",
            "D",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Edge;",
            ">;",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Circle;",
            ")",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->d:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getTolerance()D

    move-result-wide v0

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p2, p6}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->a(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    new-instance p6, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->d:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-object v1, p6

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    invoke-interface {p5, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public b(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getStart()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->b:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->b(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V

    iget-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->b:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getCircle()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->a(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    return-void
.end method

.method public c(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;Ljava/util/List;Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Circle;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Edge;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Edge;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    iget-object v0, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->d:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    iget-object v1, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->a:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPhase(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v8

    iget-object v0, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->d:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-object/from16 v10, p1

    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getInsideArc(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/oned/Arc;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getInf()D

    move-result-wide v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v3, v8

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v1

    sub-double v11, v1, v8

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getSize()D

    move-result-wide v0

    add-double v13, v11, v0

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v15, v13, v0

    iget-object v0, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->d:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getTolerance()D

    move-result-wide v17

    iget-object v1, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->a:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    iget-wide v2, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->c:D

    sub-double v2, v2, v17

    cmpl-double v0, v15, v2

    if-ltz v0, :cond_0

    move-object/from16 v6, p3

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_0
    move-object/from16 v6, p3

    const-wide/16 v2, 0x0

    cmpl-double v19, v15, v2

    if-ltz v19, :cond_1

    new-instance v2, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    iget-object v3, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->d:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    add-double v4, v8, v15

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V

    move-object/from16 v0, p0

    move-wide v3, v15

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->a(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-wide v15, v2

    :goto_0
    iget-wide v2, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->c:D

    sub-double v4, v2, v17

    cmpl-double v0, v11, v4

    if-ltz v0, :cond_3

    if-ltz v19, :cond_2

    iget-object v4, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->b:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    sub-double v5, v2, v15

    move-object/from16 v0, p0

    move-object v2, v4

    move-wide v3, v5

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->a(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    goto :goto_1

    :cond_2
    move-object/from16 v6, p2

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object/from16 v6, p2

    new-instance v2, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    iget-object v3, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->d:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    add-double/2addr v8, v11

    invoke-virtual {v3, v8, v9}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V

    sub-double v3, v11, v15

    move-object/from16 v0, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->a(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v1

    iget-wide v2, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->c:D

    sub-double v4, v2, v17

    cmpl-double v0, v13, v4

    if-ltz v0, :cond_4

    iget-object v4, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->b:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    sub-double v5, v2, v11

    move-object/from16 v0, p0

    move-object v2, v4

    move-wide v3, v5

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->a(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    goto :goto_1

    :cond_4
    new-instance v2, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    iget-object v3, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->d:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    invoke-virtual {v3, v8, v9}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V

    sub-double v3, v11, v11

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->a(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v1

    iget-object v2, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->b:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    iget-wide v3, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->c:D

    sub-double/2addr v3, v11

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->a(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    :goto_1
    return-void
.end method

.method public getCircle()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->d:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    return-object p0
.end method

.method public getEnd()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->b:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    return-object p0
.end method

.method public getLength()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->c:D

    return-wide v0
.end method

.method public getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->d:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->a:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPhase(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v1

    add-double/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    return-object p0
.end method

.method public getStart()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->a:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    return-object p0
.end method
