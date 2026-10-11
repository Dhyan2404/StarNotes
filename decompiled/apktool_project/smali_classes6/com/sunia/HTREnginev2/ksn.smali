.class public final Lcom/sunia/HTREnginev2/ksn;
.super Lcom/sunia/HTREnginev2/i5;
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
        "Lcom/sunia/HTREnginev2/i5<",
        "TN;TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;TN;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/i5;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static m()Lcom/sunia/HTREnginev2/ksn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/sunia/HTREnginev2/ksn<",
            "TN;TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/ksn;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/ksn;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static n(Ljava/util/Map;)Lcom/sunia/HTREnginev2/ksn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TE;TN;>;)",
            "Lcom/sunia/HTREnginev2/ksn<",
            "TN;TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/ksn;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableBiMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableBiMap;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ksn;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/i5;->a:Ljava/util/Map;

    check-cast p0, Lcom/google/common/collect/BiMap;

    invoke-interface {p0}, Lcom/google/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public l(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/ukf;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/i5;->a:Ljava/util/Map;

    check-cast p0, Lcom/google/common/collect/BiMap;

    invoke-interface {p0}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/ukf;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v0
.end method
