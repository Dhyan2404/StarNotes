.class public Lnet/sf/saxon/ma/map/HashTrieMap;
.super Lnet/sf/saxon/ma/map/MapItem;
.source "SourceFile"


# instance fields
.field public f:Lnet/sf/saxon/ma/trie/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/ma/trie/ImmutableMap<",
            "Lnet/sf/saxon/expr/sort/AtomicMatchKey;",
            "Lnet/sf/saxon/ma/map/KeyValuePair;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lnet/sf/saxon/type/UType;

.field public h:Lnet/sf/saxon/type/UType;

.field public i:Lnet/sf/saxon/type/AtomicType;

.field public j:Lnet/sf/saxon/type/ItemType;

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/ma/map/MapItem;-><init>()V

    .line 2
    sget-object v0, Lnet/sf/saxon/type/UType;->VOID:Lnet/sf/saxon/type/UType;

    iput-object v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->g:Lnet/sf/saxon/type/UType;

    .line 3
    iput-object v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->h:Lnet/sf/saxon/type/UType;

    .line 4
    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->i:Lnet/sf/saxon/type/AtomicType;

    .line 5
    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->j:Lnet/sf/saxon/type/ItemType;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->k:I

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->l:I

    .line 8
    invoke-static {}, Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;->empty()Lnet/sf/saxon/ma/trie/ImmutableHashTrieMap;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->f:Lnet/sf/saxon/ma/trie/ImmutableMap;

    .line 9
    iput v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->l:I

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/ma/trie/ImmutableMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/ma/trie/ImmutableMap<",
            "Lnet/sf/saxon/expr/sort/AtomicMatchKey;",
            "Lnet/sf/saxon/ma/map/KeyValuePair;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lnet/sf/saxon/ma/map/MapItem;-><init>()V

    .line 11
    sget-object v0, Lnet/sf/saxon/type/UType;->VOID:Lnet/sf/saxon/type/UType;

    iput-object v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->g:Lnet/sf/saxon/type/UType;

    .line 12
    iput-object v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->h:Lnet/sf/saxon/type/UType;

    .line 13
    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->i:Lnet/sf/saxon/type/AtomicType;

    .line 14
    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->j:Lnet/sf/saxon/type/ItemType;

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->k:I

    .line 16
    iput-object p1, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->f:Lnet/sf/saxon/ma/trie/ImmutableMap;

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->l:I

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/ma/map/HashTrieMap;)Lnet/sf/saxon/ma/trie/ImmutableMap;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->f:Lnet/sf/saxon/ma/trie/ImmutableMap;

    return-object p0
.end method

