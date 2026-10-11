.class abstract Lcom/twelvemonkeys/util/AbstractDecoratedMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;,
        Lcom/twelvemonkeys/util/AbstractDecoratedMap$KeySet;,
        Lcom/twelvemonkeys/util/AbstractDecoratedMap$EntrySet;,
        Lcom/twelvemonkeys/util/AbstractDecoratedMap$Values;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field protected entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private volatile transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private volatile transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field protected volatile transient modCount:I

.field private volatile transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

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

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
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

    .line 3
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entrySet:Ljava/util/Set;

    .line 5
    iput-object v0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->keySet:Ljava/util/Set;

    .line 6
    iput-object v0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->values:Ljava/util/Collection;

    if-eqz p1, :cond_4

    if-ne p1, p2, :cond_0

    .line 7
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 8
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Map$Entry;

    .line 9
    invoke-interface {p2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/util/Map$Entry;

    .line 10
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    move-object v3, v0

    move-object v0, p2

    move-object p2, v3

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    :goto_0
    iput-object p1, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entries:Ljava/util/Map;

    .line 13
    invoke-virtual {p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->init()V

    if-eqz p2, :cond_1

    .line 14
    invoke-virtual {p0, p2}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    .line 15
    array-length p1, v0

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_2

    aget-object v1, v0, p2

    .line 16
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    .line 17
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "backing must be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "backing == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget v0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->modCount:I

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->init()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->values:Ljava/util/Collection;

    iput-object v0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entrySet:Ljava/util/Set;

    iput-object v0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->keySet:Ljava/util/Set;

    return-object p0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;

    invoke-direct {p0, p1, p2}, Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entrySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/twelvemonkeys/util/AbstractDecoratedMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap$EntrySet;-><init>(Lcom/twelvemonkeys/util/AbstractDecoratedMap;)V

    iput-object v0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entrySet:Ljava/util/Set;

    :goto_0
    return-object v0
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation
.end method

.method public getEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entries:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->keySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/twelvemonkeys/util/AbstractDecoratedMap$KeySet;

    invoke-direct {v0, p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap$KeySet;-><init>(Lcom/twelvemonkeys/util/AbstractDecoratedMap;)V

    iput-object v0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->keySet:Ljava/util/Set;

    :goto_0
    return-object v0
.end method

.method public abstract newEntryIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method public abstract newKeyIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation
.end method

.method public abstract newValueIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation
.end method

.method public removeEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->getEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eq v1, p1, :cond_2

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entries:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->values:Ljava/util/Collection;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/twelvemonkeys/util/AbstractDecoratedMap$Values;

    invoke-direct {v0, p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap$Values;-><init>(Lcom/twelvemonkeys/util/AbstractDecoratedMap;)V

    iput-object v0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->values:Ljava/util/Collection;

    :goto_0
    return-object v0
.end method
