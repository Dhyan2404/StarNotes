.class public Lnet/sf/saxon/expr/sort/DocumentSorter;
.super Lnet/sf/saxon/expr/UnaryExpression;
.source "SourceFile"


# instance fields
.field public final o:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/UnaryExpression;-><init>(Lnet/sf/saxon/expr/Expression;)V

    .line 2
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result p1

    const/high16 v0, 0x10000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    const/high16 v0, 0x1000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lnet/sf/saxon/expr/sort/GlobalOrderComparer;->getInstance()Lnet/sf/saxon/expr/sort/GlobalOrderComparer;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/DocumentSorter;->o:Ljava/util/Comparator;

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-static {}, Lnet/sf/saxon/expr/sort/LocalOrderComparer;->getInstance()Lnet/sf/saxon/expr/sort/LocalOrderComparer;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/DocumentSorter;->o:Ljava/util/Comparator;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Z)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/UnaryExpression;-><init>(Lnet/sf/saxon/expr/Expression;)V

    if-eqz p2, :cond_0

    .line 6
    invoke-static {}, Lnet/sf/saxon/expr/sort/LocalOrderComparer;->getInstance()Lnet/sf/saxon/expr/sort/LocalOrderComparer;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/DocumentSorter;->o:Ljava/util/Comparator;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lnet/sf/saxon/expr/sort/GlobalOrderComparer;->getInstance()Lnet/sf/saxon/expr/sort/GlobalOrderComparer;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/DocumentSorter;->o:Ljava/util/Comparator;

    :goto_0
    return-void
.end method


