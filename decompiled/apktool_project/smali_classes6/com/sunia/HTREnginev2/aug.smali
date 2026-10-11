.class public abstract Lcom/sunia/HTREnginev2/aug;
.super Lcom/google/common/graph/AbstractGraph;
.source "SourceFile"


# annotations
.annotation runtime Lcom/sunia/HTREnginev2/vnf;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/AbstractGraph<",
        "TN;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/graph/AbstractGraph;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/sunia/HTREnginev2/on;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sunia/HTREnginev2/on<",
            "TN;>;"
        }
    .end annotation
.end method

.method public adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/aug;->a()Lcom/sunia/HTREnginev2/on;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/on;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public allowsSelfLoops()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/aug;->a()Lcom/sunia/HTREnginev2/on;

    move-result-object p0

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/on;->allowsSelfLoops()Z

    move-result p0

    return p0
.end method

.method public degree(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/aug;->a()Lcom/sunia/HTREnginev2/on;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/on;->degree(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public edgeCount()J
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/aug;->a()Lcom/sunia/HTREnginev2/on;

    move-result-object p0

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/on;->edges()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public hasEdgeConnecting(Lcom/google/common/graph/EndpointPair;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;)Z"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/aug;->a()Lcom/sunia/HTREnginev2/on;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/on;->hasEdgeConnecting(Lcom/google/common/graph/EndpointPair;)Z

    move-result p0

    return p0
.end method

.method public hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/aug;->a()Lcom/sunia/HTREnginev2/on;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sunia/HTREnginev2/on;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public inDegree(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/aug;->a()Lcom/sunia/HTREnginev2/on;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/on;->inDegree(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public incidentEdgeOrder()Lcom/google/common/graph/ElementOrder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/aug;->a()Lcom/sunia/HTREnginev2/on;

    move-result-object p0

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/on;->incidentEdgeOrder()Lcom/google/common/graph/ElementOrder;

    move-result-object p0

    return-object p0
.end method

.method public incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/aug;->a()Lcom/sunia/HTREnginev2/on;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/on;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public isDirected()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/aug;->a()Lcom/sunia/HTREnginev2/on;

    move-result-object p0

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/on;->isDirected()Z

    move-result p0

    return p0
.end method

.method public nodeOrder()Lcom/google/common/graph/ElementOrder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/aug;->a()Lcom/sunia/HTREnginev2/on;

    move-result-object p0

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/on;->nodeOrder()Lcom/google/common/graph/ElementOrder;

    move-result-object p0

    return-object p0
.end method

.method public nodes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/aug;->a()Lcom/sunia/HTREnginev2/on;

    move-result-object p0

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/on;->nodes()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public outDegree(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/aug;->a()Lcom/sunia/HTREnginev2/on;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/on;->outDegree(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/aug;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public predecessors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/aug;->a()Lcom/sunia/HTREnginev2/on;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/on;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/aug;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public successors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/aug;->a()Lcom/sunia/HTREnginev2/on;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/on;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
