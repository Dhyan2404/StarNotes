.class public Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/math3/geometry/Vector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lorg/apache/commons/math3/geometry/Vector<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        ">;"
    }
.end annotation


# static fields
.field public static final MINUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public static final MINUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public static final MINUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public static final NEGATIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public static final NaN:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public static final PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public static final PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public static final PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public static final POSITIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public static final ZERO:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private static final serialVersionUID:J = 0x123a77380306b8a3L


# instance fields
.field private final x:D

.field private final y:D

.field private final z:D


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v7, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v9, 0x0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v11, 0x0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v4, 0x0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v9, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v11, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v13, 0x7ff8000000000000L    # Double.NaN

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->POSITIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v9, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v11, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v13, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->NEGATIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v0

    .line 13
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    .line 14
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide p1

    mul-double/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    .line 15
    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    .line 3
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    .line 4
    iput-wide p5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    .line 18
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    .line 19
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    mul-double/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iget-wide v5, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v9, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    move-wide v3, p1

    move-wide/from16 v7, p4

    invoke-static/range {v3 .. v10}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v3

    iput-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    .line 22
    iget-wide v7, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v11, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    move-wide v5, p1

    move-wide/from16 v9, p4

    invoke-static/range {v5 .. v12}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v3

    iput-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    .line 23
    iget-wide v7, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v11, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    invoke-static/range {v5 .. v12}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p9

    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iget-wide v6, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v10, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v14, v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    move-wide/from16 v4, p1

    move-wide/from16 v8, p4

    move-wide/from16 v12, p7

    invoke-static/range {v4 .. v15}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v4

    iput-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    .line 26
    iget-wide v8, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v12, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v4, v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    move-wide/from16 v6, p1

    move-wide/from16 v10, p4

    move-wide/from16 v14, p7

    move-wide/from16 v16, v4

    invoke-static/range {v6 .. v17}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v4

    iput-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    .line 27
    iget-wide v8, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v12, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v1, v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    move-wide/from16 v16, v1

    invoke-static/range {v6 .. v17}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p9

    move-object/from16 v4, p12

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iget-wide v7, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v11, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v13, v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v9, v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    move-wide/from16 v5, p1

    move-wide/from16 v19, v9

    move-wide/from16 v9, p4

    move-wide v15, v13

    move-wide/from16 v13, p7

    move-wide/from16 v17, p10

    invoke-static/range {v5 .. v20}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDDDD)D

    move-result-wide v5

    iput-wide v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    .line 30
    iget-wide v9, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v13, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v5, v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v11, v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    move-wide/from16 v7, p1

    move-wide/from16 v21, v11

    move-wide/from16 v11, p4

    move-wide/from16 v15, p7

    move-wide/from16 v17, v5

    move-wide/from16 v19, p10

    invoke-static/range {v7 .. v22}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDDDD)D

    move-result-wide v5

    iput-wide v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    .line 31
    iget-wide v9, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v13, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v1, v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v3, v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    move-wide/from16 v17, v1

    move-wide/from16 v21, v3

    invoke-static/range {v7 .. v22}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDDDD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    return-void
.end method

