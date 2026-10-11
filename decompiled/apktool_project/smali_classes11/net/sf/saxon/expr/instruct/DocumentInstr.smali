.class public Lnet/sf/saxon/expr/instruct/DocumentInstr;
.super Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;
.source "SourceFile"


# instance fields
.field public final p:Z

.field public final q:Lnet/sf/saxon/str/UnicodeString;


# direct methods
.method public constructor <init>(ZLnet/sf/saxon/str/UnicodeString;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;-><init>()V

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/DocumentInstr;->p:Z

    iput-object p2, p0, Lnet/sf/saxon/expr/instruct/DocumentInstr;->q:Lnet/sf/saxon/str/UnicodeString;

    return-void
.end method

.method public static checkContentSequence(Lnet/sf/saxon/expr/StaticContext;Lnet/sf/saxon/expr/Operand;Lnet/sf/saxon/lib/ParseOptions;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/instruct/Block;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/instruct/Block;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Block;->getOperanda()[Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    filled-new-array {p1}, [Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    :goto_0
    if-nez p2, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p2}, Lnet/sf/saxon/lib/ParseOptions;->getSchemaValidationMode()I

    move-result v1

    :goto_1
    if-nez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {p2}, Lnet/sf/saxon/lib/ParseOptions;->getTopLevelType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p2

    .line 7
    :goto_2
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/PackageData;->isXSLT()Z

    move-result p1

    .line 8
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_3
    if-ge v3, v2, :cond_b

    aget-object v5, v0, v3

    .line 9
    invoke-virtual {v5}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    .line 10
    invoke-virtual {v5}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v6

    .line 11
    instance-of v7, v6, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v7, :cond_a

    .line 12
    invoke-interface {v6}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v6

    .line 13
    sget-object v7, Lnet/sf/saxon/type/UType;->ATTRIBUTE:Lnet/sf/saxon/type/UType;

    invoke-virtual {v6, v7}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "XTDE0420"

    if-eqz v7, :cond_4

    .line 14
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "Cannot create an attribute node whose parent is a document node"

    invoke-direct {p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    goto :goto_4

    :cond_3
    const-string v8, "XPTY0004"

    .line 15
    :goto_4
    invoke-virtual {p0, v8}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v5}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 17
    throw p0

    .line 18
    :cond_4
    sget-object v7, Lnet/sf/saxon/type/UType;->NAMESPACE:Lnet/sf/saxon/type/UType;

    invoke-virtual {v6, v7}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 19
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "Cannot create a namespace node whose parent is a document node"

    invoke-direct {p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    const-string v8, "XQTY0024"

    .line 20
    :goto_5
    invoke-virtual {p0, v8}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v5}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 22
    throw p0

    .line 23
    :cond_6
    sget-object v7, Lnet/sf/saxon/type/UType;->ELEMENT:Lnet/sf/saxon/type/UType;

    invoke-virtual {v6, v7}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x1

    if-le v4, v6, :cond_9

    if-eq v1, v6, :cond_7

    const/4 v7, 0x2

    if-eq v1, v7, :cond_7

    if-eqz p2, :cond_9

    .line 24
    :cond_7
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "A valid document must have only one child element"

    invoke-direct {p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    const-string p1, "XTTE1550"

    .line 25
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    const-string p1, "XQDY0061"

    .line 26
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 27
    :goto_6
    invoke-virtual {v5}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 28
    throw p0

    :cond_9
    if-ne v1, v6, :cond_a

    .line 29
    instance-of v7, v5, Lnet/sf/saxon/expr/instruct/FixedElement;

    if-eqz v7, :cond_a

    .line 30
    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v7

    check-cast v5, Lnet/sf/saxon/expr/instruct/FixedElement;

    .line 31
    invoke-virtual {v5}, Lnet/sf/saxon/expr/instruct/FixedElement;->getFixedElementName()Lnet/sf/saxon/om/NodeName;

    move-result-object v8

    invoke-interface {v8}, Lnet/sf/saxon/om/NodeName;->getFingerprint()I

    move-result v8

    .line 32
    invoke-virtual {v7, v8}, Lnet/sf/saxon/Configuration;->getElementDeclaration(I)Lnet/sf/saxon/type/SchemaDeclaration;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 33
    invoke-virtual {v5}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    .line 34
    invoke-interface {v7}, Lnet/sf/saxon/type/SchemaDeclaration;->getType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lnet/sf/saxon/expr/Expression;->checkPermittedContents(Lnet/sf/saxon/type/SchemaType;Z)V

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_b
    return-void
.end method


# virtual methods
.method public checkContentSequence(Lnet/sf/saxon/expr/StaticContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentOperand()Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getValidationOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lnet/sf/saxon/expr/instruct/DocumentInstr;->checkContentSequence(Lnet/sf/saxon/expr/StaticContext;Lnet/sf/saxon/expr/Operand;Lnet/sf/saxon/lib/ParseOptions;)V

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

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 3

    new-instance v0, Lnet/sf/saxon/expr/instruct/DocumentInstr;

    iget-boolean v1, p0, Lnet/sf/saxon/expr/instruct/DocumentInstr;->p:Z

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/DocumentInstr;->q:Lnet/sf/saxon/str/UnicodeString;

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/expr/instruct/DocumentInstr;-><init>(ZLnet/sf/saxon/str/UnicodeString;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setContentExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getValidationAction()I

    move-result p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setValidationAction(ILnet/sf/saxon/type/SchemaType;)V

    return-object v0
.end method

.method public bridge synthetic evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/DocumentInstr;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/NodeInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    .line 4
    iget-boolean v2, p0, Lnet/sf/saxon/expr/instruct/DocumentInstr;->p:Z

    if-eqz v2, :cond_2

    .line 5
    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/DocumentInstr;->q:Lnet/sf/saxon/str/UnicodeString;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v0}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    .line 7
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    .line 8
    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    invoke-interface {v2}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    .line 11
    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getStaticBaseURIString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lnet/sf/saxon/value/TextFragmentValue;->makeTextFragment(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    goto :goto_2

    .line 12
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v2

    .line 13
    invoke-virtual {v2, p1}, Lnet/sf/saxon/event/PipelineConfiguration;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    .line 14
    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->makeBuilder()Lnet/sf/saxon/event/Builder;

    move-result-object v0

    const/4 v3, 0x0

    .line 15
    invoke-virtual {v0, v3}, Lnet/sf/saxon/event/Builder;->setUseEventLocation(Z)V

    .line 16
    instance-of v4, v0, Lnet/sf/saxon/tree/tiny/TinyBuilder;

    if-eqz v4, :cond_3

    .line 17
    move-object v4, v0

    check-cast v4, Lnet/sf/saxon/tree/tiny/TinyBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getTreeStatistics()Lnet/sf/saxon/tree/tiny/TreeStatistics;

    move-result-object v1

    iget-object v1, v1, Lnet/sf/saxon/tree/tiny/TreeStatistics;->SOURCE_DOCUMENT_STATISTICS:Lnet/sf/saxon/tree/tiny/Statistics;

    invoke-virtual {v4, v1}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->setStatistics(Lnet/sf/saxon/tree/tiny/Statistics;)V

    .line 18
    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getStaticBaseURIString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/event/Builder;->setBaseURI(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, v3}, Lnet/sf/saxon/event/Builder;->setTiming(Z)V

    .line 20
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/PackageData;->getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnet/sf/saxon/event/PipelineConfiguration;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V

    .line 21
    invoke-virtual {v0, v2}, Lnet/sf/saxon/event/Builder;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    .line 22
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getValidationOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->makeComplexContentReceiver(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)Lnet/sf/saxon/event/ComplexContentOutputter;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->open()V

    .line 24
    invoke-virtual {v1, v3}, Lnet/sf/saxon/event/ComplexContentOutputter;->startDocument(I)V

    .line 25
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    .line 26
    invoke-virtual {v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->endDocument()V

    .line 27
    invoke-virtual {v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->close()V

    .line 28
    invoke-virtual {v0}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object p0

    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 30
    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    .line 31
    throw v0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "doc"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->isRelocatable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "base"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getStaticBaseURIString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/DocumentInstr;->p:Z

    const-string v1, ""

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "flags"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/DocumentInstr;->q:Lnet/sf/saxon/str/UnicodeString;

    if-eqz v0, :cond_4

    const-string v1, "text"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getValidationAction()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getValidationAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getValidationAction()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/lib/Validation;->describe(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "validation"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "type"

    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    :cond_6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getConstantText()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/DocumentInstr;->q:Lnet/sf/saxon/str/UnicodeString;

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getInstructionNameCode()I
    .locals 0

    const/16 p0, 0x96

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "DocumentInstr"

    return-object p0
.end method

.method public getStringValueExpression()Lnet/sf/saxon/expr/Expression;
    .locals 5

    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/DocumentInstr;->p:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/DocumentInstr;->q:Lnet/sf/saxon/str/UnicodeString;

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/StringLiteral;

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/DocumentInstr;->q:Lnet/sf/saxon/str/UnicodeString;

    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->makeUntypedAtomic(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/instruct/ValueOf;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/instruct/ValueOf;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ValueOf;->convertToCastAsString()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lnet/sf/saxon/expr/StringLiteral;

    sget-object v4, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    invoke-direct {v2, v4}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "string-join"

    invoke-static {v2, v0, v1}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/expr/CastExpression;

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {v1, v0, v2, v3}, Lnet/sf/saxon/expr/CastExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/AtomicType;Z)V

    invoke-static {p0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "getStringValueExpression() called on non-text-only document instruction"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public isTextOnly()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/DocumentInstr;->p:Z

    return p0
.end method

.method public operands()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->contentOp:Lnet/sf/saxon/expr/Operand;

    return-object p0
.end method

.method public processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->preservingTypes:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/DocumentInstr;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/event/Outputter;->startDocument(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p1}, Lnet/sf/saxon/event/Outputter;->endDocument()V

    return-object v1

    :cond_0
    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/instruct/DocumentInstr;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    const/high16 v0, 0x80000

    invoke-virtual {p1, p2, p0, v0}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    :cond_1
    return-object v1
.end method
