.class public Lcom/twelvemonkeys/util/IgnoreCaseMap;
.super Lcom/twelvemonkeys/util/AbstractDecoratedMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/twelvemonkeys/util/AbstractDecoratedMap<",
        "Ljava/lang/String;",
        "TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+TV;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+TV;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static toUpper(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private unwrap(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "TV;>;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    invoke-super {p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entries:Ljava/util/Map;

    invoke-static {p1}, Lcom/twelvemonkeys/util/IgnoreCaseMap;->toUpper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
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

    invoke-static {p1}, Lcom/twelvemonkeys/util/IgnoreCaseMap;->toUpper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-direct {p0, p1}, Lcom/twelvemonkeys/util/IgnoreCaseMap;->unwrap(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entries:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public newKeyIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entries:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public newValueIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entries:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/util/IgnoreCaseMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/twelvemonkeys/util/IgnoreCaseMap;->toUpper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entries:Ljava/util/Map;

    new-instance v1, Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;

    invoke-direct {v1, p1, p2}, Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-direct {p0, p1}, Lcom/twelvemonkeys/util/IgnoreCaseMap;->unwrap(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
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

    invoke-static {p1}, Lcom/twelvemonkeys/util/IgnoreCaseMap;->toUpper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-direct {p0, p1}, Lcom/twelvemonkeys/util/IgnoreCaseMap;->unwrap(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
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
