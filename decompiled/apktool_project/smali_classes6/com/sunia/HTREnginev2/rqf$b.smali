.class public final Lcom/sunia/HTREnginev2/rqf$b;
.super Lcom/sunia/HTREnginev2/rqf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/rqf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/on;Lcom/sunia/HTREnginev2/rqf$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/rqf$b;-><init>(Lcom/sunia/HTREnginev2/on;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic computeNext()Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/rqf$b;->d()Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method

.method public d()Lcom/google/common/graph/EndpointPair;
    .locals 1
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
    iget-object v0, p0, Lcom/sunia/HTREnginev2/rqf;->j:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/rqf;->i:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rqf;->j:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/rqf;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/graph/EndpointPair;

    return-object p0
.end method
