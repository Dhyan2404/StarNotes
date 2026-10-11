.class public Lorg/apache/commons/math3/geometry/euclidean/threed/Line;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Embedding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Embedding<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:D = 1.0E-10


# instance fields
.field public a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public final c:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 6
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 7
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->c:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->c:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 8
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 3
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->c:D

    return-void
.end method


# virtual methods
.method public closestPoint(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v3, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v6, v2, v2

    sub-double/2addr v4, v6

    sget-wide v6, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    cmpg-double v6, v4, v6

    if-gez v6, :cond_0

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0

    :cond_0
    iget-object v6, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    iget-object v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v7

    iget-object v1, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v9

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    iget-object v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    mul-double/2addr v9, v2

    sub-double/2addr v7, v9

    div-double v15, v7, v4

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object v11, v1

    move-object/from16 v17, v0

    invoke-direct/range {v11 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v1
.end method

.method public contains(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v0

    iget-wide p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->c:D

    cmpg-double p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)D
    .locals 5

    .line 4
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v1

    .line 6
    sget-wide v3, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpg-double v3, v1, v3

    if-gez v3, :cond_0

    .line 7
    iget-object p1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide p0

    return-wide p0

    .line 8
    :cond_0
    iget-object p1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide p0

    div-double/2addr p0, v1

    .line 9
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    .line 2
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    neg-double v5, v0

    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide p0

    return-wide p0
.end method

.method public getAbscissa(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide p0

    return-wide p0
.end method

.method public getDirection()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object p0
.end method

.method public getOrigin()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object p0
.end method

.method public getTolerance()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->c:D

    return-wide v0
.end method

.method public intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->closestPoint(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->contains(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isSimilarTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Z
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->c:D

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    sub-double/2addr v4, v2

    cmpl-double v0, v0, v4

    if-lez v0, :cond_1

    :cond_0
    iget-object p1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->contains(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public pointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 8

    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object v0, v7

    move-wide v4, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v7
.end method

.method public reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNormSq()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p2, v0, v2

    if-eqz p2, :cond_0

    new-instance p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-direct {p2, v2, v3, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    new-instance p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v4

    neg-double v4, v4

    div-double/2addr v4, v0

    move-object v0, p2

    move-wide v1, v2

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->b:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public revert()Lorg/apache/commons/math3/geometry/euclidean/threed/Line;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)V

    iget-object p0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    iput-object p0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->a:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public bridge synthetic toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    return-object p0
.end method

.method public toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .line 3
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->pointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    return-object p0
.end method

.method public toSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p0

    return-object p0
.end method

.method public toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->getAbscissa(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    return-object v0
.end method

.method public toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p0

    return-object p0
.end method

.method public wholeLine()Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;
    .locals 4

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->c:D

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(D)V

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubLine;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;)V

    return-object v0
.end method
