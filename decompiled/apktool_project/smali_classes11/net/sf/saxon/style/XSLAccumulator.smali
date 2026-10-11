.class public Lnet/sf/saxon/style/XSLAccumulator;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/style/StylesheetComponent;


# instance fields
.field public final u:Lnet/sf/saxon/expr/accum/Accumulator;

.field public v:Lnet/sf/saxon/expr/instruct/SlotManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    new-instance v0, Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-direct {v0}, Lnet/sf/saxon/expr/accum/Accumulator;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    return-void
.end method


# virtual methods
.method public final Z(Lnet/sf/saxon/expr/Expression;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public final a0(Lnet/sf/saxon/style/XSLAccumulatorRule;Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/Expression;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public final b0(Lnet/sf/saxon/style/StyleElement;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    sget-object v0, Lnet/sf/saxon/lib/Feature;->STREAMING_FALLBACK:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p0

    const-string v0, "XTSE3430"

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Falling back to non-streaming implementation"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/style/StyleElement;->compileWarning(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/Compilation;->setFallbackToNonStreaming(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final c0()V
    .locals 6

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "name"

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v1}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v2}, Lnet/sf/saxon/style/StyleElement;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v3, v1}, Lnet/sf/saxon/expr/accum/Accumulator;->setAccumulatorName(Lnet/sf/saxon/om/StructuredQName;)V

    goto :goto_0

    :cond_1
    const-string v2, "streamable"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/accum/Accumulator;->setDeclaredStreamable(Z)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/StyleElement;->U(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/accum/Accumulator;->setDeclaredStreamable(Z)V

    goto :goto_0

    :cond_2
    const-string v2, "http://saxon.sf.net/"

    invoke-interface {v3, v2}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    const-string v4, "trace"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->isExtensionAttributeAllowed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    const-string v3, "saxon:trace"

    invoke-virtual {p0, v3, v1}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/accum/Accumulator;->setTracing(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/accum/Accumulator;->getAccumulatorName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    new-instance v1, Lnet/sf/saxon/om/StructuredQName;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->hashCode()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "anon"

    const-string v3, "http://ns.saxonica.com/anonymous-type"

    invoke-direct {v1, v2, v3, p0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/accum/Accumulator;->setAccumulatorName(Lnet/sf/saxon/om/StructuredQName;)V

    :cond_4
    return-void
.end method

.method public checkCompatibility(Lnet/sf/saxon/expr/Component;)V
    .locals 0

    return-void
.end method

.method public compileDeclaration(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/style/Compilation;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    iget-object v2, v0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/style/Compilation;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/instruct/Actor;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    iget-object v2, v0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/instruct/Actor;->obtainDeclaringComponent(Lnet/sf/saxon/style/StyleElement;)Lnet/sf/saxon/expr/Component;

    iget-object v2, v0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/accum/Accumulator;->getInitialValueExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getStaticContext()Lnet/sf/saxon/style/ExpressionContext;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->make(Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v3

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getDefaultContextItemStaticInfo()Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    new-instance v4, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const/4 v5, 0x4

    const-string v6, "xsl:accumulator-rule/select"

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v7}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v8

    iget-object v9, v0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v9}, Lnet/sf/saxon/expr/accum/Accumulator;->getType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v9

    invoke-virtual {v8, v2, v9, v4, v3}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getDefaultContextItemStaticInfo()Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->makeSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v3

    invoke-static {v2, v7, v3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->allocateSlots(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/instruct/SlotManager;)I

    iget-object v4, v0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v4, v3}, Lnet/sf/saxon/expr/accum/Accumulator;->setSlotManagerForInitialValueExpression(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/style/XSLAccumulator;->Z(Lnet/sf/saxon/expr/Expression;)V

    iget-object v3, v0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v3, v2}, Lnet/sf/saxon/expr/accum/Accumulator;->setInitialValueExpression(Lnet/sf/saxon/expr/Expression;)V

    iget-object v3, v0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v3, v2}, Lnet/sf/saxon/expr/accum/Accumulator;->addChildExpression(Lnet/sf/saxon/expr/Expression;)V

    new-instance v2, Lcom/sunia/HTREnginev2/w2n;

    const-class v3, Lnet/sf/saxon/style/XSLAccumulatorRule;

    invoke-direct {v2, v3}, Lcom/sunia/HTREnginev2/w2n;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v2}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v15, v7

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/NodeInfo;

    check-cast v3, Lnet/sf/saxon/style/XSLAccumulatorRule;

    invoke-virtual {v3}, Lnet/sf/saxon/style/XSLAccumulatorRule;->getMatch()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v4

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-virtual {v3, v13, v14}, Lnet/sf/saxon/style/XSLAccumulatorRule;->getNewValueExpression(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getStaticContext()Lnet/sf/saxon/style/ExpressionContext;

    move-result-object v9

    invoke-static {v9}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->make(Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v9

    invoke-virtual {v4}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v10

    invoke-virtual {v1, v10, v7}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    new-instance v10, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-direct {v10, v5, v6, v7}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v7}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v11

    iget-object v12, v0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v12}, Lnet/sf/saxon/expr/accum/Accumulator;->getType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v12

    invoke-virtual {v11, v8, v12, v10, v9}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v10

    invoke-virtual {v4}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v11

    invoke-virtual {v10, v11, v7}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v12

    iget-object v8, v0, Lnet/sf/saxon/style/XSLAccumulator;->v:Lnet/sf/saxon/expr/instruct/SlotManager;

    new-instance v9, Lnet/sf/saxon/om/StructuredQName;

    const-string v10, "value"

    const-string v11, ""

    invoke-direct {v9, v11, v11, v10}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lnet/sf/saxon/expr/instruct/SlotManager;->allocateSlotNumber(Lnet/sf/saxon/om/StructuredQName;)I

    iget-object v8, v0, Lnet/sf/saxon/style/XSLAccumulator;->v:Lnet/sf/saxon/expr/instruct/SlotManager;

    const/4 v11, 0x1

    invoke-static {v12, v11, v8}, Lnet/sf/saxon/expr/parser/ExpressionTool;->allocateSlots(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/instruct/SlotManager;)I

    invoke-virtual {v3}, Lnet/sf/saxon/style/XSLAccumulatorRule;->isPostDescent()Z

    move-result v8

    xor-int/2addr v8, v11

    if-eqz v8, :cond_0

    iget-object v8, v0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v8}, Lnet/sf/saxon/expr/accum/Accumulator;->getPreDescentRules()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object v8

    goto :goto_1

    :cond_0
    iget-object v8, v0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v8}, Lnet/sf/saxon/expr/accum/Accumulator;->getPostDescentRules()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object v8

    :goto_1
    new-instance v10, Lnet/sf/saxon/expr/accum/AccumulatorRule;

    iget-object v9, v0, Lnet/sf/saxon/style/XSLAccumulator;->v:Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-virtual {v3}, Lnet/sf/saxon/style/XSLAccumulatorRule;->isPostDescent()Z

    move-result v5

    invoke-direct {v10, v12, v9, v5}, Lnet/sf/saxon/expr/accum/AccumulatorRule;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/SlotManager;Z)V

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/style/ComponentDeclaration;->getModule()Lnet/sf/saxon/style/StylesheetModule;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/style/ComponentDeclaration;->getModule()Lnet/sf/saxon/style/StylesheetModule;

    move-result-object v9

    invoke-virtual {v9}, Lnet/sf/saxon/style/StylesheetModule;->getPrecedence()I

    move-result v16

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    add-int/lit8 v19, v15, 0x1

    const/16 v20, 0x0

    move-object v9, v4

    move-object/from16 v21, v10

    move v7, v11

    move-object v11, v5

    move-object v5, v12

    move/from16 v12, v16

    move-wide/from16 v13, v17

    move/from16 v16, v20

    invoke-virtual/range {v8 .. v16}, Lnet/sf/saxon/trans/SimpleMode;->addRule(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/trans/rules/RuleTarget;Lnet/sf/saxon/style/StylesheetModule;IDII)V

    invoke-virtual {v0, v3, v4, v5}, Lnet/sf/saxon/style/XSLAccumulator;->a0(Lnet/sf/saxon/style/XSLAccumulatorRule;Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/Expression;)V

    iget-object v8, v0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v8}, Lnet/sf/saxon/expr/accum/Accumulator;->isDeclaredStreamable()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v3}, Lnet/sf/saxon/style/XSLAccumulatorRule;->isPostDescent()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v3}, Lnet/sf/saxon/style/XSLAccumulatorRule;->isCapture()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object/from16 v8, v21

    invoke-virtual {v8, v7}, Lnet/sf/saxon/expr/accum/AccumulatorRule;->setCapturing(Z)V

    :cond_1
    invoke-virtual {v4}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v7

    instance-of v8, v7, Lnet/sf/saxon/pattern/NodeTest;

    const-string v9, "SXWN9999"

    if-eqz v8, :cond_2

    invoke-interface {v7}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v7

    sget-object v8, Lnet/sf/saxon/type/UType;->DOCUMENT:Lnet/sf/saxon/type/UType;

    sget-object v10, Lnet/sf/saxon/type/UType;->CHILD_NODE_KINDS:Lnet/sf/saxon/type/UType;

    invoke-virtual {v8, v10}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "An accumulator rule that matches attribute or namespace nodes has no effect"

    invoke-virtual {v3, v7, v9}, Lnet/sf/saxon/style/StyleElement;->compileWarning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    instance-of v7, v7, Lnet/sf/saxon/type/AtomicType;

    if-eqz v7, :cond_3

    const-string v7, "An accumulator rule that matches atomic values has no effect"

    invoke-virtual {v3, v7, v9}, Lnet/sf/saxon/style/StyleElement;->compileWarning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    iget-object v3, v0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v3, v5}, Lnet/sf/saxon/expr/accum/Accumulator;->addChildExpression(Lnet/sf/saxon/expr/Expression;)V

    iget-object v3, v0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/accum/Accumulator;->addChildExpression(Lnet/sf/saxon/expr/Expression;)V

    move/from16 v15, v19

    const/4 v5, 0x4

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_4
    iget-object v1, v0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/accum/Accumulator;->getPreDescentRules()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/trans/SimpleMode;->allocateAllPatternSlots()V

    iget-object v0, v0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/accum/Accumulator;->getPostDescentRules()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/SimpleMode;->allocateAllPatternSlots()V

    return-void
