.class public Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final IDENTITY:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

.field private static final serialVersionUID:J = -0x1de3341942831b79L


# instance fields
.field private final q0:D

.field private final q1:D

.field private final q2:D

.field private final q3:D


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v10, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    sput-object v10, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->IDENTITY:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    return-void
.end method

.method public constructor <init>(DDDDZ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p9, :cond_0

    mul-double v0, p1, p1

    mul-double v2, p3, p3

    add-double/2addr v0, v2

    mul-double v2, p5, p5

    add-double/2addr v0, v2

    mul-double v2, p7, p7

    add-double/2addr v0, v2

    .line 2
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    mul-double/2addr p1, v2

    mul-double/2addr p3, v2

    mul-double/2addr p5, v2

    mul-double/2addr p7, v2

    .line 3
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 4
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 5
    iput-wide p5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 6
    iput-wide p7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;DDD)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide v7, p6

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;DDD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;DDD)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->getA1()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    invoke-direct {v0, v1, p3, p4, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    .line 58
    new-instance p3, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->getA2()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p4

    invoke-direct {p3, p4, p5, p6, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    .line 59
    new-instance p4, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->getA3()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    invoke-direct {p4, p1, p7, p8, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    .line 60
    invoke-virtual {p3, p4, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->compose(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->compose(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object p1

    .line 61
    iget-wide p2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 62
    iget-wide p2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 63
    iget-wide p2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 64
    iget-wide p1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_1

    .line 10
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p4, v2, :cond_0

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    :goto_0
    mul-double/2addr p2, v2

    .line 11
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v2

    div-double/2addr v2, v0

    .line 12
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide p2

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 13
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide p2

    mul-double/2addr p2, v2

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 14
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide p2

    mul-double/2addr p2, v2

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 15
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide p1

    mul-double/2addr v2, p1

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    return-void

    .line 16
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM_FOR_ROTATION_AXIS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    .line 43
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v4

    const-wide v6, -0x4010000000000012L    # -0.999999999999998

    mul-double/2addr v6, v0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_0

    .line 44
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->orthogonal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 45
    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 46
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v0

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 47
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v0

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 48
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide p1

    neg-double p1, p1

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    goto :goto_0

    :cond_0
    div-double/2addr v4, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    .line 49
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    mul-double/2addr v4, v0

    div-double/2addr v2, v4

    .line 50
    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v0

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 52
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v0

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 53
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide p1

    mul-double/2addr v2, p1

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    :goto_0
    return-void

    .line 54
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM_FOR_ROTATION_DEFINING_VECTOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual/range {p1 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    move-object/from16 v2, p1

    .line 30
    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 31
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 32
    invoke-virtual/range {p3 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    move-object/from16 v5, p3

    .line 33
    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    .line 34
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v5

    const/4 v7, 0x3

    new-array v8, v7, [[D

    new-array v9, v7, [D

    .line 35
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v10

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v12

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v14

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v16

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v18

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v20

    invoke-static/range {v10 .. v21}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v10

    const/4 v12, 0x0

    aput-wide v10, v9, v12

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v13

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v15

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v17

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v19

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v21

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v23

    invoke-static/range {v13 .. v24}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v10

    const/4 v13, 0x1

    aput-wide v10, v9, v13

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v14

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v16

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v18

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v20

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v22

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v24

    invoke-static/range {v14 .. v25}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v10

    const/4 v14, 0x2

    aput-wide v10, v9, v14

    aput-object v9, v8, v12

    new-array v9, v7, [D

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v15

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v17

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v19

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v21

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v23

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v25

    invoke-static/range {v15 .. v26}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v10

    aput-wide v10, v9, v12

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v15

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v17

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v19

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v21

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v23

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v25

    invoke-static/range {v15 .. v26}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v10

    aput-wide v10, v9, v13

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v15

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v17

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v19

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v21

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v23

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v25

    invoke-static/range {v15 .. v26}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v10

    aput-wide v10, v9, v14

    aput-object v9, v8, v13

    new-array v9, v7, [D

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v15

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v17

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v19

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v21

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v23

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v25

    invoke-static/range {v15 .. v26}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v10

    aput-wide v10, v9, v12

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v15

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v17

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v19

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v21

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v23

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v25

    invoke-static/range {v15 .. v26}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v10

    aput-wide v10, v9, v13

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v15

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v17

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v19

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v21

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v23

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v25

    invoke-static/range {v15 .. v26}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v1

    aput-wide v1, v9, v14

    aput-object v9, v8, v14

    .line 36
    invoke-static {v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->mat2quat([[D)[D

    move-result-object v1

    .line 37
    aget-wide v2, v1, v12

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 38
    aget-wide v2, v1, v13

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 39
    aget-wide v2, v1, v14

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 40
    aget-wide v1, v1, v7

    iput-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    return-void
.end method

.method public constructor <init>([[DD)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    aget-object v2, v1, v3

    array-length v2, v2

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    aget-object v5, v1, v2

    array-length v5, v5

    if-ne v5, v4, :cond_1

    const/4 v5, 0x2

    aget-object v6, v1, v5

    array-length v6, v6

    if-ne v6, v4, :cond_1

    .line 19
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->orthogonalizeMatrix([[DD)[[D

    move-result-object v1

    .line 20
    aget-object v6, v1, v3

    aget-wide v7, v6, v3

    aget-object v9, v1, v2

    aget-wide v10, v9, v2

    aget-object v12, v1, v5

    aget-wide v13, v12, v5

    mul-double v15, v10, v13

    aget-wide v17, v12, v2

    aget-wide v19, v9, v5

    mul-double v21, v17, v19

    sub-double v15, v15, v21

    mul-double/2addr v7, v15

    aget-wide v15, v9, v3

    aget-wide v21, v6, v2

    mul-double v13, v13, v21

    aget-wide v23, v6, v5

    mul-double v17, v17, v23

    sub-double v13, v13, v17

    mul-double/2addr v15, v13

    sub-double/2addr v7, v15

    aget-wide v12, v12, v3

    mul-double v21, v21, v19

    mul-double v10, v10, v23

    sub-double v21, v21, v10

    mul-double v12, v12, v21

    add-double/2addr v7, v12

    const-wide/16 v9, 0x0

    cmpg-double v6, v7, v9

    if-ltz v6, :cond_0

    .line 21
    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->mat2quat([[D)[D

    move-result-object v1

    .line 22
    aget-wide v6, v1, v3

    iput-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 23
    aget-wide v2, v1, v2

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 24
    aget-wide v2, v1, v5

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 25
    aget-wide v1, v1, v4

    iput-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    return-void

    .line 26
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CLOSEST_ORTHOGONAL_MATRIX_HAS_NEGATIVE_DETERMINANT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 27
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROTATION_MATRIX_DIMENSIONS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget-object v1, v1, v3

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method private composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v10, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    iget-wide v2, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double v6, v2, v4

    iget-wide v8, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iget-wide v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v13, v8, v11

    move-wide v15, v2

    iget-wide v2, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-object/from16 v17, v10

    move-wide/from16 v18, v11

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v20, v2, v10

    add-double v13, v13, v20

    move-wide/from16 v20, v10

    iget-wide v10, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v22, v10, v0

    add-double v13, v13, v22

    sub-double/2addr v6, v13

    mul-double v12, v8, v4

    mul-double v22, v15, v18

    add-double v12, v12, v22

    mul-double v22, v2, v0

    mul-double v24, v10, v20

    sub-double v22, v22, v24

    add-double v12, v12, v22

    mul-double v22, v2, v4

    mul-double v24, v15, v20

    add-double v22, v22, v24

    mul-double v24, v10, v18

    mul-double v26, v8, v0

    sub-double v24, v24, v26

    add-double v22, v22, v24

    mul-double/2addr v10, v4

    mul-double/2addr v0, v15

    add-double/2addr v10, v0

    mul-double v8, v8, v20

    mul-double v2, v2, v18

    sub-double/2addr v8, v2

    add-double/2addr v8, v10

    const/4 v10, 0x0

    move-object/from16 v0, v17

    move-wide v1, v6

    move-wide v3, v12

    move-wide/from16 v5, v22

    move-wide v7, v8

    move v9, v10

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    return-object v17
.end method

.method private composeInverseInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v10, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    iget-wide v2, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    neg-double v4, v2

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double/2addr v4, v6

    iget-wide v8, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iget-wide v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v13, v8, v11

    move-wide v15, v2

    iget-wide v2, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-object/from16 v17, v10

    move-wide/from16 v18, v11

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v20, v2, v10

    add-double v13, v13, v20

    move-wide/from16 v20, v10

    iget-wide v10, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v22, v10, v0

    add-double v13, v13, v22

    sub-double/2addr v4, v13

    neg-double v12, v8

    mul-double/2addr v12, v6

    mul-double v22, v15, v18

    add-double v12, v12, v22

    mul-double v22, v2, v0

    mul-double v24, v10, v20

    sub-double v22, v22, v24

    add-double v12, v12, v22

    move-wide/from16 p0, v12

    neg-double v12, v2

    mul-double/2addr v12, v6

    mul-double v22, v15, v20

    add-double v12, v12, v22

    mul-double v22, v10, v18

    mul-double v24, v8, v0

    sub-double v22, v22, v24

    add-double v12, v12, v22

    neg-double v10, v10

    mul-double/2addr v10, v6

    mul-double/2addr v0, v15

    add-double/2addr v10, v0

    mul-double v8, v8, v20

    mul-double v2, v2, v18

    sub-double/2addr v8, v2

    add-double v7, v10, v8

    const/4 v9, 0x0

    move-object/from16 v0, v17

    move-wide v1, v4

    move-wide/from16 v3, p0

    move-wide v5, v12

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    return-object v17
.end method

.method public static distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)D
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->composeInverseInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getAngle()D

    move-result-wide p0

    return-wide p0
.end method

.method private static mat2quat([[D)[D
    .locals 22

    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v1, 0x0

    aget-object v2, p0, v1

    aget-wide v2, v2, v1

    const/4 v4, 0x1

    aget-object v5, p0, v4

    aget-wide v5, v5, v4

    add-double v7, v2, v5

    const/4 v9, 0x2

    aget-object v10, p0, v9

    aget-wide v10, v10, v9

    add-double/2addr v7, v10

    const-wide v12, -0x4037ae147ae147aeL    # -0.19

    cmpl-double v14, v7, v12

    const/4 v15, 0x3

    const-wide/high16 v16, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    if-lez v14, :cond_0

    add-double v7, v7, v18

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    mul-double v2, v2, v20

    aput-wide v2, v0, v1

    div-double v16, v16, v2

    aget-object v2, p0, v4

    aget-wide v5, v2, v9

    aget-object v3, p0, v9

    aget-wide v7, v3, v4

    sub-double/2addr v5, v7

    mul-double v5, v5, v16

    aput-wide v5, v0, v4

    aget-wide v5, v3, v1

    aget-object v3, p0, v1

    aget-wide v7, v3, v9

    sub-double/2addr v5, v7

    mul-double v5, v5, v16

    aput-wide v5, v0, v9

    aget-wide v3, v3, v4

    aget-wide v1, v2, v1

    sub-double/2addr v3, v1

    mul-double v16, v16, v3

    aput-wide v16, v0, v15

    goto/16 :goto_0

    :cond_0
    sub-double v7, v2, v5

    sub-double/2addr v7, v10

    cmpl-double v14, v7, v12

    if-lez v14, :cond_1

    add-double v7, v7, v18

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    mul-double v2, v2, v20

    aput-wide v2, v0, v4

    div-double v16, v16, v2

    aget-object v2, p0, v4

    aget-wide v5, v2, v9

    aget-object v3, p0, v9

    aget-wide v7, v3, v4

    sub-double/2addr v5, v7

    mul-double v5, v5, v16

    aput-wide v5, v0, v1

    aget-object v5, p0, v1

    aget-wide v6, v5, v4

    aget-wide v10, v2, v1

    add-double/2addr v6, v10

    mul-double v6, v6, v16

    aput-wide v6, v0, v9

    aget-wide v4, v5, v9

    aget-wide v1, v3, v1

    add-double/2addr v4, v1

    mul-double v16, v16, v4

    aput-wide v16, v0, v15

    goto :goto_0

    :cond_1
    sub-double v7, v5, v2

    sub-double/2addr v7, v10

    cmpl-double v12, v7, v12

    if-lez v12, :cond_2

    add-double v7, v7, v18

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    mul-double v2, v2, v20

    aput-wide v2, v0, v9

    div-double v16, v16, v2

    aget-object v2, p0, v9

    aget-wide v5, v2, v1

    aget-object v3, p0, v1

    aget-wide v7, v3, v9

    sub-double/2addr v5, v7

    mul-double v5, v5, v16

    aput-wide v5, v0, v1

    aget-wide v5, v3, v4

    aget-object v3, p0, v4

    aget-wide v7, v3, v1

    add-double/2addr v5, v7

    mul-double v5, v5, v16

    aput-wide v5, v0, v4

    aget-wide v1, v2, v4

    aget-wide v3, v3, v9

    add-double/2addr v1, v3

    mul-double v16, v16, v1

    aput-wide v16, v0, v15

    goto :goto_0

    :cond_2
    sub-double/2addr v10, v2

    sub-double/2addr v10, v5

    add-double v10, v10, v18

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    mul-double v2, v2, v20

    aput-wide v2, v0, v15

    div-double v16, v16, v2

    aget-object v2, p0, v1

    aget-wide v5, v2, v4

    aget-object v3, p0, v4

    aget-wide v7, v3, v1

    sub-double/2addr v5, v7

    mul-double v5, v5, v16

    aput-wide v5, v0, v1

    aget-wide v5, v2, v9

    aget-object v2, p0, v9

    aget-wide v7, v2, v1

    add-double/2addr v5, v7

    mul-double v5, v5, v16

    aput-wide v5, v0, v4

    aget-wide v1, v2, v4

    aget-wide v3, v3, v9

    add-double/2addr v1, v3

    mul-double v16, v16, v1

    aput-wide v16, v0, v9

    :goto_0
    return-object v0
.end method

.method private orthogonalizeMatrix([[DD)[[D
    .locals 67
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object v3, p1, v2

    const/4 v4, 0x2

    aget-object v5, p1, v4

    aget-wide v6, v1, v0

    aget-wide v8, v1, v2

    aget-wide v10, v1, v4

    aget-wide v12, v3, v0

    aget-wide v14, v3, v2

    aget-wide v16, v3, v4

    aget-wide v18, v5, v0

    aget-wide v20, v5, v2

    aget-wide v22, v5, v4

    const/4 v4, 0x3

    filled-new-array {v4, v4}, [I

    move-result-object v4

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    aget-object v4, v2, v0

    const/16 v24, 0x1

    aget-object v25, v2, v24

    const/16 v26, 0x2

    aget-object v27, v2, v26

    const-wide/16 v28, 0x0

    move/from16 v26, v0

    :goto_0
    add-int/lit8 v0, v26, 0x1

    move-object/from16 p1, v2

    const/16 v2, 0xb

    if-ge v0, v2, :cond_1

    const/4 v2, 0x0

    aget-wide v31, v1, v2

    mul-double v33, v31, v6

    aget-wide v35, v3, v2

    mul-double v37, v35, v12

    add-double v33, v33, v37

    aget-wide v37, v5, v2

    mul-double v39, v37, v18

    add-double v33, v33, v39

    aget-wide v39, v1, v24

    mul-double v41, v39, v6

    aget-wide v43, v3, v24

    mul-double v45, v43, v12

    add-double v41, v41, v45

    aget-wide v45, v5, v24

    mul-double v47, v45, v18

    add-double v41, v41, v47

    const/4 v2, 0x2

    aget-wide v47, v1, v2

    mul-double v49, v47, v6

    aget-wide v51, v3, v2

    mul-double v53, v51, v12

    add-double v49, v49, v53

    aget-wide v53, v5, v2

    mul-double v55, v53, v18

    add-double v49, v49, v55

    mul-double v55, v31, v8

    mul-double v57, v35, v14

    add-double v55, v55, v57

    mul-double v57, v37, v20

    add-double v55, v55, v57

    mul-double v57, v39, v8

    mul-double v59, v43, v14

    add-double v57, v57, v59

    mul-double v59, v45, v20

    add-double v57, v57, v59

    mul-double v59, v47, v8

    mul-double v61, v51, v14

    add-double v59, v59, v61

    mul-double v61, v53, v20

    add-double v59, v59, v61

    mul-double v61, v31, v10

    mul-double v35, v35, v16

    add-double v61, v61, v35

    mul-double v37, v37, v22

    add-double v61, v61, v37

    mul-double v35, v39, v10

    mul-double v43, v43, v16

    add-double v35, v35, v43

    mul-double v45, v45, v22

    add-double v35, v35, v45

    mul-double v37, v47, v10

    mul-double v51, v51, v16

    add-double v37, v37, v51

    mul-double v53, v53, v22

    add-double v37, v37, v53

    mul-double v43, v6, v33

    mul-double v45, v8, v41

    add-double v43, v43, v45

    mul-double v45, v10, v49

    add-double v43, v43, v45

    sub-double v43, v43, v31

    const-wide/high16 v31, 0x3fe0000000000000L    # 0.5

    mul-double v43, v43, v31

    sub-double v43, v6, v43

    const/4 v2, 0x0

    aput-wide v43, v4, v2

    mul-double v43, v6, v55

    mul-double v45, v8, v57

    add-double v43, v43, v45

    mul-double v45, v10, v59

    add-double v43, v43, v45

    sub-double v43, v43, v39

    mul-double v43, v43, v31

    sub-double v39, v8, v43

    const/4 v2, 0x1

    aput-wide v39, v4, v2

    mul-double v6, v6, v61

    mul-double v8, v8, v35

    add-double/2addr v6, v8

    mul-double v8, v10, v37

    add-double/2addr v6, v8

    sub-double v6, v6, v47

    mul-double v6, v6, v31

    sub-double/2addr v10, v6

    const/4 v2, 0x2

    aput-wide v10, v4, v2

    mul-double v6, v12, v33

    mul-double v8, v14, v41

    add-double/2addr v6, v8

    mul-double v8, v16, v49

    add-double/2addr v6, v8

    const/4 v2, 0x0

    aget-wide v8, v3, v2

    sub-double/2addr v6, v8

    mul-double v6, v6, v31

    sub-double v6, v12, v6

    aput-wide v6, v25, v2

    mul-double v6, v12, v55

    mul-double v8, v14, v57

    add-double/2addr v6, v8

    mul-double v8, v16, v59

    add-double/2addr v6, v8

    const/4 v2, 0x1

    aget-wide v8, v3, v2

    sub-double/2addr v6, v8

    mul-double v6, v6, v31

    sub-double v6, v14, v6

    aput-wide v6, v25, v2

    mul-double v12, v12, v61

    mul-double v14, v14, v35

    add-double/2addr v12, v14

    mul-double v6, v16, v37

    add-double/2addr v12, v6

    const/4 v2, 0x2

    aget-wide v6, v3, v2

    sub-double/2addr v12, v6

    mul-double v12, v12, v31

    sub-double v16, v16, v12

    aput-wide v16, v25, v2

    mul-double v33, v33, v18

    mul-double v41, v41, v20

    add-double v33, v33, v41

    mul-double v49, v49, v22

    add-double v33, v33, v49

    const/4 v2, 0x0

    aget-wide v6, v5, v2

    sub-double v33, v33, v6

    mul-double v33, v33, v31

    sub-double v6, v18, v33

    aput-wide v6, v27, v2

    mul-double v55, v55, v18

    mul-double v57, v57, v20

    add-double v55, v55, v57

    mul-double v59, v59, v22

    add-double v55, v55, v59

    const/4 v2, 0x1

    aget-wide v8, v5, v2

    sub-double v55, v55, v8

    mul-double v55, v55, v31

    sub-double v8, v20, v55

    aput-wide v8, v27, v2

    mul-double v18, v18, v61

    mul-double v20, v20, v35

    add-double v18, v18, v20

    mul-double v37, v37, v22

    add-double v18, v18, v37

    const/4 v2, 0x2

    aget-wide v10, v5, v2

    sub-double v18, v18, v10

    mul-double v18, v18, v31

    sub-double v22, v22, v18

    aput-wide v22, v27, v2

    const/4 v10, 0x0

    aget-wide v11, v4, v10

    aget-wide v13, v1, v10

    sub-double/2addr v11, v13

    const/4 v13, 0x1

    aget-wide v14, v4, v13

    aget-wide v16, v1, v13

    sub-double v14, v14, v16

    aget-wide v16, v4, v2

    aget-wide v18, v1, v2

    sub-double v16, v16, v18

    aget-wide v18, v25, v10

    aget-wide v20, v3, v10

    sub-double v18, v18, v20

    aget-wide v20, v25, v13

    aget-wide v30, v3, v13

    sub-double v20, v20, v30

    aget-wide v30, v25, v2

    aget-wide v32, v3, v2

    sub-double v31, v30, v32

    aget-wide v33, v5, v10

    sub-double v6, v6, v33

    aget-wide v33, v5, v13

    sub-double v8, v8, v33

    aget-wide v33, v5, v2

    sub-double v22, v22, v33

    mul-double/2addr v11, v11

    mul-double/2addr v14, v14

    add-double/2addr v11, v14

    mul-double v16, v16, v16

    add-double v11, v11, v16

    mul-double v18, v18, v18

    add-double v11, v11, v18

    mul-double v20, v20, v20

    add-double v11, v11, v20

    mul-double v31, v31, v31

    add-double v11, v11, v31

    mul-double/2addr v6, v6

    add-double/2addr v11, v6

    mul-double/2addr v8, v8

    add-double/2addr v11, v8

    mul-double v22, v22, v22

    add-double v6, v11, v22

    sub-double v8, v6, v28

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    cmpg-double v2, v8, p2

    if-gtz v2, :cond_0

    return-object p1

    :cond_0
    const/4 v2, 0x0

    aget-wide v8, v4, v2

    const/4 v10, 0x1

    aget-wide v11, v4, v10

    const/4 v13, 0x2

    aget-wide v14, v4, v13

    aget-wide v16, v25, v2

    aget-wide v18, v25, v10

    aget-wide v20, v25, v13

    aget-wide v22, v27, v2

    aget-wide v28, v27, v10

    aget-wide v30, v27, v13

    move-object/from16 v2, p1

    move/from16 v26, v0

    move/from16 v24, v10

    move-wide/from16 v63, v22

    move-wide/from16 v22, v30

    move-wide/from16 v65, v20

    move-wide/from16 v20, v28

    move-wide/from16 v28, v6

    move-wide v6, v8

    move-wide v8, v11

    move-wide v10, v14

    move-wide/from16 v12, v16

    move-wide/from16 v14, v18

    move-wide/from16 v16, v65

    move-wide/from16 v18, v63

    goto/16 :goto_0

    :cond_1
    move/from16 v10, v24

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_ORTHOGONOLIZE_MATRIX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    sub-int/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 1

    .line 15
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->composeInverse(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object p0

    return-object p0
.end method

.method public applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 29

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    .line 2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    .line 4
    iget-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v7, v1

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v9, v3

    add-double/2addr v7, v9

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v9, v5

    add-double/2addr v7, v9

    .line 5
    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    neg-double v9, v9

    .line 6
    new-instance v18, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    mul-double v11, v1, v9

    iget-wide v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v15, v13, v5

    move-wide/from16 v19, v13

    iget-wide v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v21, v13, v3

    sub-double v15, v15, v21

    sub-double/2addr v11, v15

    mul-double/2addr v11, v9

    move-wide v15, v5

    iget-wide v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v21, v7, v5

    add-double v11, v11, v21

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    mul-double v11, v11, v21

    sub-double v23, v11, v1

    mul-double v11, v3, v9

    mul-double v25, v13, v1

    mul-double v27, v5, v15

    sub-double v25, v25, v27

    sub-double v11, v11, v25

    mul-double/2addr v11, v9

    mul-double v25, v7, v19

    add-double v11, v11, v25

    mul-double v11, v11, v21

    sub-double v25, v11, v3

    mul-double v11, v15, v9

    mul-double/2addr v5, v3

    mul-double v0, v19, v1

    sub-double/2addr v5, v0

    sub-double/2addr v11, v5

    mul-double/2addr v9, v11

    mul-double/2addr v7, v13

    add-double/2addr v9, v7

    mul-double v9, v9, v21

    sub-double v16, v9, v15

    move-object/from16 v11, v18

    move-wide/from16 v12, v23

    move-wide/from16 v14, v25

    invoke-direct/range {v11 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v18
.end method

.method public applyInverseTo([D[D)V
    .locals 27

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 7
    aget-wide v2, p1, v1

    const/4 v4, 0x1

    .line 8
    aget-wide v5, p1, v4

    const/4 v7, 0x2

    .line 9
    aget-wide v8, p1, v7

    .line 10
    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v12, v10, v2

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v16, v14, v5

    add-double v12, v12, v16

    move-wide/from16 v17, v5

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v19, v4, v8

    add-double v12, v12, v19

    move-wide/from16 v19, v8

    .line 11
    iget-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    neg-double v7, v7

    mul-double v21, v2, v7

    mul-double v23, v14, v19

    mul-double v25, v4, v17

    sub-double v23, v23, v25

    sub-double v21, v21, v23

    mul-double v21, v21, v7

    mul-double v23, v12, v10

    add-double v21, v21, v23

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    mul-double v21, v21, v23

    sub-double v21, v21, v2

    .line 12
    aput-wide v21, p2, v1

    mul-double v0, v17, v7

    mul-double v21, v4, v2

    mul-double v25, v10, v19

    sub-double v21, v21, v25

    sub-double v0, v0, v21

    mul-double/2addr v0, v7

    mul-double v21, v12, v14

    add-double v0, v0, v21

    mul-double v0, v0, v23

    sub-double v0, v0, v17

    const/4 v9, 0x1

    .line 13
    aput-wide v0, p2, v9

    mul-double v0, v19, v7

    mul-double v10, v10, v17

    mul-double/2addr v14, v2

    sub-double/2addr v10, v14

    sub-double/2addr v0, v10

    mul-double/2addr v7, v0

    mul-double/2addr v12, v4

    add-double/2addr v7, v12

    mul-double v7, v7, v23

    sub-double v7, v7, v19

    const/4 v0, 0x2

    .line 14
    aput-wide v7, p2, v0

    return-void
.end method

.method public applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 1

    .line 13
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->compose(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object p0

    return-object p0
.end method

.method public applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 29

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    .line 2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    .line 4
    iget-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v7, v1

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v9, v3

    add-double/2addr v7, v9

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v9, v5

    add-double/2addr v7, v9

    .line 5
    new-instance v16, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double v11, v1, v9

    iget-wide v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v17, v13, v5

    move-wide/from16 v19, v13

    iget-wide v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v21, v13, v3

    sub-double v17, v17, v21

    sub-double v11, v11, v17

    mul-double/2addr v11, v9

    move-wide/from16 v17, v5

    iget-wide v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v21, v7, v5

    add-double v11, v11, v21

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    mul-double v11, v11, v21

    sub-double/2addr v11, v1

    mul-double v23, v3, v9

    mul-double v25, v13, v1

    mul-double v27, v5, v17

    sub-double v25, v25, v27

    sub-double v23, v23, v25

    mul-double v23, v23, v9

    mul-double v25, v7, v19

    add-double v23, v23, v25

    mul-double v23, v23, v21

    sub-double v23, v23, v3

    mul-double v25, v17, v9

    mul-double/2addr v5, v3

    mul-double v0, v19, v1

    sub-double/2addr v5, v0

    sub-double v25, v25, v5

    mul-double v9, v9, v25

    mul-double/2addr v7, v13

    add-double/2addr v9, v7

    mul-double v9, v9, v21

    sub-double v14, v9, v17

    move-object/from16 v9, v16

    move-wide v10, v11

    move-wide/from16 v12, v23

    invoke-direct/range {v9 .. v15}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v16
.end method

.method public applyTo([D[D)V
    .locals 26

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 6
    aget-wide v2, p1, v1

    const/4 v4, 0x1

    .line 7
    aget-wide v5, p1, v4

    const/4 v7, 0x2

    .line 8
    aget-wide v8, p1, v7

    .line 9
    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v12, v10, v2

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v16, v14, v5

    add-double v12, v12, v16

    move-wide/from16 v17, v5

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v19, v4, v8

    add-double v12, v12, v19

    .line 10
    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double v20, v2, v6

    mul-double v22, v14, v8

    mul-double v24, v4, v17

    sub-double v22, v22, v24

    sub-double v20, v20, v22

    mul-double v20, v20, v6

    mul-double v22, v12, v10

    add-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v20, v20, v22

    sub-double v20, v20, v2

    aput-wide v20, p2, v1

    mul-double v0, v17, v6

    mul-double v20, v4, v2

    mul-double v24, v10, v8

    sub-double v20, v20, v24

    sub-double v0, v0, v20

    mul-double/2addr v0, v6

    mul-double v20, v12, v14

    add-double v0, v0, v20

    mul-double v0, v0, v22

    sub-double v0, v0, v17

    const/16 v16, 0x1

    .line 11
    aput-wide v0, p2, v16

    mul-double v0, v8, v6

    mul-double v10, v10, v17

    mul-double/2addr v14, v2

    sub-double/2addr v10, v14

    sub-double/2addr v0, v10

    mul-double/2addr v6, v0

    mul-double/2addr v12, v4

    add-double/2addr v6, v12

    mul-double v6, v6, v22

    sub-double/2addr v6, v8

    const/4 v0, 0x2

    .line 12
    aput-wide v6, p2, v0

    return-void
.end method

.method public compose(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-direct {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public composeInverse(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->composeInverseInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->revert()Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->composeInternal(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getAngle()D
    .locals 7

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    const-wide v2, -0x4046666666666666L    # -0.1

    cmpg-double v2, v0, v2

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    if-ltz v2, :cond_2

    const-wide v5, 0x3fb999999999999aL    # 0.1

    cmpl-double v2, v0, v5

    if-lez v2, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v5, 0x0

    cmpg-double p0, v0, v5

    if-gez p0, :cond_1

    neg-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v0

    :goto_0
    mul-double/2addr v0, v3

    return-wide v0

    :cond_1
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v0

    goto :goto_0

    :cond_2
    :goto_1
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v0, v0

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v5, v5

    add-double/2addr v0, v5

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v5, v5

    add-double/2addr v0, v5

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getAngles(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;)[D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getAngles(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)[D

    move-result-object p0

    return-object p0
.end method

.method public getAngles(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)[D
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    const/4 v1, 0x2

    const/4 v2, 0x3

    const-wide v3, 0x3feffffffff24190L    # 0.9999999999

    const-wide v5, -0x40100000000dbe70L    # -0.9999999999

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne p2, v0, :cond_17

    .line 3
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_1

    .line 4
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 5
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v9

    cmpg-double p2, v9, v5

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    cmpl-double p2, v5, v3

    if-gtz p2, :cond_0

    new-array p2, v2, [D

    .line 7
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p2, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    aput-wide v2, p2, v8

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p0

    aput-wide p0, p2, v1

    return-object p2

    .line 8
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p0, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p0

    .line 9
    :cond_1
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_3

    .line 10
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 11
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    cmpg-double p2, v9, v5

    if-ltz p2, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    cmpl-double p2, v5, v3

    if-gtz p2, :cond_2

    new-array p2, v2, [D

    .line 13
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p2, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, p2, v8

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p0

    aput-wide p0, p2, v1

    return-object p2

    .line 14
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p0, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p0

    .line 15
    :cond_3
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_5

    .line 16
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 17
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v9

    cmpg-double p2, v9, v5

    if-ltz p2, :cond_4

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    cmpl-double p2, v5, v3

    if-gtz p2, :cond_4

    new-array p2, v2, [D

    .line 19
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p2, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, p2, v8

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p0

    aput-wide p0, p2, v1

    return-object p2

    .line 20
    :cond_4
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p0, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p0

    .line 21
    :cond_5
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_7

    .line 22
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 23
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v9

    cmpg-double p2, v9, v5

    if-ltz p2, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    cmpl-double p2, v5, v3

    if-gtz p2, :cond_6

    new-array p2, v2, [D

    .line 25
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p2, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    aput-wide v2, p2, v8

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p0

    aput-wide p0, p2, v1

    return-object p2

    .line 26
    :cond_6
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p0, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p0

    .line 27
    :cond_7
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_9

    .line 28
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 29
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    cmpg-double p2, v9, v5

    if-ltz p2, :cond_8

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    cmpl-double p2, v5, v3

    if-gtz p2, :cond_8

    new-array p2, v2, [D

    .line 31
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p2, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    aput-wide v2, p2, v8

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p0

    aput-wide p0, p2, v1

    return-object p2

    .line 32
    :cond_8
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p0, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p0

    .line 33
    :cond_9
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_b

    .line 34
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 35
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    .line 36
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v9

    cmpg-double p2, v9, v5

    if-ltz p2, :cond_a

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    cmpl-double p2, v5, v3

    if-gtz p2, :cond_a

    new-array p2, v2, [D

    .line 37
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p2, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, p2, v8

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p0

    aput-wide p0, p2, v1

    return-object p2

    .line 38
    :cond_a
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p0, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p0

    .line 39
    :cond_b
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_d

    .line 40
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 41
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    .line 42
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v9

    cmpg-double p1, v9, v5

    if-ltz p1, :cond_c

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    cmpl-double p1, v5, v3

    if-gtz p1, :cond_c

    new-array p1, v2, [D

    .line 43
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p1, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    aput-wide v2, p1, v8

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p1, v1

    return-object p1

    .line 44
    :cond_c
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p0, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p0

    .line 45
    :cond_d
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_f

    .line 46
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 47
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    .line 48
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v9

    cmpg-double p1, v9, v5

    if-ltz p1, :cond_e

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    cmpl-double p1, v5, v3

    if-gtz p1, :cond_e

    new-array p1, v2, [D

    .line 49
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p1, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    aput-wide v2, p1, v8

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p1, v1

    return-object p1

    .line 50
    :cond_e
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p0, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p0

    .line 51
    :cond_f
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_11

    .line 52
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 53
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    cmpg-double p1, v9, v5

    if-ltz p1, :cond_10

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    cmpl-double p1, v5, v3

    if-gtz p1, :cond_10

    new-array p1, v2, [D

    .line 55
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p1, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    aput-wide v2, p1, v8

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p1, v1

    return-object p1

    .line 56
    :cond_10
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p0, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p0

    .line 57
    :cond_11
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_13

    .line 58
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 59
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    cmpg-double p1, v9, v5

    if-ltz p1, :cond_12

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    cmpl-double p1, v5, v3

    if-gtz p1, :cond_12

    new-array p1, v2, [D

    .line 61
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p1, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    aput-wide v2, p1, v8

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p1, v1

    return-object p1

    .line 62
    :cond_12
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p0, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p0

    .line 63
    :cond_13
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_15

    .line 64
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 65
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    .line 66
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v9

    cmpg-double p1, v9, v5

    if-ltz p1, :cond_14

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    cmpl-double p1, v5, v3

    if-gtz p1, :cond_14

    new-array p1, v2, [D

    .line 67
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p1, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    aput-wide v2, p1, v8

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p1, v1

    return-object p1

    .line 68
    :cond_14
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p0, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p0

    .line 69
    :cond_15
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 70
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v9

    cmpg-double p1, v9, v5

    if-ltz p1, :cond_16

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    cmpl-double p1, v5, v3

    if-gtz p1, :cond_16

    new-array p1, v2, [D

    .line 72
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p1, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    aput-wide v2, p1, v8

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p1, v1

    return-object p1

    .line 73
    :cond_16
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p0, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p0

    .line 74
    :cond_17
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_19

    .line 75
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 76
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v9

    cmpg-double p2, v9, v5

    if-ltz p2, :cond_18

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    cmpl-double p2, v5, v3

    if-gtz p2, :cond_18

    new-array p2, v2, [D

    .line 78
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p2, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    aput-wide v2, p2, v8

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p0

    aput-wide p0, p2, v1

    return-object p2

    .line 79
    :cond_18
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p0, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p0

    .line 80
    :cond_19
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_1b

    .line 81
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 82
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    .line 83
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v9

    cmpg-double p2, v9, v5

    if-ltz p2, :cond_1a

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    cmpl-double p2, v5, v3

    if-gtz p2, :cond_1a

    new-array p2, v2, [D

    .line 84
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p2, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, p2, v8

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p0

    aput-wide p0, p2, v1

    return-object p2

    .line 85
    :cond_1a
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p0, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p0

    .line 86
    :cond_1b
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_1d

    .line 87
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 88
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    .line 89
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    cmpg-double p2, v9, v5

    if-ltz p2, :cond_1c

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    cmpl-double p2, v5, v3

    if-gtz p2, :cond_1c

    new-array p2, v2, [D

    .line 90
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p2, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, p2, v8

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p0

    aput-wide p0, p2, v1

    return-object p2

    .line 91
    :cond_1c
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p0, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p0

    .line 92
    :cond_1d
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_1f

    .line 93
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 94
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    cmpg-double p2, v9, v5

    if-ltz p2, :cond_1e

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    cmpl-double p2, v5, v3

    if-gtz p2, :cond_1e

    new-array p2, v2, [D

    .line 96
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p2, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    aput-wide v2, p2, v8

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p0

    aput-wide p0, p2, v1

    return-object p2

    .line 97
    :cond_1e
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p0, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p0

    .line 98
    :cond_1f
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_21

    .line 99
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 100
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    .line 101
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v9

    cmpg-double p2, v9, v5

    if-ltz p2, :cond_20

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    cmpl-double p2, v5, v3

    if-gtz p2, :cond_20

    new-array p2, v2, [D

    .line 102
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p2, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    aput-wide v2, p2, v8

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p0

    aput-wide p0, p2, v1

    return-object p2

    .line 103
    :cond_20
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p0, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p0

    .line 104
    :cond_21
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_23

    .line 105
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 106
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    .line 107
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v9

    cmpg-double p2, v9, v5

    if-ltz p2, :cond_22

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    cmpl-double p2, v5, v3

    if-gtz p2, :cond_22

    new-array p2, v2, [D

    .line 108
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p2, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, p2, v8

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide p0

    aput-wide p0, p2, v1

    return-object p2

    .line 109
    :cond_22
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p0, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p0

    .line 110
    :cond_23
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_25

    .line 111
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 112
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v9

    cmpg-double p1, v9, v5

    if-ltz p1, :cond_24

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    cmpl-double p1, v5, v3

    if-gtz p1, :cond_24

    new-array p1, v2, [D

    .line 114
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p1, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    aput-wide v2, p1, v8

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p1, v1

    return-object p1

    .line 115
    :cond_24
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p0, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p0

    .line 116
    :cond_25
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_27

    .line 117
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 118
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    .line 119
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v9

    cmpg-double p1, v9, v5

    if-ltz p1, :cond_26

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    cmpl-double p1, v5, v3

    if-gtz p1, :cond_26

    new-array p1, v2, [D

    .line 120
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p1, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    aput-wide v2, p1, v8

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p1, v1

    return-object p1

    .line 121
    :cond_26
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p0, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p0

    .line 122
    :cond_27
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_29

    .line 123
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 124
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    .line 125
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    cmpg-double p1, v9, v5

    if-ltz p1, :cond_28

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    cmpl-double p1, v5, v3

    if-gtz p1, :cond_28

    new-array p1, v2, [D

    .line 126
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p1, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    aput-wide v2, p1, v8

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p1, v1

    return-object p1

    .line 127
    :cond_28
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p0, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p0

    .line 128
    :cond_29
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_2b

    .line 129
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 130
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    .line 131
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    cmpg-double p1, v9, v5

    if-ltz p1, :cond_2a

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    cmpl-double p1, v5, v3

    if-gtz p1, :cond_2a

    new-array p1, v2, [D

    .line 132
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p1, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    aput-wide v2, p1, v8

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p1, v1

    return-object p1

    .line 133
    :cond_2a
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p0, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p0

    .line 134
    :cond_2b
    sget-object p2, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, p2, :cond_2d

    .line 135
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 136
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    .line 137
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v9

    cmpg-double p1, v9, v5

    if-ltz p1, :cond_2c

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    cmpl-double p1, v5, v3

    if-gtz p1, :cond_2c

    new-array p1, v2, [D

    .line 138
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p1, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    aput-wide v2, p1, v8

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p1, v1

    return-object p1

    .line 139
    :cond_2c
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p0, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p0

    .line 140
    :cond_2d
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    .line 141
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    .line 142
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v9

    cmpg-double p1, v9, v5

    if-ltz p1, :cond_2e

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    cmpl-double p1, v5, v3

    if-gtz p1, :cond_2e

    new-array p1, v2, [D

    .line 143
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p1, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    aput-wide v2, p1, v8

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p1, v1

    return-object p1

    .line 144
    :cond_2e
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p0, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p0
.end method

.method public getAxis()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getAxis(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    return-object p0
.end method

.method public getAxis(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 13

    .line 2
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    .line 3
    sget-object p0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p1, p0, :cond_0

    sget-object p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    :goto_0
    return-object p0

    .line 4
    :cond_1
    sget-object v4, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    if-ne p1, v4, :cond_2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_2
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 5
    :goto_1
    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    cmpg-double p1, v6, v2

    if-gez p1, :cond_3

    .line 6
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v4, v0

    .line 7
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v7, v0, v4

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v9, v0, v4

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v11, v0, v4

    move-object v6, p1

    invoke-direct/range {v6 .. v12}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object p1

    :cond_3
    neg-double v2, v4

    .line 8
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v2, v0

    .line 9
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v5, v0, v2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v7, v0, v2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v9, v0, v2

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object p1
.end method

.method public getMatrix()[[D
    .locals 31

    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double v3, v1, v1

    iget-wide v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v7, v1, v5

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v11, v1, v9

    iget-wide v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double/2addr v1, v13

    mul-double v15, v5, v5

    mul-double v17, v5, v9

    mul-double/2addr v5, v13

    mul-double v19, v9, v9

    mul-double/2addr v9, v13

    mul-double/2addr v13, v13

    const/4 v0, 0x3

    move-wide/from16 v21, v13

    new-array v13, v0, [[D

    new-array v14, v0, [D

    const/16 v23, 0x0

    aput-object v14, v13, v23

    move-wide/from16 v24, v7

    new-array v7, v0, [D

    const/4 v8, 0x1

    aput-object v7, v13, v8

    new-array v0, v0, [D

    const/16 v26, 0x2

    aput-object v0, v13, v26

    add-double/2addr v15, v3

    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    mul-double v15, v15, v27

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    sub-double v15, v15, v29

    aput-wide v15, v14, v23

    sub-double v15, v17, v1

    mul-double v15, v15, v27

    aput-wide v15, v7, v23

    add-double v15, v5, v11

    mul-double v15, v15, v27

    aput-wide v15, v0, v23

    add-double v17, v17, v1

    mul-double v17, v17, v27

    aput-wide v17, v14, v8

    add-double v19, v3, v19

    mul-double v19, v19, v27

    sub-double v19, v19, v29

    aput-wide v19, v7, v8

    sub-double v1, v9, v24

    mul-double v1, v1, v27

    aput-wide v1, v0, v8

    sub-double/2addr v5, v11

    mul-double v5, v5, v27

    aput-wide v5, v14, v26

    add-double v9, v9, v24

    mul-double v9, v9, v27

    aput-wide v9, v7, v26

    add-double v3, v3, v21

    mul-double v3, v3, v27

    sub-double v3, v3, v29

    aput-wide v3, v0, v26

    return-object v13
.end method

.method public getQ0()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    return-wide v0
.end method

.method public getQ1()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    return-wide v0
.end method

.method public getQ2()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    return-wide v0
.end method

.method public getQ3()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    return-wide v0
.end method

.method public revert()Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 11

    new-instance v10, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    neg-double v1, v0

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    return-object v10
.end method
