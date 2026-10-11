.class public Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
.implements Lorg/apache/commons/math3/geometry/partitioning/Embedding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        ">;",
        "Lorg/apache/commons/math3/geometry/partitioning/Embedding<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:D = 1.0E-10


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:D

.field public final e:D

.field public f:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;


# direct methods
.method public constructor <init>(DDDDD)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->a:D

    .line 10
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    .line 11
    iput-wide p5, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    .line 12
    iput-wide p7, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->d:D

    .line 13
    iput-wide p9, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->e:D

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->f:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    return-void
.end method

.method public synthetic constructor <init>(DDDDDLorg/apache/commons/math3/geometry/euclidean/twod/Line$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(DDDDD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V
    .locals 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->a:D

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->a:D

    .line 19
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    .line 20
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    .line 21
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->d:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->d:D

    .line 22
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->e:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->e:D

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->f:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 16
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DD)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reset(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    .line 7
    iput-wide p4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->e:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 15
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reset(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V

    .line 4
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->e:D

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    return-wide v0
.end method

.method public static synthetic b(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    return-wide v0
.end method

.method public static synthetic c(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->d:D

    return-wide v0
.end method

.method public static synthetic d(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->e:D

    return-wide v0
.end method

.method public static getTransform(DDDDDD)Lorg/apache/commons/math3/geometry/partitioning/Transform;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDDDD)",
            "Lorg/apache/commons/math3/geometry/partitioning/Transform<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 3
    new-instance v13, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;

    move-object v0, v13

    move-wide v1, p0

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;-><init>(DDDDDD)V

    return-object v13
.end method

.method public static getTransform(Ljava/awt/geom/AffineTransform;)Lorg/apache/commons/math3/geometry/partitioning/Transform;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/geom/AffineTransform;",
            ")",
            "Lorg/apache/commons/math3/geometry/partitioning/Transform<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [D

    .line 1
    invoke-virtual {p0, v0}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    .line 2
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const/4 v1, 0x1

    aget-wide v4, v0, v1

    const/4 v1, 0x2

    aget-wide v6, v0, v1

    const/4 v1, 0x3

    aget-wide v8, v0, v1

    const/4 v1, 0x4

    aget-wide v10, v0, v1

    const/4 v1, 0x5

    aget-wide v12, v0, v1

    move-object v1, p0

    invoke-direct/range {v1 .. v13}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$b;-><init>(DDDDDD)V

    return-object p0
.end method


# virtual methods
.method public contains(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide p0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->e:D

    cmpg-double p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public copySelf()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    return-object v0
.end method

.method public bridge synthetic copySelf()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->copySelf()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object p0

    return-object p0
.end method

.method public distance(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->f:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->f:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    :cond_0
    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->f:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    return-void
.end method

.method public getAngle()D
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->a:D

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/Point;)D
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)D"
        }
    .end annotation

    .line 3
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 4
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    neg-double v4, v4

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iget-wide v10, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->d:D

    invoke-static/range {v0 .. v11}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)D"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide p0

    return-wide p0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D
    .locals 10

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->d:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    iget-wide v4, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    iget-wide v8, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    invoke-static/range {v2 .. v9}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double p0, v2, v4

    if-lez p0, :cond_0

    iget-wide p0, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->d:D

    neg-double p0, p0

    goto :goto_0

    :cond_0
    iget-wide p0, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->d:D

    :goto_0
    add-double/2addr v0, p0

    return-wide v0
.end method

.method public getOriginOffset()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->d:D

    return-wide v0
.end method

.method public getPointAt(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;D)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 12

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v8

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->d:D

    sub-double/2addr p2, v0

    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    move-wide v0, v8

    move-wide v4, p2

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v10

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    neg-double v4, p2

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide p2

    invoke-direct {p1, v10, v11, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object p1
.end method

.method public getReverse()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .locals 12

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->f:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->a:D

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    add-double/2addr v1, v3

    goto :goto_0

    :cond_0
    sub-double/2addr v1, v3

    :goto_0
    move-wide v2, v1

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    neg-double v4, v4

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    neg-double v6, v6

    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->d:D

    neg-double v8, v8

    iget-wide v10, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->e:D

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(DDDDD)V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->f:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    iput-object p0, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->f:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    :cond_1
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->f:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    return-object p0
.end method

.method public getTolerance()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->e:D

    return-wide v0
.end method

.method public intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 13

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    iget-wide v4, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    neg-double v4, v4

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->e:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    iget-wide v5, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->d:D

    iget-wide v7, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    neg-double v7, v7

    iget-wide v9, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->d:D

    invoke-static/range {v3 .. v10}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v3

    div-double/2addr v3, v0

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    iget-wide v7, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->d:D

    iget-wide v9, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    neg-double v9, v9

    iget-wide v11, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->d:D

    invoke-static/range {v5 .. v12}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide p0

    div-double/2addr p0, v0

    invoke-direct {v2, v3, v4, p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v2
.end method

.method public isParallelTo(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Z
    .locals 8

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    neg-double v4, v4

    iget-wide v6, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide p0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->e:D

    cmpg-double p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
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
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p0

    return-object p0
.end method

.method public reset(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V
    .locals 8

    .line 13
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->e()V

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 14
    invoke-static {p2, p3, v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide p2

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->a:D

    .line 15
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide p2

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    .line 16
    iget-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->a:D

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide p2

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    .line 17
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v2

    iget-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    neg-double v4, p2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->d:D

    return-void
.end method

.method public reset(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 15

    move-object v0, p0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->e()V

    .line 2
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v3

    sub-double/2addr v1, v3

    .line 3
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v5

    sub-double/2addr v3, v5

    .line 4
    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    if-nez v9, :cond_0

    .line 5
    iput-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->a:D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 6
    iput-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    .line 7
    iput-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    .line 8
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->d:D

    goto :goto_0

    :cond_0
    neg-double v7, v3

    neg-double v9, v1

    .line 9
    invoke-static {v7, v8, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v7

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v7, v9

    iput-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->a:D

    div-double/2addr v1, v5

    .line 10
    iput-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    div-double/2addr v3, v5

    .line 11
    iput-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    .line 12
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v1

    neg-double v11, v1

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v13

    invoke-static/range {v7 .. v14}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v1

    div-double/2addr v1, v5

    iput-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->d:D

    :goto_0
    return-void
.end method

.method public revertSelf()V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->e()V

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->a:D

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->a:D

    goto :goto_0

    :cond_0
    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->a:D

    :goto_0
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->d:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->d:D

    return-void
.end method

.method public sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)Z"
        }
    .end annotation

    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    iget-wide v6, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

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

.method public setAngle(D)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->e()V

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    invoke-static {p1, p2, v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->a:D

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    iget-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->a:D

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    return-void
.end method

.method public setOriginOffset(D)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->e()V

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->d:D

    return-void
.end method

.method public bridge synthetic toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p0

    return-object p0
.end method

.method public toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .line 3
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v8

    .line 4
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->d:D

    neg-double v4, v0

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    move-wide v0, v8

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v10

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->d:D

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    invoke-direct {p1, v10, v11, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object p1
.end method

.method public toSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p0

    return-object p0
.end method

.method public toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;"
        }
    .end annotation

    .line 3
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 4
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v7

    invoke-static/range {v1 .. v8}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

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
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p0

    return-object p0
.end method

.method public translateToPoint(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 8

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->b:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->c:D

    neg-double v4, v4

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->d:D

    return-void
.end method

.method public wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;
    .locals 4

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->e:D

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(D)V

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-object v0
.end method

.method public bridge synthetic wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    move-result-object p0

    return-object p0
.end method

.method public wholeSpace()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
    .locals 3

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->e:D

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic wholeSpace()Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->wholeSpace()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    move-result-object p0

    return-object p0
.end method
