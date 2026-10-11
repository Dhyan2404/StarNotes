.class public Lnet/sf/saxon/expr/sort/LFUCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public b:I

.field public c:I

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lcom/sunia/HTREnginev2/nui<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/expr/sort/LFUCache;-><init>(IZ)V

    .line 2
    iput p1, p0, Lnet/sf/saxon/expr/sort/LFUCache;->b:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lnet/sf/saxon/expr/sort/LFUCache;->c:I

    .line 5
    iput-boolean p2, p0, Lnet/sf/saxon/expr/sort/LFUCache;->a:Z

    .line 6
    iput p1, p0, Lnet/sf/saxon/expr/sort/LFUCache;->b:I

    .line 7
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/LFUCache;->a(I)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/LFUCache;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TK;",
            "Lcom/sunia/HTREnginev2/nui<",
            "TV;>;>;"
        }
    .end annotation

    iget-boolean p0, p0, Lnet/sf/saxon/expr/sort/LFUCache;->a:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    return-object p0
.end method

.method public final b()V
    .locals 9

    iget v0, p0, Lnet/sf/saxon/expr/sort/LFUCache;->b:I

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/sort/LFUCache;->a(I)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/LFUCache;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/HTREnginev2/nui;

    iget v4, v4, Lcom/sunia/HTREnginev2/nui;->b:I

    iget v5, p0, Lnet/sf/saxon/expr/sort/LFUCache;->c:I

    if-le v4, v5, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lcom/sunia/HTREnginev2/nui;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/HTREnginev2/nui;

    iget-object v3, v3, Lcom/sunia/HTREnginev2/nui;->a:Ljava/lang/Object;

    invoke-direct {v5, v3}, Lcom/sunia/HTREnginev2/nui;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    int-to-double v3, v2

    iget v1, p0, Lnet/sf/saxon/expr/sort/LFUCache;->b:I

    int-to-double v5, v1

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v5, v7

    cmpl-double v3, v3, v5

    if-lez v3, :cond_2

    iget v1, p0, Lnet/sf/saxon/expr/sort/LFUCache;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/expr/sort/LFUCache;->c:I

    goto :goto_1

    :cond_2
    iget v3, p0, Lnet/sf/saxon/expr/sort/LFUCache;->c:I

    if-lez v3, :cond_3

    if-ge v2, v1, :cond_3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lnet/sf/saxon/expr/sort/LFUCache;->c:I

    :cond_3
    :goto_1
    iput-object v0, p0, Lnet/sf/saxon/expr/sort/LFUCache;->d:Ljava/util/Map;

    return-void
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/LFUCache;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/LFUCache;->d:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/nui;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p1, p0, Lcom/sunia/HTREnginev2/nui;->b:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sunia/HTREnginev2/nui;->b:I

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/LFUCache;->d:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/nui;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget p1, p0, Lcom/sunia/HTREnginev2/nui;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sunia/HTREnginev2/nui;->b:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nui;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/LFUCache;->d:Ljava/util/Map;

    new-instance v1, Lcom/sunia/HTREnginev2/nui;

    invoke-direct {v1, p2}, Lcom/sunia/HTREnginev2/nui;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lnet/sf/saxon/expr/sort/LFUCache;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iget p2, p0, Lnet/sf/saxon/expr/sort/LFUCache;->b:I

    mul-int/lit8 p2, p2, 0x3

    if-le p1, p2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/LFUCache;->b()V

    :cond_0
    return-void
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/LFUCache;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method
