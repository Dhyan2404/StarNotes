.class public Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/geometry/Point;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/Point<",
        "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
        ">;"
    }
.end annotation


# static fields
.field public static final NaN:Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

.field private static final serialVersionUID:J = 0x1332d92L


# instance fields
.field private final alpha:D

.field private final vector:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->NaN:Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 5

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 1
    invoke-static {p1, p2, v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v0

    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v3

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide p1

    invoke-direct {v2, v3, v4, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V

    return-void
.end method

.method private constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->alpha:D

    .line 4
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->vector:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-void
.end method

.method public static distance(Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;)D
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->vector:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-object p1, p1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->vector:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-static {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->angle(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public distance(Lorg/apache/commons/math3/geometry/Point;)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)D"
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-static {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->distance(Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;)D

    move-result-wide p0

    return-wide p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->isNaN()Z

    move-result p0

    return p0

    :cond_1
    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->alpha:D

    iget-wide p0, p1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->alpha:D

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
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->alpha:D

    return-wide v0
.end method

.method public getSpace()Lorg/apache/commons/math3/geometry/Space;
    .locals 0

    invoke-static {}, Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;->getInstance()Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;

    move-result-object p0

    return-object p0
.end method

.method public getVector()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->vector:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x21e

    return p0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->alpha:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result p0

    mul-int/lit16 p0, p0, 0x6df

    return p0
.end method

.method public isNaN()Z
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->alpha:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    return p0
.end method
