.class public Lcom/sunia/HTREnginev2/otj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/otj;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lorg/apache/commons/math3/geometry/partitioning/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public final e:D


# direct methods
.method public constructor <init>(D)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/otj;->b:Ljava/util/List;

    .line 3
    iput-wide p1, p0, Lcom/sunia/HTREnginev2/otj;->e:D

    return-void
.end method

.method public constructor <init>([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v9, p2

    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v11, 0x0

    .line 5
    aget-object v2, v1, v11

    if-eqz v2, :cond_2

    .line 6
    iput-object v1, v0, Lcom/sunia/HTREnginev2/otj;->a:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/sunia/HTREnginev2/otj;->b:Ljava/util/List;

    .line 8
    iput-wide v9, v0, Lcom/sunia/HTREnginev2/otj;->e:D

    .line 9
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 10
    array-length v2, v1

    const/4 v13, 0x1

    sub-int/2addr v2, v13

    aget-object v2, v1, v2

    move v14, v11

    .line 11
    :goto_0
    array-length v3, v1

    if-ge v14, v3, :cond_0

    .line 12
    aget-object v15, v1, v14

    .line 13
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v7, v2, v15, v9, v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    .line 14
    new-instance v8, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-virtual {v7, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v3

    invoke-virtual {v7, v15}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v5

    move-object v2, v8

    move-object v13, v7

    move-object v11, v8

    move-wide/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(DDD)V

    .line 15
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    invoke-direct {v2, v13, v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object v2, v15

    const/4 v11, 0x0

    const/4 v13, 0x1

    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    invoke-direct {v1, v12, v9, v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(Ljava/util/Collection;D)V

    iput-object v1, v0, Lcom/sunia/HTREnginev2/otj;->c:Lorg/apache/commons/math3/geometry/partitioning/Region;

    .line 17
    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getSize()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v1}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    iget-object v2, v0, Lcom/sunia/HTREnginev2/otj;->c:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->getComplement(Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v1

    iput-object v1, v0, Lcom/sunia/HTREnginev2/otj;->c:Lorg/apache/commons/math3/geometry/partitioning/Region;

    const/4 v1, 0x0

    .line 19
    iput-boolean v1, v0, Lcom/sunia/HTREnginev2/otj;->d:Z

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 20
    iput-boolean v1, v0, Lcom/sunia/HTREnginev2/otj;->d:Z

    :goto_1
    return-void

    :cond_2
    move v1, v11

    .line 21
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUTLINE_BOUNDARY_LOOP_OPEN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/sunia/HTREnginev2/otj;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/otj;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/otj;

    iget-object v2, v1, Lcom/sunia/HTREnginev2/otj;->c:Lorg/apache/commons/math3/geometry/partitioning/Region;

    iget-object v3, p1, Lcom/sunia/HTREnginev2/otj;->c:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/Region;->contains(Lorg/apache/commons/math3/geometry/partitioning/Region;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/sunia/HTREnginev2/otj;->a(Lcom/sunia/HTREnginev2/otj;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/otj;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/otj;

    iget-object v2, p1, Lcom/sunia/HTREnginev2/otj;->c:Lorg/apache/commons/math3/geometry/partitioning/Region;

    iget-object v3, v1, Lcom/sunia/HTREnginev2/otj;->c:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/Region;->contains(Lorg/apache/commons/math3/geometry/partitioning/Region;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/sunia/HTREnginev2/otj;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/otj;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/otj;

    iget-object v3, p1, Lcom/sunia/HTREnginev2/otj;->c:Lorg/apache/commons/math3/geometry/partitioning/Region;

    iget-object v2, v2, Lcom/sunia/HTREnginev2/otj;->c:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {v0, v3, v2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->intersection(Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CROSSING_BOUNDARY_LOOPS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0

    :cond_5
    iget-object p0, p0, Lcom/sunia/HTREnginev2/otj;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/otj;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/otj;->e:D

    invoke-direct {v0, p1, v1, v2}, Lcom/sunia/HTREnginev2/otj;-><init>([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/otj;->a(Lcom/sunia/HTREnginev2/otj;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/otj;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/otj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sunia/HTREnginev2/otj;->d(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/otj;->d:Z

    xor-int/2addr v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/otj;->a:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    array-length v0, v0

    const/4 v1, -0x1

    move v2, v1

    :goto_0
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v1

    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/sunia/HTREnginev2/otj;->a:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    aget-object v4, v3, v2

    aget-object v5, v3, v0

    aput-object v5, v3, v2

    aput-object v4, v3, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/otj;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/otj;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/sunia/HTREnginev2/otj;->d(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method
