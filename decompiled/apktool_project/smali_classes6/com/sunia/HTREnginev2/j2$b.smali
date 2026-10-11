.class public Lcom/sunia/HTREnginev2/j2$b;
.super Lcom/sunia/HTREnginev2/iji;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/j2;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/HTREnginev2/iji<",
        "TN;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/j2;Lcom/sunia/HTREnginev2/on;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/sunia/HTREnginev2/iji;-><init>(Lcom/sunia/HTREnginev2/on;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/sunia/HTREnginev2/j2$b;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/j2$b;->e(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/sunia/HTREnginev2/j2$b;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/j2$b;->g(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sunia/HTREnginev2/j2$b;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/j2$b;->h(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method

.method private synthetic e(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/iji;->e:Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method

.method private synthetic g(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/iji;->e:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method

.method private synthetic h(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/iji;->e:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/google/common/graph/EndpointPair;->unordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/iji;->f:Lcom/sunia/HTREnginev2/on;

    invoke-interface {v0}, Lcom/sunia/HTREnginev2/on;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/iji;->f:Lcom/sunia/HTREnginev2/on;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/iji;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/sunia/HTREnginev2/on;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/k2;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/k2;-><init>(Lcom/sunia/HTREnginev2/j2$b;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/iji;->f:Lcom/sunia/HTREnginev2/on;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/iji;->e:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/sunia/HTREnginev2/on;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/iji;->e:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Sets$SetView;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/l2;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/l2;-><init>(Lcom/sunia/HTREnginev2/j2$b;)V

    invoke-static {v1, v2}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/Iterators;->concat(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/iji;->f:Lcom/sunia/HTREnginev2/on;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/iji;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/sunia/HTREnginev2/on;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/m2;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/m2;-><init>(Lcom/sunia/HTREnginev2/j2$b;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/j2$b;->d()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method
