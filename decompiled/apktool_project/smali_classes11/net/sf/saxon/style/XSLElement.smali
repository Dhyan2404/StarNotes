.class public Lnet/sf/saxon/style/XSLElement;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public J:Z

.field public u:Lnet/sf/saxon/expr/Expression;

.field public v:Lnet/sf/saxon/expr/Expression;

.field public w:Ljava/lang/String;

.field public x:[Lnet/sf/saxon/om/StructuredQName;

.field public y:I

.field public z:Lnet/sf/saxon/type/SchemaType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLElement;->v:Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLElement;->x:[Lnet/sf/saxon/om/StructuredQName;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLElement;->z:Lnet/sf/saxon/type/SchemaType;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLElement;->J:Z

    return-void
.end method


# virtual methods
.method public final Z(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/expr/instruct/ElementCreator;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/style/XSLElement;->x:[Lnet/sf/saxon/om/StructuredQName;

    if-eqz p2, :cond_1

    invoke-static {p2, p0}, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->makeUseAttributeSets([Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/style/StyleElement;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    if-nez p1, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    invoke-static {p2, p1}, Lnet/sf/saxon/expr/instruct/Block;->makeBlock(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p1

    :cond_2
    invoke-virtual {p3, p1}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setContentExpression(Lnet/sf/saxon/expr/Expression;)V

    return-object p3
.end method

.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "name"

    iget-object v4, v0, Lnet/sf/saxon/style/XSLElement;->u:Lnet/sf/saxon/expr/Expression;

    instance-of v5, v4, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v5, :cond_2

    check-cast v4, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v4}, Lnet/sf/saxon/om/NameChecker;->getQNameParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v6, v0, Lnet/sf/saxon/style/XSLElement;->v:Lnet/sf/saxon/expr/Expression;

    instance-of v7, v6, Lnet/sf/saxon/expr/StringLiteral;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    check-cast v6, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v6}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    aput-object v3, v4, v9

    goto :goto_0

    :cond_0
    if-nez v6, :cond_1

    aget-object v5, v4, v9

    invoke-virtual {v0, v5, v8}, Lnet/sf/saxon/tree/linked/ElementImpl;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    aget-object v6, v4, v9

    const-string v7, "XTDE0830"

    invoke-virtual {v0, v6, v7, v3}, Lnet/sf/saxon/style/StyleElement;->X(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    new-instance v11, Lnet/sf/saxon/om/FingerprintedQName;

    aget-object v3, v4, v9

    aget-object v4, v4, v8

    invoke-direct {v11, v3, v5, v4}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v3

    invoke-virtual {v11, v3}, Lnet/sf/saxon/om/FingerprintedQName;->obtainFingerprint(Lnet/sf/saxon/om/NamePool;)I

    new-instance v3, Lnet/sf/saxon/expr/instruct/FixedElement;

    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v12

    iget-boolean v13, v0, Lnet/sf/saxon/style/XSLElement;->J:Z

    const/4 v14, 0x1

    iget-object v15, v0, Lnet/sf/saxon/style/XSLElement;->z:Lnet/sf/saxon/type/SchemaType;

    iget v4, v0, Lnet/sf/saxon/style/XSLElement;->y:I

    move-object v10, v3

    move/from16 v16, v4

    invoke-direct/range {v10 .. v16}, Lnet/sf/saxon/expr/instruct/FixedElement;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NamespaceMap;ZZLnet/sf/saxon/type/SchemaType;I)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/instruct/FixedElement;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v0, v1, v2, v3}, Lnet/sf/saxon/style/XSLElement;->Z(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/expr/instruct/ElementCreator;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid element name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XTDE0820"

    invoke-virtual {v0, v1, v2, v3}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_2
    new-instance v3, Lnet/sf/saxon/expr/instruct/ComputedElement;

    iget-object v7, v0, Lnet/sf/saxon/style/XSLElement;->u:Lnet/sf/saxon/expr/Expression;

    iget-object v8, v0, Lnet/sf/saxon/style/XSLElement;->v:Lnet/sf/saxon/expr/Expression;

    iget-object v9, v0, Lnet/sf/saxon/style/XSLElement;->z:Lnet/sf/saxon/type/SchemaType;

    iget v10, v0, Lnet/sf/saxon/style/XSLElement;->y:I

    iget-boolean v11, v0, Lnet/sf/saxon/style/XSLElement;->J:Z

    const/4 v12, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Lnet/sf/saxon/expr/instruct/ComputedElement;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/SchemaType;IZZ)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v0, v1, v2, v3}, Lnet/sf/saxon/style/XSLElement;->Z(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/expr/instruct/ElementCreator;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public mayContainSequenceConstructor()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public prepareAttributes()V
    .locals 14

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "inherit-namespaces"

    const-string v8, "name"

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v6}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v9

    invoke-virtual {v6}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/4 v13, -0x1

    sparse-switch v12, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v13, 0x5

    goto :goto_1

    :sswitch_1
    const-string v7, "use-attribute-sets"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v13, 0x4

    goto :goto_1

    :sswitch_2
    const-string v7, "namespace"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v13, 0x3

    goto :goto_1

    :sswitch_3
    const-string v7, "type"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    const/4 v13, 0x2

    goto :goto_1

    :sswitch_4
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    const/4 v13, 0x1

    goto :goto_1

    :sswitch_5
    const-string v7, "validation"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    const/4 v13, 0x0

    :goto_1
    packed-switch v13, :pswitch_data_0

    invoke-virtual {p0, v9}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :pswitch_0
    invoke-static {v10}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :pswitch_1
    iput-object v10, p0, Lnet/sf/saxon/style/XSLElement;->w:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v10, v6}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/style/XSLElement;->v:Lnet/sf/saxon/expr/Expression;

    move-object v2, v10

    goto :goto_0

    :pswitch_3
    invoke-static {v10}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :pswitch_4
    invoke-static {v10}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v6}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    iput-object v6, p0, Lnet/sf/saxon/style/XSLElement;->u:Lnet/sf/saxon/expr/Expression;

    goto/16 :goto_0

    :pswitch_5
    invoke-static {v10}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_6
    if-nez v1, :cond_7

    invoke-virtual {p0, v8}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lnet/sf/saxon/style/XSLElement;->u:Lnet/sf/saxon/expr/Expression;

    instance-of v1, v0, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v1, :cond_8

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

    const-string v1, "Element name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/style/XSLElement;->u:Lnet/sf/saxon/expr/Expression;

    check-cast v1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not a valid QName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XTDE0820"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lnet/sf/saxon/expr/StringLiteral;

    const-string v1, "saxon-error-element"

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sf/saxon/style/XSLElement;->u:Lnet/sf/saxon/expr/Expression;

    :cond_8
    :goto_2
    if-eqz v2, :cond_9

    iget-object v0, p0, Lnet/sf/saxon/style/XSLElement;->v:Lnet/sf/saxon/expr/Expression;

    instance-of v0, v0, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v0, :cond_9

    invoke-static {}, Lnet/sf/saxon/lib/StandardURIChecker;->getInstance()Lnet/sf/saxon/lib/StandardURIChecker;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/style/XSLElement;->v:Lnet/sf/saxon/expr/Expression;

    check-cast v1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/StandardURIChecker;->isValidURI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "The value of the namespace attribute must be a valid URI"

    const-string v1, "XTDE0835"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {p0, v3}, Lnet/sf/saxon/style/StyleElement;->validateValidationAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/style/XSLElement;->y:I

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->z()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/style/XSLElement;->y:I

    :goto_3
    if-eqz v4, :cond_c

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->isSchemaAware()Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "The @type attribute is available only with a schema-aware XSLT processor"

    const-string v1, "XTSE1660"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0, v4}, Lnet/sf/saxon/style/StyleElement;->getSchemaType(Ljava/lang/String;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLElement;->z:Lnet/sf/saxon/type/SchemaType;

    const/16 v0, 0x8

    iput v0, p0, Lnet/sf/saxon/style/XSLElement;->y:I

    :cond_c
    if-eqz v4, :cond_d

    if-eqz v3, :cond_d

    const-string v0, "The @validation and @type attributes are mutually exclusive"

    const-string v1, "XTSE1505"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    if-eqz v5, :cond_e

    invoke-virtual {p0, v7, v5}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLElement;->J:Z

    :cond_e
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x298b787 -> :sswitch_5
        0x337a8b -> :sswitch_4
        0x368f3a -> :sswitch_3
        0x4aa3555b -> :sswitch_2
        0x656fd1e8 -> :sswitch_1
        0x7aa1568a -> :sswitch_0
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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p1, p0, Lnet/sf/saxon/style/XSLElement;->w:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->D(Ljava/lang/String;)[Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLElement;->x:[Lnet/sf/saxon/om/StructuredQName;

    :cond_0
    const-string p1, "name"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLElement;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLElement;->u:Lnet/sf/saxon/expr/Expression;

    const-string p1, "namespace"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLElement;->v:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLElement;->v:Lnet/sf/saxon/expr/Expression;

    return-void
.end method
