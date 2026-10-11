.class public Lnet/sf/saxon/ma/map/RangeKey;
.super Lnet/sf/saxon/ma/map/MapItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/ma/map/RangeKey$a;
    }
.end annotation


# instance fields
.field public final f:Lnet/sf/saxon/str/UnicodeString;

.field public final g:Lnet/sf/saxon/str/UnicodeString;

.field public final h:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lnet/sf/saxon/expr/sort/AtomicMatchKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;Ljava/util/TreeMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/str/UnicodeString;",
            "Lnet/sf/saxon/str/UnicodeString;",
            "Ljava/util/TreeMap<",
            "Lnet/sf/saxon/expr/sort/AtomicMatchKey;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/sf/saxon/ma/map/MapItem;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/ma/map/RangeKey;->f:Lnet/sf/saxon/str/UnicodeString;

    iput-object p2, p0, Lnet/sf/saxon/ma/map/RangeKey;->g:Lnet/sf/saxon/str/UnicodeString;

    iput-object p3, p0, Lnet/sf/saxon/ma/map/RangeKey;->h:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public addEntry(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/map/MapItem;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/ma/map/HashTrieMap;->copy(Lnet/sf/saxon/ma/map/MapItem;)Lnet/sf/saxon/ma/map/HashTrieMap;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/ma/map/HashTrieMap;->addEntry(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/map/HashTrieMap;

    move-result-object p0

    return-object p0
.end method

.method public conforms(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/RangeKey;->keys()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AtomicIterator;->next()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/ma/map/RangeKey;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lnet/sf/saxon/value/SequenceType;->matches(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public deepEquals(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/sort/AtomicComparer;I)Z
    .locals 0

    instance-of p2, p1, Lnet/sf/saxon/ma/map/RangeKey;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    check-cast p1, Lnet/sf/saxon/ma/map/RangeKey;

    iget-object p2, p0, Lnet/sf/saxon/ma/map/RangeKey;->f:Lnet/sf/saxon/str/UnicodeString;

    iget-object p4, p1, Lnet/sf/saxon/ma/map/RangeKey;->f:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p2, p4}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lnet/sf/saxon/ma/map/RangeKey;->g:Lnet/sf/saxon/str/UnicodeString;

    iget-object p4, p1, Lnet/sf/saxon/ma/map/RangeKey;->g:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p2, p4}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/RangeKey;->h:Ljava/util/TreeMap;

    iget-object p1, p1, Lnet/sf/saxon/ma/map/RangeKey;->h:Ljava/util/TreeMap;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p3, 0x1

    :cond_0
    return p3
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "range-key-map"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/RangeKey;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "size"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;
    .locals 2

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/ma/map/RangeKey;->f:Lnet/sf/saxon/str/UnicodeString;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/str/UnicodeString;->compareTo(Lnet/sf/saxon/str/UnicodeString;)I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/ma/map/RangeKey;->g:Lnet/sf/saxon/str/UnicodeString;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lnet/sf/saxon/str/UnicodeString;->compareTo(Lnet/sf/saxon/str/UnicodeString;)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/ma/map/RangeKey;->h:Ljava/util/TreeMap;

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v1

    :cond_3
    instance-of p1, p0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz p1, :cond_4

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    return-object p0

    :cond_4
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance v1, Lnet/sf/saxon/value/SequenceExtent$Of;

    invoke-direct {v1, p0}, Lnet/sf/saxon/value/SequenceExtent$Of;-><init>(Ljava/util/List;)V

    :goto_1
    return-object v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    const-string p0, "range key"

    return-object p0
.end method

.method public getFunctionItemType()Lnet/sf/saxon/ma/map/MapType;
    .locals 2

    .line 2
    new-instance p0, Lnet/sf/saxon/ma/map/MapType;

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->NODE_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/ma/map/MapType;-><init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/value/SequenceType;)V

    return-object p0
.end method

.method public bridge synthetic getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/RangeKey;->getFunctionItemType()Lnet/sf/saxon/ma/map/MapType;

    move-result-object p0

    return-object p0
.end method

.method public getItemType(Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/ma/map/MapType;
    .locals 1

    .line 2
    new-instance p0, Lnet/sf/saxon/ma/map/MapType;

    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object v0, Lnet/sf/saxon/value/SequenceType;->NODE_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/ma/map/MapType;-><init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/value/SequenceType;)V

    return-object p0
.end method

.method public bridge synthetic getItemType(Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/map/RangeKey;->getItemType(Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/ma/map/MapType;

    move-result-object p0

    return-object p0
.end method

.method public getKeyUType()Lnet/sf/saxon/type/UType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/UType;->STRING:Lnet/sf/saxon/type/UType;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/RangeKey;->keys()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/AtomicIterator;->next()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTrustedResultType()Z
    .locals 0

    const/4 p0, 0x0

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

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/RangeKey;->keys()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Lnet/sf/saxon/tree/iter/AtomicIterator;->next()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lnet/sf/saxon/ma/map/KeyValuePair;

    invoke-virtual {p0, v2}, Lnet/sf/saxon/ma/map/RangeKey;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lnet/sf/saxon/ma/map/KeyValuePair;-><init>(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public keys()Lnet/sf/saxon/tree/iter/AtomicIterator;
    .locals 3

    new-instance v0, Lnet/sf/saxon/ma/map/RangeKey$a;

    iget-object v1, p0, Lnet/sf/saxon/ma/map/RangeKey;->f:Lnet/sf/saxon/str/UnicodeString;

    iget-object v2, p0, Lnet/sf/saxon/ma/map/RangeKey;->g:Lnet/sf/saxon/str/UnicodeString;

    iget-object p0, p0, Lnet/sf/saxon/ma/map/RangeKey;->h:Ljava/util/TreeMap;

    invoke-direct {v0, v1, v2, p0}, Lnet/sf/saxon/ma/map/RangeKey$a;-><init>(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;Ljava/util/TreeMap;)V

    return-object v0
.end method

.method public remove(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/ma/map/MapItem;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/ma/map/HashTrieMap;->copy(Lnet/sf/saxon/ma/map/MapItem;)Lnet/sf/saxon/ma/map/HashTrieMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/map/HashTrieMap;->remove(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/ma/map/HashTrieMap;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/RangeKey;->keys()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/functions/Count;->count(Lnet/sf/saxon/om/SequenceIterator;)I

    move-result p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/ma/map/MapItem;->mapToString(Lnet/sf/saxon/ma/map/MapItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
