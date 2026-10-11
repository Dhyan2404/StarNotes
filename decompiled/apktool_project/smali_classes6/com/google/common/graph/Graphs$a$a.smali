.class public Lcom/google/common/graph/Graphs$a$a;
.super Lcom/sunia/HTREnginev2/iji;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/Graphs$a;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
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


# instance fields
.field public final synthetic g:Lcom/google/common/graph/Graphs$a;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/Graphs$a;Lcom/sunia/HTREnginev2/on;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/graph/Graphs$a$a;->g:Lcom/google/common/graph/Graphs$a;

    invoke-direct {p0, p2, p3}, Lcom/sunia/HTREnginev2/iji;-><init>(Lcom/sunia/HTREnginev2/on;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/Graphs$a$a;->g:Lcom/google/common/graph/Graphs$a;

    invoke-virtual {v0}, Lcom/google/common/graph/Graphs$a;->c()Lcom/google/common/graph/Graph;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/iji;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/graph/Graph;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/Graphs$a$a$a;

    invoke-direct {v1, p0}, Lcom/google/common/graph/Graphs$a$a$a;-><init>(Lcom/google/common/graph/Graphs$a$a;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
