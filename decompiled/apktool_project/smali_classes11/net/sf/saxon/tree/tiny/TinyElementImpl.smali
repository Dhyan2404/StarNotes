.class public Lnet/sf/saxon/tree/tiny/TinyElementImpl;
.super Lnet/sf/saxon/tree/tiny/TinyParentNodeImpl;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/tiny/TinyTree;I)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/tree/tiny/TinyParentNodeImpl;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iput p2, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/tree/tiny/TinyElementImpl;Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyElementImpl;->d(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    return p0
.end method

.method private synthetic d(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    check-cast p1, Lnet/sf/saxon/tree/tiny/TinyElementImpl;

    invoke-virtual {p1}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getNodeNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyTree;->isTopWithinEntity(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public atomize()Lnet/sf/saxon/om/AtomicSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getTypedValueOfElement(Lnet/sf/saxon/tree/tiny/TinyElementImpl;)Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lnet/sf/saxon/type/SimpleType;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/type/HyperType;->isNamespaceSensitive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lnet/sf/saxon/type/SimpleType;->isAtomicType()Z

    move-result p1

    const-string v0, "Cannot copy QName or NOTATION values without copying namespaces"

    if-nez p1, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/tree/tiny/TinyTree;->getTypedValueOfAttribute(Lnet/sf/saxon/tree/tiny/TinyAttributeImpl;I)Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/type/BuiltInAtomicType;->isNamespaceSensitive()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/event/CopyNamespaceSensitiveException;

    invoke-direct {p0, v0}, Lnet/sf/saxon/event/CopyNamespaceSensitiveException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/event/CopyNamespaceSensitiveException;

    invoke-direct {p0, v0}, Lnet/sf/saxon/event/CopyNamespaceSensitiveException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public final c(Lnet/sf/saxon/event/Receiver;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public checkNotNamespaceSensitiveElement(Lnet/sf/saxon/type/SchemaType;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/type/SimpleType;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/type/SimpleType;

    invoke-interface {v0}, Lnet/sf/saxon/type/HyperType;->isNamespaceSensitive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lnet/sf/saxon/type/SchemaType;->isAtomicType()Z

    move-result p1

    const-string v0, "Cannot copy QName or NOTATION values without copying namespaces"

    if-nez p1, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/tree/tiny/TinyTree;->getTypedValueOfElement(I)Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/type/BuiltInAtomicType;->isNamespaceSensitive()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/event/CopyNamespaceSensitiveException;

    invoke-direct {p0, v0}, Lnet/sf/saxon/event/CopyNamespaceSensitiveException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/event/CopyNamespaceSensitiveException;

    invoke-direct {p0, v0}, Lnet/sf/saxon/event/CopyNamespaceSensitiveException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x4

    invoke-static {v9, v10}, Lnet/sf/saxon/om/CopyOptions;->includes(II)Z

    move-result v11

    iget-object v1, v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v2, v1, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    iget v3, v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget-short v12, v2, v3

    and-int/lit8 v2, v9, 0x4

    const/4 v13, 0x1

    if-eqz v2, :cond_0

    and-int/lit8 v2, v9, 0x2

    if-nez v2, :cond_0

    move v15, v13

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    invoke-virtual {v1}, Lnet/sf/saxon/om/GenericTreeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v7

    iget v1, v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/event/PipelineConfiguration;->getCopyInformee()Ljava/util/function/Function;

    move-result-object v6

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/4 v4, -0x1

    move v5, v1

    move-object/from16 v16, v3

    const/4 v3, 0x0

    move-object/from16 v1, p3

    :goto_1
    iget-object v14, v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v14, v14, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    aget-short v14, v14, v5

    if-eqz v3, :cond_1

    add-int/lit8 v4, v4, 0x1

    :goto_2
    int-to-short v4, v4

    :cond_1
    if-le v4, v14, :cond_2

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/event/Receiver;->endElement()V

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_2
    iget-object v4, v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v10, v4, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    aget-byte v10, v10, v5

    move/from16 p3, v14

    const/16 v14, 0x11

    if-eq v10, v13, :cond_8

    const/16 v13, 0xc

    if-eq v10, v13, :cond_9

    if-eq v10, v14, :cond_8

    const/4 v13, 0x3

    if-eq v10, v13, :cond_7

    const/4 v13, 0x4

    if-eq v10, v13, :cond_6

    const/4 v14, 0x7

    if-eq v10, v14, :cond_5

    const/16 v14, 0x8

    if-eq v10, v14, :cond_3

    move v10, v5

    move-object/from16 v20, v6

    move-object v9, v7

    move/from16 v17, v11

    move/from16 v23, v15

    goto/16 :goto_12

    :cond_3
    iget-object v3, v4, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    aget v3, v3, v5

    iget-object v10, v4, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    aget v10, v10, v5

    if-lez v10, :cond_4

    iget-object v4, v4, Lnet/sf/saxon/tree/tiny/TinyTree;->k:Lnet/sf/saxon/str/UnicodeString;

    int-to-long v13, v3

    add-int/2addr v3, v10

    move-object/from16 v18, v2

    int-to-long v2, v3

    invoke-virtual {v4, v13, v14, v2, v3}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    const/4 v13, 0x0

    invoke-interface {v8, v2, v1, v13}, Lnet/sf/saxon/event/Receiver;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_3

    :cond_4
    move-object/from16 v18, v2

    const/4 v13, 0x0

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-interface {v8, v2, v3, v13}, Lnet/sf/saxon/event/Receiver;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_3

    :cond_5
    move-object/from16 v18, v2

    const/4 v13, 0x0

    invoke-virtual {v4, v5}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNode(I)Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-interface {v8, v3, v2, v1, v13}, Lnet/sf/saxon/event/Receiver;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :goto_3
    move v10, v5

    move-object/from16 v20, v6

    move-object v9, v7

    move/from16 v17, v11

    move v3, v13

    move/from16 v23, v15

    move-object/from16 v2, v18

    goto/16 :goto_12

    :cond_6
    move-object/from16 v18, v2

    const/4 v13, 0x0

    iget-object v2, v4, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    aget v2, v2, v5

    int-to-long v2, v2

    const/16 v10, 0x20

    shl-long/2addr v2, v10

    iget-object v4, v4, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    aget v4, v4, v5

    int-to-long v13, v4

    const-wide v19, 0xffffffffL

    and-long v13, v13, v19

    or-long/2addr v2, v13

    new-instance v4, Lnet/sf/saxon/str/CompressedWhitespace;

    invoke-direct {v4, v2, v3}, Lnet/sf/saxon/str/CompressedWhitespace;-><init>(J)V

    const/16 v2, 0x400

    invoke-interface {v8, v4, v1, v2}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_4

    :cond_7
    move-object/from16 v18, v2

    const/16 v2, 0x400

    invoke-static {v4, v5}, Lnet/sf/saxon/tree/tiny/TinyTextImpl;->getStringValue(Lnet/sf/saxon/tree/tiny/TinyTree;I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    invoke-interface {v8, v3, v1, v2}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :goto_4
    move v10, v5

    move-object/from16 v20, v6

    move-object v9, v7

    move/from16 v17, v11

    :goto_5
    move/from16 v23, v15

    move-object/from16 v2, v18

    :goto_6
    const/4 v3, 0x0

    goto/16 :goto_12

    :cond_8
    move-object/from16 v18, v2

    goto :goto_7

    :cond_9
    move-object/from16 v18, v2

    move v10, v5

    move-object/from16 v20, v6

    move-object v9, v7

    move/from16 v17, v11

    move/from16 v23, v15

    goto :goto_6

    :goto_7
    const-string v2, "XTTE0950"

    const-string v3, "XQTY0086"

    if-eqz v11, :cond_c

    invoke-virtual {v4, v5}, Lnet/sf/saxon/tree/tiny/TinyTree;->getSchemaType(I)Lnet/sf/saxon/type/SchemaType;

    move-result-object v4

    if-eqz v15, :cond_b

    :try_start_0
    invoke-virtual {v0, v4, v5}, Lnet/sf/saxon/tree/tiny/TinyElementImpl;->checkNotNamespaceSensitiveElement(Lnet/sf/saxon/type/SchemaType;I)V
    :try_end_0
    .catch Lnet/sf/saxon/event/CopyNamespaceSensitiveException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/event/PipelineConfiguration;->isXSLT()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_8

    :cond_a
    move-object v2, v3

    :goto_8
    invoke-virtual {v1, v2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw v1

    :cond_b
    :goto_9
    move-object/from16 v18, v4

    :cond_c
    if-eqz v6, :cond_d

    iget-object v4, v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {v4, v5}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNode(I)Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/s9api/Location;

    if-eqz v4, :cond_d

    move-object v1, v4

    :cond_d
    iget-object v4, v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v13, v4, Lnet/sf/saxon/tree/tiny/TinyTree;->q:[I

    aget v13, v13, v5

    const v19, 0xfffff

    and-int v14, v13, v19

    invoke-virtual {v4, v5}, Lnet/sf/saxon/tree/tiny/TinyTree;->getPrefix(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v21, v2

    invoke-interface {v1}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result v2

    move-object/from16 v22, v3

    iget-object v3, v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {v3, v5}, Lnet/sf/saxon/tree/tiny/TinyTree;->getLineNumber(I)I

    move-result v3

    if-ge v2, v3, :cond_f

    invoke-interface {v1}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_e
    invoke-interface {v1}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v1

    :goto_a
    new-instance v2, Lnet/sf/saxon/expr/parser/Loc;

    iget-object v3, v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {v3, v5}, Lnet/sf/saxon/tree/tiny/TinyTree;->getLineNumber(I)I

    move-result v3

    move-object/from16 v23, v6

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getColumnNumber()I

    move-result v6

    invoke-direct {v2, v1, v3, v6}, Lnet/sf/saxon/expr/parser/Loc;-><init>(Ljava/lang/String;II)V

    move-object v3, v2

    goto :goto_b

    :cond_f
    move-object/from16 v23, v6

    move-object v3, v1

    :goto_b
    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v1

    iget-object v2, v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-boolean v6, v2, Lnet/sf/saxon/tree/tiny/TinyTree;->z0:Z

    if-eqz v6, :cond_13

    and-int/lit8 v6, v9, 0x2

    if-eqz v6, :cond_11

    const/16 v6, 0x11

    if-ne v10, v6, :cond_10

    invoke-static {v2, v5}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getParentNodeNr(Lnet/sf/saxon/tree/tiny/TinyTree;I)I

    move-result v1

    iget-object v2, v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v6, v2, Lnet/sf/saxon/tree/tiny/TinyTree;->v0:[Lnet/sf/saxon/om/NamespaceMap;

    iget-object v2, v2, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    aget v1, v2, v1

    aget-object v1, v6, v1

    goto :goto_c

    :cond_10
    iget-object v1, v2, Lnet/sf/saxon/tree/tiny/TinyTree;->v0:[Lnet/sf/saxon/om/NamespaceMap;

    iget-object v2, v2, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    aget v2, v2, v5

    aget-object v1, v1, v2

    goto :goto_c

    :cond_11
    invoke-virtual {v7, v13}, Lnet/sf/saxon/om/NamePool;->getURI(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_12

    invoke-static {v4, v2}, Lnet/sf/saxon/om/NamespaceMap;->of(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v1

    :cond_12
    move-object v6, v1

    const/4 v1, 0x1

    goto :goto_d

    :cond_13
    :goto_c
    move-object v6, v1

    const/4 v1, 0x0

    :goto_d
    const/16 v2, 0x11

    if-ne v10, v2, :cond_14

    new-instance v2, Lnet/sf/saxon/om/CodedName;

    invoke-direct {v2, v14, v4, v7}, Lnet/sf/saxon/om/CodedName;-><init>(ILjava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    invoke-static {}, Lnet/sf/saxon/om/EmptyAttributeMap;->getInstance()Lnet/sf/saxon/om/EmptyAttributeMap;

    move-result-object v4

    const/high16 v10, 0x20000

    move-object/from16 v1, p1

    move-object v13, v3

    move-object/from16 v3, v18

    move v14, v5

    move-object v5, v6

    move-object/from16 v20, v23

    move-object v6, v13

    move-object v9, v7

    move v7, v10

    invoke-interface/range {v1 .. v7}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    iget-object v1, v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-static {v1, v14}, Lnet/sf/saxon/tree/tiny/TinyTextImpl;->getStringValue(Lnet/sf/saxon/tree/tiny/TinyTree;I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    const/16 v2, 0x400

    invoke-interface {v8, v1, v13, v2}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/event/Receiver;->endElement()V

    move/from16 v17, v11

    move-object v1, v13

    move v10, v14

    goto/16 :goto_5

    :cond_14
    move-object v13, v3

    move v10, v5

    move-object v9, v7

    move-object/from16 v20, v23

    invoke-static {}, Lnet/sf/saxon/om/EmptyAttributeMap;->getInstance()Lnet/sf/saxon/om/EmptyAttributeMap;

    move-result-object v2

    iget-object v3, v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v3, v3, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    aget v3, v3, v10

    if-ltz v3, :cond_1b

    :goto_e
    iget-object v5, v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget v7, v5, Lnet/sf/saxon/tree/tiny/TinyTree;->O:I

    if-ge v3, v7, :cond_1b

    iget-object v7, v5, Lnet/sf/saxon/tree/tiny/TinyTree;->Q:[I

    aget v7, v7, v3

    if-ne v7, v10, :cond_1b

    iget-object v7, v5, Lnet/sf/saxon/tree/tiny/TinyTree;->Z:[I

    aget v7, v7, v3

    and-int v8, v7, v19

    if-eqz v11, :cond_17

    invoke-virtual {v5, v3}, Lnet/sf/saxon/tree/tiny/TinyTree;->n(I)Lnet/sf/saxon/type/SimpleType;

    move-result-object v5

    if-eqz v15, :cond_16

    :try_start_1
    invoke-virtual {v0, v5, v3}, Lnet/sf/saxon/tree/tiny/TinyElementImpl;->b(Lnet/sf/saxon/type/SimpleType;I)V
    :try_end_1
    .catch Lnet/sf/saxon/event/CopyNamespaceSensitiveException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_10

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/event/PipelineConfiguration;->isXSLT()Z

    move-result v0

    if-eqz v0, :cond_15

    move-object/from16 v2, v21

    goto :goto_f

    :cond_15
    move-object/from16 v2, v22

    :goto_f
    invoke-virtual {v1, v2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw v1

    :cond_16
    :goto_10
    move-object/from16 v16, v5

    :cond_17
    iget-object v5, v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v5, v5, Lnet/sf/saxon/tree/tiny/TinyTree;->A0:Lnet/sf/saxon/om/PrefixPool;

    move/from16 v17, v11

    shr-int/lit8 v11, v7, 0x14

    invoke-virtual {v5, v11}, Lnet/sf/saxon/om/PrefixPool;->getPrefix(I)Ljava/lang/String;

    move-result-object v5

    iget-object v11, v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {v11, v3}, Lnet/sf/saxon/tree/tiny/TinyTree;->isIdAttribute(I)Z

    move-result v11

    if-eqz v11, :cond_18

    const v11, 0x100800

    goto :goto_11

    :cond_18
    const/high16 v11, 0x100000

    :goto_11
    move/from16 v23, v15

    iget-object v15, v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {v15, v3}, Lnet/sf/saxon/tree/tiny/TinyTree;->isIdrefAttribute(I)Z

    move-result v15

    if-eqz v15, :cond_19

    or-int/lit16 v11, v11, 0x1000

    :cond_19
    move/from16 v29, v11

    new-instance v11, Lnet/sf/saxon/om/AttributeInfo;

    new-instance v15, Lnet/sf/saxon/om/CodedName;

    invoke-direct {v15, v8, v5, v9}, Lnet/sf/saxon/om/CodedName;-><init>(ILjava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    iget-object v8, v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v8, v8, Lnet/sf/saxon/tree/tiny/TinyTree;->k0:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v24, v11

    move-object/from16 v25, v15

    move-object/from16 v26, v16

    move-object/from16 v28, v13

    invoke-direct/range {v24 .. v29}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {v2, v11}, Lnet/sf/saxon/om/AttributeMap;->put(Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/AttributeMap;

    move-result-object v2

    if-eqz v1, :cond_1a

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1a

    invoke-virtual {v9, v7}, Lnet/sf/saxon/om/NamePool;->getURI(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v5

    move-object v6, v5

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v8, p1

    move/from16 v11, v17

    move/from16 v15, v23

    goto/16 :goto_e

    :cond_1b
    move/from16 v17, v11

    move/from16 v23, v15

    move-object v5, v2

    new-instance v2, Lnet/sf/saxon/om/CodedName;

    invoke-direct {v2, v14, v4, v9}, Lnet/sf/saxon/om/CodedName;-><init>(ILjava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    const/high16 v7, 0x20000

    move-object/from16 v1, p1

    move-object/from16 v3, v18

    move-object v4, v5

    move-object v5, v6

    move-object v6, v13

    invoke-interface/range {v1 .. v7}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    move-object v1, v13

    move-object/from16 v2, v18

    const/4 v3, 0x1

    :goto_12
    add-int/lit8 v5, v10, 0x1

    iget-object v4, v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget v6, v4, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    if-ge v5, v6, :cond_1d

    iget-object v4, v4, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    aget-short v4, v4, v5

    if-gt v4, v12, :cond_1c

    goto :goto_13

    :cond_1c
    move-object/from16 v8, p1

    move/from16 v4, p3

    move-object v7, v9

    move/from16 v11, v17

    move-object/from16 v6, v20

    move/from16 v15, v23

    const/4 v10, 0x4

    const/4 v13, 0x1

    move/from16 v9, p2

    goto/16 :goto_1

    :cond_1d
    :goto_13
    if-eqz v3, :cond_1e

    add-int/lit8 v14, p3, 0x1

    :goto_14
    int-to-short v14, v14

    goto :goto_15

    :cond_1e
    move/from16 v14, p3

    :goto_15
    if-le v14, v12, :cond_1f

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/event/Receiver;->endElement()V

    add-int/lit8 v14, v14, -0x1

    goto :goto_14

    :cond_1f
    return-void
.end method

.method public final e()I
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget v0, v0, v1

    :goto_0
    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    if-ge v0, v1, :cond_1

    if-gez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    sub-int/2addr p0, v1

    return p0

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v1, v1, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    aget v0, v1, v0

    goto :goto_0

    :cond_1
    sub-int/2addr v1, v0

    return v1
.end method

.method public getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v1, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->v0:[Lnet/sf/saxon/om/NamespaceMap;

    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget p0, v0, p0

    aget-object p0, v1, p0

    return-object p0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 5

    .line 8
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    .line 9
    :cond_0
    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget v3, v2, Lnet/sf/saxon/tree/tiny/TinyTree;->O:I

    if-ge v0, v3, :cond_2

    iget-object v3, v2, Lnet/sf/saxon/tree/tiny/TinyTree;->Q:[I

    aget v3, v3, v0

    iget v4, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    if-ne v3, v4, :cond_2

    .line 10
    iget-object v3, v2, Lnet/sf/saxon/tree/tiny/TinyTree;->Z:[I

    aget v3, v3, v0

    const v4, 0xfffff

    and-int/2addr v3, v4

    if-ne p1, v3, :cond_1

    .line 11
    iget-object p0, v2, Lnet/sf/saxon/tree/tiny/TinyTree;->k0:[Ljava/lang/String;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v2

    .line 3
    :goto_0
    iget-object v3, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget v4, v3, Lnet/sf/saxon/tree/tiny/TinyTree;->O:I

    if-ge v0, v4, :cond_2

    iget-object v4, v3, Lnet/sf/saxon/tree/tiny/TinyTree;->Q:[I

    aget v4, v4, v0

    iget v5, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    if-ne v4, v5, :cond_2

    .line 4
    iget-object v3, v3, Lnet/sf/saxon/tree/tiny/TinyTree;->Z:[I

    aget v3, v3, v0

    .line 5
    invoke-virtual {v2, v3}, Lnet/sf/saxon/om/NamePool;->getUnprefixedQName(I)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p1}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->k0:[Ljava/lang/String;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->o()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v2, v1, Lnet/sf/saxon/tree/tiny/TinyTree;->F0:Lnet/sf/saxon/z/IntHashMap;

    if-nez v2, :cond_1

    new-instance v2, Lnet/sf/saxon/z/IntHashMap;

    invoke-direct {v2}, Lnet/sf/saxon/z/IntHashMap;-><init>()V

    iput-object v2, v1, Lnet/sf/saxon/tree/tiny/TinyTree;->F0:Lnet/sf/saxon/z/IntHashMap;

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v1, v1, Lnet/sf/saxon/tree/tiny/TinyTree;->F0:Lnet/sf/saxon/z/IntHashMap;

    iget v2, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    invoke-virtual {v1, v2}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    new-instance v1, Lcom/sunia/HTREnginev2/sin;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/sin;-><init>(Lnet/sf/saxon/tree/tiny/TinyElementImpl;)V

    invoke-static {p0, v1}, Lnet/sf/saxon/tree/util/Navigator;->getBaseURI(Lnet/sf/saxon/om/NodeInfo;Ljava/util/function/Predicate;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v2, v2, Lnet/sf/saxon/tree/tiny/TinyTree;->F0:Lnet/sf/saxon/z/IntHashMap;

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    invoke-virtual {v2, p0, v1}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDeclaredNamespaces([Lnet/sf/saxon/om/NamespaceBinding;)[Lnet/sf/saxon/om/NamespaceBinding;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getParent()Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyElementImpl;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/om/NamespaceMap;->getDifferences(Lnet/sf/saxon/om/NamespaceMap;Z)[Lnet/sf/saxon/om/NamespaceBinding;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyElementImpl;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/NamespaceMap;->getNamespaceBindings()[Lnet/sf/saxon/om/NamespaceBinding;

    move-result-object p0

    return-object p0
.end method

.method public final getNodeKind()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getSchemaType()Lnet/sf/saxon/type/SchemaType;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getSchemaType(I)Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    return-object p0
.end method

.method public getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p0, ""

    return-object p0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v1, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget p0, v1, p0

    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->v0:[Lnet/sf/saxon/om/NamespaceMap;

    aget-object p0, v0, p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/om/NamespaceMap;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasUniformNamespaces()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isId()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->isIdElement(I)Z

    move-result p0

    return p0
.end method

.method public isIdref()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->tree:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->isIdrefElement(I)Z

    move-result p0

    return p0
.end method
