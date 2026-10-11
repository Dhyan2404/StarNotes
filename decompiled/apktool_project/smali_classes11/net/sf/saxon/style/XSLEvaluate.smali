.class public Lnet/sf/saxon/style/XSLEvaluate;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public J:Lnet/sf/saxon/expr/Expression;

.field public O:Lnet/sf/saxon/expr/Expression;

.field public Q:Z

.field public u:Lnet/sf/saxon/expr/Expression;

.field public v:Lnet/sf/saxon/value/SequenceType;

.field public w:Lnet/sf/saxon/expr/Expression;

.field public x:Lnet/sf/saxon/expr/Expression;

.field public y:Lnet/sf/saxon/expr/Expression;

.field public z:Lnet/sf/saxon/expr/Expression;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLEvaluate;->u:Lnet/sf/saxon/expr/Expression;

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    iput-object v1, p0, Lnet/sf/saxon/style/XSLEvaluate;->v:Lnet/sf/saxon/value/SequenceType;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLEvaluate;->w:Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLEvaluate;->x:Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLEvaluate;->y:Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLEvaluate;->z:Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLEvaluate;->J:Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLEvaluate;->O:Lnet/sf/saxon/expr/Expression;

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

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/lib/Feature;->DISABLE_XSL_EVALUATE:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingIncident;

    const-string v1, "xsl:evaluate is not available in this configuration"

    const-string v2, "XTDE3175"

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sf/saxon/style/StyleElement;->validationError:Lnet/sf/saxon/trans/XmlProcessingIncident;

    invoke-virtual {p0, p1, p2, p0}, Lnet/sf/saxon/style/StyleElement;->u(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/style/StyleElement;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lnet/sf/saxon/Configuration;->makeEvaluateInstruction(Lnet/sf/saxon/style/XSLEvaluate;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/expr/ErrorExpression;

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    iget-boolean v1, p0, Lnet/sf/saxon/style/XSLEvaluate;->Q:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    new-array v2, v1, [Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Lnet/sf/saxon/expr/Expression;

    new-instance v6, Lnet/sf/saxon/expr/StringLiteral;

    const-string v7, "Q{http://www.w3.org/1999/XSL/Transform}supports-dynamic-evaluation"

    invoke-direct {v6, v7}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "system-property"

    invoke-static {v6, v3, v5}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    new-instance v5, Lnet/sf/saxon/expr/ValueComparison;

    new-instance v6, Lnet/sf/saxon/expr/StringLiteral;

    const-string v8, "no"

    invoke-direct {v6, v8}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x32

    invoke-direct {v5, v3, v8, v6}, Lnet/sf/saxon/expr/ValueComparison;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    aput-object v5, v2, v7

    sget-object v3, Lnet/sf/saxon/value/BooleanValue;->TRUE:Lnet/sf/saxon/value/BooleanValue;

    invoke-static {v3}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object v3

    aput-object v3, v2, v4

    new-array v1, v1, [Lnet/sf/saxon/expr/Expression;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/sunia/HTREnginev2/w2n;

    const-class v6, Lnet/sf/saxon/style/XSLFallback;

    invoke-direct {v5, v6}, Lcom/sunia/HTREnginev2/w2n;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v5}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/om/NodeInfo;

    check-cast v5, Lnet/sf/saxon/style/XSLFallback;

    invoke-virtual {v5, p1, p2, v7}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Lnet/sf/saxon/expr/instruct/Block;

    new-array p1, v7, [Lnet/sf/saxon/expr/Expression;

    invoke-interface {v3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lnet/sf/saxon/expr/Expression;

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/instruct/Block;-><init>([Lnet/sf/saxon/expr/Expression;)V

    aput-object p0, v1, v7

    aput-object v0, v1, v4

    new-instance p0, Lnet/sf/saxon/expr/instruct/Choose;

    invoke-direct {p0, v2, v1}, Lnet/sf/saxon/expr/instruct/Choose;-><init>([Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    :cond_3
    return-object v0
.end method

.method public getBaseUriExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLEvaluate;->y:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getContextItemExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLEvaluate;->x:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getNamespaceContextExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLEvaluate;->w:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getOptionsExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLEvaluate;->O:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getRequiredType()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLEvaluate;->v:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public getReturnedItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0
.end method

.method public getSchemaAwareExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLEvaluate;->z:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getTargetExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLEvaluate;->u:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getWithParamsExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLEvaluate;->J:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPermittedChild(Lnet/sf/saxon/style/StyleElement;)Z
    .locals 0

    instance-of p0, p1, Lnet/sf/saxon/style/XSLLocalParam;

    return p0
.end method

.method public mayContainSequenceConstructor()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public prepareAttributes()V
    .locals 17

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "schema-aware"

    const-string v10, "xpath"

    const-string v11, "as"

    const/4 v12, 0x1

    if-eqz v8, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v8}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v13

    invoke-interface {v13}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/16 v16, -0x1

    sparse-switch v15, :sswitch_data_0

    :goto_1
    move/from16 v12, v16

    goto :goto_2

    :sswitch_0
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    const/4 v12, 0x6

    goto :goto_2

    :sswitch_1
    const-string v9, "context-item"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v12, 0x5

    goto :goto_2

    :sswitch_2
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    const/4 v12, 0x4

    goto :goto_2

    :sswitch_3
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_1

    :cond_4
    const/4 v12, 0x3

    goto :goto_2

    :sswitch_4
    const-string v9, "namespace-context"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_1

    :cond_5
    const/4 v12, 0x2

    goto :goto_2

    :sswitch_5
    const-string v9, "with-params"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_1

    :sswitch_6
    const-string v9, "base-uri"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_1

    :cond_6
    const/4 v12, 0x0

    :cond_7
    :goto_2
    packed-switch v12, :pswitch_data_0

    invoke-interface {v13}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v9

    const-string v10, "options"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v13}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v9

    const-string v10, "http://saxon.sf.net/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v13}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lnet/sf/saxon/style/StyleElement;->isExtensionAttributeAllowed(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v8}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    iput-object v8, v1, Lnet/sf/saxon/style/XSLEvaluate;->O:Lnet/sf/saxon/expr/Expression;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v1, v13}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {v8}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v8}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    iput-object v8, v1, Lnet/sf/saxon/style/XSLEvaluate;->z:Lnet/sf/saxon/expr/Expression;

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v8}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v8}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    iput-object v8, v1, Lnet/sf/saxon/style/XSLEvaluate;->x:Lnet/sf/saxon/expr/Expression;

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v8}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v8}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    iput-object v8, v1, Lnet/sf/saxon/style/XSLEvaluate;->u:Lnet/sf/saxon/expr/Expression;

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v8}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {v8}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v8}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    iput-object v8, v1, Lnet/sf/saxon/style/XSLEvaluate;->w:Lnet/sf/saxon/expr/Expression;

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {v8}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v8}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    iput-object v8, v1, Lnet/sf/saxon/style/XSLEvaluate;->J:Lnet/sf/saxon/expr/Expression;

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v8}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v8}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    iput-object v8, v1, Lnet/sf/saxon/style/XSLEvaluate;->y:Lnet/sf/saxon/expr/Expression;

    goto/16 :goto_0

    :cond_9
    if-nez v3, :cond_a

    invoke-virtual {v1, v10}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    :cond_a
    if-eqz v4, :cond_b

    :try_start_0
    invoke-virtual {v1, v4}, Lnet/sf/saxon/style/StyleElement;->makeSequenceType(Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    iput-object v0, v1, Lnet/sf/saxon/style/XSLEvaluate;->v:Lnet/sf/saxon/value/SequenceType;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0, v11}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_3
    if-nez v5, :cond_c

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    iput-object v0, v1, Lnet/sf/saxon/style/XSLEvaluate;->x:Lnet/sf/saxon/expr/Expression;

    :cond_c
    if-nez v6, :cond_d

    new-instance v0, Lnet/sf/saxon/expr/StringLiteral;

    const-string v3, "no"

    invoke-direct {v0, v3}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lnet/sf/saxon/style/XSLEvaluate;->z:Lnet/sf/saxon/expr/Expression;

    goto :goto_4

    :cond_d
    iget-object v0, v1, Lnet/sf/saxon/style/XSLEvaluate;->z:Lnet/sf/saxon/expr/Expression;

    instance-of v0, v0, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v0, :cond_e

    sget-object v0, Lnet/sf/saxon/style/StyleElement;->YES_NO:[Ljava/lang/String;

    invoke-virtual {v1, v9, v6, v12, v0}, Lnet/sf/saxon/style/StyleElement;->o(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    :cond_e
    :goto_4
    const-string v0, "map{}"

    if-nez v7, :cond_f

    invoke-virtual {v1, v0, v2}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    iput-object v3, v1, Lnet/sf/saxon/style/XSLEvaluate;->J:Lnet/sf/saxon/expr/Expression;

    :cond_f
    iget-object v3, v1, Lnet/sf/saxon/style/XSLEvaluate;->O:Lnet/sf/saxon/expr/Expression;

    if-nez v3, :cond_10

    invoke-virtual {v1, v0, v2}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, v1, Lnet/sf/saxon/style/XSLEvaluate;->O:Lnet/sf/saxon/expr/Expression;

    :cond_10
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x66ad8f90 -> :sswitch_6
        -0x23f19793 -> :sswitch_5
        -0x1fe21cc3 -> :sswitch_4
        0xc32 -> :sswitch_3
        0x6cf689d -> :sswitch_2
        0x3fcd9c71 -> :sswitch_1
        0x5e894732 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p1, "XTTE3170"

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getContainingPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/style/StylesheetPackage;->setRetainUnusedFunctions()V

    iget-object v0, p0, Lnet/sf/saxon/style/XSLEvaluate;->u:Lnet/sf/saxon/expr/Expression;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/StringLiteral;

    const-string v1, "\'\'"

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sf/saxon/style/XSLEvaluate;->u:Lnet/sf/saxon/expr/Expression;

    :cond_0
    const-string v0, "xpath"

    iget-object v1, p0, Lnet/sf/saxon/style/XSLEvaluate;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLEvaluate;->u:Lnet/sf/saxon/expr/Expression;

    const-string v0, "base-uri"

    iget-object v1, p0, Lnet/sf/saxon/style/XSLEvaluate;->y:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLEvaluate;->y:Lnet/sf/saxon/expr/Expression;

    const-string v0, "context-item"

    iget-object v1, p0, Lnet/sf/saxon/style/XSLEvaluate;->x:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLEvaluate;->x:Lnet/sf/saxon/expr/Expression;

    const-string v0, "namespace-context"

    iget-object v1, p0, Lnet/sf/saxon/style/XSLEvaluate;->w:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLEvaluate;->w:Lnet/sf/saxon/expr/Expression;

    const-string v0, "schema-aware"

    iget-object v1, p0, Lnet/sf/saxon/style/XSLEvaluate;->z:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLEvaluate;->z:Lnet/sf/saxon/expr/Expression;

    const-string v0, "with-params"

    iget-object v1, p0, Lnet/sf/saxon/style/XSLEvaluate;->J:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLEvaluate;->J:Lnet/sf/saxon/expr/Expression;

    const-string v0, "options"

    iget-object v1, p0, Lnet/sf/saxon/style/XSLEvaluate;->O:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLEvaluate;->O:Lnet/sf/saxon/expr/Expression;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    instance-of v2, v1, Lnet/sf/saxon/style/XSLWithParam;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lnet/sf/saxon/style/XSLFallback;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iput-boolean v3, p0, Lnet/sf/saxon/style/XSLEvaluate;->Q:Z

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v2

    const/4 v4, 0x3

    const-string v5, "XTSE0010"

    if-ne v2, v4, :cond_4

    invoke-interface {v1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "No character data is allowed within xsl:evaluate"

    invoke-virtual {p0, v1, v5}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Child element "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not allowed as a child of xsl:evaluate"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeExpressionVisitor()Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v1

    new-instance v3, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v4, "xsl:evaluate/xpath"

    const/4 v5, 0x4

    invoke-direct {v3, v5, v4, v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    iget-object v4, p0, Lnet/sf/saxon/style/XSLEvaluate;->u:Lnet/sf/saxon/expr/Expression;

    sget-object v6, Lnet/sf/saxon/value/SequenceType;->SINGLE_STRING:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v1, v4, v6, v3, v0}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    iput-object v3, p0, Lnet/sf/saxon/style/XSLEvaluate;->u:Lnet/sf/saxon/expr/Expression;

    new-instance v3, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v4, "xsl:evaluate/context-item"

    invoke-direct {v3, v5, v4, v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    const-string v4, "XTTE3210"

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/sf/saxon/style/XSLEvaluate;->x:Lnet/sf/saxon/expr/Expression;

    sget-object v6, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_ITEM:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v1, v4, v6, v3, v0}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    iput-object v3, p0, Lnet/sf/saxon/style/XSLEvaluate;->x:Lnet/sf/saxon/expr/Expression;

    new-instance v3, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v4, "xsl:evaluate/namespace-context"

    invoke-direct {v3, v5, v4, v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/sf/saxon/style/XSLEvaluate;->w:Lnet/sf/saxon/expr/Expression;

    if-eqz v4, :cond_6

    sget-object v6, Lnet/sf/saxon/value/SequenceType;->SINGLE_NODE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v1, v4, v6, v3, v0}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    iput-object v3, p0, Lnet/sf/saxon/style/XSLEvaluate;->w:Lnet/sf/saxon/expr/Expression;

    :cond_6
    new-instance v3, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v4, "xsl:evaluate/with-params"

    invoke-direct {v3, v5, v4, v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/sf/saxon/style/XSLEvaluate;->J:Lnet/sf/saxon/expr/Expression;

    sget-object v4, Lnet/sf/saxon/ma/map/MapType;->ANY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

    const/16 v6, 0x4000

    invoke-static {v4, v6}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v7

    invoke-virtual {v1, p1, v7, v3, v0}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLEvaluate;->J:Lnet/sf/saxon/expr/Expression;

    new-instance p1, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v3, "xsl:evaluate/saxon:options"

    invoke-direct {p1, v5, v3, v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    iget-object v2, p0, Lnet/sf/saxon/style/XSLEvaluate;->O:Lnet/sf/saxon/expr/Expression;

    invoke-static {v4, v6}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1, v0}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLEvaluate;->O:Lnet/sf/saxon/expr/Expression;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    :goto_1
    return-void
.end method
