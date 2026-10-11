.class public Lnet/sf/saxon/style/XSLSourceDocument;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public u:Lnet/sf/saxon/expr/Expression;

.field public v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/sf/saxon/expr/accum/Accumulator;",
            ">;"
        }
    .end annotation
.end field

.field public w:Z

.field public x:Lnet/sf/saxon/lib/ParseOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLSourceDocument;->u:Lnet/sf/saxon/expr/Expression;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/style/XSLSourceDocument;->v:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLSourceDocument;->w:Z

    return-void
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/style/XSLSourceDocument;->x:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {v1}, Lnet/sf/saxon/lib/ParseOptions;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/style/XSLSourceDocument;->x:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPackageData()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/style/StylesheetPackage;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/style/XSLSourceDocument;->x:Lnet/sf/saxon/lib/ParseOptions;

    iget-object v2, p0, Lnet/sf/saxon/style/XSLSourceDocument;->v:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/lib/ParseOptions;->setApplicableAccumulators(Ljava/util/Set;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeExpressionVisitor()Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object p2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    sget-object v2, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iget-object v1, p0, Lnet/sf/saxon/style/XSLSourceDocument;->u:Lnet/sf/saxon/expr/Expression;

    iget-boolean v3, p0, Lnet/sf/saxon/style/XSLSourceDocument;->w:Z

    iget-object v4, p0, Lnet/sf/saxon/style/XSLSourceDocument;->x:Lnet/sf/saxon/lib/ParseOptions;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v6

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lnet/sf/saxon/Configuration;->makeStreamInstruction(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;ZLnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/expr/PackageData;Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/expr/parser/RetainedStaticContext;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isWithinDeclaredStreamableConstruct()Z
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
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/saxon/lib/ParseOptions;-><init>(Lnet/sf/saxon/lib/ParseOptions;)V

    iput-object v1, v0, Lnet/sf/saxon/style/XSLSourceDocument;->x:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    :goto_0
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "href"

    if-eqz v7, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v7}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v9

    invoke-interface {v9}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v10

    invoke-virtual {v7}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lnet/sf/saxon/om/StructuredQName;->getClarkName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0, v11, v7}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    iput-object v3, v0, Lnet/sf/saxon/style/XSLSourceDocument;->u:Lnet/sf/saxon/expr/Expression;

    move-object v3, v11

    goto :goto_0

    :cond_0
    const-string v7, "validation"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v11}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v7, "type"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v11}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    const-string v7, "use-accumulators"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v11}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    const-string v7, "streamable"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0, v11}, Lnet/sf/saxon/style/StyleElement;->U(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v0, Lnet/sf/saxon/style/XSLSourceDocument;->w:Z

    goto :goto_0

    :cond_4
    const-string v7, "http://saxon.sf.net/"

    invoke-interface {v9, v7}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v9}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lnet/sf/saxon/style/StyleElement;->isExtensionAttributeAllowed(Ljava/lang/String;)Z

    invoke-interface {v9}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x1

    sparse-switch v8, :sswitch_data_0

    :goto_1
    move/from16 v7, v16

    goto :goto_2

    :sswitch_0
    const-string v8, "line-numbering"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    const/4 v7, 0x5

    goto :goto_2

    :sswitch_1
    const-string v8, "dtd-validation"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_1

    :cond_6
    move v7, v12

    goto :goto_2

    :sswitch_2
    const-string v8, "xinclude"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_1

    :cond_7
    move v7, v13

    goto :goto_2

    :sswitch_3
    const-string v8, "validation-params"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_1

    :cond_8
    move v7, v14

    goto :goto_2

    :sswitch_4
    const-string v8, "strip-space"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_1

    :cond_9
    move/from16 v7, v17

    goto :goto_2

    :sswitch_5
    const-string v8, "expand-attribute-defaults"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_1

    :cond_a
    move v7, v15

    :goto_2
    packed-switch v7, :pswitch_data_0

    invoke-virtual {v0, v9}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v7, v0, Lnet/sf/saxon/style/XSLSourceDocument;->x:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {v0, v10, v11}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lnet/sf/saxon/lib/ParseOptions;->setLineNumbering(Z)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v7, v0, Lnet/sf/saxon/style/XSLSourceDocument;->x:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {v0, v10, v11}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    move/from16 v12, v17

    :cond_b
    invoke-virtual {v7, v12}, Lnet/sf/saxon/lib/ParseOptions;->setDTDValidationMode(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v7, v0, Lnet/sf/saxon/style/XSLSourceDocument;->x:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {v0, v10, v11}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lnet/sf/saxon/lib/ParseOptions;->setXIncludeAware(Z)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {v11}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v7

    invoke-static {v7}, Lnet/sf/saxon/value/Whitespace;->normalizeWhitespace(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    :goto_3
    move/from16 v13, v16

    goto :goto_4

    :sswitch_6
    const-string v8, "#none"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    goto :goto_3

    :sswitch_7
    const-string v8, "#all"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_3

    :cond_c
    move v13, v14

    goto :goto_4

    :sswitch_8
    const-string v8, "#default"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    goto :goto_3

    :cond_d
    move/from16 v13, v17

    goto :goto_4

    :sswitch_9
    const-string v8, "#ignorable"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    goto :goto_3

    :cond_e
    move v13, v15

    :cond_f
    :goto_4
    packed-switch v13, :pswitch_data_1

    const-string v7, "saxon:strip-space"

    const-string v8, "#all|#none|#ignorable|#default"

    invoke-virtual {v0, v7, v8}, Lnet/sf/saxon/style/StyleElement;->invalidAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v7, v0, Lnet/sf/saxon/style/XSLSourceDocument;->x:Lnet/sf/saxon/lib/ParseOptions;

    invoke-static {}, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v7, v0, Lnet/sf/saxon/style/XSLSourceDocument;->x:Lnet/sf/saxon/lib/ParseOptions;

    invoke-static {}, Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v7, v0, Lnet/sf/saxon/style/XSLSourceDocument;->x:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {v7, v2}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v7, v0, Lnet/sf/saxon/style/XSLSourceDocument;->x:Lnet/sf/saxon/lib/ParseOptions;

    invoke-static {}, Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v7, v0, Lnet/sf/saxon/style/XSLSourceDocument;->x:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {v0, v10, v11}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lnet/sf/saxon/lib/ParseOptions;->setExpandAttributeDefaults(Z)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v0, v9}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto/16 :goto_0

    :cond_11
    if-nez v3, :cond_12

    invoke-virtual {v0, v8}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    :cond_12
    if-eqz v4, :cond_13

    invoke-virtual {v0, v4}, Lnet/sf/saxon/style/StyleElement;->validateValidationAttribute(Ljava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lnet/sf/saxon/style/XSLSourceDocument;->x:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    :cond_13
    if-eqz v5, :cond_15

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->isSchemaAware()Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "The @type attribute is available only with a schema-aware XSLT processor"

    const-string v2, "XTSE1660"

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    iget-object v1, v0, Lnet/sf/saxon/style/XSLSourceDocument;->x:Lnet/sf/saxon/lib/ParseOptions;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    iget-object v1, v0, Lnet/sf/saxon/style/XSLSourceDocument;->x:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {v0, v5}, Lnet/sf/saxon/style/StyleElement;->getSchemaType(Ljava/lang/String;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/lib/ParseOptions;->setTopLevelType(Lnet/sf/saxon/type/SchemaType;)V

    :cond_15
    if-eqz v5, :cond_16

    if-eqz v4, :cond_16

    const-string v1, "The @validation and @type attributes are mutually exclusive"

    const-string v2, "XTSE1505"

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    if-nez v6, :cond_17

    const-string v6, ""

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/PackageData;->getAccumulatorRegistry()Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Lnet/sf/saxon/expr/accum/AccumulatorRegistry;->getUsedAccumulators(Ljava/lang/String;Lnet/sf/saxon/style/StyleElement;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/style/XSLSourceDocument;->v:Ljava/util/Set;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x768c7f8a -> :sswitch_5
        -0x521aa9ef -> :sswitch_4
        -0x1016aea6 -> :sswitch_3
        0x25565d30 -> :sswitch_2
        0x79010212 -> :sswitch_1
        0x7d1f3d60 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7f7f83f6 -> :sswitch_9
        -0x70230742 -> :sswitch_8
        0x11629e -> :sswitch_7
        0x220e5db -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p1, "select"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLSourceDocument;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLSourceDocument;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->hasChildNodes()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "An empty xsl:source-document instruction has no effect"

    const-string v0, "SXWN9009"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileWarning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
