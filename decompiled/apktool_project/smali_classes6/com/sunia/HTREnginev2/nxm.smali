.class public final Lcom/sunia/HTREnginev2/nxm;
.super Lcom/sunia/HTREnginev2/pxm;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/graph/MutableNetwork;


# annotations
.annotation runtime Lcom/sunia/HTREnginev2/vnf;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sunia/HTREnginev2/pxm<",
        "TN;TE;>;",
        "Lcom/google/common/graph/MutableNetwork<",
        "TN;TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/common/graph/NetworkBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/NetworkBuilder<",
            "-TN;-TE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/pxm;-><init>(Lcom/google/common/graph/NetworkBuilder;)V

    return-void
.end method


# virtual methods
.method public addEdge(Lcom/google/common/graph/EndpointPair;Ljava/lang/Object;)Z
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;TE;)Z"
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork;->validateEndpoints(Lcom/google/common/graph/EndpointPair;)V

    .line 23
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/sunia/HTREnginev2/nxm;->addEdge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addEdge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TE;)Z"
        }
    .end annotation

    const-string v0, "nodeU"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nodeV"

    .line 2
    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "edge"

    .line 3
    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p3}, Lcom/sunia/HTREnginev2/pxm;->e(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, p3}, Lcom/sunia/HTREnginev2/pxm;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/common/graph/EndpointPair;->b(Lcom/google/common/graph/Network;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Lcom/google/common/graph/EndpointPair;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "Edge %s already exists between the following nodes: %s, so it cannot be reused to connect the following nodes: %s."

    .line 8
    invoke-static {p1, p2, p3, v0, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/pxm;->f:Lcom/sunia/HTREnginev2/p8j;

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/p8j;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/rtj;

    .line 10
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/pxm;->allowsParallelEdges()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0}, Lcom/sunia/HTREnginev2/rtj;->c()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v1, v3

    :cond_2
    const-string v2, "Nodes %s and %s are already connected by a different edge. To construct a graph that allows parallel edges, call allowsParallelEdges(true) on the Builder."

    .line 12
    invoke-static {v1, v2, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 14
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/pxm;->allowsSelfLoops()Z

    move-result v2

    if-nez v2, :cond_4

    xor-int/lit8 v2, v1, 0x1

    const-string v4, "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder."

    .line 15
    invoke-static {v2, v4, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_4
    if-nez v0, :cond_5

    .line 16
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/nxm;->g(Ljava/lang/Object;)Lcom/sunia/HTREnginev2/rtj;

    move-result-object v0

    .line 17
    :cond_5
    invoke-interface {v0, p3, p2}, Lcom/sunia/HTREnginev2/rtj;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcom/sunia/HTREnginev2/pxm;->f:Lcom/sunia/HTREnginev2/p8j;

    invoke-virtual {v0, p2}, Lcom/sunia/HTREnginev2/p8j;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/rtj;

    if-nez v0, :cond_6

    .line 19
    invoke-virtual {p0, p2}, Lcom/sunia/HTREnginev2/nxm;->g(Ljava/lang/Object;)Lcom/sunia/HTREnginev2/rtj;

    move-result-object v0

    .line 20
    :cond_6
    invoke-interface {v0, p3, p1, v1}, Lcom/sunia/HTREnginev2/rtj;->j(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 21
    iget-object p0, p0, Lcom/sunia/HTREnginev2/pxm;->g:Lcom/sunia/HTREnginev2/p8j;

    invoke-virtual {p0, p3, p1}, Lcom/sunia/HTREnginev2/p8j;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3
.end method

.method public addNode(Ljava/lang/Object;)Z
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pxm;->f(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/nxm;->g(Ljava/lang/Object;)Lcom/sunia/HTREnginev2/rtj;

    const/4 p0, 0x1

    return p0
.end method

.method public final g(Ljava/lang/Object;)Lcom/sunia/HTREnginev2/rtj;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/sunia/HTREnginev2/rtj<",
            "TN;TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/nxm;->h()Lcom/sunia/HTREnginev2/rtj;

    move-result-object v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pxm;->f:Lcom/sunia/HTREnginev2/p8j;

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/p8j;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    return-object v0
.end method

.method public final h()Lcom/sunia/HTREnginev2/rtj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sunia/HTREnginev2/rtj<",
            "TN;TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/pxm;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/pxm;->allowsParallelEdges()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sunia/HTREnginev2/k5f;->p()Lcom/sunia/HTREnginev2/k5f;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sunia/HTREnginev2/l5f;->n()Lcom/sunia/HTREnginev2/l5f;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/pxm;->allowsParallelEdges()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/sunia/HTREnginev2/jsn;->p()Lcom/sunia/HTREnginev2/jsn;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sunia/HTREnginev2/ksn;->m()Lcom/sunia/HTREnginev2/ksn;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public removeEdge(Ljava/lang/Object;)Z
    .locals 6
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const-string v0, "edge"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/pxm;->g:Lcom/sunia/HTREnginev2/p8j;

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/p8j;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/sunia/HTREnginev2/pxm;->f:Lcom/sunia/HTREnginev2/p8j;

    invoke-virtual {v2, v0}, Lcom/sunia/HTREnginev2/p8j;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/rtj;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Lcom/sunia/HTREnginev2/rtj;

    invoke-interface {v2, p1}, Lcom/sunia/HTREnginev2/rtj;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/sunia/HTREnginev2/pxm;->f:Lcom/sunia/HTREnginev2/p8j;

    invoke-virtual {v4, v3}, Lcom/sunia/HTREnginev2/p8j;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/HTREnginev2/rtj;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, Lcom/sunia/HTREnginev2/rtj;

    invoke-interface {v2, p1}, Lcom/sunia/HTREnginev2/rtj;->d(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/pxm;->allowsSelfLoops()Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v5

    :cond_1
    invoke-interface {v4, p1, v1}, Lcom/sunia/HTREnginev2/rtj;->h(Ljava/lang/Object;Z)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pxm;->g:Lcom/sunia/HTREnginev2/p8j;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/p8j;->j(Ljava/lang/Object;)Ljava/lang/Object;

    return v5
.end method

.method public removeNode(Ljava/lang/Object;)Z
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/pxm;->f:Lcom/sunia/HTREnginev2/p8j;

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/p8j;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/rtj;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {v0}, Lcom/sunia/HTREnginev2/rtj;->k()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/nxm;->removeEdge(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/pxm;->f:Lcom/sunia/HTREnginev2/p8j;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/p8j;->j(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method
