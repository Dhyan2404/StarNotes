.class public Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
.implements Lorg/apache/commons/math3/geometry/partitioning/Embedding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        ">;",
        "Lorg/apache/commons/math3/geometry/partitioning/Embedding<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:D = 1.0E-10


# instance fields
.field public a:D

.field public b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public d:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public final f:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->a:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->a:D

    .line 17
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 18
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 19
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->d:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->d:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 20
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 21
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->f:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->f:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 12
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->b(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 3
    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->f:D

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->a:D

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->a()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 13
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->b(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 8
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->f:D

    .line 9
    iget-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide p1

    neg-double p1, p1

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->a:D

    .line 10
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->a()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 14
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 11
    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    invoke-virtual {p3, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4, p5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    return-void
.end method

.method public static intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 11
    iget-object v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v3

    .line 12
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    .line 13
    iget-object v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    .line 14
    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->a:D

    .line 15
    iget-object v0, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v11

    .line 16
    iget-object v0, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v13

    .line 17
    iget-object v0, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v15

    .line 18
    iget-wide v0, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->a:D

    move-wide/from16 p0, v0

    .line 19
    iget-object v0, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v0

    move-wide/from16 v17, v9

    .line 20
    iget-object v9, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    move-wide/from16 v19, v7

    .line 21
    iget-object v7, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    move-wide/from16 v21, v5

    .line 22
    iget-wide v5, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->a:D

    mul-double v23, v13, v7

    mul-double v25, v9, v15

    move-wide/from16 v27, v5

    sub-double v5, v23, v25

    mul-double v23, v15, v0

    mul-double v25, v7, v11

    move-wide/from16 v29, v7

    sub-double v7, v23, v25

    mul-double v23, v11, v9

    mul-double v25, v0, v13

    move-wide/from16 v31, v11

    sub-double v11, v23, v25

    mul-double v23, v3, v5

    mul-double v25, v21, v7

    add-double v23, v23, v25

    mul-double v25, v19, v11

    add-double v23, v23, v25

    .line 23
    invoke-static/range {v23 .. v24}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v25

    const-wide v33, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v25, v33

    if-gez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    div-double v25, v25, v23

    .line 24
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    neg-double v5, v5

    mul-double v5, v5, v17

    mul-double v23, v19, v9

    mul-double v33, v29, v21

    sub-double v23, v23, v33

    move-wide/from16 v33, p0

    mul-double v23, v23, v33

    sub-double v5, v5, v23

    mul-double v23, v15, v21

    mul-double v35, v19, v13

    sub-double v23, v23, v35

    mul-double v23, v23, v27

    sub-double v5, v5, v23

    mul-double v5, v5, v25

    neg-double v7, v7

    mul-double v7, v7, v17

    mul-double v23, v29, v3

    mul-double v29, v19, v0

    sub-double v23, v23, v29

    mul-double v23, v23, v33

    sub-double v7, v7, v23

    mul-double v19, v19, v31

    mul-double/2addr v15, v3

    sub-double v19, v19, v15

    mul-double v19, v19, v27

    sub-double v7, v7, v19

    mul-double v36, v7, v25

    neg-double v7, v11

    mul-double v7, v7, v17

    mul-double v0, v0, v21

    mul-double/2addr v9, v3

    sub-double/2addr v0, v9

    mul-double v0, v0, v33

    sub-double/2addr v7, v0

    mul-double/2addr v13, v3

    mul-double v0, v21, v31

    sub-double/2addr v13, v0

    mul-double v13, v13, v27

    sub-double/2addr v7, v13

    mul-double v38, v7, v25

    move-object/from16 v33, v2

    move-wide/from16 v34, v5

    invoke-direct/range {v33 .. v39}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v2
.end method


# virtual methods
.method public final a()V
    .locals 4

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->a:D

    neg-double v1, v1

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->orthogonal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->d:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-void
.end method

.method public final b(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v0

    const-wide v2, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_0

    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double/2addr v3, v0

    invoke-direct {v2, v3, v4, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public contains(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getOffset(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->f:D

    cmpg-double p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public copySelf()Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)V

    return-object v0
.end method

.method public bridge synthetic copySelf()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->copySelf()Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    move-result-object p0

    return-object p0
.end method

.method public getNormal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object p0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/Point;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)D"
        }
    .end annotation

    .line 3
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    iget-wide p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->a:D

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)D"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide p0

    return-wide p0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->a:D

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-wide p0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->a:D

    neg-double p0, p0

    goto :goto_0

    :cond_0
    iget-wide p0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->a:D

    :goto_0
    add-double/2addr v0, p0

    return-wide v0
.end method

.method public getOrigin()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object p0
.end method

.method public getPointAt(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 11

    new-instance v10, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->d:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->a:D

    sub-double v7, p2, v7

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v10
.end method

.method public getTolerance()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->f:D

    return-wide v0
.end method

.method public getU()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object p0
.end method

.method public getV()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->d:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object p0
.end method

.method public intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)Lorg/apache/commons/math3/geometry/euclidean/threed/Line;
    .locals 5

    .line 7
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->f:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 9
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    invoke-direct {v1, v0, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    invoke-static {p0, p1, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 10
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->f:D

    invoke-direct {v1, p1, v0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    return-object v1
.end method

.method public intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->getDirection()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    .line 3
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 5
    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->a:D

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide p0

    add-double/2addr v4, p0

    neg-double p0, v4

    div-double v4, p0, v0

    .line 6
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object p0
.end method

.method public isSimilarTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)Z
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v0

    const-wide v2, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->a:D

    iget-wide v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->a:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->f:D

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_1

    :cond_0
    const-wide v2, 0x400921fb5440bd7cL    # 3.141592653489793

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->a:D

    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->a:D

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->f:D

    cmpg-double p0, v0, p0

    if-gez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public project(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    return-object p0
.end method

.method public reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)V
    .locals 2

    .line 4
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->a:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->a:D

    .line 5
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 6
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 7
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->d:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->d:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 8
    iget-object p1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-void
.end method

.method public reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->b(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 2
    iget-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide p1

    neg-double p1, p1

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->a:D

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->a()V

    return-void
.end method

.method public revertSelf()V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->d:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->d:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->a:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->a:D

    return-void
.end method

.method public rotate(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    invoke-virtual {p2, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p2, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->f:D

    invoke-direct {v1, p1, v0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    iget-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    iput-object p1, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->d:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p2, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    iput-object p0, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->d:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v1
.end method

.method public sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)Z"
        }
    .end annotation

    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    iget-object p1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-lez p0, :cond_0

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
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    return-object p0
.end method

.method public toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .line 3
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 4
    new-instance v10, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->d:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->a:D

    neg-double v7, v7

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v10
.end method

.method public toSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p0

    return-object p0
.end method

.method public toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .line 3
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 4
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v1

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->d:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide p0

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v0
.end method

.method public toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p0

    return-object p0
.end method

.method public translate(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .locals 4

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->e:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->f:D

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    iget-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object p1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->c:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->d:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object p0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->d:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;
    .locals 4

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->f:D

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(D)V

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-object v0
.end method

.method public bridge synthetic wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;

    move-result-object p0

    return-object p0
.end method

.method public wholeSpace()Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
    .locals 3

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->f:D

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic wholeSpace()Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->wholeSpace()Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    move-result-object p0

    return-object p0
.end method
