.class public Lcom/google/common/graph/a$b;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/a;->a()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/graph/a;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/graph/a$b;->e:Lcom/google/common/graph/a;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/a$b;->e:Lcom/google/common/graph/a;

    invoke-static {v0}, Lcom/google/common/graph/a;->m(Lcom/google/common/graph/a;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/graph/a$b;->e:Lcom/google/common/graph/a;

    invoke-static {v0}, Lcom/google/common/graph/a;->n(Lcom/google/common/graph/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/a$b$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/graph/a$b$a;-><init>(Lcom/google/common/graph/a$b;Ljava/util/Iterator;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/a$b;->e:Lcom/google/common/graph/a;

    invoke-static {v0}, Lcom/google/common/graph/a;->m(Lcom/google/common/graph/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/a$b$b;

    invoke-direct {v1, p0, v0}, Lcom/google/common/graph/a$b$b;-><init>(Lcom/google/common/graph/a$b;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/common/graph/a$b;->e:Lcom/google/common/graph/a;

    invoke-static {p0}, Lcom/google/common/graph/a;->n(Lcom/google/common/graph/a;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/graph/a;->o(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/graph/a$b;->a()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/graph/a$b;->e:Lcom/google/common/graph/a;

    invoke-static {p0}, Lcom/google/common/graph/a;->p(Lcom/google/common/graph/a;)I

    move-result p0

    return p0
.end method