.method public constructor <init>([D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7
    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    const/4 v0, 0x1

    .line 8
    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    const/4 v0, 0x2

    .line 9
    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    return-void

    .line 10
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method

.method public static angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v4

    const-wide v6, 0x3fefff2e48e8a71eL    # 0.9999

    mul-double/2addr v6, v0

    neg-double v8, v6

    cmpg-double v8, v4, v8

    if-ltz v8, :cond_1

    cmpl-double v6, v4, v6

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    div-double/2addr v4, v0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    cmpl-double p1, v4, v2

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide p0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide p0

    return-wide p0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide p0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide p0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    sub-double/2addr v0, p0

    return-wide v0

    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    return-object p0
.end method

.method public static distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distance1(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->distance1(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distanceInf(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->distanceInf(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distanceSq(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->distanceSq(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public bridge synthetic add(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->add(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    return-object p0
.end method

.method public add(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .line 5
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-object v6, p3

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object v0, v7

    move-object v3, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v7
.end method

.method public add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .line 3
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 4
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    add-double v1, v0, v2

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    add-double/2addr v3, v5

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide p0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    add-double/2addr v5, p0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v7
.end method

.method public crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 2
    new-instance v9, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v12, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    neg-double v14, v2

    iget-wide v2, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    move-wide/from16 v16, v2

    invoke-static/range {v10 .. v17}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v3

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v12, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    neg-double v14, v5

    iget-wide v5, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    move-wide/from16 v16, v5

    invoke-static/range {v10 .. v17}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v5

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v12, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    neg-double v14, v7

    iget-wide v0, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    move-wide/from16 v16, v0

    invoke-static/range {v10 .. v17}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v7

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v9
.end method

.method public distance(Lorg/apache/commons/math3/geometry/Point;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)D"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 3
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    sub-double/2addr v0, v2

    .line 4
    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    sub-double/2addr v2, v4

    .line 5
    iget-wide v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    sub-double/2addr v4, p0

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    .line 6
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public distance(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)D"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide p0

    return-wide p0
.end method

.method public distance1(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)D"
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 2
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    .line 3
    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    .line 4
    iget-wide v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    sub-double/2addr v4, p0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p0

    add-double/2addr v0, v2

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public distanceInf(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)D"
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 2
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    .line 3
    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    .line 4
    iget-wide v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    sub-double/2addr v4, p0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p0

    .line 5
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public distanceSq(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)D"
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 2
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    sub-double/2addr v0, v2

    .line 3
    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    sub-double/2addr v2, v4

    .line 4
    iget-wide v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    sub-double/2addr v4, p0

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    return-wide v0
.end method

.method public dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)D"
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 2
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v6, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v10, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    invoke-static/range {v0 .. v11}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->isNaN()Z

    move-result p0

    return p0

    :cond_1
    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide p0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    cmpl-double p0, v3, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public getAlpha()D
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDelta()D
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNorm()D
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNorm1()D
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getNormInf()D
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNormSq()D
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getSpace()Lorg/apache/commons/math3/geometry/Space;
    .locals 0

    invoke-static {}, Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;->getInstance()Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;

    move-result-object p0

    return-object p0
.end method

.method public getX()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    return-wide v0
.end method

.method public getZ()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    return-wide v0
.end method

.method public bridge synthetic getZero()Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZero()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    return-object p0
.end method

.method public getZero()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x282

    return p0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v0

    mul-int/lit16 v0, v0, 0xa4

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result p0

    add-int/2addr v0, p0

    mul-int/lit16 v0, v0, 0x283

    return v0
.end method

.method public isInfinite()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->isNaN()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNaN()Z
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic negate()Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    return-object p0
.end method

.method public negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 8

    .line 2
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    neg-double v1, v0

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    neg-double v3, v3

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    neg-double v5, v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v7
.end method

.method public bridge synthetic normalize()Lorg/apache/commons/math3/geometry/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    return-object p0
.end method

.method public normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    .line 3
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_NORMALIZE_A_ZERO_NORM_VECTOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public orthogonal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    const-wide v0, 0x3fe3333333333333L    # 0.6

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v2

    mul-double/2addr v2, v0

    const-wide/16 v0, 0x0

    cmpl-double v0, v2, v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v4, v0

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v7, 0x0

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    mul-double v9, v4, v1

    neg-double v1, v4

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    mul-double v11, v1, v3

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v4, v0

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    neg-double v1, v4

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    mul-double v7, v1, v6

    const-wide/16 v9, 0x0

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    mul-double v11, v4, v1

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v0

    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v4, v0

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    mul-double v7, v4, v1

    neg-double v1, v4

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    mul-double v9, v1, v3

    const-wide/16 v11, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v0

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public bridge synthetic scalarMultiply(D)Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    return-object p0
.end method

.method public scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 8

    .line 2
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    mul-double v1, p1, v0

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    mul-double/2addr v3, p1

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    mul-double/2addr v5, p1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v7
.end method

.method public bridge synthetic subtract(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    return-object p0
.end method

.method public subtract(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .line 5
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    neg-double v4, p1

    move-object v6, p3

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object v0, v7

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v7
.end method

.method public subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .line 3
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 4
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    sub-double v1, v0, v2

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v5, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    sub-double/2addr v3, v5

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide p0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    sub-double/2addr v5, p0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v7
.end method

.method public toArray()[D
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3DFormat;->getInstance()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3DFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/VectorFormat;->format(Lorg/apache/commons/math3/geometry/Vector;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Ljava/text/NumberFormat;)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3DFormat;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3DFormat;-><init>(Ljava/text/NumberFormat;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/VectorFormat;->format(Lorg/apache/commons/math3/geometry/Vector;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
