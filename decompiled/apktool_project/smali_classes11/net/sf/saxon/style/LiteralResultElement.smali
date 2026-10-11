.class public Lnet/sf/saxon/style/LiteralResultElement;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# static fields
.field public static final k0:Lnet/sf/saxon/z/IntHashSet;


# instance fields
.field public J:[Lnet/sf/saxon/om/StructuredQName;

.field public O:Lnet/sf/saxon/type/SchemaType;

.field public Q:I

.field public Z:Z

.field public u:Lnet/sf/saxon/om/NodeName;

.field public v:[Lnet/sf/saxon/om/NodeName;

.field public w:[Lnet/sf/saxon/expr/Expression;

.field public x:I

.field public y:Z

.field public z:Lnet/sf/saxon/om/NamespaceMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lnet/sf/saxon/z/IntHashSet;->of([I)Lnet/sf/saxon/z/IntHashSet;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/style/LiteralResultElement;->k0:Lnet/sf/saxon/z/IntHashSet;

    return-void

    :array_0
    .array-data 4
        0xec
        0xe4
        0xe5
        0xe6
        0xe9
        0xe7
        0xe8
        0xef
        0xf0
        0xeb
        0xed
        0xee
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/LiteralResultElement;->z:Lnet/sf/saxon/om/NamespaceMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/LiteralResultElement;->O:Lnet/sf/saxon/type/SchemaType;

    const/4 v0, 0x4

    iput v0, p0, Lnet/sf/saxon/style/LiteralResultElement;->Q:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/style/LiteralResultElement;->Z:Z

    return-void
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/style/LiteralResultElement;->y:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lnet/sf/saxon/expr/instruct/FixedElement;

    iget-object v3, p0, Lnet/sf/saxon/style/LiteralResultElement;->u:Lnet/sf/saxon/om/NodeName;

    iget-object v4, p0, Lnet/sf/saxon/style/LiteralResultElement;->z:Lnet/sf/saxon/om/NamespaceMap;

    iget-boolean v5, p0, Lnet/sf/saxon/style/LiteralResultElement;->Z:Z

    const/4 v6, 0x1

    iget-object v7, p0, Lnet/sf/saxon/style/LiteralResultElement;->O:Lnet/sf/saxon/type/SchemaType;

    iget v8, p0, Lnet/sf/saxon/style/LiteralResultElement;->Q:I

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lnet/sf/saxon/expr/instruct/FixedElement;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NamespaceMap;ZZLnet/sf/saxon/type/SchemaType;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/instruct/FixedElement;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget p2, p0, Lnet/sf/saxon/style/LiteralResultElement;->x:I

    if-lez p2, :cond_2

    iget-object p2, p0, Lnet/sf/saxon/style/LiteralResultElement;->v:[Lnet/sf/saxon/om/NodeName;

    array-length p2, p2

    sub-int/2addr p2, v2

    :goto_0
    if-ltz p2, :cond_2

    new-instance v2, Lnet/sf/saxon/expr/instruct/FixedAttribute;

    iget-object v3, p0, Lnet/sf/saxon/style/LiteralResultElement;->v:[Lnet/sf/saxon/om/NodeName;

    aget-object v3, v3, p2

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4, v1}, Lnet/sf/saxon/expr/instruct/FixedAttribute;-><init>(Lnet/sf/saxon/om/NodeName;ILnet/sf/saxon/type/SimpleType;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    iget-object v3, p0, Lnet/sf/saxon/style/LiteralResultElement;->w:[Lnet/sf/saxon/expr/Expression;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->setSelect(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    if-nez p1, :cond_1

    move-object p1, v2

    goto :goto_1

    :cond_1
    invoke-static {v2, p1}, Lnet/sf/saxon/expr/instruct/Block;->makeBlock(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    :goto_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lnet/sf/saxon/style/LiteralResultElement;->J:[Lnet/sf/saxon/om/StructuredQName;

    if-eqz p2, :cond_4

    invoke-static {p2, p0}, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->makeUseAttributeSets([Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/style/StyleElement;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    if-nez p1, :cond_3

    move-object p1, p2

    goto :goto_2

    :cond_3
    invoke-static {p2, p1}, Lnet/sf/saxon/expr/instruct/Block;->makeBlock(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    :cond_4
    :goto_2
    if-nez p1, :cond_5

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p1

    :cond_5
    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setContentExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/instruct/FixedElement;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    return-object v0
.end method

.method public getObjectName()Lnet/sf/saxon/om/StructuredQName;
    .locals 3

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public makeStylesheet(Z)Lnet/sf/saxon/tree/linked/DocumentImpl;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "xsl"

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v2

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Lnet/sf/saxon/style/Compilation;->getStyleNodeFactory(Z)Lnet/sf/saxon/style/StyleNodeFactory;

    move-result-object v2

    const-string v3, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v1, v3}, Lnet/sf/saxon/tree/linked/ElementImpl;->isInScopeNamespace(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    const-string v6, "XTSE0150"

    if-nez v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    const-string v2, "stylesheet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    const-string v2, "transform"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "The supplied file does not appear to be a stylesheet"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "Namespace for stylesheet element should be http://www.w3.org/1999/XSL/Transform"

    :goto_1
    new-instance v2, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v2, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v2, v6}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    invoke-virtual {v1, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    throw v2

    :cond_2
    const-string v4, "version"

    invoke-virtual {v1, v3, v4}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/tree/linked/DocumentImpl;

    new-instance v6, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v7

    invoke-direct {v6, v7}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-virtual {v6, v2}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->setNodeFactory(Lnet/sf/saxon/tree/linked/NodeFactory;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lnet/sf/saxon/event/Builder;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {v6}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->open()V

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->startDocument(I)V

    sget-object v2, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v7

    invoke-virtual {v7, v0, v3}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v3

    invoke-static {}, Lnet/sf/saxon/om/EmptyAttributeMap;->getInstance()Lnet/sf/saxon/om/EmptyAttributeMap;

    move-result-object v13

    new-instance v14, Lnet/sf/saxon/om/AttributeInfo;

    new-instance v8, Lnet/sf/saxon/om/NoNamespaceName;

    invoke-direct {v8, v4}, Lnet/sf/saxon/om/NoNamespaceName;-><init>(Ljava/lang/String;)V

    sget-object v4, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/4 v12, 0x0

    move-object v7, v14

    move-object v9, v4

    move-object v11, v2

    invoke-direct/range {v7 .. v12}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {v13, v14}, Lnet/sf/saxon/om/AttributeMap;->put(Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/AttributeMap;

    move-result-object v14

    new-instance v12, Lnet/sf/saxon/om/CodedName;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v7

    const/16 v8, 0xd0

    invoke-direct {v12, v8, v0, v7}, Lnet/sf/saxon/om/CodedName;-><init>(ILjava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v13

    const/16 v17, 0x0

    move-object v11, v6

    move-object v15, v3

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v17}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    invoke-static {}, Lnet/sf/saxon/om/EmptyAttributeMap;->getInstance()Lnet/sf/saxon/om/EmptyAttributeMap;

    move-result-object v7

    new-instance v8, Lnet/sf/saxon/om/AttributeInfo;

    new-instance v12, Lnet/sf/saxon/om/NoNamespaceName;

    const-string v9, "match"

    invoke-direct {v12, v9}, Lnet/sf/saxon/om/NoNamespaceName;-><init>(Ljava/lang/String;)V

    const-string v14, "/"

    const/16 v16, 0x0

    move-object v11, v8

    move-object v13, v4

    move-object v15, v2

    invoke-direct/range {v11 .. v16}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {v7, v8}, Lnet/sf/saxon/om/AttributeMap;->put(Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/AttributeMap;

    move-result-object v14

    new-instance v12, Lnet/sf/saxon/om/CodedName;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v4

    const/16 v7, 0xd2

    invoke-direct {v12, v7, v0, v4}, Lnet/sf/saxon/om/CodedName;-><init>(ILjava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v13

    const/16 v17, 0x0

    move-object v11, v6

    move-object v15, v3

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v17}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    invoke-virtual {v6, v1}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->graftElement(Lnet/sf/saxon/tree/linked/ElementImpl;)V

    invoke-virtual {v6}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->endElement()V

    invoke-virtual {v6}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->endElement()V

    invoke-virtual {v6}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->endDocument()V

    invoke-virtual {v6}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->close()V

    invoke-virtual {v6}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/tree/linked/DocumentImpl;

    invoke-virtual {v0, v5}, Lnet/sf/saxon/tree/linked/DocumentImpl;->graftLocationMap(Lnet/sf/saxon/tree/linked/DocumentImpl;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw v0

    :cond_3
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v2, "Simplified stylesheet: xsl:version attribute is missing"

    invoke-direct {v0, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    throw v0
.end method

.method public mayContainSequenceConstructor()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public prepareAttributes()V
    .locals 6

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/AttributeMap;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iput v2, p0, Lnet/sf/saxon/style/LiteralResultElement;->x:I

    goto/16 :goto_1

    :cond_0
    new-array v3, v1, [Lnet/sf/saxon/om/NodeName;

    iput-object v3, p0, Lnet/sf/saxon/style/LiteralResultElement;->v:[Lnet/sf/saxon/om/NodeName;

    new-array v1, v1, [Lnet/sf/saxon/expr/Expression;

    iput-object v1, p0, Lnet/sf/saxon/style/LiteralResultElement;->w:[Lnet/sf/saxon/expr/Expression;

    iput v2, p0, Lnet/sf/saxon/style/LiteralResultElement;->x:I

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getFingerprint()I

    move-result v3

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lnet/sf/saxon/style/LiteralResultElement;->k0:Lnet/sf/saxon/z/IntHashSet;

    invoke-virtual {v4, v3}, Lnet/sf/saxon/z/IntHashSet;->contains(I)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0xea

    if-ne v3, v4, :cond_2

    const-string v2, "xsl:inherit-namespaces"

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lnet/sf/saxon/style/LiteralResultElement;->Z:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->x()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown XSLT attribute "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XTSE0805"

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lnet/sf/saxon/style/LiteralResultElement;->v:[Lnet/sf/saxon/om/NodeName;

    iget v4, p0, Lnet/sf/saxon/style/LiteralResultElement;->x:I

    aput-object v2, v3, v4

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/style/LiteralResultElement;->w:[Lnet/sf/saxon/expr/Expression;

    iget v3, p0, Lnet/sf/saxon/style/LiteralResultElement;->x:I

    aput-object v1, v2, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lnet/sf/saxon/style/LiteralResultElement;->x:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lnet/sf/saxon/style/LiteralResultElement;->x:I

    iget-object v1, p0, Lnet/sf/saxon/style/LiteralResultElement;->v:[Lnet/sf/saxon/om/NodeName;

    array-length v2, v1

    if-ge v0, v2, :cond_5

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/om/NodeName;

    iput-object v0, p0, Lnet/sf/saxon/style/LiteralResultElement;->v:[Lnet/sf/saxon/om/NodeName;

    iget-object v0, p0, Lnet/sf/saxon/style/LiteralResultElement;->w:[Lnet/sf/saxon/expr/Expression;

    iget v1, p0, Lnet/sf/saxon/style/LiteralResultElement;->x:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/LiteralResultElement;->w:[Lnet/sf/saxon/expr/Expression;

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/LiteralResultElement;->u:Lnet/sf/saxon/om/NodeName;

    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p1

    instance-of p1, p1, Lnet/sf/saxon/style/XSLStylesheet;

    iput-boolean p1, p0, Lnet/sf/saxon/style/LiteralResultElement;->y:Z

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/LiteralResultElement;->u:Lnet/sf/saxon/om/NodeName;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getURI()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lnet/sf/saxon/style/LiteralResultElement;->y:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "Top level elements must have a non-null namespace URI"

    const-string v0, "XTSE0130"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/LiteralResultElement;->z:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->hasNamespaceAliases()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/sf/saxon/style/LiteralResultElement;->z:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {v1}, Lnet/sf/saxon/om/NamespaceMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {v3}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getNamespaceAlias(Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceBinding;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/sf/saxon/om/NamespaceMap;->remove(Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v1

    invoke-virtual {v5}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v5}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v1

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lnet/sf/saxon/style/LiteralResultElement;->z:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getNamespaceAlias(Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceBinding;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {v1}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v1, v3}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lnet/sf/saxon/style/LiteralResultElement;->u:Lnet/sf/saxon/om/NodeName;

    :cond_3
    const-string p1, "use-attribute-sets"

    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->D(Ljava/lang/String;)[Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/LiteralResultElement;->J:[Lnet/sf/saxon/om/StructuredQName;

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->z()I

    move-result p1

    iput p1, p0, Lnet/sf/saxon/style/LiteralResultElement;->Q:I

    const-string p1, "type"

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->isSchemaAware()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "The xsl:type attribute is available only with a schema-aware XSLT processor"

    const-string v3, "XTSE1660"

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->getSchemaType(Ljava/lang/String;)Lnet/sf/saxon/type/SchemaType;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/LiteralResultElement;->O:Lnet/sf/saxon/type/SchemaType;

    const/16 p1, 0x8

    iput p1, p0, Lnet/sf/saxon/style/LiteralResultElement;->Q:I

    :cond_6
    const-string p1, "validation"

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->validateValidationAttribute(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lnet/sf/saxon/style/LiteralResultElement;->Q:I

    iget-object p1, p0, Lnet/sf/saxon/style/LiteralResultElement;->O:Lnet/sf/saxon/type/SchemaType;

    if-eqz p1, :cond_7

    const-string p1, "The attributes xsl:type and xsl:validation are mutually exclusive"

    const-string v1, "XTSE1505"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget p1, p0, Lnet/sf/saxon/style/LiteralResultElement;->x:I

    if-lez p1, :cond_b

    const/4 p1, 0x0

    move v1, p1

    move v2, v1

    :goto_1
    iget v3, p0, Lnet/sf/saxon/style/LiteralResultElement;->x:I

    const/4 v4, 0x1

    if-ge v1, v3, :cond_9

    iget-object v3, p0, Lnet/sf/saxon/style/LiteralResultElement;->v:[Lnet/sf/saxon/om/NodeName;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v0, v5}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getNamespaceAlias(Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceBinding;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    new-instance v2, Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {v6}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v6, v3}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    move v2, v4

    :cond_8
    iget-object v4, p0, Lnet/sf/saxon/style/LiteralResultElement;->v:[Lnet/sf/saxon/om/NodeName;

    aput-object v3, v4, v1

    iget-object v4, p0, Lnet/sf/saxon/style/LiteralResultElement;->w:[Lnet/sf/saxon/expr/Expression;

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lnet/sf/saxon/style/LiteralResultElement;->w:[Lnet/sf/saxon/expr/Expression;

    aget-object v5, v5, v1

    invoke-virtual {p0, v3, v5}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    aput-object v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    if-eqz v2, :cond_b

    if-le v3, v4, :cond_b

    new-instance v1, Lnet/sf/saxon/z/IntHashSet;

    invoke-direct {v1, v3}, Lnet/sf/saxon/z/IntHashSet;-><init>(I)V

    :goto_2
    iget v2, p0, Lnet/sf/saxon/style/LiteralResultElement;->x:I

    if-ge p1, v2, :cond_b

    iget-object v2, p0, Lnet/sf/saxon/style/LiteralResultElement;->v:[Lnet/sf/saxon/om/NodeName;

    aget-object v2, v2, p1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/sf/saxon/om/NodeName;->obtainFingerprint(Lnet/sf/saxon/om/NamePool;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "As a result of namespace aliasing, two attributes have the same expanded name"

    const-string v3, "XTSE0813"

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_b
    iget-object p1, p0, Lnet/sf/saxon/style/LiteralResultElement;->z:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {p1}, Lnet/sf/saxon/om/NamespaceMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {v2}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/style/StyleElement;->H(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v0, v3}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->isAliasResultNamespace(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v2}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/sf/saxon/om/NamespaceMap;->remove(Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    goto :goto_3

    :cond_d
    iput-object p1, p0, Lnet/sf/saxon/style/LiteralResultElement;->z:Lnet/sf/saxon/om/NamespaceMap;

    :cond_e
    :goto_4
    return-void
.end method

.method public validateChildren(Lnet/sf/saxon/style/ComponentDeclaration;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/style/LiteralResultElement;->y:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/style/StyleElement;->validateChildren(Lnet/sf/saxon/style/ComponentDeclaration;Z)V

    :cond_0
    return-void
.end method
