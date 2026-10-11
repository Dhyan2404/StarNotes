.class public Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
.implements Lorg/apache/commons/math3/geometry/partitioning/Embedding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/spherical/twod/Circle$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
        "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
        ">;",
        "Lorg/apache/commons/math3/geometry/partitioning/Embedding<",
        "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
        "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public final d:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 4
    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->d:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 10
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 11
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 12
    iput-wide p4, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->d:D

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/spherical/twod/Circle$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V
    .locals 6

    .line 13
    iget-object v1, p1, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v4, p1, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->d:D

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;D)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 7
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->d:D

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->d:D

    return-wide v0
.end method

.method public static getTransform(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/partitioning/Transform;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;",
            ")",
            "Lorg/apache/commons/math3/geometry/partitioning/Transform<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle$b;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle$b;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copySelf()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->copySelf()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object p0

    return-object p0
.end method

.method public copySelf()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    return-object v0
.end method

.method public getInsideArc(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/oned/Arc;
    .locals 9

    iget-object p1, p1, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPhase(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v0

    new-instance p1, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v4, v0, v2

    add-double/2addr v0, v2

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->d:D

    move-object v2, p1

    move-wide v3, v4

    move-wide v5, v0

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;-><init>(DDD)V

    return-object p1
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/Point;)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)D"
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getOffset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide p0

    return-wide p0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 2

    .line 2
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide p0

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr p0, v0

    return-wide p0
.end method

.method public getPhase(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    neg-double v0, v0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide p0

    neg-double p0, p0

    invoke-static {v0, v1, p0, p1}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    add-double/2addr p0, v0

    return-wide p0
.end method

.method public getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 8

    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v7
.end method

.method public getPole()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object p0
.end method

.method public getReverse()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    .locals 7

    new-instance v6, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->d:D

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    return-object v6
.end method

.method public getTolerance()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->d:D

    return-wide v0
.end method

.method public getXAxis()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object p0
.end method

.method public getYAxis()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object p0
.end method

.method public project(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object p0

    return-object p0
.end method

.method public reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->orthogonal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-void
.end method

.method public revertSelf()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-void
.end method

.method public sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)Z"
        }
    .end annotation

    check-cast p1, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object p1, p1, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object p0

    return-object p0
.end method

.method public toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    check-cast p1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->getAlpha()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v0
.end method

.method public bridge synthetic toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    move-result-object p0

    return-object p0
.end method

.method public toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    check-cast p1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPhase(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->wholeHyperplane()Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;

    move-result-object p0

    return-object p0
.end method

.method public wholeHyperplane()Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;
    .locals 4

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;

    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->d:D

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;-><init>(D)V

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-object v0
.end method

.method public bridge synthetic wholeSpace()Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->wholeSpace()Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;

    move-result-object p0

    return-object p0
.end method

.method public wholeSpace()Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;
    .locals 3

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->d:D

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;-><init>(D)V

    return-object v0
.end method
