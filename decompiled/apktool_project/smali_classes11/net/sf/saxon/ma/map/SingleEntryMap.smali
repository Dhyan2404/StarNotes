.class public Lnet/sf/saxon/ma/map/SingleEntryMap;
.super Lnet/sf/saxon/ma/map/MapItem;
.source "SourceFile"


# instance fields
.field public key:Lnet/sf/saxon/value/AtomicValue;

.field public value:Lnet/sf/saxon/om/GroundedValue;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/ma/map/MapItem;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/ma/map/SingleEntryMap;->key:Lnet/sf/saxon/value/AtomicValue;

    iput-object p2, p0, Lnet/sf/saxon/ma/map/SingleEntryMap;->value:Lnet/sf/saxon/om/GroundedValue;

    return-void
.end method


# virtual methods
.method public final a()Lnet/sf/saxon/ma/map/HashTrieMap;
    .locals 2

    new-instance v0, Lnet/sf/saxon/ma/map/HashTrieMap;

    invoke-direct {v0}, Lnet/sf/saxon/ma/map/HashTrieMap;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/ma/map/SingleEntryMap;->key:Lnet/sf/saxon/value/AtomicValue;

    iget-object p0, p0, Lnet/sf/saxon/ma/map/SingleEntryMap;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {v0, v1, p0}, Lnet/sf/saxon/ma/map/HashTrieMap;->initialPut(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Z

    return-object v0
.end method

.method public addEntry(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/map/MapItem;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/SingleEntryMap;->a()Lnet/sf/saxon/ma/map/HashTrieMap;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/ma/map/HashTrieMap;->addEntry(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/map/HashTrieMap;

    move-result-object p0

    return-object p0
.end method

.method public conforms(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/ma/map/SingleEntryMap;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-interface {p1, v0, p3}, Lnet/sf/saxon/type/PlainType;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/SingleEntryMap;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {p2, p0, p3}, Lnet/sf/saxon/value/SequenceType;->matches(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/ma/map/SingleEntryMap;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/AtomicValue;->asMapKey()Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->asMapKey()Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/SingleEntryMap;->value:Lnet/sf/saxon/om/GroundedValue;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getItemType(Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;
    .locals 3

    new-instance v0, Lnet/sf/saxon/ma/map/MapType;

    iget-object v1, p0, Lnet/sf/saxon/ma/map/SingleEntryMap;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v1}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/ma/map/SingleEntryMap;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-static {v2, p1}, Lnet/sf/saxon/om/SequenceTool;->getItemType(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/ma/map/SingleEntryMap;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->getCardinality(Lnet/sf/saxon/om/Sequence;)I

    move-result p0

    invoke-static {p1, p0}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/ma/map/MapType;-><init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/value/SequenceType;)V

    return-object v0
.end method

.method public getKey()Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/SingleEntryMap;->key:Lnet/sf/saxon/value/AtomicValue;

    return-object p0
.end method

.method public getKeyUType()Lnet/sf/saxon/type/UType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/SingleEntryMap;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/SingleEntryMap;->value:Lnet/sf/saxon/om/GroundedValue;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public keyValuePairs()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/ma/map/KeyValuePair;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lnet/sf/saxon/ma/map/KeyValuePair;

    iget-object v2, p0, Lnet/sf/saxon/ma/map/SingleEntryMap;->key:Lnet/sf/saxon/value/AtomicValue;

    iget-object p0, p0, Lnet/sf/saxon/ma/map/SingleEntryMap;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-direct {v1, v2, p0}, Lnet/sf/saxon/ma/map/KeyValuePair;-><init>(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public keys()Lnet/sf/saxon/tree/iter/AtomicIterator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/SingleEntryMap;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingleAtomicIterator;->makeIterator(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    return-object p0
.end method

.method public remove(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/ma/map/MapItem;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/map/SingleEntryMap;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/ma/map/HashTrieMap;

    invoke-direct {p0}, Lnet/sf/saxon/ma/map/HashTrieMap;-><init>()V

    return-object p0
.end method

.method public size()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
