.class public Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;
.super Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<",
        "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
        "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
        ">;"
    }
.end annotation


# instance fields
.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(D)V

    return-void
.end method

.method public varargs constructor <init>(D[Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V
    .locals 0

    .line 6
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->i(D[Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;>;D)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Ljava/util/Collection;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 4

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->wholeHyperplane()Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;

    move-result-object p1

    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DID)V
    .locals 0

    .line 3
    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->d(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DI)[Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object p1

    invoke-direct {p0, p6, p7, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;-><init>(D[Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;D)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-void
.end method

.method public static d(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DI)[Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    .locals 5

    new-array v0, p4, [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    invoke-static {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-direct {v1, p1, p2, p3, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    new-instance p1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-virtual {v1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    const/4 p2, 0x0

    aput-object p1, v0, p2

    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    const-wide p2, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v3, p4

    div-double/2addr p2, v3

    invoke-direct {p1, p0, p2, p3, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    const/4 p0, 0x1

    :goto_0
    if-ge p0, p4, :cond_0

    new-instance p2, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    add-int/lit8 p3, p0, -0x1

    aget-object p3, v0, p3

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    aput-object p2, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static h(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Edge;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getCircle()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertCut(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v5, v2

    move-object v2, v0

    move v0, v5

    goto :goto_1

    :cond_1
    if-nez v2, :cond_4

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    if-ne p2, p0, :cond_2

    goto :goto_2

    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    :goto_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    :goto_3
    return-void

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_5
    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    if-eq v3, v2, :cond_5

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getCircle()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->c(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;Ljava/util/List;Ljava/util/List;)V

    goto :goto_4

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p3

    invoke-static {p0, p1, p3, v0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->h(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V

    goto :goto_5

    :cond_7
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_8

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p2

    invoke-static {p0, p1, p2, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->h(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V

    goto :goto_6

    :cond_8
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    :goto_6
    return-void
.end method

.method public static varargs i(D[Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D[",
            "Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;",
            ")",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;"
        }
    .end annotation

    move-wide/from16 v0, p0

    move-object/from16 v2, p2

    array-length v3, v2

    if-nez v3, :cond_0

    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-array v4, v3, [Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_1

    new-instance v7, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    aget-object v8, v2, v6

    invoke-direct {v7, v8}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    add-int/lit8 v6, v3, -0x1

    aget-object v6, v4, v6

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v3, :cond_5

    aget-object v14, v4, v13

    invoke-virtual {v6, v14}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->d(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;)Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v7

    if-nez v7, :cond_2

    new-instance v7, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v8

    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v9

    invoke-direct {v7, v8, v9, v0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;D)V

    :cond_2
    move-object v15, v7

    new-instance v12, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v7

    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v10

    move-object v7, v12

    move-object v8, v6

    move-object v9, v14

    move-object v5, v12

    move-object v12, v15

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_4

    aget-object v7, v4, v5

    if-eq v7, v6, :cond_3

    if-eq v7, v14, :cond_3

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v8

    invoke-virtual {v15, v8}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    cmpg-double v8, v8, v0

    if-gtz v8, :cond_3

    invoke-virtual {v7, v15}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->a(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v13, v13, 0x1

    move-object v6, v14

    goto :goto_1

    :cond_5
    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>()V

    invoke-static {v0, v1, v3, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->h(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V

    return-object v3
.end method


# virtual methods
.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;

    move-result-object p0

    return-object p0
.end method

.method public buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTolerance()D

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-object v0
.end method

.method public computeGeometricalProperties()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x402921fb54442d18L    # 12.566370614359172

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->setSize(D)V

    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-direct {v0, v2, v3, v2, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DD)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->setSize(D)V

    sget-object v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->NaN:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/sunia/HTREnginev2/t8l;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTolerance()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sunia/HTREnginev2/t8l;-><init>(D)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/t8l;->c()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->setSize(D)V

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/t8l;->d()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    :goto_0
    return-void
.end method

.method public final e()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/t8l;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTolerance()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sunia/HTREnginev2/t8l;-><init>(D)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/t8l;->e()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final g()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->getComplement(Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;

    new-instance v1, Lcom/sunia/HTREnginev2/t8l;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTolerance()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sunia/HTREnginev2/t8l;-><init>(D)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/t8l;->e()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBoundaryLoops()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->i:Ljava/util/List;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->i:Ljava/util/List;

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/tkf;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTolerance()D

    move-result-wide v3

    invoke-direct {v2, v1, v3, v4}, Lcom/sunia/HTREnginev2/tkf;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/tkf;->b()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->i:Ljava/util/List;

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getStart()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->i:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    :cond_3
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getEnd()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getOutgoing()Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getStart()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v4

    if-ne v4, v3, :cond_1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->i:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEnclosingCap()Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            "Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    sget-object v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->PLUS_K:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    new-array v1, v1, [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-direct {p0, v0, v2, v3, v1}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->isFull()Z

    move-result v0

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-eqz v0, :cond_1

    new-instance p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    sget-object v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->PLUS_K:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    new-array v1, v1, [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-direct {p0, v0, v2, v3, v1}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object p0

    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v4

    const-wide v5, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->isFull(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    new-instance v0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    new-instance v2, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPole()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->negate()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object p0

    new-array v1, v1, [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-direct {v0, p0, v5, v6, v1}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v0

    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->isFull(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    new-instance v0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    new-instance v2, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPole()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    new-array p0, v1, [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-direct {v0, v2, v5, v6, p0}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->getBoundaryLoops()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move v6, v1

    move-object v7, v5

    :goto_0
    if-eqz v6, :cond_5

    if-eq v7, v5, :cond_4

    :cond_5
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getOutgoing()Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getEnd()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v7

    goto :goto_0

    :cond_6
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;

    invoke-direct {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;-><init>()V

    new-instance v5, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTolerance()D

    move-result-wide v6

    invoke-direct {v5, v6, v7, v4}, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;-><init>(DLorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;)V

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->enclose(Ljava/lang/Iterable;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getSupport()[Lorg/apache/commons/math3/geometry/Point;

    move-result-object v4

    check-cast v4, [Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getRadius()D

    move-result-wide v5

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getCenter()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTolerance()D

    move-result-wide v9

    cmpg-double v9, v7, v9

    if-gez v9, :cond_9

    new-instance v0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    sget-object v4, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->PLUS_K:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    new-array v5, v1, [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-direct {v0, v4, v2, v3, v5}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    new-instance v4, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-direct {v4, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->projectToBoundary(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->getOffset()D

    move-result-wide v5

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    sub-double v5, v7, v5

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getRadius()D

    move-result-wide v9

    cmpg-double v5, v5, v9

    if-gez v5, :cond_7

    new-instance v0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->negate()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->getOffset()D

    move-result-wide v5

    sub-double/2addr v7, v5

    const/4 v5, 0x1

    new-array v5, v5, [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->getProjected()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    aput-object v3, v5, v1

    invoke-direct {v0, v4, v7, v8, v5}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_1

    :cond_8
    return-object v0

    :cond_9
    array-length p0, v4

    new-array p0, p0, [Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    :goto_2
    array-length v2, v4

    if-ge v1, v2, :cond_a

    new-instance v2, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    aget-object v3, v4, v1

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    aput-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    new-instance v1, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    new-instance v2, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getCenter()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double v9, v7, v7

    add-double/2addr v9, v3

    mul-double/2addr v5, v5

    sub-double/2addr v9, v5

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v3

    div-double/2addr v9, v7

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4, p0}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v1
.end method
