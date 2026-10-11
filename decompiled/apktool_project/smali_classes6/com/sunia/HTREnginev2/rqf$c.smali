.class public final Lcom/sunia/HTREnginev2/rqf$c;
.super Lcom/sunia/HTREnginev2/rqf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/rqf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sunia/HTREnginev2/rqf<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/on;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/on<",
            "TN;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/sunia/HTREnginev2/rqf;-><init>(Lcom/sunia/HTREnginev2/on;Lcom/sunia/HTREnginev2/rqf$a;)V

    .line 3
    invoke-interface {p1}, Lcom/sunia/HTREnginev2/on;->nodes()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/common/collect/Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rqf$c;->k:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/on;Lcom/sunia/HTREnginev2/rqf$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/rqf$c;-><init>(Lcom/sunia/HTREnginev2/on;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic computeNext()Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/rqf$c;->d()Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method

.method public d()Lcom/google/common/graph/EndpointPair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/rqf$c;->k:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/rqf;->j:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/rqf;->j:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/rqf$c;->k:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rqf;->i:Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/google/common/graph/EndpointPair;->unordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/sunia/HTREnginev2/rqf$c;->k:Ljava/util/Set;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/rqf;->i:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/rqf;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/rqf$c;->k:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/graph/EndpointPair;

    return-object p0
.end method
