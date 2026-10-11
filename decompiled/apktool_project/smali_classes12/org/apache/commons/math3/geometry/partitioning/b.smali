.class public Lorg/apache/commons/math3/geometry/partitioning/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        "T::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor<",
        "TS;>;"
    }
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/geometry/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;"
        }
    .end annotation
.end field

.field public b:Lorg/apache/commons/math3/geometry/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;"
        }
    .end annotation
.end field

.field public c:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation
.end field

.field public d:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/Point;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/b;->a:Lorg/apache/commons/math3/geometry/Point;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/b;->b:Lorg/apache/commons/math3/geometry/Point;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/b;->c:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/partitioning/b;->d:D

    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TT;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    check-cast p1, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TT;>;)Z"
        }
    .end annotation

    check-cast p2, Lorg/apache/commons/math3/geometry/partitioning/Embedding;

    invoke-interface {p2, p1}, Lorg/apache/commons/math3/geometry/partitioning/Embedding;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;

    move-result-object p0

    invoke-interface {p3, p0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->checkPoint(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object p0

    sget-object p1, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->OUTSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;)",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/math3/geometry/partitioning/b;->a(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/b;->a(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V

    return-object v0
.end method

.method public d()Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection<",
            "TS;>;"
        }
    .end annotation

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/partitioning/b;->d:D

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/b;->c:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->copySign(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/partitioning/b;->d:D

    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/b;->a:Lorg/apache/commons/math3/geometry/Point;

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/b;->b:Lorg/apache/commons/math3/geometry/Point;

    invoke-direct {v2, v3, p0, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object v2
.end method

.method public final e(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;"
        }
    .end annotation

    check-cast p2, Lorg/apache/commons/math3/geometry/partitioning/Embedding;

    invoke-interface {p2, p1}, Lorg/apache/commons/math3/geometry/partitioning/Embedding;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;

    move-result-object p0

    invoke-interface {p3, p0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->projectToBoundary(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->getProjected()Lorg/apache/commons/math3/geometry/Point;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;->getProjected()Lorg/apache/commons/math3/geometry/Point;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/apache/commons/math3/geometry/partitioning/Embedding;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/b;->a:Lorg/apache/commons/math3/geometry/Point;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/partitioning/b;->d:D

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/b;->a:Lorg/apache/commons/math3/geometry/Point;

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->project(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;

    move-result-object v3

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/b;->c(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/partitioning/Region;

    if-nez v5, :cond_0

    invoke-virtual {p0, v3, v0, v6}, Lorg/apache/commons/math3/geometry/partitioning/b;->b(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Z

    move-result v6

    if-eqz v6, :cond_0

    iput-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/b;->b:Lorg/apache/commons/math3/geometry/Point;

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    iput-wide v5, p0, Lorg/apache/commons/math3/geometry/partitioning/b;->d:D

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    if-nez v5, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {p0, v3, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/b;->e(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/Point;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/b;->a:Lorg/apache/commons/math3/geometry/Point;

    invoke-interface {v2, v1}, Lorg/apache/commons/math3/geometry/Point;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/partitioning/b;->d:D

    cmpg-double v2, v4, v6

    if-gez v2, :cond_2

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/b;->b:Lorg/apache/commons/math3/geometry/Point;

    iput-wide v4, p0, Lorg/apache/commons/math3/geometry/partitioning/b;->d:D

    goto :goto_1

    :cond_3
    return-void
.end method

.method public visitLeafNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/b;->c:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/b;->c:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    :cond_0
    return-void
.end method

.method public visitOrder(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/b;->a:Lorg/apache/commons/math3/geometry/Point;

    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpg-double p0, p0, v0

    if-gtz p0, :cond_0

    sget-object p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->MINUS_SUB_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->PLUS_SUB_MINUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object p0
.end method
