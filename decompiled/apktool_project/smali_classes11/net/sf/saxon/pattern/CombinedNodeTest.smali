.class public Lnet/sf/saxon/pattern/CombinedNodeTest;
.super Lnet/sf/saxon/pattern/NodeTest;
.source "SourceFile"


# instance fields
.field public final i:Lnet/sf/saxon/pattern/NodeTest;

.field public final j:Lnet/sf/saxon/pattern/NodeTest;

.field public final k:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/pattern/NodeTest;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    iput p2, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->k:I

    iput-object p3, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    return-void
.end method

.method public static c(Lnet/sf/saxon/pattern/NameTest;Lnet/sf/saxon/pattern/ContentTypeTest;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NameTest;->getNodeKind()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/pattern/ContentTypeTest;->getContentType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/pattern/ContentTypeTest;->isNillable()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/pattern/ContentTypeTest;->getContentType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getEQName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NameTest;->getNodeKind()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/pattern/ContentTypeTest;->getContentType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne p0, v0, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/pattern/ContentTypeTest;->getContentType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getEQName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public addTypeDetails(Lnet/sf/saxon/ma/map/DictionaryMap;)V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    instance-of v0, v0, Lnet/sf/saxon/pattern/NameTest;

    if-eqz v0, :cond_1

    iget v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->k:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    iget-object v1, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/NodeTest;->getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    const-string v1, "n"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    iget-object v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    instance-of v1, v0, Lnet/sf/saxon/pattern/ContentTypeTest;

    if-eqz v1, :cond_1

    check-cast v0, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/ContentTypeTest;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq v0, v1, :cond_1

    new-instance v1, Lnet/sf/saxon/value/StringValue;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->getEQName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NodeTest;->isNillable()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "?"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    const-string p0, "c"

    invoke-virtual {p1, p0, v1}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    :cond_1
    return-void
.end method

.method public final d(Z)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    instance-of v1, v0, Lnet/sf/saxon/pattern/NameTest;

    const/16 v2, 0x29

    if-eqz v1, :cond_4

    iget v1, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->k:I

    const/16 v3, 0x17

    if-ne v1, v3, :cond_4

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/NodeTest;->getPrimitiveType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "element("

    goto :goto_0

    :cond_0
    const-string v0, "attribute("

    :goto_0
    iget-object v1, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    instance-of v3, v1, Lnet/sf/saxon/pattern/ContentTypeTest;

    if-eqz v3, :cond_2

    check-cast v1, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/ContentTypeTest;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-static {v1}, Lnet/sf/saxon/type/TypeHierarchy;->getNearestNamedType(Lnet/sf/saxon/type/SchemaType;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lnet/sf/saxon/type/SchemaType;->getEQName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/NodeTest;->isNillable()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    :cond_3
    :goto_1
    iget-object p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NodeTest;->getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p1, "item()"

    if-nez v0, :cond_5

    move-object v0, p1

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x28

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    iget p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->k:I

    aget-object p0, v3, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/pattern/CombinedNodeTest;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/pattern/CombinedNodeTest;

    iget-object v0, p1, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    iget-object v1, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    iget-object v1, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Lnet/sf/saxon/pattern/CombinedNodeTest;->k:I

    iget p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->k:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public explainMismatch(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/Item;",
            "Lnet/sf/saxon/type/TypeHierarchy;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/pattern/NodeTest;->explainMismatch(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->k:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    move-object v1, p1

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/pattern/NodeTest;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pattern/NodeTest;->explainMismatch(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/pattern/NodeTest;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pattern/NodeTest;->explainMismatch(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getAtomizedItemType()Lnet/sf/saxon/type/AtomicType;
    .locals 3

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/NodeTest;->getAtomizedItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/NodeTest;->getAtomizedItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v1

    .line 4
    invoke-interface {v0, v1}, Lnet/sf/saxon/type/SchemaType;->isSameType(Lnet/sf/saxon/type/SchemaType;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 5
    :cond_0
    iget p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->k:I

    const/16 v2, 0x17

    if-ne p0, v2, :cond_2

    .line 6
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 7
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v1

    .line 8
    :cond_2
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public bridge synthetic getAtomizedItemType()Lnet/sf/saxon/type/PlainType;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/CombinedNodeTest;->getAtomizedItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p0

    return-object p0
.end method

.method public getComponentNodeTests()[Lnet/sf/saxon/pattern/NodeTest;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/sf/saxon/pattern/NodeTest;

    const/4 v1, 0x0

    iget-object v2, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    aput-object p0, v0, v1

    return-object v0
.end method

.method public getContentType()Lnet/sf/saxon/type/SchemaType;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/NodeTest;->getContentType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/NodeTest;->getContentType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/sf/saxon/type/SchemaType;->isSameType(Lnet/sf/saxon/type/SchemaType;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    iget p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->k:I

    const/16 v2, 0x17

    if-ne p0, v2, :cond_4

    instance-of p0, v1, Lnet/sf/saxon/type/AnyType;

    if-nez p0, :cond_3

    instance-of p0, v1, Lnet/sf/saxon/type/AnySimpleType;

    if-eqz p0, :cond_1

    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->isSimpleType()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    instance-of p0, v0, Lnet/sf/saxon/type/AnyType;

    if-nez p0, :cond_2

    instance-of p0, v0, Lnet/sf/saxon/type/AnySimpleType;

    if-eqz p0, :cond_4

    invoke-interface {v1}, Lnet/sf/saxon/type/SchemaType;->isSimpleType()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    invoke-static {}, Lnet/sf/saxon/type/AnyType;->getInstance()Lnet/sf/saxon/type/AnyType;

    move-result-object p0

    return-object p0
.end method

.method public getContentTypeForAlphaCode()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    instance-of v1, v0, Lnet/sf/saxon/pattern/NameTest;

    const/16 v2, 0x17

    if-eqz v1, :cond_0

    iget v1, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->k:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    instance-of v3, v1, Lnet/sf/saxon/pattern/ContentTypeTest;

    if-eqz v3, :cond_0

    check-cast v0, Lnet/sf/saxon/pattern/NameTest;

    check-cast v1, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-static {v0, v1}, Lnet/sf/saxon/pattern/CombinedNodeTest;->c(Lnet/sf/saxon/pattern/NameTest;Lnet/sf/saxon/pattern/ContentTypeTest;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    instance-of v3, v1, Lnet/sf/saxon/pattern/NameTest;

    if-eqz v3, :cond_1

    iget p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->k:I

    if-ne p0, v2, :cond_1

    instance-of p0, v0, Lnet/sf/saxon/pattern/ContentTypeTest;

    if-eqz p0, :cond_1

    check-cast v1, Lnet/sf/saxon/pattern/NameTest;

    check-cast v0, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-static {v1, v0}, Lnet/sf/saxon/pattern/CombinedNodeTest;->c(Lnet/sf/saxon/pattern/NameTest;Lnet/sf/saxon/pattern/ContentTypeTest;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultPriority()D
    .locals 2

    iget v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NodeTest;->getDefaultPriority()D

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    instance-of p0, p0, Lnet/sf/saxon/pattern/NameTest;

    if-eqz p0, :cond_1

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x3fc0000000000000L    # 0.125

    :goto_0
    return-wide v0
.end method

.method public getFingerprint()I
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/NodeTest;->getFingerprint()I

    move-result v0

    iget-object v1, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/NodeTest;->getFingerprint()I

    move-result v1

    if-ne v0, v1, :cond_0

    return v0

    :cond_0
    const/16 v2, 0x17

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    iget v4, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->k:I

    if-ne v4, v2, :cond_1

    return v0

    :cond_1
    if-ne v0, v3, :cond_2

    iget p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->k:I

    if-ne p0, v2, :cond_2

    return v1

    :cond_2
    return v3
.end method

.method public getMatcher(Lnet/sf/saxon/tree/tiny/NodeVectorTree;)Lnet/sf/saxon/z/IntPredicateProxy;
    .locals 2

    iget v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->k:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x17

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/pattern/NodeTest;->getMatcher(Lnet/sf/saxon/tree/tiny/NodeVectorTree;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/NodeTest;->getMatcher(Lnet/sf/saxon/tree/tiny/NodeVectorTree;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p0

    invoke-static {v0, p0}, Lnet/sf/saxon/z/IntExceptPredicate;->makeDifference(Lnet/sf/saxon/z/IntPredicateProxy;Lnet/sf/saxon/z/IntPredicateProxy;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown operator in Combined Node Test"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/pattern/NodeTest;->getMatcher(Lnet/sf/saxon/tree/tiny/NodeVectorTree;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/NodeTest;->getMatcher(Lnet/sf/saxon/tree/tiny/NodeVectorTree;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p0

    invoke-static {v0, p0}, Lnet/sf/saxon/z/IntIntersectionPredicate;->makeIntersection(Lnet/sf/saxon/z/IntPredicateProxy;Lnet/sf/saxon/z/IntPredicateProxy;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/pattern/NodeTest;->getMatcher(Lnet/sf/saxon/tree/tiny/NodeVectorTree;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/NodeTest;->getMatcher(Lnet/sf/saxon/tree/tiny/NodeVectorTree;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p0

    invoke-static {v0, p0}, Lnet/sf/saxon/z/IntUnionPredicate;->makeUnion(Lnet/sf/saxon/z/IntPredicateProxy;Lnet/sf/saxon/z/IntPredicateProxy;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p0

    return-object p0
.end method

.method public getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/NodeTest;->getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/NodeTest;->getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    const/16 v2, 0x17

    if-nez v0, :cond_1

    iget v3, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->k:I

    if-ne v3, v2, :cond_1

    return-object v1

    :cond_1
    if-nez v1, :cond_2

    iget p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->k:I

    if-ne p0, v2, :cond_2

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOperand(I)Lnet/sf/saxon/pattern/NodeTest;
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    :goto_0
    return-object p0
.end method

.method public getOperator()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->k:I

    return p0
.end method

.method public getPrimitiveType()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/CombinedNodeTest;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    sget-object v0, Lnet/sf/saxon/type/UType;->ELEMENT:Lnet/sf/saxon/type/UType;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object v0, Lnet/sf/saxon/type/UType;->ATTRIBUTE:Lnet/sf/saxon/type/UType;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    sget-object v0, Lnet/sf/saxon/type/UType;->DOCUMENT:Lnet/sf/saxon/type/UType;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x9

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public getRequiredNodeNames()Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lnet/sf/saxon/z/IntSet;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/NodeTest;->getRequiredNodeNames()Ljava/util/Optional;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/NodeTest;->getRequiredNodeNames()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/z/IntSet;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/z/IntSet;

    iget p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->k:I

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    const/16 v2, 0x17

    if-eq p0, v2, :cond_1

    const/16 v2, 0x18

    if-ne p0, v2, :cond_0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->except(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->intersect(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->union(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getUType()Lnet/sf/saxon/type/UType;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v1

    iget p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->k:I

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    const/16 v2, 0x17

    if-eq p0, v2, :cond_1

    const/16 v1, 0x18

    if-ne p0, v1, :cond_0

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown operator in Combined Node Test"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->intersection(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public isAtomizable(Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 4

    iget v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->k:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/16 v3, 0x17

    if-eq v0, v3, :cond_1

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/NodeTest;->isAtomizable(Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/pattern/NodeTest;->isAtomizable(Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/NodeTest;->isAtomizable(Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/pattern/NodeTest;->isAtomizable(Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/NodeTest;->isAtomizable(Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method

.method public isNillable()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/NodeTest;->isNillable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NodeTest;->isNillable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public matches(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)Z
    .locals 4

    iget v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->k:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/16 v3, 0x17

    if-eq v0, v3, :cond_3

    const/16 v3, 0x18

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lnet/sf/saxon/pattern/NodeTest;->matches(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/pattern/NodeTest;->matches(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)Z

    move-result p0

    if-nez p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown operator in Combined Node Test"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1, p2, p3}, Lnet/sf/saxon/pattern/NodeTest;->matches(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget-object p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/pattern/NodeTest;->matches(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1

    :cond_7
    iget-object v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v0, :cond_8

    iget-object v3, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v3, :cond_8

    invoke-virtual {v0, p1, p2, p3}, Lnet/sf/saxon/pattern/NodeTest;->matches(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/pattern/NodeTest;->matches(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)Z

    move-result p0

    if-eqz p0, :cond_9

    :cond_8
    move v1, v2

    :cond_9
    return v1
.end method

.method public test(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 4

    iget v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->k:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/16 v3, 0x17

    if-eq v0, v3, :cond_3

    const/16 v3, 0x18

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/pattern/NodeTest;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/NodeTest;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    if-nez p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown operator in Combined Node Test"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lnet/sf/saxon/pattern/NodeTest;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget-object p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/NodeTest;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1

    :cond_7
    iget-object v0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->i:Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v0, :cond_8

    iget-object v3, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v3, :cond_8

    invoke-virtual {v0, p1}, Lnet/sf/saxon/pattern/NodeTest;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object p0, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;->j:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/NodeTest;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    if-eqz p0, :cond_9

    :cond_8
    move v1, v2

    :cond_9
    return v1
.end method

.method public toExportString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/pattern/CombinedNodeTest;->d(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/pattern/CombinedNodeTest;->d(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
