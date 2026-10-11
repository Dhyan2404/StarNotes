.class public Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;

.field public final b:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;

.field public final c:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

.field public d:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;->a:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;

    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;->b:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;

    iput-object p3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;->c:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    const/4 p3, 0x0

    iput-object p3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;->d:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;->f(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;)V

    invoke-virtual {p2, p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;->e(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;)V

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;->b:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;

    return-object p0
.end method

.method public b()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;->c:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    return-object p0
.end method

.method public c()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;->d:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object p0
.end method

.method public d()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;->a:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;

    return-object p0
.end method

.method public e(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;->d:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-void
.end method

.method public f(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;
    .locals 4

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;->c:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;->a(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;->a:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;->c:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {p1, v1, v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;->b:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;->c:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$e;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;->d:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;->d:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;->d:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object p0, v1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$c;->d:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object v0
.end method
