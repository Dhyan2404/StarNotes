.class public Lnet/sf/saxon/style/XSLNextIteration;
.super Lnet/sf/saxon/style/XSLBreakOrContinue;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLBreakOrContinue;-><init>()V

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

    new-instance v0, Lnet/sf/saxon/expr/instruct/NextIteration;

    invoke-direct {v0}, Lnet/sf/saxon/expr/instruct/NextIteration;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lnet/sf/saxon/style/StyleElement;->getWithParamInstructions(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/instruct/NextIteration;->setParameters([Lnet/sf/saxon/expr/instruct/WithParam;)V

    iget-object p0, p0, Lnet/sf/saxon/style/XSLBreakOrContinue;->xslIterate:Lnet/sf/saxon/style/XSLIterate;

    if-eqz p0, :cond_3

    const/4 p2, 0x3

    invoke-virtual {p0, p2}, Lnet/sf/saxon/tree/linked/NodeImpl;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p2

    if-eqz p2, :cond_3

    instance-of v2, p2, Lnet/sf/saxon/style/XSLLocalParam;

    if-eqz v2, :cond_0

    check-cast p2, Lnet/sf/saxon/style/XSLLocalParam;

    invoke-virtual {p2}, Lnet/sf/saxon/style/XSLGeneralVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {p2}, Lnet/sf/saxon/style/XSLLocalParam;->getCompiledParam()Lnet/sf/saxon/expr/instruct/LocalParam;

    move-result-object v3

    array-length v4, p1

    move v5, v1

    :goto_1
    const/4 v6, 0x1

    if-ge v5, v4, :cond_2

    aget-object v7, p1, v5

    invoke-virtual {v7}, Lnet/sf/saxon/expr/instruct/WithParam;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v8

    invoke-virtual {v2, v8}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v3}, Lnet/sf/saxon/expr/instruct/LocalParam;->getSlotNumber()I

    move-result v4

    invoke-virtual {v7, v4}, Lnet/sf/saxon/expr/instruct/WithParam;->setSlotNumber(I)V

    move v4, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_2
    if-nez v4, :cond_0

    new-instance v4, Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-direct {v4}, Lnet/sf/saxon/expr/instruct/WithParam;-><init>()V

    invoke-virtual {v4, v2}, Lnet/sf/saxon/expr/instruct/WithParam;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    new-instance v2, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {v2, v3}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    invoke-virtual {v4, v0, v2}, Lnet/sf/saxon/expr/instruct/WithParam;->setSelectExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v3}, Lnet/sf/saxon/expr/instruct/LocalParam;->getSlotNumber()I

    move-result v3

    invoke-virtual {v4, v3}, Lnet/sf/saxon/expr/instruct/WithParam;->setSlotNumber(I)V

    invoke-virtual {p2}, Lnet/sf/saxon/style/XSLLocalParam;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3, v1}, Lnet/sf/saxon/expr/VariableReference;->setStaticType(Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/GroundedValue;I)V

    array-length p2, p1

    add-int/2addr p2, v6

    new-array p2, p2, [Lnet/sf/saxon/expr/instruct/WithParam;

    aput-object v4, p2, v1

    array-length v2, p1

    invoke-static {p1, v1, p2, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p2

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getDeclaredParamType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/value/SequenceType;
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/style/XSLBreakOrContinue;->xslIterate:Lnet/sf/saxon/style/XSLIterate;

    new-instance v0, Lcom/sunia/HTREnginev2/tqo;

    const-class v1, Lnet/sf/saxon/style/XSLLocalParam;

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/tqo;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Lnet/sf/saxon/pattern/NodeSelector;->of(Ljava/util/function/Predicate;)Lnet/sf/saxon/pattern/NodeSelector;

    move-result-object v0

    invoke-interface {p0, v0}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    check-cast v0, Lnet/sf/saxon/style/XSLLocalParam;

    invoke-virtual {v0}, Lnet/sf/saxon/style/XSLGeneralVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/style/XSLLocalParam;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public postValidate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/XSLBreakOrContinue;->xslIterate:Lnet/sf/saxon/style/XSLIterate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/w2n;

    const-class v1, Lnet/sf/saxon/style/XSLWithParam;

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/w2n;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    check-cast v1, Lnet/sf/saxon/style/XSLWithParam;

    iget-object v2, p0, Lnet/sf/saxon/style/XSLBreakOrContinue;->xslIterate:Lnet/sf/saxon/style/XSLIterate;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/tree/linked/NodeImpl;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    instance-of v4, v3, Lnet/sf/saxon/style/XSLLocalParam;

    if-eqz v4, :cond_2

    check-cast v3, Lnet/sf/saxon/style/XSLLocalParam;

    invoke-virtual {v3}, Lnet/sf/saxon/style/XSLGeneralVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    invoke-virtual {v1}, Lnet/sf/saxon/style/XSLGeneralVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lnet/sf/saxon/style/XSLLocalParam;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/style/XSLWithParam;->checkAgainstRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/style/XSLGeneralVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not declared in the containing xsl:iterate instruction"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XTSE3130"

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLBreakOrContinue;->validatePosition()V

    iget-object p1, p0, Lnet/sf/saxon/style/XSLBreakOrContinue;->xslIterate:Lnet/sf/saxon/style/XSLIterate;

    if-nez p1, :cond_0

    const-string p1, "xsl:next-iteration must be a descendant of an xsl:iterate instruction"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    instance-of v1, v0, Lnet/sf/saxon/style/XSLWithParam;

    if-eqz v1, :cond_2

    check-cast v0, Lnet/sf/saxon/style/XSLWithParam;

    invoke-virtual {v0}, Lnet/sf/saxon/style/XSLWithParam;->isTunnelParam()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "An xsl:with-param element within xsl:iterate must not specify tunnel=\'yes\'"

    const-string v1, "XTSE0020"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    const/4 v2, 0x3

    const-string v3, "XTSE0010"

    if-ne v1, v2, :cond_3

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "No character data is allowed within xsl:next-iteration"

    invoke-virtual {p0, v0, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not allowed as a child of xsl:next-iteration"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method
