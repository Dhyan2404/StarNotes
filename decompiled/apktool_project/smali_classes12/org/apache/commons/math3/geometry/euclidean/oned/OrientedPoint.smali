.class public Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:D = 1.0E-10


# instance fields
.field public a:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

.field public b:Z

.field public final c:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;-><init>(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;ZD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;ZD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->a:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .line 3
    iput-boolean p2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->b:Z

    .line 4
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->c:D

    return-void
.end method


# virtual methods
.method public copySelf()Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic copySelf()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->copySelf()Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    move-result-object p0

    return-object p0
.end method

.method public getLocation()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->a:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    return-object p0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/Point;)D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)D"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v0

    iget-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->a:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 3
    iget-boolean p0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->b:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    neg-double v0, v0

    :goto_0
    return-wide v0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)D"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide p0

    return-wide p0
.end method

.method public getTolerance()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->c:D

    return-wide v0
.end method

.method public isDirect()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->b:Z

    return p0
.end method

.method public project(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->a:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    return-object p0
.end method

.method public revertSelf()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->b:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->b:Z

    return-void
.end method

.method public sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)Z"
        }
    .end annotation

    iget-boolean p0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->b:Z

    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    iget-boolean p1, p1, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->b:Z

    xor-int/2addr p0, p1

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-object v0
.end method

.method public bridge synthetic wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;

    move-result-object p0

    return-object p0
.end method

.method public wholeSpace()Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;
    .locals 3

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->c:D

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic wholeSpace()Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->wholeSpace()Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    move-result-object p0

    return-object p0
.end method
