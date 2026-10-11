.class public Lorg/apache/commons/math3/geometry/partitioning/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor<",
        "TS;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;)V"
        }
    .end annotation

    new-instance p0, Lorg/apache/commons/math3/geometry/partitioning/d;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/d;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/d;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/d;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/d;->g()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/d;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/d;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/d;->f()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    invoke-direct {v3}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;-><init>()V

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/d;->d()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->addAll(Ljava/lang/Iterable;)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/d;->e()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->addAll(Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    move-object v3, v2

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/d;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/d;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/d;->f()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lorg/apache/commons/math3/geometry/partitioning/d;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/d;->i()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/d;->g()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-nez v3, :cond_1

    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    invoke-direct {v3}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;-><init>()V

    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/d;->e()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->addAll(Ljava/lang/Iterable;)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/d;->d()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object p0

    invoke-virtual {v3, p0}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->addAll(Ljava/lang/Iterable;)V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_3

    invoke-virtual {v3, p0}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->add(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    goto :goto_1

    :cond_3
    new-instance p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    invoke-direct {p0, v2, v1, v3}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/NodesSet;)V

    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    return-void
.end method

.method public visitLeafNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;)V"
        }
    .end annotation

    return-void
.end method

.method public visitOrder(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;"
        }
    .end annotation

    sget-object p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->PLUS_MINUS_SUB:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object p0
.end method
