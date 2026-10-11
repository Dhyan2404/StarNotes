.class public Lnet/sf/saxon/expr/sort/SortExpression;
.super Lnet/sf/saxon/expr/Expression;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/SortKeyEvaluator;


# static fields
.field public static final q:Lnet/sf/saxon/expr/OperandRole;

.field public static final r:Lnet/sf/saxon/expr/OperandRole;


# instance fields
.field public final n:Lnet/sf/saxon/expr/Operand;

.field public final o:Lnet/sf/saxon/expr/Operand;

.field public transient p:[Lnet/sf/saxon/expr/sort/AtomicComparer;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    sget-object v1, Lnet/sf/saxon/expr/OperandUsage;->ABSORPTION:Lnet/sf/saxon/expr/OperandUsage;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_ATOMIC:Lnet/sf/saxon/value/SequenceType;

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    sput-object v0, Lnet/sf/saxon/expr/sort/SortExpression;->q:Lnet/sf/saxon/expr/OperandRole;

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    const/4 v3, 0x6

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    sput-object v0, Lnet/sf/saxon/expr/sort/SortExpression;->r:Lnet/sf/saxon/expr/OperandRole;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;)V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/SortExpression;->p:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->FOCUS_CONTROLLING_SELECT:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/SortExpression;->n:Lnet/sf/saxon/expr/Operand;

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->ATOMIC_SEQUENCE:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p2, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/SortExpression;->o:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortExpression;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortExpression;->getSortKeyDefinitionList()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->isSetContextForSortKey()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getSortKey()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getSortKey()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    :goto_1
    invoke-virtual {v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getOrder()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    :cond_2
    invoke-virtual {v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getCaseOrder()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    :cond_3
    invoke-virtual {v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getDataTypeExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    :cond_4
    invoke-virtual {v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getLanguage()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    :cond_5
    invoke-virtual {v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getCollationNameExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method public computeCardinality()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortExpression;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    return p0
.end method

.method public computeSpecialProperties()I
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortExpression;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->hasSpecialProperty(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortExpression;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/Expression;->hasSpecialProperty(I)Z

    move-result v0

    if-eqz v0, :cond_1

    or-int/2addr v1, v2

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortExpression;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    const/high16 v0, 0x800000

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->hasSpecialProperty(I)Z

    move-result p0

    if-eqz p0, :cond_2

    or-int/2addr v1, v0

    :cond_2
    return v1
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortExpression;->getSortKeyDefinitionList()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result v0

    new-array v1, v0, [Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/sort/SortExpression;->getSortKeyDefinition(I)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/expr/sort/SortExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortExpression;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    new-instance v2, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    invoke-direct {v2, v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;-><init>([Lnet/sf/saxon/expr/sort/SortKeyDefinition;)V

    invoke-direct {v0, p1, v2}, Lnet/sf/saxon/expr/sort/SortExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortExpression;->p:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    iput-object p0, v0, Lnet/sf/saxon/expr/sort/SortExpression;->p:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    return-object v0
.end method

.method public evaluateSortKey(ILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/SortExpression;->getSortKeyDefinition(I)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getSortKey()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/AtomicValue;

    return-object p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "sort"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    const-string v0, "select"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortExpression;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortExpression;->getSortKeyDefinitionList()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getBaseExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortExpression;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getBaseOperand()Lnet/sf/saxon/expr/Operand;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortExpression;->n:Lnet/sf/saxon/expr/Operand;

    return-object p0
.end method

.method public getComparators()[Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortExpression;->p:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    return-object p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "sort"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortExpression;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getSelect()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortExpression;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getSortKeyDefinition(I)Lnet/sf/saxon/expr/sort/SortKeyDefinition;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortExpression;->getSortKeyDefinitionList()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->getSortKeyDefinition(I)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object p0

    return-object p0
.end method

.method public getSortKeyDefinitionList()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortExpression;->o:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "SortExpression"

    return-object p0
.end method

.method public isSortKey(Lnet/sf/saxon/expr/Expression;)Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortExpression;->getSortKeyDefinitionList()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getSortKey()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortExpression;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v3

    instance-of v0, v3, Lnet/sf/saxon/tree/iter/EmptyIterator;

    if-eqz v0, :cond_0

    return-object v3

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortExpression;->p:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortExpression;->getSortKeyDefinitionList()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result v0

    new-array v2, v0, [Lnet/sf/saxon/expr/sort/AtomicComparer;

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/sort/SortExpression;->getSortKeyDefinition(I)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getFinalComparator()Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/sort/SortExpression;->getSortKeyDefinition(I)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object v5

    invoke-virtual {v5, p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->makeComparator(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object v5

    :cond_1
    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object v5, v2

    goto :goto_1

    :cond_3
    move-object v5, v0

    :goto_1
    new-instance v0, Lnet/sf/saxon/expr/sort/SortedIterator;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/sort/SortExpression;->getSortKeyDefinition(I)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->isSetContextForSortKey()Z

    move-result v6

    move-object v1, v0

    move-object v2, p1

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/expr/sort/SortedIterator;-><init>(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/sort/SortKeyEvaluator;[Lnet/sf/saxon/expr/sort/AtomicComparer;Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/sort/SortedIterator;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V

    return-object v0
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

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortExpression;->n:Lnet/sf/saxon/expr/Operand;

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/SortExpression;->o:Lnet/sf/saxon/expr/Operand;

    filled-new-array {v0, v1}, [Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->operandList([Lnet/sf/saxon/expr/Operand;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortExpression;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/sort/SortExpression;->getSortKeyDefinition(I)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->isSetContextForSortKey()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortExpression;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object p2

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortExpression;->getSortKeyDefinitionList()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getSortKey()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setSortKey(Lnet/sf/saxon/expr/Expression;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortExpression;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p1

    invoke-static {p1}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortExpression;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public setSelect(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortExpression;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setSortKeyDefinitionList(Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortExpression;->o:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sort("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortExpression;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortExpression;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortExpression;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/sort/SortExpression;->setSelect(Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v1

    invoke-static {v1}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortExpression;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortExpression;->getSortKeyDefinitionList()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->isFixed()Z

    move-result v2

    if-nez v2, :cond_2

    move v1, v3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortExpression;->getSortKeyDefinitionList()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result v2

    new-array v2, v2, [Lnet/sf/saxon/expr/sort/AtomicComparer;

    iput-object v2, p0, Lnet/sf/saxon/expr/sort/SortExpression;->p:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    :cond_4
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2, v3}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v2

    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortExpression;->getSortKeyDefinitionList()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/sort/SortExpression;->getSortKeyDefinition(I)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getSortKey()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-virtual {v5}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->isSetContextForSortKey()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v7

    invoke-virtual {v7, v0, v3}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    goto :goto_2

    :cond_5
    invoke-virtual {v6, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    :goto_2
    invoke-virtual {v5}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->isBackwardsCompatible()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {v6}, Lnet/sf/saxon/expr/FirstItemExpression;->makeFirstItemExpression(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    goto :goto_3

    :cond_6
    new-instance v7, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const/4 v8, 0x4

    const-string v9, "xsl:sort/select"

    invoke-direct {v7, v8, v9, v3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    const-string v8, "XTTE1020"

    invoke-virtual {v7, v8}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    sget-object v8, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_ATOMIC:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v2, v6, v8, v7, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    :goto_3
    invoke-virtual {v5}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->isSetContextForSortKey()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setSortKey(Lnet/sf/saxon/expr/Expression;Z)V

    invoke-virtual {v5, p1, p2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->isFixed()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v7

    invoke-interface {v7}, Lnet/sf/saxon/expr/StaticContext;->makeEarlyEvaluationContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object v7

    invoke-virtual {v5, v7}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->makeComparator(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setFinalComparator(Lnet/sf/saxon/expr/sort/AtomicComparer;)V

    if-eqz v1, :cond_7

    iget-object v8, p0, Lnet/sf/saxon/expr/sort/SortExpression;->p:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    aput-object v7, v8, v4

    :cond_7
    invoke-virtual {v5}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->isSetContextForSortKey()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {v6}, Lnet/sf/saxon/expr/parser/ExpressionTool;->dependsOnFocus(Lnet/sf/saxon/expr/Expression;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v5

    const-string v7, "Sort key will have no effect because its value does not depend on the context item"

    invoke-virtual {v6}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Lnet/sf/saxon/expr/StaticContext;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_9
    return-object p0
.end method
