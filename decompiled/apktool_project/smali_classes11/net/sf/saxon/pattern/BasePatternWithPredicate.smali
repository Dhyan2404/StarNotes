.class public Lnet/sf/saxon/pattern/BasePatternWithPredicate;
.super Lnet/sf/saxon/pattern/Pattern;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/pattern/PatternWithPredicate;


# instance fields
.field public q:Lnet/sf/saxon/expr/Operand;

.field public r:Lnet/sf/saxon/expr/Operand;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/pattern/Pattern;-><init>()V

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->ATOMIC_SEQUENCE:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->q:Lnet/sf/saxon/expr/Operand;

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    sget-object v0, Lnet/sf/saxon/expr/OperandRole;->FOCUS_CONTROLLED_ACTION:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {p1, p0, p2, v0}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->r:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getBasePattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method


# virtual methods
.method public allocateSlots(Lnet/sf/saxon/expr/instruct/SlotManager;I)I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->allocateSlots(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/instruct/SlotManager;)I

    move-result p2

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getBasePattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->allocateSlots(Lnet/sf/saxon/expr/instruct/SlotManager;I)I

    move-result p0

    return p0
.end method

.method public bindCurrent(Lnet/sf/saxon/expr/LocalBinding;)V
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const-class v1, Lnet/sf/saxon/functions/Current;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->r:Lnet/sf/saxon/expr/Operand;

    new-instance v1, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {v1, p1}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lnet/sf/saxon/functions/Current;->FN_CURRENT:Lnet/sf/saxon/om/StructuredQName;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->callsFunction(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0, p1}, Lnet/sf/saxon/pattern/Pattern;->replaceCurrent(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/LocalBinding;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getBasePattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/Pattern;->bindCurrent(Lnet/sf/saxon/expr/LocalBinding;)V

    return-void
.end method

.method public computeHashCode()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getBasePattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public convertToTypedPattern(Ljava/lang/String;)Lnet/sf/saxon/pattern/Pattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getBasePattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/pattern/Pattern;->convertToTypedPattern(Ljava/lang/String;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getBasePattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/pattern/BasePatternWithPredicate;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public bridge synthetic copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;
    .locals 3

    .line 2
    new-instance v0, Lnet/sf/saxon/pattern/BasePatternWithPredicate;

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getBasePattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/pattern/Pattern;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/Expression;)V

    .line 4
    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    .line 5
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getOriginalText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/pattern/Pattern;->setOriginalText(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/pattern/BasePatternWithPredicate;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/pattern/BasePatternWithPredicate;

    invoke-virtual {p1}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getBasePattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getBasePattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "p.withPredicate"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getBasePattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/pattern/Pattern;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getBasePattern()Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->q:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/pattern/Pattern;

    return-object p0
.end method

.method public getDependencies()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result p0

    return p0
.end method

.method public getFingerprint()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getBasePattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getFingerprint()I

    move-result p0

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getBasePattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getPredicate()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->r:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getUType()Lnet/sf/saxon/type/UType;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getBasePattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0
.end method

.method public matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getBasePattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->t(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    return p0
.end method

.method public matchesBeneathAnchor(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getBasePattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lnet/sf/saxon/pattern/Pattern;->matchesBeneathAnchor(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->t(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public matchesCurrentGroup()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getBasePattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->matchesCurrentGroup()Z

    move-result p0

    return p0
.end method

.method public operands()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->q:Lnet/sf/saxon/expr/Operand;

    iget-object v1, p0, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->r:Lnet/sf/saxon/expr/Operand;

    filled-new-array {v0, v1}, [Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->operandList([Lnet/sf/saxon/expr/Operand;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->q:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getBasePattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p2

    invoke-virtual {v0, p2}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    .line 3
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getBasePattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p2, v0, v1}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->r:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {v0, p2}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    .line 7
    iget-object p2, p0, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->r:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/parser/Optimizer;->eliminateCommonSubexpressions(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method

.method public reconstruct()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getBasePattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final t(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object p2

    new-instance v0, Lnet/sf/saxon/tree/iter/ManualIterator;

    invoke-direct {v0, p1}, Lnet/sf/saxon/tree/iter/ManualIterator;-><init>(Lnet/sf/saxon/om/Item;)V

    invoke-interface {p2, v0}, Lnet/sf/saxon/expr/XPathContext;->setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lnet/sf/saxon/expr/XPathContext;->setCurrentOutputUri(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/Expression;->effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException$Circularity; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException$StackOverflow; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->handleDynamicError(Lnet/sf/saxon/trans/XPathException;Lnet/sf/saxon/expr/XPathContext;)V

    const/4 p0, 0x0

    return p0

    :catch_1
    move-exception p0

    throw p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getBasePattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/Pattern;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->q:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getBasePattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p2

    invoke-virtual {v0, p2}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    .line 3
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getBasePattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p2, v0, v1}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->r:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method
