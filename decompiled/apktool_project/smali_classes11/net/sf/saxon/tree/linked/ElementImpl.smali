.class public Lnet/sf/saxon/tree/linked/ElementImpl;
.super Lnet/sf/saxon/tree/linked/ParentNodeImpl;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/NamespaceResolver;


# instance fields
.field public j:Lnet/sf/saxon/om/NodeName;

.field public k:Lnet/sf/saxon/type/SchemaType;

.field public l:Lnet/sf/saxon/om/AttributeMap;

.field public m:Lnet/sf/saxon/om/NamespaceMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;-><init>()V

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->k:Lnet/sf/saxon/type/SchemaType;

    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->m:Lnet/sf/saxon/om/NamespaceMap;

    invoke-static {}, Lnet/sf/saxon/om/EmptyAttributeMap;->getInstance()Lnet/sf/saxon/om/EmptyAttributeMap;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->l:Lnet/sf/saxon/om/AttributeMap;

    return-void
.end method

.method public static synthetic e(Lnet/sf/saxon/tree/linked/ElementImpl;Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/tree/linked/ElementImpl;->j(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    return p0
.end method

.method public static isIdRefNode(Lnet/sf/saxon/tree/linked/NodeImpl;)Z
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->isIdRefType()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->IDREF:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    sget-object v2, Lnet/sf/saxon/type/BuiltInListType;->IDREFS:Lnet/sf/saxon/type/BuiltInListType;
    :try_end_0
    .catch Lnet/sf/saxon/type/MissingComponentException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->atomize()Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/type/AtomicType;->isIdRefType()Z

    move-result v0
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lnet/sf/saxon/type/MissingComponentException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_1

    :cond_2
    :goto_0
    return v3

    :catch_0
    :cond_3
    return v1
.end method

.method private synthetic j(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getPhysicalRoot()Lnet/sf/saxon/tree/linked/DocumentImpl;

    move-result-object p0

    check-cast p1, Lnet/sf/saxon/tree/linked/ElementImpl;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/linked/DocumentImpl;->isTopWithinEntity(Lnet/sf/saxon/tree/linked/ElementImpl;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addAttribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;IZ)V
    .locals 8

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->k()Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;

    move-result-object v0

    new-instance v7, Lnet/sf/saxon/om/AttributeInfo;

    sget-object v5, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    invoke-virtual {v0, v7}, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;->add(Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/tree/linked/ElementImpl;->setAttributes(Lnet/sf/saxon/om/AttributeMap;)V

    const-string p2, ""

    invoke-interface {p1, p2}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getNamespaceBinding()Lnet/sf/saxon/om/NamespaceBinding;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1, p5}, Lnet/sf/saxon/tree/linked/ElementImpl;->addNamespace(Lnet/sf/saxon/om/NamespaceBinding;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Namespace binding of new name conflicts with existing namespace binding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const/16 p1, 0x800

    invoke-static {p4, p1}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getPhysicalRoot()Lnet/sf/saxon/tree/linked/DocumentImpl;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p3}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lnet/sf/saxon/tree/linked/DocumentImpl;->l(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public addNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->m:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/om/NamespaceMap;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->m:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->m:Lnet/sf/saxon/om/NamespaceMap;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    return-void

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "New namespace binding conflicts with existing namespace binding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addNamespace(Lnet/sf/saxon/om/NamespaceBinding;Z)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->m:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {p1}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/om/NamespaceMap;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "New namespace conflicts with existing namespace binding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->m:Lnet/sf/saxon/om/NamespaceMap;

    .line 6
    invoke-virtual {p1}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->m:Lnet/sf/saxon/om/NamespaceMap;

    if-eqz p2, :cond_2

    if-eq v1, v0, :cond_2

    .line 7
    sget-object p2, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {p0, p2}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    .line 8
    check-cast v1, Lnet/sf/saxon/tree/linked/ElementImpl;

    iget-object v2, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->m:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {v1, p1, v0, v2}, Lnet/sf/saxon/tree/linked/ElementImpl;->h(Lnet/sf/saxon/om/NamespaceBinding;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/om/NamespaceMap;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot add a namespace undeclaration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public attributes()Lnet/sf/saxon/om/AttributeMap;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->l:Lnet/sf/saxon/om/AttributeMap;

    return-object p0
.end method

.method public checkNotNamespaceSensitiveElement(Lnet/sf/saxon/type/SchemaType;)V
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

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->atomize()Lnet/sf/saxon/om/AtomicSequence;

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
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lnet/sf/saxon/om/CopyOptions;->includes(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v3

    :goto_0
    move-object v6, v3

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/event/PipelineConfiguration;->getCopyInformee()Ljava/util/function/Function;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lnet/sf/saxon/s9api/Location;

    if-eqz v4, :cond_1

    check-cast v3, Lnet/sf/saxon/s9api/Location;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p3

    :goto_1
    const/4 v4, 0x2

    invoke-static {v1, v4}, Lnet/sf/saxon/om/CopyOptions;->includes(II)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v4

    goto :goto_2

    :cond_2
    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v4

    :goto_2
    move-object v8, v4

    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_3

    and-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    const-string v5, "XTTE0950"

    const-string v7, "XQTY0086"

    if-eqz v2, :cond_5

    if-eqz v4, :cond_5

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v9

    invoke-virtual {v0, v9}, Lnet/sf/saxon/tree/linked/ElementImpl;->checkNotNamespaceSensitiveElement(Lnet/sf/saxon/type/SchemaType;)V
    :try_end_0
    .catch Lnet/sf/saxon/event/CopyNamespaceSensitiveException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/event/PipelineConfiguration;->isXSLT()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    move-object v5, v7

    :goto_4
    invoke-virtual {v0, v5}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v10

    invoke-interface {v10}, Lnet/sf/saxon/om/AttributeMap;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/sf/saxon/om/AttributeInfo;

    sget-object v12, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eqz v2, :cond_7

    invoke-virtual {v11}, Lnet/sf/saxon/om/AttributeInfo;->getType()Lnet/sf/saxon/type/SimpleType;

    move-result-object v12

    if-eqz v4, :cond_7

    :try_start_1
    invoke-virtual {v0, v12, v11}, Lnet/sf/saxon/tree/linked/ElementImpl;->f(Lnet/sf/saxon/type/SimpleType;Lnet/sf/saxon/om/AttributeInfo;)V
    :try_end_1
    .catch Lnet/sf/saxon/event/CopyNamespaceSensitiveException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/event/PipelineConfiguration;->isXSLT()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_7

    :cond_6
    move-object v5, v7

    :goto_7
    invoke-virtual {v1, v5}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_8
    move-object v13, v12

    new-instance v15, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v11}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v12

    invoke-virtual {v11}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11}, Lnet/sf/saxon/om/AttributeInfo;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v16

    const/16 v17, 0x0

    move-object v11, v15

    move-object v0, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v11 .. v16}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    goto :goto_6

    :cond_8
    invoke-static/range {p0 .. p0}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v5

    invoke-static {v9}, Lnet/sf/saxon/om/SequenceTool;->attributeMapFromList(Ljava/util/List;)Lnet/sf/saxon/om/AttributeMap;

    move-result-object v7

    const v10, 0x20040

    move-object/from16 v4, p1

    move-object v9, v3

    invoke-interface/range {v4 .. v10}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->getFirstChild()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    :goto_9
    if-eqz v0, :cond_9

    move-object/from16 v2, p1

    invoke-interface {v0, v2, v1, v3}, Lnet/sf/saxon/om/NodeInfo;->copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNextSibling()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    goto :goto_9

    :cond_9
    move-object/from16 v2, p1

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/event/Receiver;->endElement()V

    return-void
.end method

.method public delete()V
    .locals 6

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getPhysicalRoot()Lnet/sf/saxon/tree/linked/DocumentImpl;

    move-result-object v0

    invoke-super {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->delete()V

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    sget-object v2, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/tree/linked/NodeImpl;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/tree/linked/ElementImpl;

    iget-object v3, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->l:Lnet/sf/saxon/om/AttributeMap;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v4}, Lnet/sf/saxon/om/AttributeInfo;->isId()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lnet/sf/saxon/tree/linked/DocumentImpl;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v2}, Lnet/sf/saxon/tree/linked/DocumentImpl;->deIndex(Lnet/sf/saxon/tree/linked/NodeImpl;)V

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public final f(Lnet/sf/saxon/type/SimpleType;Lnet/sf/saxon/om/AttributeInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/type/HyperType;->isNamespaceSensitive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lnet/sf/saxon/type/SimpleType;->isAtomicType()Z

    move-result v0

    const-string v1, "Cannot copy QName or NOTATION values without copying namespaces"

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getXdmStringValue()Lnet/sf/saxon/value/StringValue;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/value/StringValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->m:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p0

    invoke-interface {p1, p2, v0, p0}, Lnet/sf/saxon/type/SimpleType;->getTypedValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/om/AtomicSequence;

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

    invoke-direct {p0, v1}, Lnet/sf/saxon/event/CopyNamespaceSensitiveException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/event/CopyNamespaceSensitiveException;

    invoke-direct {p0, v1}, Lnet/sf/saxon/event/CopyNamespaceSensitiveException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public fixupInsertedNamespaces(Z)V
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getRawParent()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getRawParent()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/tree/linked/ElementImpl;

    iget-object v0, v0, Lnet/sf/saxon/tree/linked/ElementImpl;->m:Lnet/sf/saxon/om/NamespaceMap;

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/linked/ElementImpl;->g(Lnet/sf/saxon/om/NamespaceMap;)V

    :cond_1
    return-void
.end method

.method public final g(Lnet/sf/saxon/om/NamespaceMap;)V
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->m:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {p1}, Lnet/sf/saxon/om/NamespaceMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {v2}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/sf/saxon/om/NamespaceMap;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/sf/saxon/om/NamespaceMap;->remove(Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->m:Lnet/sf/saxon/om/NamespaceMap;

    new-instance v0, Lcom/sunia/HTREnginev2/tqo;

    const-class v1, Lnet/sf/saxon/tree/linked/ElementImpl;

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/tqo;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Lnet/sf/saxon/pattern/NodeSelector;->of(Ljava/util/function/Predicate;)Lnet/sf/saxon/pattern/NodeSelector;

    move-result-object v0

    invoke-interface {p0, v0}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    check-cast v0, Lnet/sf/saxon/tree/linked/ElementImpl;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/tree/linked/ElementImpl;->g(Lnet/sf/saxon/om/NamespaceMap;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public generateId(Ljava/lang/StringBuilder;)V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->getRawSequenceNumber()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getPhysicalRoot()Lnet/sf/saxon/tree/linked/DocumentImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/linked/DocumentImpl;->generateId(Ljava/lang/StringBuilder;)V

    const-string p0, "e"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getRawParent()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->generateId(Ljava/lang/StringBuilder;)V

    const-string v0, "f"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getSiblingPosition()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->m:Lnet/sf/saxon/om/NamespaceMap;

    return-object p0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->l:Lnet/sf/saxon/om/AttributeMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/umf;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/umf;-><init>(Lnet/sf/saxon/tree/linked/ElementImpl;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/tree/util/Navigator;->getBaseURI(Lnet/sf/saxon/om/NodeInfo;Ljava/util/function/Predicate;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getColumnNumber()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getPhysicalRoot()Lnet/sf/saxon/tree/linked/DocumentImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->getRawSequenceNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->g(I)I

    move-result p0

    return p0
.end method

.method public getDeclaredNamespaces([Lnet/sf/saxon/om/NamespaceBinding;)[Lnet/sf/saxon/om/NamespaceBinding;
    .locals 1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->m:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {p0}, Lnet/sf/saxon/om/NamespaceMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/sf/saxon/om/NamespaceBinding;->EMPTY_ARRAY:[Lnet/sf/saxon/om/NamespaceBinding;

    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/sf/saxon/om/NamespaceBinding;

    return-object p0
.end method

.method public getLineNumber()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getPhysicalRoot()Lnet/sf/saxon/tree/linked/DocumentImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->getRawSequenceNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->h(I)I

    move-result p0

    return p0
.end method

.method public final getNodeKind()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getNodeName()Lnet/sf/saxon/om/NodeName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->j:Lnet/sf/saxon/om/NodeName;

    return-object p0
.end method

.method public getRoot()Lnet/sf/saxon/om/NodeInfo;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getRawParent()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lnet/sf/saxon/tree/linked/DocumentImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lnet/sf/saxon/tree/linked/DocumentImpl;

    invoke-virtual {v1}, Lnet/sf/saxon/tree/linked/DocumentImpl;->isImaginary()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public getSchemaType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->k:Lnet/sf/saxon/type/SchemaType;

    return-object p0
.end method

.method public final getSystemId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getPhysicalRoot()Lnet/sf/saxon/tree/linked/DocumentImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->getRawSequenceNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->i(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->m:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {p0}, Lnet/sf/saxon/om/NamespaceMap;->getDefaultNamespace()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->m:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/NamespaceMap;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lnet/sf/saxon/om/NamespaceBinding;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/om/NamespaceMap;)V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->m:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {p1}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/om/NamespaceMap;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->m:Lnet/sf/saxon/om/NamespaceMap;

    if-ne v1, p2, :cond_0

    iput-object p3, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->m:Lnet/sf/saxon/om/NamespaceMap;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->m:Lnet/sf/saxon/om/NamespaceMap;

    :goto_0
    sget-object p2, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {p0, p2}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/sf/saxon/om/NodeInfo;

    check-cast p3, Lnet/sf/saxon/tree/linked/ElementImpl;

    iget-object v1, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->m:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {p3, p1, v0, v1}, Lnet/sf/saxon/tree/linked/ElementImpl;->h(Lnet/sf/saxon/om/NamespaceBinding;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/om/NamespaceMap;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public i(Lnet/sf/saxon/pattern/NodeTest;)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->l:Lnet/sf/saxon/om/AttributeMap;

    instance-of v1, v0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;

    if-eqz v1, :cond_0

    new-instance v1, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;

    check-cast v0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;->iterateAttributes(Lnet/sf/saxon/tree/linked/ElementImpl;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/pattern/NodePredicate;)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/yg;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/yg;-><init>(Lnet/sf/saxon/tree/linked/ElementImpl;Lnet/sf/saxon/pattern/NodeTest;)V

    return-object v0
.end method

.method public initialise(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NodeInfo;I)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->j:Lnet/sf/saxon/om/NodeName;

    iput-object p2, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->k:Lnet/sf/saxon/type/SchemaType;

    check-cast p4, Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    invoke-virtual {p0, p4}, Lnet/sf/saxon/tree/linked/NodeImpl;->setRawParent(Lnet/sf/saxon/tree/linked/ParentNodeImpl;)V

    invoke-virtual {p0, p5}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->setRawSequenceNumber(I)V

    iput-object p3, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->l:Lnet/sf/saxon/om/AttributeMap;

    return-void
.end method

.method public isId()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result v2

    const/16 v3, 0x230

    if-eq v2, v3, :cond_0

    invoke-interface {v1}, Lnet/sf/saxon/type/SchemaType;->isIdType()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Lnet/sf/saxon/z/IntIterator;)Z

    move-result p0
    :try_end_0
    .catch Lnet/sf/saxon/type/MissingComponentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method public isIdref()Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->isIdRefNode(Lnet/sf/saxon/tree/linked/NodeImpl;)Z

    move-result p0

    return p0
.end method

.method public isInScopeNamespace(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->m:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {p0}, Lnet/sf/saxon/om/NamespaceMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {v0}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isNilled()Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getPhysicalRoot()Lnet/sf/saxon/tree/linked/DocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->k(Lnet/sf/saxon/tree/linked/ElementImpl;)Z

    move-result p0

    return p0
.end method

.method public iteratePrefixes()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->m:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {p0}, Lnet/sf/saxon/om/NamespaceMap;->iteratePrefixes()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final k()Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/AttributeMap;->asList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/linked/ElementImpl;->setAttributes(Lnet/sf/saxon/om/AttributeMap;)V

    return-object v0
.end method

.method public removeAttribute(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/tree/linked/AttributeImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lnet/sf/saxon/tree/linked/AttributeImpl;

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->getSiblingPosition()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/sf/saxon/om/AttributeMap;->itemAt(I)Lnet/sf/saxon/om/AttributeInfo;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->k()Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;->remove(I)Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/tree/linked/ElementImpl;->setAttributes(Lnet/sf/saxon/om/AttributeMap;)V

    if-ltz v0, :cond_1

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->isId()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getPhysicalRoot()Lnet/sf/saxon/tree/linked/DocumentImpl;

    move-result-object p0

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->e(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->setRawParent(Lnet/sf/saxon/tree/linked/ParentNodeImpl;)V

    return-void
.end method

.method public removeNamespace(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->l:Lnet/sf/saxon/om/AttributeMap;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot remove binding of namespace prefix used on an existing attribute name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->m:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/om/NamespaceMap;->remove(Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->m:Lnet/sf/saxon/om/NamespaceMap;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot remove binding of namespace prefix used on the element name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeTypeAnnotation()V
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lnet/sf/saxon/type/AnyType;->getInstance()Lnet/sf/saxon/type/AnyType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->k:Lnet/sf/saxon/type/SchemaType;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getRawParent()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->removeTypeAnnotation()V

    :cond_0
    return-void
.end method

.method public rename(Lnet/sf/saxon/om/NodeName;Z)V
    .locals 4

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-direct {v2, v0, v1}, Lnet/sf/saxon/om/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lnet/sf/saxon/tree/linked/ElementImpl;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2, p2}, Lnet/sf/saxon/tree/linked/ElementImpl;->addNamespace(Lnet/sf/saxon/om/NamespaceBinding;Z)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Namespace binding of new name conflicts with existing namespace binding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->j:Lnet/sf/saxon/om/NodeName;

    return-void
.end method

.method public replaceStringValue(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->setChildren(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/tree/linked/TextImpl;

    invoke-direct {v0, p1}, Lnet/sf/saxon/tree/linked/TextImpl;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->setRawParent(Lnet/sf/saxon/tree/linked/ParentNodeImpl;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->setChildren(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setAttributeInfo(ILnet/sf/saxon/om/AttributeInfo;)V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->k()Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;->set(ILnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/linked/ElementImpl;->setAttributes(Lnet/sf/saxon/om/AttributeMap;)V

    return-void
.end method

.method public setAttributes(Lnet/sf/saxon/om/AttributeMap;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->l:Lnet/sf/saxon/om/AttributeMap;

    return-void
.end method

.method public setLocation(Ljava/lang/String;II)V
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getRawParent()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getPhysicalRoot()Lnet/sf/saxon/tree/linked/DocumentImpl;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->getRawSequenceNumber()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lnet/sf/saxon/tree/linked/DocumentImpl;->m(III)V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->getRawSequenceNumber()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/tree/linked/DocumentImpl;->n(ILjava/lang/String;)V

    return-void
.end method

.method public setNamespaceMap(Lnet/sf/saxon/om/NamespaceMap;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->m:Lnet/sf/saxon/om/NamespaceMap;

    return-void
.end method

.method public setNilled()V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getPhysicalRoot()Lnet/sf/saxon/tree/linked/DocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->addNilledElement(Lnet/sf/saxon/tree/linked/ElementImpl;)V

    return-void
.end method

.method public setNodeName(Lnet/sf/saxon/om/NodeName;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->j:Lnet/sf/saxon/om/NodeName;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getPhysicalRoot()Lnet/sf/saxon/tree/linked/DocumentImpl;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->getRawSequenceNumber()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/tree/linked/DocumentImpl;->n(ILjava/lang/String;)V

    return-void
.end method

.method public setTypeAnnotation(Lnet/sf/saxon/type/SchemaType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/ElementImpl;->k:Lnet/sf/saxon/type/SchemaType;

    return-void
.end method
