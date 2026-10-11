.class public Lcom/google/common/collect/StandardTable$c$b$a;
.super Lcom/sunia/HTREnginev2/z3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/StandardTable$c$b;->b()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/HTREnginev2/z3<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/util/Map$Entry;

.field public final synthetic f:Lcom/google/common/collect/StandardTable$c$b;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/StandardTable$c$b;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/StandardTable$c$b$a;->f:Lcom/google/common/collect/StandardTable$c$b;

    iput-object p2, p0, Lcom/google/common/collect/StandardTable$c$b$a;->e:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/z3;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c$b$a;->e:Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$c$b$a;->e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c$b$a;->f:Lcom/google/common/collect/StandardTable$c$b;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c$b;->h:Lcom/google/common/collect/StandardTable$c;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c;->h:Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$c$b$a;->e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c$b$a;->f:Lcom/google/common/collect/StandardTable$c$b;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c$b;->h:Lcom/google/common/collect/StandardTable$c;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c;->h:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/p5k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
