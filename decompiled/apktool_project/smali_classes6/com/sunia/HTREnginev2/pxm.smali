.class public Lcom/sunia/HTREnginev2/pxm;
.super Lcom/google/common/graph/AbstractNetwork;
.source "SourceFile"


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
        "Lcom/google/common/graph/AbstractNetwork<",
        "TN;TE;>;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Lcom/google/common/graph/ElementOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation
.end field

.field public final e:Lcom/google/common/graph/ElementOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/ElementOrder<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final f:Lcom/sunia/HTREnginev2/p8j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sunia/HTREnginev2/p8j<",
            "TN;",
            "Lcom/sunia/HTREnginev2/rtj<",
            "TN;TE;>;>;"
        }
    .end annotation
.end field

.field public final g:Lcom/sunia/HTREnginev2/p8j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sunia/HTREnginev2/p8j<",
            "TE;TN;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/graph/NetworkBuilder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/NetworkBuilder<",
            "-TN;-TE;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/sunia/HTREnginev2/r3;->c:Lcom/google/common/graph/ElementOrder;

    iget-object v1, p1, Lcom/sunia/HTREnginev2/r3;->e:Lcom/google/common/base/Optional;

    const/16 v2, 0xa

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/common/graph/ElementOrder;->b(I)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/google/common/graph/NetworkBuilder;->g:Lcom/google/common/graph/ElementOrder;

    iget-object v2, p1, Lcom/google/common/graph/NetworkBuilder;->h:Lcom/google/common/base/Optional;

    const/16 v3, 0x14

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/common/graph/ElementOrder;->b(I)Ljava/util/Map;

    move-result-object v1

    .line 5
    invoke-direct {p0, p1, v0, v1}, Lcom/sunia/HTREnginev2/pxm;-><init>(Lcom/google/common/graph/NetworkBuilder;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/graph/NetworkBuilder;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/NetworkBuilder<",
            "-TN;-TE;>;",
            "Ljava/util/Map<",
            "TN;",
            "Lcom/sunia/HTREnginev2/rtj<",
            "TN;TE;>;>;",
            "Ljava/util/Map<",
            "TE;TN;>;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/google/common/graph/AbstractNetwork;-><init>()V

    .line 7
    iget-boolean v0, p1, Lcom/sunia/HTREnginev2/r3;->a:Z

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/pxm;->a:Z

    .line 8
    iget-boolean v0, p1, Lcom/google/common/graph/NetworkBuilder;->f:Z

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/pxm;->b:Z

    .line 9
    iget-boolean v0, p1, Lcom/sunia/HTREnginev2/r3;->b:Z

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/pxm;->c:Z

    .line 10
    iget-object v0, p1, Lcom/sunia/HTREnginev2/r3;->c:Lcom/google/common/graph/ElementOrder;

    invoke-virtual {v0}, Lcom/google/common/graph/ElementOrder;->a()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/pxm;->d:Lcom/google/common/graph/ElementOrder;

    .line 11
    iget-object p1, p1, Lcom/google/common/graph/NetworkBuilder;->g:Lcom/google/common/graph/ElementOrder;

    invoke-virtual {p1}, Lcom/google/common/graph/ElementOrder;->a()Lcom/google/common/graph/ElementOrder;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pxm;->e:Lcom/google/common/graph/ElementOrder;

    .line 12
    instance-of p1, p2, Ljava/util/TreeMap;

    if-eqz p1, :cond_0

    .line 13
    new-instance p1, Lcom/sunia/HTREnginev2/q8j;

    invoke-direct {p1, p2}, Lcom/sunia/HTREnginev2/q8j;-><init>(Ljava/util/Map;)V

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Lcom/sunia/HTREnginev2/p8j;

    invoke-direct {p1, p2}, Lcom/sunia/HTREnginev2/p8j;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object p1, p0, Lcom/sunia/HTREnginev2/pxm;->f:Lcom/sunia/HTREnginev2/p8j;

    .line 15
    new-instance p1, Lcom/sunia/HTREnginev2/p8j;

    invoke-direct {p1, p3}, Lcom/sunia/HTREnginev2/p8j;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pxm;->g:Lcom/sunia/HTREnginev2/p8j;

    return-void
.end method


# virtual methods
.method public adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pxm;->c(Ljava/lang/Object;)Lcom/sunia/HTREnginev2/rtj;

    move-result-object p0

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/rtj;->b()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public allowsParallelEdges()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/pxm;->b:Z

    return p0
.end method

.method public allowsSelfLoops()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/pxm;->c:Z

    return p0
.end method

.method public final c(Ljava/lang/Object;)Lcom/sunia/HTREnginev2/rtj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/sunia/HTREnginev2/rtj<",
            "TN;TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pxm;->f:Lcom/sunia/HTREnginev2/p8j;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/p8j;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/rtj;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Node %s is not an element of this graph."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TN;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pxm;->g:Lcom/sunia/HTREnginev2/p8j;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/p8j;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Edge %s is not an element of this graph."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pxm;->g:Lcom/sunia/HTREnginev2/p8j;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/p8j;->e(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public edgeOrder()Lcom/google/common/graph/ElementOrder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pxm;->e:Lcom/google/common/graph/ElementOrder;

    return-object p0
.end method

.method public edges()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pxm;->g:Lcom/sunia/HTREnginev2/p8j;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/p8j;->k()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pxm;->c(Ljava/lang/Object;)Lcom/sunia/HTREnginev2/rtj;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sunia/HTREnginev2/pxm;->c:Z

    if-nez v1, :cond_0

    if-ne p1, p2, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sunia/HTREnginev2/pxm;->f(Ljava/lang/Object;)Z

    move-result p0

    const-string p1, "Node %s is not an element of this graph."

    invoke-static {p0, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, p2}, Lcom/sunia/HTREnginev2/rtj;->l(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final f(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pxm;->f:Lcom/sunia/HTREnginev2/p8j;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/p8j;->e(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public inEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pxm;->c(Ljava/lang/Object;)Lcom/sunia/HTREnginev2/rtj;

    move-result-object p0

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/rtj;->g()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pxm;->c(Ljava/lang/Object;)Lcom/sunia/HTREnginev2/rtj;

    move-result-object p0

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/rtj;->k()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pxm;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/pxm;->f:Lcom/sunia/HTREnginev2/p8j;

    invoke-virtual {v1, v0}, Lcom/sunia/HTREnginev2/p8j;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/rtj;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lcom/sunia/HTREnginev2/rtj;

    invoke-interface {v1, p1}, Lcom/sunia/HTREnginev2/rtj;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/google/common/graph/EndpointPair;->b(Lcom/google/common/graph/Network;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method

.method public isDirected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/pxm;->a:Z

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

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pxm;->d:Lcom/google/common/graph/ElementOrder;

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

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pxm;->f:Lcom/sunia/HTREnginev2/p8j;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/p8j;->k()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public outEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pxm;->c(Ljava/lang/Object;)Lcom/sunia/HTREnginev2/rtj;

    move-result-object p0

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/rtj;->e()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pxm;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

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
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pxm;->c(Ljava/lang/Object;)Lcom/sunia/HTREnginev2/rtj;

    move-result-object p0

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/rtj;->a()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pxm;->successors(Ljava/lang/Object;)Ljava/util/Set;

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
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pxm;->c(Ljava/lang/Object;)Lcom/sunia/HTREnginev2/rtj;

    move-result-object p0

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/rtj;->c()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
