.class public final Lcom/sunia/HTREnginev2/oxm;
.super Lcom/sunia/HTREnginev2/sxm;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/graph/MutableValueGraph;


# annotations
.annotation runtime Lcom/sunia/HTREnginev2/vnf;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sunia/HTREnginev2/sxm<",
        "TN;TV;>;",
        "Lcom/google/common/graph/MutableValueGraph<",
        "TN;TV;>;"
    }
.end annotation


# instance fields
.field public final f:Lcom/google/common/graph/ElementOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/r3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/r3<",
            "-TN;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/sxm;-><init>(Lcom/sunia/HTREnginev2/r3;)V

    iget-object p1, p1, Lcom/sunia/HTREnginev2/r3;->d:Lcom/google/common/graph/ElementOrder;

    invoke-virtual {p1}, Lcom/google/common/graph/ElementOrder;->a()Lcom/google/common/graph/ElementOrder;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/oxm;->f:Lcom/google/common/graph/ElementOrder;

    return-void
.end method


# virtual methods
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

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/sxm;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/oxm;->f(Ljava/lang/Object;)Lcom/sunia/HTREnginev2/w4h;

    const/4 p0, 0x1

    return p0
.end method

.method public final f(Ljava/lang/Object;)Lcom/sunia/HTREnginev2/w4h;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/sunia/HTREnginev2/w4h<",
            "TN;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/oxm;->g()Lcom/sunia/HTREnginev2/w4h;

    move-result-object v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sxm;->d:Lcom/sunia/HTREnginev2/p8j;

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

.method public final g()Lcom/sunia/HTREnginev2/w4h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sunia/HTREnginev2/w4h<",
            "TN;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/sxm;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/oxm;->f:Lcom/google/common/graph/ElementOrder;

    invoke-static {p0}, Lcom/google/common/graph/a;->x(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/a;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/oxm;->f:Lcom/google/common/graph/ElementOrder;

    invoke-static {p0}, Lcom/google/common/graph/c;->l(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/c;

    move-result-object p0

    :goto_0
    return-object p0
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

    iget-object p0, p0, Lcom/sunia/HTREnginev2/oxm;->f:Lcom/google/common/graph/ElementOrder;

    return-object p0
.end method

.method public putEdgeValue(Lcom/google/common/graph/EndpointPair;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 13
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/j2;->validateEndpoints(Lcom/google/common/graph/EndpointPair;)V

    .line 14
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/sunia/HTREnginev2/oxm;->putEdgeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public putEdgeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const-string v0, "nodeU"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nodeV"

    .line 2
    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    .line 3
    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/sxm;->allowsSelfLoops()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder."

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/sxm;->d:Lcom/sunia/HTREnginev2/p8j;

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/p8j;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/w4h;

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/oxm;->f(Ljava/lang/Object;)Lcom/sunia/HTREnginev2/w4h;

    move-result-object v0

    .line 8
    :cond_1
    invoke-interface {v0, p2, p3}, Lcom/sunia/HTREnginev2/w4h;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/sunia/HTREnginev2/sxm;->d:Lcom/sunia/HTREnginev2/p8j;

    invoke-virtual {v1, p2}, Lcom/sunia/HTREnginev2/p8j;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/w4h;

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {p0, p2}, Lcom/sunia/HTREnginev2/oxm;->f(Ljava/lang/Object;)Lcom/sunia/HTREnginev2/w4h;

    move-result-object v1

    .line 11
    :cond_2
    invoke-interface {v1, p1, p3}, Lcom/sunia/HTREnginev2/w4h;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v0, :cond_3

    .line 12
    iget-wide p1, p0, Lcom/sunia/HTREnginev2/sxm;->e:J

    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/sxm;->e:J

    invoke-static {p1, p2}, Lcom/google/common/graph/Graphs;->e(J)J

    :cond_3
    return-object v0
.end method

.method public removeEdge(Lcom/google/common/graph/EndpointPair;)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/j2;->validateEndpoints(Lcom/google/common/graph/EndpointPair;)V

    .line 9
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sunia/HTREnginev2/oxm;->removeEdge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public removeEdge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const-string v0, "nodeU"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nodeV"

    .line 2
    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/sunia/HTREnginev2/sxm;->d:Lcom/sunia/HTREnginev2/p8j;

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/p8j;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/w4h;

    .line 4
    iget-object v1, p0, Lcom/sunia/HTREnginev2/sxm;->d:Lcom/sunia/HTREnginev2/p8j;

    invoke-virtual {v1, p2}, Lcom/sunia/HTREnginev2/p8j;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/w4h;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, p2}, Lcom/sunia/HTREnginev2/w4h;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6
    invoke-interface {v1, p1}, Lcom/sunia/HTREnginev2/w4h;->h(Ljava/lang/Object;)V

    .line 7
    iget-wide v0, p0, Lcom/sunia/HTREnginev2/sxm;->e:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/sxm;->e:J

    invoke-static {v0, v1}, Lcom/google/common/graph/Graphs;->c(J)J

    :cond_1
    return-object p2

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeNode(Ljava/lang/Object;)Z
    .locals 8
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/sxm;->d:Lcom/sunia/HTREnginev2/p8j;

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/p8j;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/w4h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/sxm;->allowsSelfLoops()Z

    move-result v2

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v0, p1}, Lcom/sunia/HTREnginev2/w4h;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0, p1}, Lcom/sunia/HTREnginev2/w4h;->h(Ljava/lang/Object;)V

    iget-wide v5, p0, Lcom/sunia/HTREnginev2/sxm;->e:J

    sub-long/2addr v5, v3

    iput-wide v5, p0, Lcom/sunia/HTREnginev2/sxm;->e:J

    :cond_1
    invoke-interface {v0}, Lcom/sunia/HTREnginev2/w4h;->c()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/sunia/HTREnginev2/sxm;->d:Lcom/sunia/HTREnginev2/p8j;

    invoke-virtual {v6, v5}, Lcom/sunia/HTREnginev2/p8j;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/HTREnginev2/w4h;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v5, Lcom/sunia/HTREnginev2/w4h;

    invoke-interface {v5, p1}, Lcom/sunia/HTREnginev2/w4h;->h(Ljava/lang/Object;)V

    iget-wide v5, p0, Lcom/sunia/HTREnginev2/sxm;->e:J

    sub-long/2addr v5, v3

    iput-wide v5, p0, Lcom/sunia/HTREnginev2/sxm;->e:J

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/sxm;->isDirected()Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v0}, Lcom/sunia/HTREnginev2/w4h;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v6, p0, Lcom/sunia/HTREnginev2/sxm;->d:Lcom/sunia/HTREnginev2/p8j;

    invoke-virtual {v6, v2}, Lcom/sunia/HTREnginev2/p8j;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/w4h;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Lcom/sunia/HTREnginev2/w4h;

    invoke-interface {v2, p1}, Lcom/sunia/HTREnginev2/w4h;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    move v2, v5

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-wide v6, p0, Lcom/sunia/HTREnginev2/sxm;->e:J

    sub-long/2addr v6, v3

    iput-wide v6, p0, Lcom/sunia/HTREnginev2/sxm;->e:J

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sunia/HTREnginev2/sxm;->d:Lcom/sunia/HTREnginev2/p8j;

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/p8j;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide p0, p0, Lcom/sunia/HTREnginev2/sxm;->e:J

    invoke-static {p0, p1}, Lcom/google/common/graph/Graphs;->c(J)J

    return v5
.end method
