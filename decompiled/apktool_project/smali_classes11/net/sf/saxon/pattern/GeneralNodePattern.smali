.class public final Lnet/sf/saxon/pattern/GeneralNodePattern;
.super Lnet/sf/saxon/pattern/Pattern;
.source "SourceFile"


# instance fields
.field public q:Lnet/sf/saxon/expr/Expression;

.field public final r:Lnet/sf/saxon/pattern/NodeTest;

.field public s:Lnet/sf/saxon/expr/Expression;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/pattern/NodeTest;)V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/pattern/Pattern;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->s:Lnet/sf/saxon/expr/Expression;

    iput-object p1, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->q:Lnet/sf/saxon/expr/Expression;

    iput-object p2, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->r:Lnet/sf/saxon/pattern/NodeTest;

    return-void
.end method


# virtual methods
.method public allocateSlots(Lnet/sf/saxon/expr/instruct/SlotManager;I)I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->q:Lnet/sf/saxon/expr/Expression;

    invoke-static {p0, p2, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->allocateSlots(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/instruct/SlotManager;)I

    move-result p0

    return p0
.end method

.method public bindCurrent(Lnet/sf/saxon/expr/LocalBinding;)V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->q:Lnet/sf/saxon/expr/Expression;

    sget-object v1, Lnet/sf/saxon/functions/Current;->FN_CURRENT:Lnet/sf/saxon/om/StructuredQName;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->callsFunction(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->q:Lnet/sf/saxon/expr/Expression;

    const-class v1, Lnet/sf/saxon/functions/Current;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {v0, p1}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    iput-object v0, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->q:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->q:Lnet/sf/saxon/expr/Expression;

    invoke-static {p0, p1}, Lnet/sf/saxon/pattern/Pattern;->replaceCurrent(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/LocalBinding;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public computeHashCode()I
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->q:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result p0

    const v0, 0x146b9

    xor-int/2addr p0, v0

    return p0
.end method

.method public bridge synthetic copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/GeneralNodePattern;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;
    .locals 3

    .line 2
    new-instance v0, Lnet/sf/saxon/pattern/GeneralNodePattern;

    iget-object v1, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->q:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->r:Lnet/sf/saxon/pattern/NodeTest;

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/pattern/GeneralNodePattern;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/pattern/NodeTest;)V

    .line 3
    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getOriginalText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/pattern/Pattern;->setOriginalText(Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->s:Lnet/sf/saxon/expr/Expression;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    iput-object p0, v0, Lnet/sf/saxon/pattern/GeneralNodePattern;->s:Lnet/sf/saxon/expr/Expression;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/pattern/GeneralNodePattern;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/pattern/GeneralNodePattern;

    iget-object p0, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->q:Lnet/sf/saxon/expr/Expression;

    iget-object p1, p1, Lnet/sf/saxon/pattern/GeneralNodePattern;->q:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "p.genNode"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    iget-object v0, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->r:Lnet/sf/saxon/pattern/NodeTest;

    invoke-static {v0}, Lnet/sf/saxon/type/AlphaCode;->fromItemType(Lnet/sf/saxon/type/ItemType;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->q:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getDependencies()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->q:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result p0

    and-int/lit16 p0, p0, 0x180

    return p0
.end method

.method public getEquivalentExpr()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->q:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getFingerprint()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->r:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NodeTest;->getFingerprint()I

    move-result p0

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->r:Lnet/sf/saxon/pattern/NodeTest;

    return-object p0
.end method

.method public getUType()Lnet/sf/saxon/type/UType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->r:Lnet/sf/saxon/pattern/NodeTest;

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0
.end method

.method public isMotionless()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public makeTopNodeEquivalent()V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->q:Lnet/sf/saxon/expr/Expression;

    instance-of v1, v0, Lnet/sf/saxon/expr/SlashExpression;

    if-eqz v1, :cond_2

    check-cast v0, Lnet/sf/saxon/expr/SlashExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/SlashExpression;->getFirstStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->getAxisNavigation(Lnet/sf/saxon/expr/Expression;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->q:Lnet/sf/saxon/expr/Expression;

    new-instance v1, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {v1}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/SlashExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/SlashExpression;->getFirstStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    :goto_0
    instance-of v2, v1, Lnet/sf/saxon/expr/FilterExpression;

    if-eqz v2, :cond_0

    check-cast v1, Lnet/sf/saxon/expr/FilterExpression;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lnet/sf/saxon/expr/SingleItemFilter;

    if-eqz v2, :cond_1

    check-cast v1, Lnet/sf/saxon/expr/SingleItemFilter;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lnet/sf/saxon/expr/AxisExpression;

    if-eqz v2, :cond_2

    check-cast v1, Lnet/sf/saxon/expr/AxisExpression;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/AxisExpression;->setAxis(I)V

    iput-object v0, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->s:Lnet/sf/saxon/expr/Expression;

    :cond_2
    return-void
.end method

.method public matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->r:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v1, p1, v0}, Lnet/sf/saxon/pattern/NodeTest;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v2

    move-object v3, p1

    :goto_0
    invoke-interface {v2}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->s:Lnet/sf/saxon/expr/Expression;

    if-eqz v0, :cond_1

    sget-object v0, Lnet/sf/saxon/type/UType;->CHILD_NODE_KINDS:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, v3}, Lnet/sf/saxon/type/UType;->matches(Lnet/sf/saxon/om/Item;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->s:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v3, v0, p2}, Lnet/sf/saxon/pattern/GeneralNodePattern;->t(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    return p0

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0, p1, v4, p2}, Lnet/sf/saxon/pattern/GeneralNodePattern;->matchesBeneathAnchor(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v0

    :cond_3
    move-object v3, v4

    goto :goto_0
.end method

.method public matchesBeneathAnchor(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->r:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/pattern/NodeTest;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_3

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p2

    if-nez p2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/pattern/GeneralNodePattern;->matchesBeneathAnchor(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->q:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, p2, v0, p3}, Lnet/sf/saxon/pattern/GeneralNodePattern;->t(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    return p0
.end method

.method public operands()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    iget-object v1, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->q:Lnet/sf/saxon/expr/Expression;

    sget-object v2, Lnet/sf/saxon/expr/OperandRole;->SAME_FOCUS_ACTION:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, v1, v2}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    return-object v0
.end method

.method public bridge synthetic optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pattern/GeneralNodePattern;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getDefaultContextItemStaticInfo()Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->q:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v1, p1, v0}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->q:Lnet/sf/saxon/expr/Expression;

    .line 5
    instance-of v2, v1, Lnet/sf/saxon/expr/FilterExpression;

    if-eqz v2, :cond_0

    check-cast v1, Lnet/sf/saxon/expr/FilterExpression;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/FilterExpression;->isFilterIsPositional()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->q:Lnet/sf/saxon/expr/Expression;

    const/4 v2, 0x1

    invoke-static {v1, p2, v2}, Lnet/sf/saxon/pattern/PatternMaker;->fromExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/Configuration;Z)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p2

    .line 7
    invoke-virtual {p2, p1, v0}, Lnet/sf/saxon/pattern/Pattern;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p0
.end method

.method public final t(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p4}, Lnet/sf/saxon/expr/XPathContext;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object p4

    new-instance v0, Lnet/sf/saxon/tree/iter/ManualIterator;

    invoke-direct {v0, p2}, Lnet/sf/saxon/tree/iter/ManualIterator;-><init>(Lnet/sf/saxon/om/Item;)V

    invoke-interface {p4, v0}, Lnet/sf/saxon/expr/XPathContext;->setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p3, p4}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    if-nez v0, :cond_1

    return p2

    :cond_1
    invoke-interface {v0, p1}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException$Circularity; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException$StackOverflow; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1, p4}, Lnet/sf/saxon/pattern/Pattern;->handleDynamicError(Lnet/sf/saxon/trans/XPathException;Lnet/sf/saxon/expr/XPathContext;)V

    return p2

    :catch_1
    move-exception p0

    throw p0
.end method

.method public bridge synthetic typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pattern/GeneralNodePattern;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;

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
    new-instance p2, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;-><init>(Lnet/sf/saxon/type/ItemType;Z)V

    .line 3
    iget-object v0, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->q:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/pattern/GeneralNodePattern;->q:Lnet/sf/saxon/expr/Expression;

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/GeneralNodePattern;->makeTopNodeEquivalent()V

    return-object p0
.end method
