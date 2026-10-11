.class public Lnet/sf/saxon/ma/map/DictionaryMap;
.super Lnet/sf/saxon/ma/map/MapItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/ma/map/DictionaryMap$a;
    }
.end annotation


# instance fields
.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/GroundedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/ma/map/MapItem;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/ma/map/DictionaryMap;->f:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lnet/sf/saxon/ma/map/MapItem;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/ma/map/DictionaryMap;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Lnet/sf/saxon/ma/map/HashTrieMap;
    .locals 4

    new-instance v0, Lnet/sf/saxon/ma/map/HashTrieMap;

    invoke-direct {v0}, Lnet/sf/saxon/ma/map/HashTrieMap;-><init>()V

    iget-object p0, p0, Lnet/sf/saxon/ma/map/DictionaryMap;->f:Ljava/util/Map;

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

    new-instance v2, Lnet/sf/saxon/value/StringValue;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/ma/map/HashTrieMap;->initialPut(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public addEntry(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/map/MapItem;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/DictionaryMap;->a()Lnet/sf/saxon/ma/map/HashTrieMap;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/ma/map/HashTrieMap;->addEntry(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/map/HashTrieMap;

    move-result-object p0

    return-object p0
.end method

.method public conforms(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/DictionaryMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq p1, v0, :cond_1

    return v2

    :cond_1
    sget-object p1, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p2, p1}, Lnet/sf/saxon/value/SequenceType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lnet/sf/saxon/ma/map/DictionaryMap;->f:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {p2, p1, p3}, Lnet/sf/saxon/value/SequenceType;->matches(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_4
    return v1
.end method

.method public get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/value/StringValue;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/DictionaryMap;->f:Ljava/util/Map;

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/GroundedValue;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemType(Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/DictionaryMap;->keys()Lnet/sf/saxon/tree/iter/AtomicIterator;

    iget-object p0, p0, Lnet/sf/saxon/ma/map/DictionaryMap;->f:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/GroundedValue;

    if-nez v0, :cond_0

    invoke-static {v2, p1}, Lnet/sf/saxon/om/SequenceTool;->getItemType(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-static {v2}, Lnet/sf/saxon/om/SequenceTool;->getCardinality(Lnet/sf/saxon/om/Sequence;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v2, p1}, Lnet/sf/saxon/om/SequenceTool;->getItemType(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    invoke-static {v0, v3, p1}, Lnet/sf/saxon/type/Type;->getCommonSuperType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-static {v2}, Lnet/sf/saxon/om/SequenceTool;->getCardinality(Lnet/sf/saxon/om/Sequence;)I

    move-result v2

    invoke-static {v1, v2}, Lnet/sf/saxon/value/Cardinality;->union(II)I

    move-result v1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    sget-object p0, Lnet/sf/saxon/ma/map/MapType;->EMPTY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

    return-object p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/ma/map/MapType;

    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v0, v1}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/ma/map/MapType;-><init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/value/SequenceType;)V

    return-object p0
.end method

.method public getKeyUType()Lnet/sf/saxon/type/UType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/DictionaryMap;->f:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lnet/sf/saxon/type/UType;->VOID:Lnet/sf/saxon/type/UType;

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/sf/saxon/type/UType;->STRING:Lnet/sf/saxon/type/UType;

    :goto_0
    return-object p0
.end method

.method public initialAppend(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/ma/map/DictionaryMap;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/GroundedValue;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/ma/map/DictionaryMap;->f:Ljava/util/Map;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/sf/saxon/om/GroundedValue;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-interface {v0, v1}, Lnet/sf/saxon/om/GroundedValue;->concatenate([Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/DictionaryMap;->f:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/DictionaryMap;->f:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public keyValuePairs()Ljava/lang/Iterable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/ma/map/KeyValuePair;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lnet/sf/saxon/ma/map/DictionaryMap;->f:Ljava/util/Map;

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

    new-instance v2, Lnet/sf/saxon/ma/map/KeyValuePair;

    new-instance v3, Lnet/sf/saxon/value/StringValue;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/GroundedValue;

    invoke-direct {v2, v3, v1}, Lnet/sf/saxon/ma/map/KeyValuePair;-><init>(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public keys()Lnet/sf/saxon/tree/iter/AtomicIterator;
    .locals 2

    new-instance v0, Lnet/sf/saxon/ma/map/DictionaryMap$a;

    iget-object v1, p0, Lnet/sf/saxon/ma/map/DictionaryMap;->f:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/ma/map/DictionaryMap$a;-><init>(Lnet/sf/saxon/ma/map/DictionaryMap;Ljava/util/Map;)V

    return-object v0
.end method

.method public remove(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/ma/map/MapItem;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/DictionaryMap;->a()Lnet/sf/saxon/ma/map/HashTrieMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/map/HashTrieMap;->remove(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/ma/map/HashTrieMap;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/DictionaryMap;->f:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method
