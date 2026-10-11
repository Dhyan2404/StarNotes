.class public Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Transform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Transform<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        ">;"
    }
.end annotation


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:D

.field public e:D

.field public f:D

.field public g:D

.field public h:D

.field public i:D


# direct methods
.method public constructor <init>(DDDDDD)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-wide/from16 v13, p1

    iput-wide v13, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;->a:D

    iput-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;->b:D

    move-wide/from16 v11, p5

    iput-wide v11, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;->c:D

    iput-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;->d:D

    move-wide/from16 v9, p9

    iput-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;->e:D

    move-wide/from16 v7, p11

    iput-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;->f:D

    neg-double v5, v3

    move-wide v15, v5

    move-wide/from16 v5, p5

    move-wide v9, v15

    move-wide/from16 v11, p9

    invoke-static/range {v5 .. v12}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v5

    iput-wide v5, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;->g:D

    neg-double v1, v1

    move-wide/from16 v5, p1

    move-wide v9, v1

    invoke-static/range {v5 .. v12}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v5

    iput-wide v5, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;->h:D

    move-wide v5, v1

    move-wide/from16 v1, p1

    move-wide/from16 v7, p5

    invoke-static/range {v1 .. v8}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;->i:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3bc79ca10c924223L    # 1.0E-20

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NON_INVERTIBLE_TRANSFORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public a(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Line;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;->h:D

    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->a(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v4

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;->g:D

    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v8

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;->i:D

    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v12

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;->a:D

    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->a(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v6

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;->c:D

    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v10

    invoke-static/range {v4 .. v11}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v4

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;->b:D

    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->a(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v8

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;->d:D

    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v12

    invoke-static/range {v6 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v6

    mul-double v8, v6, v6

    mul-double v10, v4, v4

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double/2addr v10, v8

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    neg-double v8, v6

    neg-double v12, v4

    invoke-static {v8, v9, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v8

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    add-double v13, v8, v12

    mul-double v15, v10, v4

    mul-double v17, v10, v6

    mul-double v19, v10, v2

    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->d(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v21

    const/16 v23, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v23}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(DDDDDLorg/apache/commons/math3/geometry/euclidean/twod/Line$a;)V

    return-object v0
.end method

.method public bridge synthetic apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;->b(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;->a(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object p0

    return-object p0
.end method

.method public apply(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    .line 4
    check-cast p2, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 5
    check-cast p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 6
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;->b(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p0

    invoke-virtual {p3, p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p0

    .line 7
    new-instance p3, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->isDirect()Z

    move-result p1

    invoke-static {p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->d(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v0

    invoke-direct {p3, p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;-><init>(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;ZD)V

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;

    move-result-object p0

    return-object p0
.end method

.method public b(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v14

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v16

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;->a:D

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;->c:D

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;->e:D

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-wide v4, v14

    move-wide/from16 v8, v16

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v12

    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;->b:D

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;->d:D

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;->f:D

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide v14, v12

    move-wide/from16 v12, v18

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    invoke-direct {v1, v14, v15, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v1
.end method
