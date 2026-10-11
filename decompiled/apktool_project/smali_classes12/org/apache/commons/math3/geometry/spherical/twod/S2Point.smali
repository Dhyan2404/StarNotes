.class public Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/geometry/Point;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/Point<",
        "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
        ">;"
    }
.end annotation


# static fields
.field public static final MINUS_I:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

.field public static final MINUS_J:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

.field public static final MINUS_K:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

.field public static final NaN:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

.field public static final PLUS_I:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

.field public static final PLUS_J:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

.field public static final PLUS_K:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

.field private static final serialVersionUID:J = 0x1332d92L


# instance fields
.field private final phi:D

.field private final theta:D

.field private final vector:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v6, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const-wide/16 v1, 0x0

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    sget-object v5, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v6, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->PLUS_I:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    sget-object v12, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->PLUS_J:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    sget-object v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->PLUS_K:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    sget-object v12, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->MINUS_I:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const-wide v2, 0x4012d97c7f3321d2L    # 4.71238898038469

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    sget-object v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->MINUS_J:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const-wide/16 v8, 0x0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    sget-object v12, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->MINUS_K:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    sget-object v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->NaN:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->vector(DD)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-void
.end method

.method private constructor <init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->theta:D

    .line 5
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->phi:D

    .line 6
    iput-object p5, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->vector:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v7

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v9

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-void
.end method

.method public static distance(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)D
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->vector:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object p1, p1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->vector:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide p0

    return-wide p0
.end method

.method private static vector(DD)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    if-ltz v0, :cond_0

    cmpl-double v0, p2, v1

    if-gtz v0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide p0

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v7

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide p2

    new-instance v9, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    mul-double v3, v0, p2

    mul-double v5, p0, p2

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v9

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0
.end method


# virtual methods
.method public distance(Lorg/apache/commons/math3/geometry/Point;)D
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

    invoke-static {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->distance(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)D

    move-result-wide p0

    return-wide p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->isNaN()Z

    move-result p0

    return p0

    :cond_1
    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->theta:D

    iget-wide v5, p1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->theta:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->phi:D

    iget-wide p0, p1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->phi:D

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

.method public getPhi()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->phi:D

    return-wide v0
.end method

.method public getSpace()Lorg/apache/commons/math3/geometry/Space;
    .locals 0

    invoke-static {}, Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;->getInstance()Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;

    move-result-object p0

    return-object p0
.end method

.method public getTheta()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->theta:D

    return-wide v0
.end method

.method public getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->vector:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x21e

    return p0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->theta:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->phi:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result p0

    add-int/2addr v0, p0

    mul-int/lit16 v0, v0, 0x86

    return v0
.end method

.method public isNaN()Z
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->theta:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->phi:D

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

.method public negate()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    .locals 9

    new-instance v6, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->theta:D

    neg-double v1, v0

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->phi:D

    sub-double/2addr v3, v7

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->vector:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(DDLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v6
.end method
