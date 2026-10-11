.class public Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates$DataTransferObject;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133299eL


# instance fields
.field private jacobian:[[D

.field private final phi:D

.field private phiHessian:[[D

.field private final r:D

.field private rHessian:[[D

.field private final theta:D

.field private thetaHessian:[[D

.field private final v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;


# direct methods
.method public constructor <init>(DDD)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static/range {p3 .. p4}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v3

    .line 8
    invoke-static/range {p3 .. p4}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v5

    .line 9
    invoke-static/range {p5 .. p6}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v7

    .line 10
    invoke-static/range {p5 .. p6}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v9

    .line 11
    iput-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    move-wide/from16 v11, p3

    .line 12
    iput-wide v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->theta:D

    move-wide/from16 v11, p5

    .line 13
    iput-wide v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phi:D

    .line 14
    new-instance v14, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    mul-double/2addr v3, v1

    mul-double v12, v3, v9

    mul-double v3, v1, v5

    mul-double/2addr v3, v9

    mul-double v16, v1, v7

    move-object v11, v14

    move-object v1, v14

    move-wide v14, v3

    invoke-direct/range {v11 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    .line 4
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getAlpha()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->theta:D

    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phi:D

    return-void
.end method

.method private computeHessians()V
    .locals 42

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    iget-object v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    mul-double v7, v1, v1

    mul-double v9, v3, v3

    mul-double v11, v5, v5

    add-double v13, v7, v9

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v15

    add-double v17, v13, v11

    move-wide/from16 v19, v9

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    div-double v21, v1, v9

    div-double v23, v3, v9

    div-double v9, v5, v9

    div-double v25, v1, v13

    div-double v27, v3, v13

    div-double v21, v21, v17

    div-double v23, v23, v17

    div-double v9, v9, v17

    move-wide/from16 v29, v7

    const/4 v7, 0x3

    filled-new-array {v7, v7}, [I

    move-result-object v8

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    iput-object v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    const/4 v8, 0x0

    aget-object v31, v7, v8

    mul-double v32, v3, v23

    mul-double v34, v5, v9

    add-double v36, v32, v34

    aput-wide v36, v31, v8

    const/16 v36, 0x1

    aget-object v37, v7, v36

    move-wide/from16 v38, v11

    neg-double v11, v1

    mul-double v23, v23, v11

    aput-wide v23, v37, v8

    const/4 v8, 0x2

    aget-object v7, v7, v8

    move-wide/from16 v40, v9

    neg-double v8, v5

    mul-double v8, v8, v21

    const/16 v23, 0x0

    aput-wide v8, v7, v23

    mul-double v21, v21, v1

    add-double v34, v21, v34

    aput-wide v34, v37, v36

    move-wide/from16 v34, v11

    neg-double v10, v3

    mul-double v10, v10, v40

    aput-wide v10, v7, v36

    add-double v21, v21, v32

    const/4 v10, 0x2

    aput-wide v21, v7, v10

    aget-wide v11, v37, v23

    aput-wide v11, v31, v36

    aput-wide v8, v31, v10

    aget-wide v7, v7, v36

    aput-wide v7, v37, v10

    filled-new-array {v10, v10}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    iput-object v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->thetaHessian:[[D

    aget-object v8, v7, v23

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double v21, v25, v11

    mul-double v21, v21, v27

    aput-wide v21, v8, v23

    aget-object v7, v7, v36

    mul-double v21, v27, v27

    mul-double v31, v25, v25

    sub-double v21, v21, v31

    aput-wide v21, v7, v23

    const-wide/high16 v31, -0x4000000000000000L    # -2.0

    mul-double v25, v25, v31

    mul-double v25, v25, v27

    aput-wide v25, v7, v36

    aput-wide v21, v8, v36

    mul-double v7, v15, v17

    mul-double v21, v15, v7

    mul-double v7, v7, v17

    mul-double v17, v7, v13

    const-wide/high16 v24, 0x4008000000000000L    # 3.0

    mul-double v24, v24, v13

    add-double v24, v24, v38

    const/4 v9, 0x3

    filled-new-array {v9, v9}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[D

    iput-object v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    const/16 v23, 0x0

    aget-object v27, v9, v23

    mul-double v28, v29, v24

    sub-double v28, v21, v28

    mul-double v28, v28, v5

    div-double v28, v28, v17

    aput-wide v28, v27, v23

    aget-object v28, v9, v36

    mul-double v29, v34, v3

    mul-double v29, v29, v5

    mul-double v29, v29, v24

    div-double v29, v29, v17

    aput-wide v29, v28, v23

    const/4 v10, 0x2

    aget-object v9, v9, v10

    sub-double v13, v13, v38

    mul-double/2addr v1, v13

    div-double/2addr v1, v7

    aput-wide v1, v9, v23

    mul-double v19, v19, v24

    sub-double v21, v21, v19

    mul-double v5, v5, v21

    div-double v5, v5, v17

    aput-wide v5, v28, v36

    mul-double/2addr v3, v13

    div-double/2addr v3, v7

    aput-wide v3, v9, v36

    mul-double/2addr v15, v11

    mul-double v15, v15, v40

    iget-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    div-double/2addr v15, v3

    const/4 v0, 0x2

    aput-wide v15, v9, v0

    const/4 v3, 0x0

    aget-wide v3, v28, v3

    aput-wide v3, v27, v36

    aput-wide v1, v27, v0

    aget-wide v1, v9, v36

    aput-wide v1, v28, v0

    :cond_0
    return-void
.end method

.method private computeJacobian()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    iget-object v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    mul-double v7, v1, v1

    mul-double v9, v3, v3

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    mul-double v11, v5, v5

    add-double/2addr v11, v7

    const/4 v13, 0x3

    filled-new-array {v13, v13}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[D

    iput-object v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    const/4 v14, 0x0

    aget-object v15, v13, v14

    move-wide/from16 v16, v9

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    div-double v18, v1, v9

    aput-wide v18, v15, v14

    div-double v18, v3, v9

    const/4 v0, 0x1

    aput-wide v18, v15, v0

    div-double v9, v5, v9

    const/16 v18, 0x2

    aput-wide v9, v15, v18

    aget-object v9, v13, v0

    move-wide/from16 v19, v1

    neg-double v0, v3

    div-double/2addr v0, v7

    aput-wide v0, v9, v14

    div-double v1, v19, v7

    const/4 v0, 0x1

    aput-wide v1, v9, v0

    aget-object v1, v13, v18

    mul-double v7, v19, v5

    mul-double v9, v16, v11

    div-double/2addr v7, v9

    aput-wide v7, v1, v14

    mul-double/2addr v3, v5

    div-double/2addr v3, v9

    aput-wide v3, v1, v0

    move-wide/from16 v2, v16

    neg-double v2, v2

    div-double/2addr v2, v11

    aput-wide v2, v1, v18

    :cond_0
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 8

    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates$DataTransferObject;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates$DataTransferObject;-><init>(DDD)V

    return-object v7
.end method


# virtual methods
.method public getCartesian()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object p0
.end method

.method public getPhi()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phi:D

    return-wide v0
.end method

.method public getR()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    return-wide v0
.end method

.method public getTheta()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->theta:D

    return-wide v0
.end method

.method public toCartesianGradient([D)[D
    .locals 17

    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->computeJacobian()V

    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    aget-wide v2, p1, v1

    move-object/from16 v4, p0

    iget-object v4, v4, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v5, v4, v1

    aget-wide v6, v5, v1

    mul-double/2addr v2, v6

    const/4 v6, 0x1

    aget-wide v7, p1, v6

    aget-object v9, v4, v6

    aget-wide v10, v9, v1

    mul-double/2addr v10, v7

    add-double/2addr v2, v10

    const/4 v10, 0x2

    aget-wide v11, p1, v10

    aget-object v4, v4, v10

    aget-wide v13, v4, v1

    mul-double/2addr v13, v11

    add-double/2addr v2, v13

    aput-wide v2, v0, v1

    aget-wide v1, p1, v1

    aget-wide v13, v5, v6

    mul-double/2addr v13, v1

    aget-wide v15, v9, v6

    mul-double/2addr v7, v15

    add-double/2addr v13, v7

    aget-wide v7, v4, v6

    mul-double/2addr v7, v11

    add-double/2addr v13, v7

    aput-wide v13, v0, v6

    aget-wide v5, v5, v10

    mul-double/2addr v1, v5

    aget-wide v3, v4, v10

    mul-double/2addr v11, v3

    add-double/2addr v1, v11

    aput-wide v1, v0, v10

    return-object v0
.end method

.method public toCartesianHessian([[D[D)[[D
    .locals 29

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->computeJacobian()V

    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->computeHessians()V

    const/4 v1, 0x3

    filled-new-array {v1, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    filled-new-array {v1, v1}, [I

    move-result-object v1

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const/4 v3, 0x0

    aget-object v4, v2, v3

    aget-object v5, p1, v3

    aget-wide v6, v5, v3

    iget-object v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v9, v8, v3

    aget-wide v10, v9, v3

    mul-double/2addr v6, v10

    const/4 v10, 0x1

    aget-object v11, p1, v10

    aget-wide v12, v11, v3

    aget-object v14, v8, v10

    aget-wide v15, v14, v3

    mul-double/2addr v12, v15

    add-double/2addr v6, v12

    const/4 v12, 0x2

    aget-object v13, p1, v12

    aget-wide v15, v13, v3

    aget-object v8, v8, v12

    aget-wide v17, v8, v3

    mul-double v15, v15, v17

    add-double/2addr v6, v15

    aput-wide v6, v4, v3

    aget-wide v5, v5, v3

    aget-wide v15, v9, v10

    mul-double/2addr v15, v5

    aget-wide v17, v11, v3

    aget-wide v19, v14, v10

    mul-double v19, v19, v17

    add-double v15, v15, v19

    aget-wide v19, v13, v3

    aget-wide v21, v8, v10

    mul-double v21, v21, v19

    add-double v15, v15, v21

    aput-wide v15, v4, v10

    aget-wide v15, v9, v12

    mul-double/2addr v5, v15

    aget-wide v15, v8, v12

    mul-double v19, v19, v15

    add-double v5, v5, v19

    aput-wide v5, v4, v12

    aget-object v5, v2, v10

    aget-wide v6, v9, v3

    mul-double v17, v17, v6

    aget-wide v6, v11, v10

    aget-wide v15, v14, v3

    mul-double/2addr v15, v6

    add-double v17, v17, v15

    aget-wide v15, v13, v10

    aget-wide v19, v8, v3

    mul-double v19, v19, v15

    add-double v17, v17, v19

    aput-wide v17, v5, v3

    aget-wide v17, v11, v3

    aget-wide v19, v9, v10

    mul-double v17, v17, v19

    aget-wide v19, v14, v10

    mul-double v6, v6, v19

    add-double v17, v17, v6

    aget-wide v6, v8, v10

    mul-double/2addr v15, v6

    add-double v17, v17, v15

    aput-wide v17, v5, v10

    aget-object v2, v2, v12

    aget-wide v6, v13, v3

    aget-wide v15, v9, v3

    mul-double/2addr v6, v15

    aget-wide v15, v13, v10

    aget-wide v17, v14, v3

    mul-double v17, v17, v15

    add-double v6, v6, v17

    aget-wide v17, v13, v12

    aget-wide v19, v8, v3

    mul-double v19, v19, v17

    add-double v6, v6, v19

    aput-wide v6, v2, v3

    aget-wide v19, v13, v3

    aget-wide v21, v9, v10

    mul-double v21, v21, v19

    aget-wide v23, v14, v10

    mul-double v15, v15, v23

    add-double v21, v21, v15

    aget-wide v15, v8, v10

    mul-double v15, v15, v17

    add-double v21, v21, v15

    aput-wide v21, v2, v10

    aget-wide v15, v9, v12

    mul-double v19, v19, v15

    aget-wide v15, v8, v12

    mul-double v17, v17, v15

    add-double v19, v19, v17

    aput-wide v19, v2, v12

    aget-object v11, v1, v3

    aget-wide v15, v9, v3

    aget-wide v17, v4, v3

    mul-double v15, v15, v17

    aget-wide v17, v14, v3

    aget-wide v23, v5, v3

    mul-double v17, v17, v23

    add-double v15, v15, v17

    aget-wide v17, v8, v3

    mul-double v17, v17, v6

    add-double v15, v15, v17

    aput-wide v15, v11, v3

    aget-object v6, v1, v10

    aget-wide v15, v9, v10

    aget-wide v17, v4, v3

    mul-double v17, v17, v15

    aget-wide v13, v14, v10

    aget-wide v23, v5, v3

    mul-double v23, v23, v13

    add-double v17, v17, v23

    aget-wide v23, v8, v10

    aget-wide v25, v2, v3

    mul-double v25, v25, v23

    add-double v17, v17, v25

    aput-wide v17, v6, v3

    aget-object v7, v1, v12

    aget-wide v17, v9, v12

    aget-wide v25, v4, v3

    mul-double v25, v25, v17

    aget-wide v8, v8, v12

    aget-wide v27, v2, v3

    mul-double v27, v27, v8

    add-double v25, v25, v27

    aput-wide v25, v7, v3

    aget-wide v25, v4, v10

    mul-double v15, v15, v25

    aget-wide v25, v5, v10

    mul-double v13, v13, v25

    add-double/2addr v15, v13

    mul-double v23, v23, v21

    add-double v15, v15, v23

    aput-wide v15, v6, v10

    aget-wide v13, v4, v10

    mul-double v13, v13, v17

    aget-wide v15, v2, v10

    mul-double/2addr v15, v8

    add-double/2addr v13, v15

    aput-wide v13, v7, v10

    aget-wide v4, v4, v12

    mul-double v17, v17, v4

    mul-double v8, v8, v19

    add-double v17, v17, v8

    aput-wide v17, v7, v12

    aget-wide v4, v11, v3

    aget-wide v8, p2, v3

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    aget-object v13, v2, v3

    aget-wide v13, v13, v3

    mul-double/2addr v8, v13

    aget-wide v13, p2, v10

    iget-object v15, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->thetaHessian:[[D

    aget-object v16, v15, v3

    aget-wide v19, v16, v3

    mul-double v19, v19, v13

    add-double v8, v8, v19

    aget-wide v19, p2, v12

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    aget-object v16, v0, v3

    aget-wide v21, v16, v3

    mul-double v21, v21, v19

    add-double v8, v8, v21

    add-double/2addr v4, v8

    aput-wide v4, v11, v3

    aget-wide v4, v6, v3

    aget-wide v8, p2, v3

    aget-object v16, v2, v10

    aget-wide v21, v16, v3

    mul-double v8, v8, v21

    aget-object v15, v15, v10

    aget-wide v21, v15, v3

    mul-double v21, v21, v13

    add-double v8, v8, v21

    aget-object v21, v0, v10

    aget-wide v22, v21, v3

    mul-double v22, v22, v19

    add-double v8, v8, v22

    add-double/2addr v4, v8

    aput-wide v4, v6, v3

    aget-wide v4, v7, v3

    aget-wide v8, p2, v3

    aget-object v2, v2, v12

    aget-wide v22, v2, v3

    mul-double v8, v8, v22

    aget-object v0, v0, v12

    aget-wide v22, v0, v3

    mul-double v22, v22, v19

    add-double v8, v8, v22

    add-double/2addr v4, v8

    aput-wide v4, v7, v3

    aget-wide v8, v6, v10

    aget-wide v22, p2, v3

    aget-wide v24, v16, v10

    mul-double v24, v24, v22

    aget-wide v15, v15, v10

    mul-double/2addr v13, v15

    add-double v24, v24, v13

    aget-wide v13, v21, v10

    mul-double v13, v13, v19

    add-double v24, v24, v13

    add-double v8, v8, v24

    aput-wide v8, v6, v10

    aget-wide v8, v7, v10

    aget-wide v13, v2, v10

    mul-double v13, v13, v22

    aget-wide v15, v0, v10

    mul-double v15, v15, v19

    add-double/2addr v13, v15

    add-double/2addr v8, v13

    aput-wide v8, v7, v10

    aget-wide v8, v2, v12

    mul-double v22, v22, v8

    aget-wide v8, v0, v12

    mul-double v19, v19, v8

    add-double v22, v22, v19

    add-double v17, v17, v22

    aput-wide v17, v7, v12

    aget-wide v2, v6, v3

    aput-wide v2, v11, v10

    aput-wide v4, v11, v12

    aget-wide v2, v7, v10

    aput-wide v2, v6, v12

    return-object v1
.end method