# virtual methods
.method public computeSpecialProperties()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result p0

    const/high16 v0, 0x20000

    or-int/2addr p0, v0

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/sort/DocumentSorter;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/expr/sort/DocumentSorter;-><init>(Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    return p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "docOrder"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/DocumentSorter;->o:Ljava/util/Comparator;

    instance-of v0, v0, Lnet/sf/saxon/expr/sort/LocalOrderComparer;

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "intra"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getComparer()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/DocumentSorter;->o:Ljava/util/Comparator;

    return-object p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "docOrder"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getNetCost()I
    .locals 0

    const/16 p0, 0x1e

    return p0
.end method

.method public getOperandRole()Lnet/sf/saxon/expr/OperandRole;
    .locals 0

    sget-object p0, Lnet/sf/saxon/expr/OperandRole;->SAME_FOCUS_ACTION:Lnet/sf/saxon/expr/OperandRole;

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "DocumentSorterAdjunct"

    return-object p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/DocumentSorter;->o:Ljava/util/Comparator;

    invoke-direct {v0, p1, p0}, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getOperand()Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->isStaticPropertiesKnown()Z

    move-result v1

    :goto_0
    const/high16 v2, 0x20000

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/Expression;->hasSpecialProperty(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v2

    invoke-static {v2}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    instance-of v2, v0, Lnet/sf/saxon/expr/SlashExpression;

    if-eqz v2, :cond_4

    move-object v3, v0

    check-cast v3, Lnet/sf/saxon/expr/SlashExpression;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v3}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    instance-of v6, v4, Lnet/sf/saxon/expr/sort/ConditionalSorter;

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    const/high16 v7, 0x80000

    invoke-virtual {v6, v7}, Lnet/sf/saxon/expr/Expression;->hasSpecialProperty(I)Z

    move-result v6

    if-eqz v6, :cond_2

    check-cast v4, Lnet/sf/saxon/expr/sort/ConditionalSorter;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/sort/ConditionalSorter;->getDocumentSorter()Lnet/sf/saxon/expr/sort/DocumentSorter;

    move-result-object p0

    invoke-virtual {v4}, Lnet/sf/saxon/expr/sort/ConditionalSorter;->getCondition()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/expr/SlashExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-direct {v1, p0, v5}, Lnet/sf/saxon/expr/SlashExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/sort/ConditionalSorter;

    new-instance p2, Lnet/sf/saxon/expr/sort/DocumentSorter;

    invoke-direct {p2, p0}, Lnet/sf/saxon/expr/sort/DocumentSorter;-><init>(Lnet/sf/saxon/expr/Expression;)V

    invoke-direct {p1, v0, p2}, Lnet/sf/saxon/expr/sort/ConditionalSorter;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/sort/DocumentSorter;)V

    return-object p1

    :cond_2
    instance-of v6, v4, Lnet/sf/saxon/expr/sort/DocumentSorter;

    if-eqz v6, :cond_3

    instance-of v6, v5, Lnet/sf/saxon/expr/AxisExpression;

    if-eqz v6, :cond_3

    move-object v6, v5

    check-cast v6, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {v6}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    new-instance v0, Lnet/sf/saxon/expr/SlashExpression;

    check-cast v4, Lnet/sf/saxon/expr/sort/DocumentSorter;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lnet/sf/saxon/expr/SlashExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    new-instance p0, Lnet/sf/saxon/expr/sort/DocumentSorter;

    invoke-direct {p0, v0}, Lnet/sf/saxon/expr/sort/DocumentSorter;-><init>(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/DocumentSorter;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {v5}, Lnet/sf/saxon/expr/parser/ExpressionTool;->dependsOnFocus(Lnet/sf/saxon/expr/Expression;)Z

    move-result v4

    if-nez v4, :cond_4

    const/high16 v4, 0x2000000

    invoke-virtual {v5, v4}, Lnet/sf/saxon/expr/Expression;->hasSpecialProperty(I)Z

    move-result v4

    if-nez v4, :cond_4

    const/high16 v4, 0x800000

    invoke-virtual {v5, v4}, Lnet/sf/saxon/expr/Expression;->hasSpecialProperty(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/FirstItemExpression;->makeFirstItemExpression(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/expr/sort/DocumentSorter;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/sort/DocumentSorter;-><init>(Lnet/sf/saxon/expr/Expression;)V

    new-instance v2, Lnet/sf/saxon/expr/SlashExpression;

    invoke-direct {v2, v0, v1}, Lnet/sf/saxon/expr/SlashExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/expr/SlashExpression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->resetLocalStaticProperties()V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->isOptimizeForStreaming()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    instance-of p2, p2, Lnet/sf/saxon/expr/sort/ConditionalSorter;

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object p1

    check-cast v0, Lnet/sf/saxon/expr/SlashExpression;

    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/expr/parser/Optimizer;->makeConditionalDocumentSorter(Lnet/sf/saxon/expr/sort/DocumentSorter;Lnet/sf/saxon/expr/SlashExpression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method public simplify()Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->hasSpecialProperty(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public toPattern(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/pattern/Pattern;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->toPattern(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/UnaryExpression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    if-eq p2, p0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p2

    sget-object v0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p2, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const/16 v0, 0x14

    const-string v1, "document-order sorter"

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->NODE_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1, v2, p2, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/UnaryExpression;->setBaseExpression(Lnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method

.method public unordered(ZZ)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->unordered(ZZ)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    const/high16 v0, 0x20000

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/Expression;->hasSpecialProperty(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    if-nez p1, :cond_1

    return-object p2

    :cond_1
    instance-of v0, p2, Lnet/sf/saxon/expr/SlashExpression;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Lnet/sf/saxon/expr/SlashExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/SlashExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0}, Lnet/sf/saxon/expr/SlashExpression;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->unfilteredExpression(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v0, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->unfilteredExpression(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v3, v1, Lnet/sf/saxon/expr/AxisExpression;

    if-eqz v3, :cond_3

    check-cast v1, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    invoke-virtual {v1}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_3

    :cond_2
    instance-of v1, v0, Lnet/sf/saxon/expr/AxisExpression;

    if-eqz v1, :cond_3

    check-cast v0, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-virtual {p2, p1, v2}, Lnet/sf/saxon/expr/Expression;->unordered(ZZ)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/UnaryExpression;->setBaseExpression(Lnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method
