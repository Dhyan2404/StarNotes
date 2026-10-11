.class public abstract Lcom/sunia/HTREnginev2/w2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHullGenerator2D;


# static fields
.field public static final c:D = 1.0E-10


# instance fields
.field public final a:D

.field public final b:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/sunia/HTREnginev2/w2;-><init>(ZD)V

    return-void
.end method

.method public constructor <init>(ZD)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/w2;->b:Z

    .line 4
    iput-wide p2, p0, Lcom/sunia/HTREnginev2/w2;->a:D

    return-void
.end method


# virtual methods
.method public abstract findHullVertices(Ljava/util/Collection;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;)",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;"
        }
    .end annotation
.end method

.method public generate(Ljava/util/Collection;)Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/w2;->findHullVertices(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    .line 5
    :goto_0
    :try_start_0
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/w2;->a:D

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;-><init>([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MathIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6
    :catch_0
    new-instance p0, Lorg/apache/commons/math3/exception/ConvergenceException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>()V

    throw p0
.end method

.method public bridge synthetic generate(Ljava/util/Collection;)Lorg/apache/commons/math3/geometry/hull/ConvexHull;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/w2;->generate(Ljava/util/Collection;)Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;

    move-result-object p0

    return-object p0
.end method

.method public getTolerance()D
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/w2;->a:D

    return-wide v0
.end method

.method public isIncludeCollinearPoints()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/w2;->b:Z

    return p0
.end method