.method public static copy(Lnet/sf/saxon/ma/map/MapItem;)Lnet/sf/saxon/ma/map/HashTrieMap;
    .locals 3

    instance-of v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/ma/map/HashTrieMap;

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/ma/map/HashTrieMap;

    invoke-direct {v0}, Lnet/sf/saxon/ma/map/HashTrieMap;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/MapItem;->keyValuePairs()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/ma/map/KeyValuePair;

    iget-object v2, v1, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    iget-object v1, v1, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/ma/map/HashTrieMap;->addEntry(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/map/HashTrieMap;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static singleton(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/map/HashTrieMap;
    .locals 1

    new-instance v0, Lnet/sf/saxon/ma/map/HashTrieMap;

    invoke-direct {v0}, Lnet/sf/saxon/ma/map/HashTrieMap;-><init>()V

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/ma/map/HashTrieMap;->addEntry(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/map/HashTrieMap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addEntry(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/map/HashTrieMap;
    .locals 5

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/map/HashTrieMap;->b(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->f:Lnet/sf/saxon/ma/trie/ImmutableMap;

    invoke-interface {v1, v0}, Lnet/sf/saxon/ma/trie/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/HashTrieMap;->isEmpty()Z

    move-result v2

    .line 5
    iget-object v3, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->f:Lnet/sf/saxon/ma/trie/ImmutableMap;

    new-instance v4, Lnet/sf/saxon/ma/map/KeyValuePair;

    invoke-direct {v4, p1, p2}, Lnet/sf/saxon/ma/map/KeyValuePair;-><init>(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)V

    invoke-interface {v3, v0, v4}, Lnet/sf/saxon/ma/trie/ImmutableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableMap;

    move-result-object v0

    .line 6
    new-instance v3, Lnet/sf/saxon/ma/map/HashTrieMap;

    invoke-direct {v3, v0}, Lnet/sf/saxon/ma/map/HashTrieMap;-><init>(Lnet/sf/saxon/ma/trie/ImmutableMap;)V

    .line 7
    iget v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->k:I

    iput v0, v3, Lnet/sf/saxon/ma/map/HashTrieMap;->k:I

    .line 8
    iget-object v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->g:Lnet/sf/saxon/type/UType;

    iput-object v0, v3, Lnet/sf/saxon/ma/map/HashTrieMap;->g:Lnet/sf/saxon/type/UType;

    .line 9
    iget-object v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->h:Lnet/sf/saxon/type/UType;

    iput-object v0, v3, Lnet/sf/saxon/ma/map/HashTrieMap;->h:Lnet/sf/saxon/type/UType;

    .line 10
    iget-object v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->i:Lnet/sf/saxon/type/AtomicType;

    iput-object v0, v3, Lnet/sf/saxon/ma/map/HashTrieMap;->i:Lnet/sf/saxon/type/AtomicType;

    .line 11
    iget-object v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->j:Lnet/sf/saxon/type/ItemType;

    iput-object v0, v3, Lnet/sf/saxon/ma/map/HashTrieMap;->j:Lnet/sf/saxon/type/ItemType;

    .line 12
    invoke-virtual {v3, p1, p2, v2}, Lnet/sf/saxon/ma/map/HashTrieMap;->c(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/Sequence;Z)V

    .line 13
    iget p0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->l:I

    if-ltz p0, :cond_2

    if-eqz v1, :cond_1

    add-int/lit8 p0, p0, 0x1

    .line 14
    :cond_1
    iput p0, v3, Lnet/sf/saxon/ma/map/HashTrieMap;->l:I

    :cond_2
    return-object v3
.end method

.method public bridge synthetic addEntry(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/map/MapItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/ma/map/HashTrieMap;->addEntry(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/map/HashTrieMap;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/expr/sort/AtomicMatchKey;
    .locals 0

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->asMapKey()Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/Sequence;Z)V
    .locals 1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p3

    iput-object p3, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->g:Lnet/sf/saxon/type/UType;

    invoke-static {p2}, Lnet/sf/saxon/om/SequenceTool;->getUType(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/type/UType;

    move-result-object p3

    iput-object p3, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->h:Lnet/sf/saxon/type/UType;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->i:Lnet/sf/saxon/type/AtomicType;

    invoke-static {p2}, Lnet/sf/saxon/ma/map/MapItem;->getItemTypeOfSequence(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->j:Lnet/sf/saxon/type/ItemType;

    invoke-static {p2}, Lnet/sf/saxon/om/SequenceTool;->getCardinality(Lnet/sf/saxon/om/Sequence;)I

    move-result p1

    iput p1, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->k:I

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->g:Lnet/sf/saxon/type/UType;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v0

    invoke-virtual {p3, v0}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object p3

    iput-object p3, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->g:Lnet/sf/saxon/type/UType;

    iget-object p3, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->h:Lnet/sf/saxon/type/UType;

    invoke-static {p2}, Lnet/sf/saxon/om/SequenceTool;->getUType(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/type/UType;

    move-result-object v0

    invoke-virtual {p3, v0}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object p3

    iput-object p3, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->h:Lnet/sf/saxon/type/UType;

    iget p3, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->k:I

    invoke-static {p2}, Lnet/sf/saxon/om/SequenceTool;->getCardinality(Lnet/sf/saxon/om/Sequence;)I

    move-result v0

    invoke-static {p3, v0}, Lnet/sf/saxon/value/Cardinality;->union(II)I

    move-result p3

    iput p3, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->k:I

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p1

    iget-object p3, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->i:Lnet/sf/saxon/type/AtomicType;

    const/4 v0, 0x0

    if-eq p1, p3, :cond_1

    iput-object v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->i:Lnet/sf/saxon/type/AtomicType;

    :cond_1
    iget-object p1, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->j:Lnet/sf/saxon/type/ItemType;

    invoke-static {p2, p1}, Lnet/sf/saxon/ma/map/MapItem;->isKnownToConform(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/type/ItemType;)Z

    move-result p1

    if-nez p1, :cond_2

    iput-object v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->j:Lnet/sf/saxon/type/ItemType;

    :cond_2
    :goto_0
    return-void
.end method

.method public conforms(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 5

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/HashTrieMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->i:Lnet/sf/saxon/type/AtomicType;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->j:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {p2}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p2}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v0

    iget v2, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->k:I

    invoke-static {v0, v2}, Lnet/sf/saxon/value/Cardinality;->subsumes(II)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/4 v2, 0x0

    if-eq p1, v0, :cond_4

    iget-object v3, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->g:Lnet/sf/saxon/type/UType;

    invoke-virtual {v3}, Lnet/sf/saxon/type/UType;->toItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    invoke-virtual {p3, p1, v3}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v3

    sget-object v4, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq v3, v4, :cond_4

    sget-object v4, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    sget-object v4, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-ne v3, v4, :cond_3

    return v2

    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    :goto_0
    move v3, v2

    :goto_1
    invoke-virtual {p2}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v4

    if-eq v4, v0, :cond_7

    iget-object v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->h:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0}, Lnet/sf/saxon/type/UType;->toItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-virtual {p3, v4, v0}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v0

    sget-object v4, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq v0, v4, :cond_7

    sget-object v4, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    if-ne v0, v4, :cond_5

    goto :goto_2

    :cond_5
    sget-object v3, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-ne v0, v3, :cond_6

    return v2

    :cond_6
    move v3, v1

    :cond_7
    :goto_2
    invoke-virtual {p2}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v0

    iget v4, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->k:I

    invoke-static {v0, v4}, Lnet/sf/saxon/value/Cardinality;->subsumes(II)Z

    move-result v0

    if-nez v0, :cond_8

    move v3, v1

    :cond_8
    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/HashTrieMap;->keys()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AtomicIterator;->next()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {p1, v3, p3}, Lnet/sf/saxon/type/PlainType;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v4

    if-nez v4, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0, v3}, Lnet/sf/saxon/ma/map/HashTrieMap;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lnet/sf/saxon/value/SequenceType;->matches(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v3

    if-nez v3, :cond_9

    return v2

    :cond_b
    return v1
.end method

.method public diagnosticDump()V
    .locals 7

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Map details:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->f:Lnet/sf/saxon/ma/trie/ImmutableMap;

    invoke-interface {p0}, Lnet/sf/saxon/ma/trie/ImmutableMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/ma/trie/TrieKVP;

    iget-object v1, v0, Lnet/sf/saxon/ma/trie/TrieKVP;->key:Ljava/lang/Object;

    check-cast v1, Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    iget-object v0, v0, Lnet/sf/saxon/ma/trie/TrieKVP;->value:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lnet/sf/saxon/ma/map/KeyValuePair;

    iget-object v2, v2, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    check-cast v0, Lnet/sf/saxon/ma/map/KeyValuePair;

    iget-object v0, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " #:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " = ("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->f:Lnet/sf/saxon/ma/trie/ImmutableMap;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/map/HashTrieMap;->b(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object p0

    invoke-interface {v0, p0}, Lnet/sf/saxon/ma/trie/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/ma/map/KeyValuePair;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    :goto_0
    return-object p0
.end method

.method public getItemType(Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/ma/map/MapType;
    .locals 7

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/HashTrieMap;->keys()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move v4, v2

    .line 3
    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AtomicIterator;->next()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 4
    invoke-virtual {p0, v5}, Lnet/sf/saxon/ma/map/HashTrieMap;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v6

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v5}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v1

    .line 6
    invoke-static {v6, p1}, Lnet/sf/saxon/om/SequenceTool;->getItemType(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    .line 7
    invoke-static {v6}, Lnet/sf/saxon/om/SequenceTool;->getCardinality(Lnet/sf/saxon/om/Sequence;)I

    move-result v4

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v5}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v5

    invoke-static {v1, v5, p1}, Lnet/sf/saxon/type/Type;->getCommonSuperType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/type/AtomicType;

    .line 9
    invoke-static {v6, p1}, Lnet/sf/saxon/om/SequenceTool;->getItemType(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object v5

    invoke-static {v3, v5, p1}, Lnet/sf/saxon/type/Type;->getCommonSuperType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    .line 10
    invoke-static {v6}, Lnet/sf/saxon/om/SequenceTool;->getCardinality(Lnet/sf/saxon/om/Sequence;)I

    move-result v5

    invoke-static {v4, v5}, Lnet/sf/saxon/value/Cardinality;->union(II)I

    move-result v4

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 11
    sget-object p1, Lnet/sf/saxon/type/UType;->VOID:Lnet/sf/saxon/type/UType;

    iput-object p1, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->g:Lnet/sf/saxon/type/UType;

    .line 12
    iput-object p1, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->h:Lnet/sf/saxon/type/UType;

    .line 13
    iput v2, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->k:I

    .line 14
    sget-object p0, Lnet/sf/saxon/ma/map/MapType;->ANY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

    return-object p0

    .line 15
    :cond_2
    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->g:Lnet/sf/saxon/type/UType;

    .line 16
    invoke-interface {v3}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->h:Lnet/sf/saxon/type/UType;

    .line 17
    iput v4, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->k:I

    .line 18
    new-instance p0, Lnet/sf/saxon/ma/map/MapType;

    invoke-static {v3, v4}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lnet/sf/saxon/ma/map/MapType;-><init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/value/SequenceType;)V

    return-object p0
.end method

.method public bridge synthetic getItemType(Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/map/HashTrieMap;->getItemType(Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/ma/map/MapType;

    move-result-object p0

    return-object p0
.end method

.method public getKeyUType()Lnet/sf/saxon/type/UType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->g:Lnet/sf/saxon/type/UType;

    return-object p0
.end method

.method public getKeyValuePair(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/ma/map/KeyValuePair;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->f:Lnet/sf/saxon/ma/trie/ImmutableMap;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/map/HashTrieMap;->b(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object p0

    invoke-interface {v0, p0}, Lnet/sf/saxon/ma/trie/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/ma/map/KeyValuePair;

    return-object p0
.end method

.method public initialPut(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Z
    .locals 5

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/HashTrieMap;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/map/HashTrieMap;->b(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->f:Lnet/sf/saxon/ma/trie/ImmutableMap;

    invoke-interface {v2, v1}, Lnet/sf/saxon/ma/trie/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->f:Lnet/sf/saxon/ma/trie/ImmutableMap;

    new-instance v4, Lnet/sf/saxon/ma/map/KeyValuePair;

    invoke-direct {v4, p1, p2}, Lnet/sf/saxon/ma/map/KeyValuePair;-><init>(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)V

    invoke-interface {v3, v1, v4}, Lnet/sf/saxon/ma/trie/ImmutableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableMap;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->f:Lnet/sf/saxon/ma/trie/ImmutableMap;

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/saxon/ma/map/HashTrieMap;->c(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/Sequence;Z)V

    const/4 p1, -0x1

    iput p1, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->l:I

    return v2
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->l:I

    if-eqz v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->f:Lnet/sf/saxon/ma/trie/ImmutableMap;

    invoke-interface {p0}, Lnet/sf/saxon/ma/trie/ImmutableMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public keyValuePairs()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/ma/map/KeyValuePair;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/ma/map/HashTrieMap$b;

    invoke-direct {v0, p0}, Lnet/sf/saxon/ma/map/HashTrieMap$b;-><init>(Lnet/sf/saxon/ma/map/HashTrieMap;)V

    return-object v0
.end method

.method public keys()Lnet/sf/saxon/tree/iter/AtomicIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/ma/map/HashTrieMap$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/ma/map/HashTrieMap$a;-><init>(Lnet/sf/saxon/ma/map/HashTrieMap;)V

    return-object v0
.end method

.method public remove(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/ma/map/HashTrieMap;
    .locals 2

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->f:Lnet/sf/saxon/ma/trie/ImmutableMap;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/map/HashTrieMap;->b(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/sf/saxon/ma/trie/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->f:Lnet/sf/saxon/ma/trie/ImmutableMap;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/map/HashTrieMap;->b(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object p1

    invoke-interface {v0, p1}, Lnet/sf/saxon/ma/trie/ImmutableMap;->remove(Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableMap;

    move-result-object p1

    .line 4
    new-instance v0, Lnet/sf/saxon/ma/map/HashTrieMap;

    invoke-direct {v0, p1}, Lnet/sf/saxon/ma/map/HashTrieMap;-><init>(Lnet/sf/saxon/ma/trie/ImmutableMap;)V

    .line 5
    iget-object p1, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->g:Lnet/sf/saxon/type/UType;

    iput-object p1, v0, Lnet/sf/saxon/ma/map/HashTrieMap;->g:Lnet/sf/saxon/type/UType;

    .line 6
    iget-object p1, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->h:Lnet/sf/saxon/type/UType;

    iput-object p1, v0, Lnet/sf/saxon/ma/map/HashTrieMap;->h:Lnet/sf/saxon/type/UType;

    .line 7
    iget p1, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->k:I

    iput p1, v0, Lnet/sf/saxon/ma/map/HashTrieMap;->k:I

    .line 8
    iget p0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->l:I

    add-int/lit8 p0, p0, -0x1

    iput p0, v0, Lnet/sf/saxon/ma/map/HashTrieMap;->l:I

    return-object v0
.end method

.method public bridge synthetic remove(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/ma/map/MapItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/map/HashTrieMap;->remove(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/ma/map/HashTrieMap;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 3

    iget v0, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->l:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/HashTrieMap;->keyValuePairs()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/ma/map/KeyValuePair;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Lnet/sf/saxon/ma/map/HashTrieMap;->l:I

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/ma/map/MapItem;->mapToString(Lnet/sf/saxon/ma/map/MapItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
