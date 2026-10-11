.class public Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;
.super Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final d:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;

.field public h:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;

.field public i:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Line;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    iput-object p4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;->d:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object p5, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;->e:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object p6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;->f:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;->g:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;->h:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;->i:Z

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;->f:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object p0
.end method

.method public b()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;->h:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;

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

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;->d:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object p0
.end method

.method public d()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;->g:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;

    return-object p0
.end method

.method public e()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;->e:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;->i:Z

    return p0
.end method

.method public g(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;->h:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;

    return-void
.end method

.method public h(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;->g:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;

    return-void
.end method

.method public i(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$b;->i:Z

    return-void
.end method
