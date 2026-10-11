.class public final Lnet/sf/saxon/style/XSLAttribute;
.super Lnet/sf/saxon/style/XSLLeafNodeConstructor;
.source "SourceFile"


# instance fields
.field public u:Lnet/sf/saxon/expr/Expression;

.field public v:Lnet/sf/saxon/expr/Expression;

.field public w:Lnet/sf/saxon/expr/Expression;

.field public x:I

.field public y:Lnet/sf/saxon/type/SimpleType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLLeafNodeConstructor;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLAttribute;->w:Lnet/sf/saxon/expr/Expression;

    const/4 v0, 0x3

    iput v0, p0, Lnet/sf/saxon/style/XSLAttribute;->x:I

    return-void
.end method


# virtual methods
.method public final Z(Ljava/lang/String;)V
    .locals 2

    const-string v0, "XTDE0850"

    const-string v1, "name"

    invoke-virtual {p0, p1, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lnet/sf/saxon/expr/StringLiteral;

    const-string v0, "saxon-error-attribute"

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lnet/sf/saxon/style/XSLAttribute;->u:Lnet/sf/saxon/expr/Expression;

    return-void
.end method

.method public bridge synthetic compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/style/XSLAttribute;->compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/instruct/Instruction;

    move-result-object p0

    return-object p0
.end method

.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/instruct/Instruction;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/style/XSLAttribute;->u:Lnet/sf/saxon/expr/Expression;

    instance-of v1, v0, Lnet/sf/saxon/expr/StringLiteral;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    .line 3
    check-cast v0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-static {v0}, Lnet/sf/saxon/om/NameChecker;->getQNameParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    iget-object v1, p0, Lnet/sf/saxon/style/XSLAttribute;->w:Lnet/sf/saxon/expr/Expression;

    const-string v4, ""

    const/4 v5, 0x0

    if-nez v1, :cond_1

    .line 6
    aget-object v1, v0, v5

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    aget-object v1, v0, v5

    invoke-virtual {p0, v1, v5}, Lnet/sf/saxon/tree/linked/ElementImpl;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 8
    aget-object p1, v0, v5

    const-string p2, "XTDE0860"

    const-string v0, "name"

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/saxon/style/StyleElement;->X(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 9
    :cond_0
    new-instance v1, Lnet/sf/saxon/om/FingerprintedQName;

    aget-object v3, v0, v5

    aget-object v0, v0, v2

    invoke-direct {v1, v3, v4, v0}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v0

    invoke-interface {v1, v0}, Lnet/sf/saxon/om/NodeName;->obtainFingerprint(Lnet/sf/saxon/om/NamePool;)I

    .line 11
    new-instance v0, Lnet/sf/saxon/expr/instruct/FixedAttribute;

    iget v3, p0, Lnet/sf/saxon/style/XSLAttribute;->x:I

    iget-object v4, p0, Lnet/sf/saxon/style/XSLAttribute;->y:Lnet/sf/saxon/type/SimpleType;

    invoke-direct {v0, v1, v3, v4}, Lnet/sf/saxon/expr/instruct/FixedAttribute;-><init>(Lnet/sf/saxon/om/NodeName;ILnet/sf/saxon/type/SimpleType;)V

    .line 12
    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->setInstruction(Z)V

    .line 13
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 14
    iget-object v1, p0, Lnet/sf/saxon/style/XSLAttribute;->v:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, p2, v0, v1}, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->compileContent(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;Lnet/sf/saxon/expr/Expression;)V

    return-object v0

    .line 15
    :cond_1
    instance-of v6, v1, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v6, :cond_8

    .line 16
    check-cast v1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 18
    aput-object v4, v0, v5

    goto :goto_0

    .line 19
    :cond_2
    aget-object v3, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 20
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/om/NamespaceMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/om/NamespaceBinding;

    .line 21
    invoke-virtual {v6}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 22
    invoke-virtual {v6}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    .line 23
    :cond_4
    aget-object v3, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 24
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v3

    iget-object v6, p0, Lnet/sf/saxon/style/XSLAttribute;->w:Lnet/sf/saxon/expr/Expression;

    check-cast v6, Lnet/sf/saxon/expr/StringLiteral;

    .line 25
    invoke-virtual {v6}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object v6

    .line 26
    invoke-virtual {v3, v6}, Lnet/sf/saxon/om/NamePool;->suggestPrefixForURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 27
    aput-object v3, v0, v5

    .line 28
    :cond_5
    aget-object v3, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "ns0"

    .line 29
    aput-object v3, v0, v5

    .line 30
    :cond_6
    :goto_0
    new-instance v3, Lnet/sf/saxon/om/FingerprintedQName;

    aget-object v4, v0, v5

    aget-object v0, v0, v2

    invoke-direct {v3, v4, v1, v0}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v0

    invoke-interface {v3, v0}, Lnet/sf/saxon/om/NodeName;->obtainFingerprint(Lnet/sf/saxon/om/NamePool;)I

    .line 32
    new-instance v0, Lnet/sf/saxon/expr/instruct/FixedAttribute;

    iget v1, p0, Lnet/sf/saxon/style/XSLAttribute;->x:I

    iget-object v4, p0, Lnet/sf/saxon/style/XSLAttribute;->y:Lnet/sf/saxon/type/SimpleType;

    invoke-direct {v0, v3, v1, v4}, Lnet/sf/saxon/expr/instruct/FixedAttribute;-><init>(Lnet/sf/saxon/om/NodeName;ILnet/sf/saxon/type/SimpleType;)V

    .line 33
    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->setInstruction(Z)V

    .line 34
    iget-object v1, p0, Lnet/sf/saxon/style/XSLAttribute;->v:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, p2, v0, v1}, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->compileContent(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;Lnet/sf/saxon/expr/Expression;)V

    return-object v0

    :catch_0
    return-object v3

    .line 35
    :cond_7
    iget-object v0, p0, Lnet/sf/saxon/style/XSLAttribute;->w:Lnet/sf/saxon/expr/Expression;

    if-nez v0, :cond_8

    .line 36
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v3

    :cond_8
    move-object v7, v3

    .line 37
    new-instance v0, Lnet/sf/saxon/expr/instruct/ComputedAttribute;

    iget-object v5, p0, Lnet/sf/saxon/style/XSLAttribute;->u:Lnet/sf/saxon/expr/Expression;

    iget-object v6, p0, Lnet/sf/saxon/style/XSLAttribute;->w:Lnet/sf/saxon/expr/Expression;

    iget v8, p0, Lnet/sf/saxon/style/XSLAttribute;->x:I

    iget-object v9, p0, Lnet/sf/saxon/style/XSLAttribute;->y:Lnet/sf/saxon/type/SimpleType;

    const/4 v10, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lnet/sf/saxon/expr/instruct/ComputedAttribute;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/NamespaceResolver;ILnet/sf/saxon/type/SimpleType;Z)V

    .line 38
    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->setInstruction(Z)V

    .line 39
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 40
    iget-object v1, p0, Lnet/sf/saxon/style/XSLAttribute;->v:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, p2, v0, v1}, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->compileContent(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public getErrorCodeForSelectPlusContent()Ljava/lang/String;
    .locals 0

    const-string p0, "XTSE0840"

    return-object p0
.end method

.method public prepareAttributes()V
    .locals 15

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "name"

    if-eqz v8, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v8}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v10

    invoke-virtual {v8}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/4 v14, -0x1

    sparse-switch v13, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v9, "separator"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_1

    :cond_0
    const/4 v14, 0x5

    goto :goto_1

    :sswitch_1
    const-string v9, "namespace"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    const/4 v14, 0x4

    goto :goto_1

    :sswitch_2
    const-string v9, "type"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v14, 0x3

    goto :goto_1

    :sswitch_3
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    const/4 v14, 0x2

    goto :goto_1

    :sswitch_4
    const-string v9, "validation"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_1

    :cond_4
    const/4 v14, 0x1

    goto :goto_1

    :sswitch_5
    const-string v9, "select"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_1

    :cond_5
    const/4 v14, 0x0

    :goto_1
    packed-switch v14, :pswitch_data_0

    invoke-virtual {p0, v10}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v11, v8}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    iput-object v5, p0, Lnet/sf/saxon/style/XSLAttribute;->v:Lnet/sf/saxon/expr/Expression;

    move-object v5, v11

    goto :goto_0

    :pswitch_1
    invoke-static {v11}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v8}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    iput-object v8, p0, Lnet/sf/saxon/style/XSLAttribute;->w:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :pswitch_2
    invoke-static {v11}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :pswitch_3
    invoke-static {v11}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v8}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    iput-object v8, p0, Lnet/sf/saxon/style/XSLAttribute;->u:Lnet/sf/saxon/expr/Expression;

    goto/16 :goto_0

    :pswitch_4
    invoke-static {v11}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0, v11, v8}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    iput-object v4, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    move-object v4, v11

    goto/16 :goto_0

    :cond_6
    if-nez v2, :cond_7

    invoke-virtual {p0, v9}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object v0, p0, Lnet/sf/saxon/style/XSLAttribute;->u:Lnet/sf/saxon/expr/Expression;

    instance-of v8, v0, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v8, :cond_b

    check-cast v0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/StringLiteral;->getGroundedValue()Lnet/sf/saxon/value/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/StringValue;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/om/NameChecker;->isQName(Lnet/sf/saxon/z/IntIterator;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attribute name "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is not a valid QName"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/XSLAttribute;->Z(Ljava/lang/String;)V

    :cond_8
    const-string v0, "xmlns"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lnet/sf/saxon/style/XSLAttribute;->w:Lnet/sf/saxon/expr/Expression;

    if-nez v0, :cond_9

    const-string v0, "Invalid attribute name: xmlns"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/XSLAttribute;->Z(Ljava/lang/String;)V

    :cond_9
    const-string v0, "xmlns:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez v3, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid attribute name: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/XSLAttribute;->Z(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lnet/sf/saxon/expr/StringLiteral;

    invoke-direct {v2, v0}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lnet/sf/saxon/style/XSLAttribute;->u:Lnet/sf/saxon/expr/Expression;

    :cond_b
    :goto_2
    if-eqz v3, :cond_c

    iget-object v0, p0, Lnet/sf/saxon/style/XSLAttribute;->w:Lnet/sf/saxon/expr/Expression;

    instance-of v0, v0, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v0, :cond_c

    invoke-static {}, Lnet/sf/saxon/lib/StandardURIChecker;->getInstance()Lnet/sf/saxon/lib/StandardURIChecker;

    move-result-object v0

    iget-object v2, p0, Lnet/sf/saxon/style/XSLAttribute;->w:Lnet/sf/saxon/expr/Expression;

    check-cast v2, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/lib/StandardURIChecker;->isValidURI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "The value of the namespace attribute must be a valid URI"

    const-string v2, "XTDE0865"

    invoke-virtual {p0, v0, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-nez v5, :cond_e

    if-nez v4, :cond_d

    new-instance v0, Lnet/sf/saxon/expr/StringLiteral;

    sget-object v2, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    invoke-direct {v0, v2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    iput-object v0, p0, Lnet/sf/saxon/style/XSLAttribute;->v:Lnet/sf/saxon/expr/Expression;

    goto :goto_3

    :cond_d
    new-instance v0, Lnet/sf/saxon/expr/StringLiteral;

    sget-object v2, Lnet/sf/saxon/value/StringValue;->SINGLE_SPACE:Lnet/sf/saxon/value/StringValue;

    invoke-direct {v0, v2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    iput-object v0, p0, Lnet/sf/saxon/style/XSLAttribute;->v:Lnet/sf/saxon/expr/Expression;

    :cond_e
    :goto_3
    if-eqz v6, :cond_f

    invoke-virtual {p0, v6}, Lnet/sf/saxon/style/StyleElement;->validateValidationAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/style/XSLAttribute;->x:I

    goto :goto_4

    :cond_f
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->z()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/style/XSLAttribute;->x:I

    :goto_4
    if-eqz v7, :cond_13

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->isSchemaAware()Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "The @type attribute is available only with a schema-aware XSLT processor"

    const-string v2, "XTSE1660"

    invoke-virtual {p0, v0, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    invoke-virtual {p0, v7}, Lnet/sf/saxon/style/StyleElement;->getSchemaType(Ljava/lang/String;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown attribute type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XTSE1520"

    invoke-virtual {p0, v0, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->isSimpleType()Z

    move-result v2

    if-eqz v2, :cond_12

    check-cast v0, Lnet/sf/saxon/type/SimpleType;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLAttribute;->y:Lnet/sf/saxon/type/SimpleType;

    goto :goto_5

    :cond_12
    const-string v0, "Type annotation for attributes must be a simple type"

    const-string v2, "XTSE1530"

    invoke-virtual {p0, v0, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const/16 v0, 0x8

    iput v0, p0, Lnet/sf/saxon/style/XSLAttribute;->x:I

    :cond_13
    :goto_6
    if-eqz v7, :cond_14

    if-eqz v6, :cond_14

    const-string v0, "The validation and type attributes are mutually exclusive"

    const-string v2, "XTSE1505"

    invoke-virtual {p0, v0, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->z()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/style/XSLAttribute;->x:I

    iput-object v1, p0, Lnet/sf/saxon/style/XSLAttribute;->y:Lnet/sf/saxon/type/SimpleType;

    :cond_14
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3600cb04 -> :sswitch_5
        -0x298b787 -> :sswitch_4
        0x337a8b -> :sswitch_3
        0x368f3a -> :sswitch_2
        0x4aa3555b -> :sswitch_1
        0x6748e2e5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/XSLAttribute;->y:Lnet/sf/saxon/type/SimpleType;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/type/HyperType;->isNamespaceSensitive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "XTTE1545"

    const-string v1, "type"

    const-string v2, "Validation at attribute level must not specify a namespace-sensitive type (xs:QName or xs:NOTATION)"

    invoke-virtual {p0, v2, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "name"

    iget-object v1, p0, Lnet/sf/saxon/style/XSLAttribute;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLAttribute;->u:Lnet/sf/saxon/expr/Expression;

    const-string v0, "namespace"

    iget-object v1, p0, Lnet/sf/saxon/style/XSLAttribute;->w:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLAttribute;->w:Lnet/sf/saxon/expr/Expression;

    const-string v0, "select"

    iget-object v1, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    const-string v0, "separator"

    iget-object v1, p0, Lnet/sf/saxon/style/XSLAttribute;->v:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLAttribute;->v:Lnet/sf/saxon/expr/Expression;

    invoke-super {p0, p1}, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->validate(Lnet/sf/saxon/style/ComponentDeclaration;)V

    return-void
.end method
