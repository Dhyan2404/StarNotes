.class public abstract Lcom/sunia/HTREnginev2/rqf;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation runtime Lcom/sunia/HTREnginev2/vnf;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/rqf$c;,
        Lcom/sunia/HTREnginev2/rqf$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractIterator<",
        "Lcom/google/common/graph/EndpointPair<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field public final g:Lcom/sunia/HTREnginev2/on;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sunia/HTREnginev2/on<",
            "TN;>;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public j:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TN;>;"
        }
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

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sunia/HTREnginev2/rqf;->i:Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/rqf;->j:Ljava/util/Iterator;

    .line 5
    iput-object p1, p0, Lcom/sunia/HTREnginev2/rqf;->g:Lcom/sunia/HTREnginev2/on;

    .line 6
    invoke-interface {p1}, Lcom/sunia/HTREnginev2/on;->nodes()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rqf;->h:Ljava/util/Iterator;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/on;Lcom/sunia/HTREnginev2/rqf$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/rqf;-><init>(Lcom/sunia/HTREnginev2/on;)V

    return-void
.end method

.method public static c(Lcom/sunia/HTREnginev2/on;)Lcom/sunia/HTREnginev2/rqf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sunia/HTREnginev2/on<",
            "TN;>;)",
            "Lcom/sunia/HTREnginev2/rqf<",
            "TN;>;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/on;->isDirected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/rqf$b;

    invoke-direct {v0, p0, v1}, Lcom/sunia/HTREnginev2/rqf$b;-><init>(Lcom/sunia/HTREnginev2/on;Lcom/sunia/HTREnginev2/rqf$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/rqf$c;

    invoke-direct {v0, p0, v1}, Lcom/sunia/HTREnginev2/rqf$c;-><init>(Lcom/sunia/HTREnginev2/on;Lcom/sunia/HTREnginev2/rqf$a;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/rqf;->j:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/rqf;->h:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/rqf;->h:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/rqf;->i:Ljava/lang/Object;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/rqf;->g:Lcom/sunia/HTREnginev2/on;

    invoke-interface {v2, v0}, Lcom/sunia/HTREnginev2/on;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/rqf;->j:Ljava/util/Iterator;

    return v1
.end method
