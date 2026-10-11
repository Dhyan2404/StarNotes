.class public Lnet/sf/saxon/expr/flwor/OrderByClause;
.super Lnet/sf/saxon/expr/flwor/Clause;
.source "SourceFile"


# static fields
.field public static final SORT_KEYS_ROLE:Lnet/sf/saxon/expr/OperandRole;


# instance fields
.field public d:Lnet/sf/saxon/expr/Operand;

.field public e:[Lnet/sf/saxon/expr/sort/AtomicComparer;

.field public f:Lnet/sf/saxon/expr/Operand;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    sget-object v1, Lnet/sf/saxon/expr/OperandUsage;->NAVIGATION:Lnet/sf/saxon/expr/OperandUsage;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    new-instance v3, Lcom/sunia/HTREnginev2/whk;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/whk;-><init>()V

    const/16 v4, 0x14

    invoke-direct {v0, v4, v1, v2, v3}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Predicate;)V

    sput-object v0, Lnet/sf/saxon/expr/flwor/OrderByClause;->SORT_KEYS_ROLE:Lnet/sf/saxon/expr/OperandRole;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/flwor/FLWORExpression;[Lnet/sf/saxon/expr/sort/SortKeyDefinition;Lnet/sf/saxon/expr/flwor/TupleExpression;)V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/expr/flwor/Clause;-><init>()V

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    new-instance v1, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    invoke-direct {v1, p2}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;-><init>([Lnet/sf/saxon/expr/sort/SortKeyDefinition;)V

    sget-object p2, Lnet/sf/saxon/expr/flwor/OrderByClause;->SORT_KEYS_ROLE:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p1, v1, p2}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/flwor/OrderByClause;->d:Lnet/sf/saxon/expr/Operand;

    new-instance p2, Lnet/sf/saxon/expr/Operand;

    sget-object v0, Lnet/sf/saxon/expr/OperandRole;->FLWOR_TUPLE_CONSTRAINED:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {p2, p1, p3, v0}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p2, p0, Lnet/sf/saxon/expr/flwor/OrderByClause;->f:Lnet/sf/saxon/expr/Operand;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/expr/flwor/OrderByClause;->b(Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    instance-of p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    return p0
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/OrderByClause;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getSortKey()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsNonInlineableVariableReference(Lnet/sf/saxon/expr/Binding;)Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/OrderByClause;->getTupleExpression()Lnet/sf/saxon/expr/flwor/TupleExpression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/flwor/TupleExpression;->includesBinding(Lnet/sf/saxon/expr/Binding;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/Clause;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/flwor/OrderByClause;->copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/OrderByClause;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/OrderByClause;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/OrderByClause;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result v1

    new-array v1, v1, [Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->getSortKeyDefinition(I)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object v3

    invoke-virtual {v3, p2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lnet/sf/saxon/expr/flwor/OrderByClause;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/OrderByClause;->getTupleExpression()Lnet/sf/saxon/expr/flwor/TupleExpression;

    move-result-object v2

    invoke-virtual {v2, p2}, Lnet/sf/saxon/expr/flwor/TupleExpression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/expr/flwor/TupleExpression;

    invoke-direct {v0, p1, v1, p2}, Lnet/sf/saxon/expr/flwor/OrderByClause;-><init>(Lnet/sf/saxon/expr/flwor/FLWORExpression;[Lnet/sf/saxon/expr/sort/SortKeyDefinition;Lnet/sf/saxon/expr/flwor/TupleExpression;)V

    .line 7
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/flwor/Clause;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 8
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/flwor/Clause;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    .line 9
    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/OrderByClause;->e:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    iput-object p0, v0, Lnet/sf/saxon/expr/flwor/OrderByClause;->e:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    return-object v0
.end method

.method public evaluateSortKey(ILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/OrderByClause;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->getSortKeyDefinition(I)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getSortKey()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/AtomicValue;

    return-object p0
.end method

.method public explain(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "order-by"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/OrderByClause;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    const-string v1, "key"

    invoke-virtual {p1, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->startSubsidiaryElement(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getSortKey()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endSubsidiaryElement()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getAtomicComparers()[Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/OrderByClause;->e:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    return-object p0
.end method

.method public getClauseKey()Lnet/sf/saxon/expr/flwor/Clause$ClauseName;
    .locals 0

    sget-object p0, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->ORDER_BY:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    return-object p0
.end method

.method public getPullStream(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/TuplePull;
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/flwor/OrderByClausePull;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/OrderByClause;->getTupleExpression()Lnet/sf/saxon/expr/flwor/TupleExpression;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0, p2}, Lnet/sf/saxon/expr/flwor/OrderByClausePull;-><init>(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/flwor/TupleExpression;Lnet/sf/saxon/expr/flwor/OrderByClause;Lnet/sf/saxon/expr/XPathContext;)V

    return-object v0
.end method

.method public getPushStream(Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/TuplePush;
    .locals 7

    new-instance v6, Lnet/sf/saxon/expr/flwor/OrderByClausePush;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/OrderByClause;->getTupleExpression()Lnet/sf/saxon/expr/flwor/TupleExpression;

    move-result-object v3

    move-object v0, v6

    move-object v1, p2

    move-object v2, p1

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lnet/sf/saxon/expr/flwor/OrderByClausePush;-><init>(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/expr/flwor/TupleExpression;Lnet/sf/saxon/expr/flwor/OrderByClause;Lnet/sf/saxon/expr/XPathContext;)V

    return-object v6
.end method

.method public getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/OrderByClause;->d:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    return-object p0
.end method

.method public getTupleExpression()Lnet/sf/saxon/expr/flwor/TupleExpression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/OrderByClause;->f:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/flwor/TupleExpression;

    return-object p0
.end method

.method public processOperands(Lnet/sf/saxon/expr/flwor/OperandProcessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/OrderByClause;->f:Lnet/sf/saxon/expr/Operand;

    invoke-interface {p1, v0}, Lnet/sf/saxon/expr/flwor/OperandProcessor;->processOperand(Lnet/sf/saxon/expr/Operand;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/OrderByClause;->d:Lnet/sf/saxon/expr/Operand;

    invoke-interface {p1, p0}, Lnet/sf/saxon/expr/flwor/OperandProcessor;->processOperand(Lnet/sf/saxon/expr/Operand;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "order by ... "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/OrderByClause;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->isFixed()Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result v2

    new-array v2, v2, [Lnet/sf/saxon/expr/sort/AtomicComparer;

    iput-object v2, p0, Lnet/sf/saxon/expr/flwor/OrderByClause;->e:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2, v3}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v2

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v3

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getSortKey()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    new-instance v7, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const/4 v8, 0x6

    const-string v9, ""

    invoke-direct {v7, v8, v9, v4}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    const-string v8, "XPTY0004"

    invoke-virtual {v7, v8}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    sget-object v8, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_ATOMIC:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v2, v6, v8, v7, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setSortKey(Lnet/sf/saxon/expr/Expression;Z)V

    invoke-virtual {v5, p1, p2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->isFixed()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v6

    invoke-interface {v6}, Lnet/sf/saxon/expr/StaticContext;->makeEarlyEvaluationContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->makeComparator(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setFinalComparator(Lnet/sf/saxon/expr/sort/AtomicComparer;)V

    if-eqz v1, :cond_3

    iget-object v5, p0, Lnet/sf/saxon/expr/flwor/OrderByClause;->e:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    aput-object v6, v5, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
