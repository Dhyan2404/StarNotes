.class public Lnet/sf/saxon/s9api/XdmMap;
.super Lnet/sf/saxon/s9api/XdmFunctionItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/s9api/XdmMap$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lnet/sf/saxon/ma/map/HashTrieMap;

    invoke-direct {v0}, Lnet/sf/saxon/ma/map/HashTrieMap;-><init>()V

    invoke-direct {p0, v0}, Lnet/sf/saxon/s9api/XdmMap;-><init>(Lnet/sf/saxon/ma/map/MapItem;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Lnet/sf/saxon/s9api/XdmAtomicValue;",
            "+",
            "Lnet/sf/saxon/s9api/XdmValue;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lnet/sf/saxon/s9api/XdmMap;->c(Ljava/util/Map;)Lnet/sf/saxon/ma/map/HashTrieMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/XdmMap;-><init>(Lnet/sf/saxon/ma/map/MapItem;)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/ma/map/MapItem;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/XdmFunctionItem;-><init>(Lnet/sf/saxon/om/Function;)V

    return-void
.end method

.method public static c(Ljava/util/Map;)Lnet/sf/saxon/ma/map/HashTrieMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Lnet/sf/saxon/s9api/XdmAtomicValue;",
            "+",
            "Lnet/sf/saxon/s9api/XdmValue;",
            ">;)",
            "Lnet/sf/saxon/ma/map/HashTrieMap;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/ma/map/HashTrieMap;

    invoke-direct {v0}, Lnet/sf/saxon/ma/map/HashTrieMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/s9api/XdmAtomicValue;

    invoke-virtual {v2}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/s9api/XdmValue;

    invoke-virtual {v1}, Lnet/sf/saxon/s9api/XdmValue;->getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/ma/map/HashTrieMap;->initialPut(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static makeMap(Ljava/util/Map;)Lnet/sf/saxon/s9api/XdmMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lnet/sf/saxon/s9api/XdmMap;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/ma/map/HashTrieMap;

    invoke-direct {v0}, Lnet/sf/saxon/ma/map/HashTrieMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2}, Lnet/sf/saxon/s9api/XdmAtomicValue;->makeAtomicValue(Ljava/lang/Object;)Lnet/sf/saxon/s9api/XdmAtomicValue;

    move-result-object v2

    invoke-static {v1}, Lnet/sf/saxon/s9api/XdmValue;->makeValue(Ljava/lang/Object;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object v1

    invoke-virtual {v2}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/s9api/XdmValue;->getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/ma/map/HashTrieMap;->initialPut(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/s9api/XdmMap;

    invoke-direct {p0, v0}, Lnet/sf/saxon/s9api/XdmMap;-><init>(Lnet/sf/saxon/ma/map/MapItem;)V

    return-object p0
.end method


# virtual methods
.method public asImmutableMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/s9api/XdmAtomicValue;",
            "Lnet/sf/saxon/s9api/XdmValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/s9api/XdmMap$b;

    invoke-direct {v0, p0, p0}, Lnet/sf/saxon/s9api/XdmMap$b;-><init>(Lnet/sf/saxon/s9api/XdmMap;Lnet/sf/saxon/s9api/XdmMap;)V

    return-object v0
.end method

.method public asMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/s9api/XdmAtomicValue;",
            "Lnet/sf/saxon/s9api/XdmValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmMap;->asImmutableMap()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public clear()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "XdmMap is immutable"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public containsKey(Lnet/sf/saxon/s9api/XdmAtomicValue;)Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmMap;->getUnderlyingValue()Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lnet/sf/saxon/s9api/XdmAtomicValue;",
            "Lnet/sf/saxon/s9api/XdmValue;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmMap;->getUnderlyingValue()Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/MapItem;->keyValuePairs()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/ma/map/KeyValuePair;

    new-instance v2, Lnet/sf/saxon/s9api/XdmMap$c;

    invoke-direct {v2, v1}, Lnet/sf/saxon/s9api/XdmMap$c;-><init>(Lnet/sf/saxon/ma/map/KeyValuePair;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public get(D)Lnet/sf/saxon/s9api/XdmValue;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmMap;->getUnderlyingValue()Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/value/DoubleValue;

    invoke-direct {v0, p1, p2}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public get(J)Lnet/sf/saxon/s9api/XdmValue;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmMap;->getUnderlyingValue()Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    invoke-direct {v0, p1, p2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public get(Ljava/lang/String;)Lnet/sf/saxon/s9api/XdmValue;
    .locals 1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmMap;->getUnderlyingValue()Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public get(Lnet/sf/saxon/s9api/XdmAtomicValue;)Lnet/sf/saxon/s9api/XdmValue;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmMap;->getUnderlyingValue()Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getUnderlyingValue()Lnet/sf/saxon/ma/map/MapItem;
    .locals 0

    .line 3
    invoke-super {p0}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/ma/map/MapItem;

    return-object p0
.end method

.method public bridge synthetic getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmMap;->getUnderlyingValue()Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getUnderlyingValue()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmMap;->getUnderlyingValue()Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmMap;->getUnderlyingValue()Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/MapItem;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lnet/sf/saxon/s9api/XdmAtomicValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/s9api/XdmMap$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmMap$a;-><init>(Lnet/sf/saxon/s9api/XdmMap;)V

    return-object v0
.end method

.method public mapSize()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmMap;->getUnderlyingValue()Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/MapItem;->size()I

    move-result p0

    return p0
.end method

.method public put(Lnet/sf/saxon/s9api/XdmAtomicValue;Lnet/sf/saxon/s9api/XdmValue;)Lnet/sf/saxon/s9api/XdmMap;
    .locals 1

    new-instance v0, Lnet/sf/saxon/s9api/XdmMap;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmMap;->getUnderlyingValue()Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p1

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/XdmValue;->getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/ma/map/MapItem;->addEntry(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmMap;-><init>(Lnet/sf/saxon/ma/map/MapItem;)V

    return-object v0
.end method

.method public remove(Lnet/sf/saxon/s9api/XdmAtomicValue;)Lnet/sf/saxon/s9api/XdmMap;
    .locals 1

    new-instance v0, Lnet/sf/saxon/s9api/XdmMap;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmMap;->getUnderlyingValue()Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/map/MapItem;->remove(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmMap;-><init>(Lnet/sf/saxon/ma/map/MapItem;)V

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lnet/sf/saxon/s9api/XdmValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmMap;->getUnderlyingValue()Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/MapItem;->keyValuePairs()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/ma/map/KeyValuePair;

    iget-object v1, v1, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-static {v1}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
