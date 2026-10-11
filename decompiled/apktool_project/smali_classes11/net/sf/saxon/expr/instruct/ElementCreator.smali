.class public abstract Lnet/sf/saxon/expr/instruct/ElementCreator;
.super Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;
.source "SourceFile"


# instance fields
.field public p:Z

.field public q:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ElementCreator;->p:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ElementCreator;->q:Z

    return-void
.end method


# virtual methods
.method public checkContentSequence(Lnet/sf/saxon/expr/StaticContext;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/instruct/Block;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/instruct/Block;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Block;->getOperanda()[Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->contentOp:Lnet/sf/saxon/expr/Operand;

    filled-new-array {v0}, [Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    :goto_0
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v2, v1, :cond_11

    aget-object v5, v0, v2

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v6

    invoke-interface {v6}, Lnet/sf/saxon/type/ItemType;->isAtomicType()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    :cond_1
    move v3, v8

    goto/16 :goto_7

    :cond_2
    instance-of v7, v6, Lnet/sf/saxon/type/FunctionItemType;

    if-eqz v7, :cond_5

    instance-of v7, v6, Lnet/sf/saxon/ma/arrays/ArrayItemType;

    if-nez v7, :cond_5

    instance-of p1, v6, Lnet/sf/saxon/ma/map/MapType;

    if-eqz p1, :cond_3

    const-string p1, "map"

    goto :goto_2

    :cond_3
    const-string p1, "function"

    :goto_2
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as a child of a constructed element"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->isXSLT()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "XTDE0450"

    goto :goto_3

    :cond_4
    const-string p0, "XQTY0105"

    :goto_3
    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {v0, v8}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw v0

    :cond_5
    instance-of v7, v6, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v7, :cond_10

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v7

    invoke-static {v7}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v7

    invoke-interface {v6}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v6

    sget-object v9, Lnet/sf/saxon/type/UType;->TEXT:Lnet/sf/saxon/type/UType;

    invoke-virtual {v6, v9}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result v9

    if-eqz v9, :cond_7

    instance-of v6, v5, Lnet/sf/saxon/expr/instruct/ValueOf;

    if-eqz v6, :cond_6

    check-cast v5, Lnet/sf/saxon/expr/instruct/ValueOf;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    instance-of v6, v6, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_7

    :cond_6
    :goto_4
    move v4, v8

    goto/16 :goto_7

    :cond_7
    sget-object v9, Lnet/sf/saxon/type/UType;->CHILD_NODE_KINDS:Lnet/sf/saxon/type/UType;

    invoke-virtual {v6, v9}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result v9

    if-nez v9, :cond_8

    if-eqz v7, :cond_1

    goto :goto_4

    :cond_8
    const-string v8, "XTDE0410"

    const-string v9, "XQTY0024"

    if-eqz v3, :cond_a

    sget-object v10, Lnet/sf/saxon/type/UType;->ATTRIBUTE:Lnet/sf/saxon/type/UType;

    if-ne v6, v10, :cond_a

    if-nez v7, :cond_a

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Cannot create an attribute node after creating a child of the containing element"

    invoke-direct {p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->isXSLT()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_5

    :cond_9
    move-object v8, v9

    :goto_5
    invoke-virtual {p1, v8}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    throw p1

    :cond_a
    if-eqz v3, :cond_c

    sget-object v10, Lnet/sf/saxon/type/UType;->NAMESPACE:Lnet/sf/saxon/type/UType;

    if-ne v6, v10, :cond_c

    if-nez v7, :cond_c

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Cannot create a namespace node after creating a child of the containing element"

    invoke-direct {p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->isXSLT()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_6

    :cond_b
    move-object v8, v9

    :goto_6
    invoke-virtual {p1, v8}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    throw p1

    :cond_c
    if-nez v3, :cond_d

    if-eqz v4, :cond_e

    :cond_d
    sget-object v7, Lnet/sf/saxon/type/UType;->ATTRIBUTE:Lnet/sf/saxon/type/UType;

    if-ne v6, v7, :cond_e

    const-string v6, "Creating an attribute here will fail if previous instructions create any children"

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v5

    invoke-interface {p1, v6, v5}, Lnet/sf/saxon/expr/StaticContext;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    goto :goto_7

    :cond_e
    if-nez v3, :cond_f

    if-eqz v4, :cond_10

    :cond_f
    sget-object v7, Lnet/sf/saxon/type/UType;->NAMESPACE:Lnet/sf/saxon/type/UType;

    if-ne v6, v7, :cond_10

    const-string v6, "Creating a namespace node here will fail if previous instructions create any children"

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v5

    invoke-interface {p1, v6, v5}, Lnet/sf/saxon/expr/StaticContext;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_10
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_11
    return-void
.end method

.method public computeSpecialProperties()I
    .locals 2

    invoke-super {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->computeSpecialProperties()I

    move-result v0

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getValidationAction()I

    move-result p0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    const/high16 p0, 0x8000000

    or-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public d(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getValidationAction()I

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getValidationAction()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getValidationAction()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/lib/Validation;->describe(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "validation"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getValidationAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "type"

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    :cond_1
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ElementCreator;->q:Z

    const-string v1, ""

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/ElementCreator;->p:Z

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "C"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getCardinality()I
    .locals 0

    const/16 p0, 0x4000

    return p0
.end method

.method public abstract getElementName(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object p0
.end method

.method public abstract getNewBaseURI(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "ElementCreator"

    return-object p0
.end method

.method public isBequeathNamespacesToChildren()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/ElementCreator;->p:Z

    return p0
.end method

.method public isInheritNamespacesFromParent()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/ElementCreator;->q:Z

    return p0
.end method

.method public abstract outputNamespaceNodes(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NodeInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/saxon/expr/instruct/ElementCreator;->processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p0

    return-object p0
.end method

.method public final processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lnet/sf/saxon/expr/instruct/ElementCreator;->getElementName(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getValidationAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 4
    invoke-static {}, Lnet/sf/saxon/type/AnyType;->getInstance()Lnet/sf/saxon/type/AnyType;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v1

    .line 6
    :goto_0
    iget-boolean v2, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->preservingTypes:Z

    if-nez v2, :cond_1

    .line 7
    new-instance v2, Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getValidationOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/sf/saxon/lib/ParseOptions;-><init>(Lnet/sf/saxon/lib/ParseOptions;)V

    .line 8
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/lib/ParseOptions;->setTopLevelElement(Lnet/sf/saxon/om/StructuredQName;)V

    .line 9
    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Lnet/sf/saxon/Configuration;->prepareValidationReporting(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/lib/ParseOptions;)V

    .line 10
    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v4

    invoke-virtual {v3, p1, v2, v4}, Lnet/sf/saxon/Configuration;->getElementValidator(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/event/Receiver;

    move-result-object v2

    if-eq v2, p1, :cond_1

    .line 11
    new-instance p1, Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-direct {p1, v2}, Lnet/sf/saxon/event/ComplexContentOutputter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    .line 12
    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/event/Outputter;->getSystemId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 13
    invoke-virtual {p0, p2, p3}, Lnet/sf/saxon/expr/instruct/ElementCreator;->getNewBaseURI(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/sf/saxon/event/Outputter;->setSystemId(Ljava/lang/String;)V

    .line 14
    :cond_2
    iget-boolean v2, p0, Lnet/sf/saxon/expr/instruct/ElementCreator;->p:Z

    if-nez v2, :cond_3

    const/16 v2, 0x80

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 15
    :goto_1
    iget-boolean v3, p0, Lnet/sf/saxon/expr/instruct/ElementCreator;->q:Z

    if-nez v3, :cond_4

    const/high16 v3, 0x10000

    or-int/2addr v2, v3

    :cond_4
    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    .line 16
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v3, v2}, Lnet/sf/saxon/event/Outputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    .line 17
    invoke-virtual {p0, p1, v0, p3}, Lnet/sf/saxon/expr/instruct/ElementCreator;->outputNamespaceNodes(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NodeInfo;)V

    .line 18
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    .line 19
    invoke-virtual {p1}, Lnet/sf/saxon/event/Outputter;->endElement()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 21
    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    .line 22
    throw p1
.end method

.method public setBequeathNamespacesToChildren(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/ElementCreator;->p:Z

    return-void
.end method

.method public setInheritNamespacesFromParent(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/ElementCreator;->q:Z

    return-void
.end method

.method public setInheritanceFlags(Ljava/lang/String;)V
    .locals 1

    const-string v0, "P"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ElementCreator;->q:Z

    const-string v0, "C"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/ElementCreator;->p:Z

    return-void
.end method

.method public suppressValidation(I)V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getValidationAction()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setValidationAction(ILnet/sf/saxon/type/SchemaType;)V

    :cond_0
    return-void
.end method
