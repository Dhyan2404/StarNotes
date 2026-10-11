.class public Lcom/twelvemonkeys/util/LinkedMap;
.super Lcom/twelvemonkeys/util/AbstractDecoratedMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;,
        Lcom/twelvemonkeys/util/LinkedMap$a;,
        Lcom/twelvemonkeys/util/LinkedMap$d;,
        Lcom/twelvemonkeys/util/LinkedMap$b;,
        Lcom/twelvemonkeys/util/LinkedMap$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/twelvemonkeys/util/AbstractDecoratedMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field protected final accessOrder:Z

.field transient head:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/twelvemonkeys/util/LinkedMap;-><init>(Ljava/util/Map;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/twelvemonkeys/util/LinkedMap;-><init>(Ljava/util/Map;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, v0}, Lcom/twelvemonkeys/util/LinkedMap;-><init>(Ljava/util/Map;Ljava/util/Map;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;",
            "Ljava/util/Map<",
            "+TK;+TV;>;Z)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 8
    iput-boolean p3, p0, Lcom/twelvemonkeys/util/LinkedMap;->accessOrder:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;Z)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;-><init>(Ljava/util/Map;)V

    .line 5
    iput-boolean p2, p0, Lcom/twelvemonkeys/util/LinkedMap;->accessOrder:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/twelvemonkeys/util/LinkedMap;-><init>(Ljava/util/Map;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    invoke-super {p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/twelvemonkeys/util/LinkedMap;

    return-object p0
.end method

.method public bridge synthetic containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/twelvemonkeys/util/LinkedMap;->head:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    :cond_0
    iget-object p1, p1, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;->next:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    iget-object v1, p0, Lcom/twelvemonkeys/util/LinkedMap;->head:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    if-eq p1, v1, :cond_3

    iget-object v1, p1, Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;->mValue:Ljava/lang/Object;

    if-nez v1, :cond_0

    return v0

    :cond_1
    iget-object v1, p0, Lcom/twelvemonkeys/util/LinkedMap;->head:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    :cond_2
    iget-object v1, v1, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;->next:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    iget-object v2, p0, Lcom/twelvemonkeys/util/LinkedMap;->head:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    if-eq v1, v2, :cond_3

    iget-object v2, v1, Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public createEntry(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    new-instance p0, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;)V

    return-object p0
.end method

.method public bridge synthetic createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/util/LinkedMap;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 0

    invoke-super {p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;->recordAccess(Ljava/util/Map;)V

    iget-object p0, p1, Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;->mValue:Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public init()V
    .locals 2

    new-instance v0, Lcom/twelvemonkeys/util/LinkedMap$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/twelvemonkeys/util/LinkedMap$1;-><init>(Lcom/twelvemonkeys/util/LinkedMap;Ljava/lang/Object;Ljava/lang/Object;Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;)V

    iput-object v0, p0, Lcom/twelvemonkeys/util/LinkedMap;->head:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    iput-object v0, v0, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;->next:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    iput-object v0, v0, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;->previous:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    return-void
.end method

.method public bridge synthetic isEmpty()Z
    .locals 0

    invoke-super {p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 0

    invoke-super {p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public newEntryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/twelvemonkeys/util/LinkedMap$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twelvemonkeys/util/LinkedMap$a;-><init>(Lcom/twelvemonkeys/util/LinkedMap;Lcom/twelvemonkeys/util/LinkedMap$1;)V

    return-object v0
.end method

.method public newKeyIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/twelvemonkeys/util/LinkedMap$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twelvemonkeys/util/LinkedMap$b;-><init>(Lcom/twelvemonkeys/util/LinkedMap;Lcom/twelvemonkeys/util/LinkedMap$1;)V

    return-object v0
.end method

.method public newValueIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/twelvemonkeys/util/LinkedMap$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twelvemonkeys/util/LinkedMap$d;-><init>(Lcom/twelvemonkeys/util/LinkedMap;Lcom/twelvemonkeys/util/LinkedMap$1;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twelvemonkeys/util/LinkedMap;->head:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    iget-object v0, v0, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;->next:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/util/LinkedMap;->removeEldestEntry(Ljava/util/Map$Entry;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->removeEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/util/LinkedMap;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    move-result-object p2

    iget-object v0, p0, Lcom/twelvemonkeys/util/LinkedMap;->head:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    invoke-virtual {p2, v0}, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;->addBefore(Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;)V

    iget-object v0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entries:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;->mValue:Ljava/lang/Object;

    iput-object p2, v0, Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;->recordAccess(Ljava/util/Map;)V

    :goto_0
    iget p2, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->modCount:I

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;->remove()V

    iget v0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->modCount:I

    iget-object p0, p1, Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;->mValue:Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic size()I
    .locals 0

    invoke-super {p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 0

    invoke-super {p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