.end method

.method public generateByteCode(Lnet/sf/saxon/expr/parser/Optimizer;)V
    .locals 0

    return-void
.end method

.method public getActor()Lnet/sf/saxon/expr/instruct/Actor;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getContainingPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/expr/instruct/Actor;->makeDeclaringComponent(Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/style/StylesheetPackage;)Lnet/sf/saxon/expr/Component;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    return-object p0
.end method

.method public getObjectName()Lnet/sf/saxon/om/StructuredQName;
    .locals 3

    invoke-super {p0}, Lnet/sf/saxon/style/StyleElement;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    const-string v1, "name"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "badly-named-accumulator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->generateId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "saxon"

    const-string v2, "http://saxon.sf.net/"

    invoke-direct {v0, v1, v2, p0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lnet/sf/saxon/style/StyleElement;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->setObjectName(Lnet/sf/saxon/om/StructuredQName;)V

    :cond_1
    return-object v0
.end method

.method public getResultType()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/accum/Accumulator;->getType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0
.end method

.method public getSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLAccumulator;->v:Lnet/sf/saxon/expr/instruct/SlotManager;

    return-object p0
.end method

.method public getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/accum/Accumulator;->getAccumulatorName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v1, 0x81

    invoke-direct {p0, v1, v0}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public index(Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/style/PrincipalStylesheetModule;)V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/accum/Accumulator;->getAccumulatorName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLAccumulator;->c0()V

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {p1}, Lnet/sf/saxon/style/ComponentDeclaration;->getPrecedence()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/accum/Accumulator;->setImportPrecedence(I)V

    invoke-virtual {p2}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getAccumulatorManager()Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/Compilation;->getStyleNodeFactory(Z)Lnet/sf/saxon/style/StyleNodeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/style/StyleNodeFactory;->makeAccumulatorManager()Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->setAccumulatorManager(Lnet/sf/saxon/expr/accum/AccumulatorRegistry;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/style/Compilation;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/PackageData;->setAccumulatorRegistry(Lnet/sf/saxon/expr/accum/AccumulatorRegistry;)V

    :cond_1
    invoke-virtual {p2}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getAccumulatorManager()Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

    move-result-object p2

    iget-object v0, p0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/accum/Accumulator;->getAccumulatorName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/accum/AccumulatorRegistry;->getAccumulator(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/accum/Accumulator;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lnet/sf/saxon/expr/accum/Accumulator;->getImportPrecedence()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/style/ComponentDeclaration;->getPrecedence()I

    move-result v1

    if-ne v0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There are two accumulators with the same name ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/accum/Accumulator;->getAccumulatorName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") and the same import precedence"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XTSE3350"

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/style/ComponentDeclaration;->getPrecedence()I

    move-result p1

    if-le v0, p1, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {p2, p0}, Lnet/sf/saxon/expr/accum/AccumulatorRegistry;->addAccumulator(Lnet/sf/saxon/expr/accum/Accumulator;)V

    return-void
.end method

.method public isDeclaration()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public optimize(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public prepareAttributes()V
    .locals 7

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "initial-value"

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v6, "streamable"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {p0, v5, v1}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/accum/Accumulator;->setInitialValueExpression(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_0

    :cond_3
    const-string v1, "as"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :try_start_0
    invoke-virtual {p0, v5}, Lnet/sf/saxon/style/StyleElement;->makeSequenceType(Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v3, v2}, Lnet/sf/saxon/expr/accum/Accumulator;->setType(Lnet/sf/saxon/value/SequenceType;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2, v1}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "http://saxon.sf.net/"

    invoke-interface {v3, v1}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/StyleElement;->isExtensionAttributeAllowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    const-string v2, "saxon:trace"

    invoke-virtual {p0, v2, v5}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/accum/Accumulator;->setTracing(Z)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, v3}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/accum/Accumulator;->getType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/accum/Accumulator;->setType(Lnet/sf/saxon/value/SequenceType;)V

    :cond_7
    iget-object v0, p0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/accum/Accumulator;->getInitialValueExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    new-instance v0, Lnet/sf/saxon/expr/StringLiteral;

    sget-object v1, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    iget-object p0, p0, Lnet/sf/saxon/style/XSLAccumulator;->u:Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/accum/Accumulator;->setInitialValueExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_8
    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->makeSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLAccumulator;->v:Lnet/sf/saxon/expr/instruct/SlotManager;

    const-string p1, "XTSE0010"

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->checkTopLevel(Ljava/lang/String;Z)V

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/NodeInfo;

    instance-of v3, v3, Lnet/sf/saxon/style/XSLAccumulatorRule;

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const-string v3, "Only xsl:accumulator-rule is allowed here"

    invoke-virtual {p0, v3, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const-string v0, "xsl:accumulator must contain at least one xsl:accumulator-rule"

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
