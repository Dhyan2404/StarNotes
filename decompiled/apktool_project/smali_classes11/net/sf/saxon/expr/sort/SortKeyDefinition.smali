.class public Lnet/sf/saxon/expr/sort/SortKeyDefinition;
.super Lnet/sf/saxon/expr/PseudoExpression;
.source "SourceFile"


# instance fields
.field protected backwardsCompatible:Z

.field protected baseURI:Ljava/lang/String;

.field protected caseOrder:Lnet/sf/saxon/expr/Operand;

.field protected collation:Lnet/sf/saxon/lib/StringCollator;

.field protected collationName:Lnet/sf/saxon/expr/Operand;

.field protected dataTypeExpression:Lnet/sf/saxon/expr/Operand;

.field protected emptyLeast:Z

.field protected language:Lnet/sf/saxon/expr/Operand;

.field public transient n:Lnet/sf/saxon/expr/sort/AtomicComparer;

.field protected order:Lnet/sf/saxon/expr/Operand;

.field protected setContextForSortKey:Z

.field protected sortKey:Lnet/sf/saxon/expr/Operand;

.field protected stable:Lnet/sf/saxon/expr/Operand;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lnet/sf/saxon/expr/PseudoExpression;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->dataTypeExpression:Lnet/sf/saxon/expr/Operand;

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->collationName:Lnet/sf/saxon/expr/Operand;

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->stable:Lnet/sf/saxon/expr/Operand;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->emptyLeast:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->backwardsCompatible:Z

    iput-boolean v1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setContextForSortKey:Z

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->n:Lnet/sf/saxon/expr/sort/AtomicComparer;

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    new-instance v1, Lnet/sf/saxon/expr/StringLiteral;

    const-string v2, "ascending"

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    sget-object v2, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, v1, v2}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->order:Lnet/sf/saxon/expr/Operand;

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    new-instance v1, Lnet/sf/saxon/expr/StringLiteral;

    const-string v3, "#default"

    invoke-direct {v1, v3}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1, v2}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->caseOrder:Lnet/sf/saxon/expr/Operand;

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    new-instance v1, Lnet/sf/saxon/expr/StringLiteral;

    sget-object v3, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    invoke-direct {v1, v3}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    invoke-direct {v0, p0, v1, v2}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->language:Lnet/sf/saxon/expr/Operand;

    return-void
.end method


# virtual methods
.method public computeHashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getOrder()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, 0x0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getCaseOrder()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getLanguage()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getDataTypeExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getDataTypeExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getStable()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getStable()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getCollationNameExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getCollationNameExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result p0

    xor-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method public bridge synthetic copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/sort/SortKeyDefinition;
    .locals 3

    .line 2
    new-instance v0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-direct {v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;-><init>()V

    .line 3
    iget-object v1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->sortKey:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setSortKey(Lnet/sf/saxon/expr/Expression;Z)V

    .line 4
    iget-object v1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->order:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setOrder(Lnet/sf/saxon/expr/Expression;)V

    .line 5
    iget-object v1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->dataTypeExpression:Lnet/sf/saxon/expr/Operand;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setDataTypeExpression(Lnet/sf/saxon/expr/Expression;)V

    .line 6
    iget-object v1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->caseOrder:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setCaseOrder(Lnet/sf/saxon/expr/Expression;)V

    .line 7
    iget-object v1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->language:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setLanguage(Lnet/sf/saxon/expr/Expression;)V

    .line 8
    iget-object v1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->stable:Lnet/sf/saxon/expr/Operand;

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setStable(Lnet/sf/saxon/expr/Expression;)V

    .line 9
    iget-object v1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->collationName:Lnet/sf/saxon/expr/Operand;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setCollationNameExpression(Lnet/sf/saxon/expr/Expression;)V

    .line 10
    iget-object p1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->collation:Lnet/sf/saxon/lib/StringCollator;

    iput-object p1, v0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->collation:Lnet/sf/saxon/lib/StringCollator;

    .line 11
    iget-boolean p1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->emptyLeast:Z

    iput-boolean p1, v0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->emptyLeast:Z

    .line 12
    iget-object p1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->baseURI:Ljava/lang/String;

    iput-object p1, v0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->baseURI:Ljava/lang/String;

    .line 13
    iget-boolean p1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->backwardsCompatible:Z

    iput-boolean p1, v0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->backwardsCompatible:Z

    .line 14
    iget-object p1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->n:Lnet/sf/saxon/expr/sort/AtomicComparer;

    iput-object p1, v0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->n:Lnet/sf/saxon/expr/sort/AtomicComparer;

    .line 15
    iget-boolean p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setContextForSortKey:Z

    iput-boolean p0, v0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setContextForSortKey:Z

    return-object v0
.end method

.method public final e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getSortKey()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getSortKey()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getOrder()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getOrder()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getLanguage()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getLanguage()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getDataTypeExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getDataTypeExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getStable()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getStable()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getCollationNameExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getCollationNameExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "sortKey"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->n:Lnet/sf/saxon/expr/sort/AtomicComparer;

    if-eqz v0, :cond_0

    const-string v1, "comp"

    invoke-interface {v0}, Lnet/sf/saxon/expr/sort/AtomicComparer;->save()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "select"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->sortKey:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    const-string v0, "order"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->order:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->dataTypeExpression:Lnet/sf/saxon/expr/Operand;

    if-eqz v0, :cond_1

    const-string v0, "dataType"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->dataTypeExpression:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_1
    const-string v0, "lang"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->language:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    const-string v0, "caseOrder"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->caseOrder:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->stable:Lnet/sf/saxon/expr/Operand;

    if-eqz v0, :cond_2

    const-string v0, "stable"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->stable:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->collationName:Lnet/sf/saxon/expr/Operand;

    if-eqz v0, :cond_3

    const-string v0, "collation"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->collationName:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_3
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public fix(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/SortKeyDefinition;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {v0}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getLanguage()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setLanguage(Lnet/sf/saxon/expr/Expression;)V

    new-instance v1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getOrder()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setOrder(Lnet/sf/saxon/expr/Expression;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->collationName:Lnet/sf/saxon/expr/Operand;

    if-eqz v1, :cond_0

    new-instance v1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getCollationNameExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setCollationNameExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    new-instance v1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getCaseOrder()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setCaseOrder(Lnet/sf/saxon/expr/Expression;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->dataTypeExpression:Lnet/sf/saxon/expr/Operand;

    if-eqz v1, :cond_1

    new-instance v1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getDataTypeExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-direct {v1, p0}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setDataTypeExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_1
    new-instance p0, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {p0}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setSortKey(Lnet/sf/saxon/expr/Expression;Z)V

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->baseURI:Ljava/lang/String;

    return-object p0
.end method

.method public getCaseOrder()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->caseOrder:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getCollation()Lnet/sf/saxon/lib/StringCollator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->collation:Lnet/sf/saxon/lib/StringCollator;

    return-object p0
.end method

.method public getCollationNameExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->collationName:Lnet/sf/saxon/expr/Operand;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getDataTypeExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->dataTypeExpression:Lnet/sf/saxon/expr/Operand;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getEmptyLeast()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->emptyLeast:Z

    return p0
.end method

.method public getFinalComparator()Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->n:Lnet/sf/saxon/expr/sort/AtomicComparer;

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLanguage()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->language:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getOrder()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->order:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getSortKey()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->sortKey:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getSortKeyOperand()Lnet/sf/saxon/expr/Operand;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->sortKey:Lnet/sf/saxon/expr/Operand;

    return-object p0
.end method

.method public getStable()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->stable:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public isBackwardsCompatible()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->backwardsCompatible:Z

    return p0
.end method

.method public isFixed()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->order:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/Literal;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->dataTypeExpression:Lnet/sf/saxon/expr/Operand;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/Literal;

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->caseOrder:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/Literal;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->language:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/Literal;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->stable:Lnet/sf/saxon/expr/Operand;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/Literal;

    if-eqz v0, :cond_3

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->collationName:Lnet/sf/saxon/expr/Operand;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    instance-of p0, p0, Lnet/sf/saxon/expr/Literal;

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLiftable(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSetContextForSortKey()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setContextForSortKey:Z

    return p0
.end method

.method public makeComparator(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->order:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->collation:Lnet/sf/saxon/lib/StringCollator;

    const-string v3, "XTDE0030"

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->collationName:Lnet/sf/saxon/expr/Operand;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->baseURI:Ljava/lang/String;

    if-eqz v4, :cond_1

    new-instance v4, Ljava/net/URI;

    iget-object v5, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->baseURI:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Collation URI is relative, and base URI is unknown"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object v2, v1

    goto/16 :goto_3

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown collation "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XTDE1035"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Collation name "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not a valid URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object v2, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->caseOrder:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->language:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v4, p1}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const-string v7, "http://saxon.sf.net/collation"

    if-nez v6, :cond_6

    sget-object v6, Lnet/sf/saxon/type/StringConverter$StringToLanguage;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToLanguage;

    invoke-static {v4}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v8

    invoke-virtual {v8}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v8

    invoke-virtual {v6, v8}, Lnet/sf/saxon/type/StringConverter$StringToLanguage;->validate(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v6

    if-nez v6, :cond_5

    const-string v6, "lang"

    invoke-virtual {v5, v6, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "?lang="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "The lang attribute of xsl:sort must be a valid language code"

    invoke-direct {p0, p1, v3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_6
    const/4 v4, 0x1

    :goto_1
    const-string v6, "#default"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "case-order"

    invoke-virtual {v5, v6, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_7

    const-string v4, "?"

    goto :goto_2

    :cond_7
    const-string v4, ";"

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "case-order="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_8
    sget-object v2, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    invoke-interface {v2, v1, v5, v7}, Lnet/sf/saxon/Platform;->makeCollation(Lnet/sf/saxon/Configuration;Ljava/util/Properties;Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object v2

    :goto_3
    iget-object v1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->dataTypeExpression:Lnet/sf/saxon/expr/Operand;

    if-nez v1, :cond_9

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->sortKey:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->getAtomizedItemType()Lnet/sf/saxon/type/PlainType;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->getPrimitiveType()I

    move-result v1

    invoke-static {v2, v1, p1}, Lnet/sf/saxon/expr/sort/AtomicSortComparer;->makeSortComparer(Lnet/sf/saxon/lib/StringCollator;ILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object v1

    iget-boolean v2, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->emptyLeast:Z

    if-nez v2, :cond_d

    new-instance v2, Lnet/sf/saxon/expr/sort/EmptyGreatestComparer;

    invoke-direct {v2, v1}, Lnet/sf/saxon/expr/sort/EmptyGreatestComparer;-><init>(Lnet/sf/saxon/expr/sort/AtomicComparer;)V

    :goto_4
    move-object v1, v2

    goto :goto_5

    :cond_9
    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v4, "number"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "text"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x201

    invoke-static {v2, v1, p1}, Lnet/sf/saxon/expr/sort/AtomicSortComparer;->makeSortComparer(Lnet/sf/saxon/lib/StringCollator;ILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/expr/sort/TextComparer;

    invoke-direct {v2, v1}, Lnet/sf/saxon/expr/sort/TextComparer;-><init>(Lnet/sf/saxon/expr/sort/AtomicComparer;)V

    goto :goto_4

    :cond_a
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "data-type on xsl:sort must be \'text\' or \'number\'"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :cond_b
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getXsdVersion()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_c

    invoke-static {}, Lnet/sf/saxon/expr/sort/NumericComparer;->getInstance()Lnet/sf/saxon/expr/sort/NumericComparer;

    move-result-object v1

    goto :goto_5

    :cond_c
    invoke-static {}, Lnet/sf/saxon/expr/sort/NumericComparer11;->getInstance()Lnet/sf/saxon/expr/sort/NumericComparer;

    move-result-object v1

    :cond_d
    :goto_5
    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->stable:Lnet/sf/saxon/expr/Operand;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/StringValue;

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "yes"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "no"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "true"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "false"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "1"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "0"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_6

    :cond_e
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Value of \'stable\' on xsl:sort must be yes|no|true|false|1|0"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string p0, "descending"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    const-string p0, "ascending"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    return-object v1

    :cond_10
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "order must be \'ascending\' or \'descending\'"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p0, Lnet/sf/saxon/expr/sort/DescendingComparer;

    invoke-direct {p0, v1}, Lnet/sf/saxon/expr/sort/DescendingComparer;-><init>(Lnet/sf/saxon/expr/sort/AtomicComparer;)V

    return-object p0
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

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->sortKey:Lnet/sf/saxon/expr/Operand;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->order:Lnet/sf/saxon/expr/Operand;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->dataTypeExpression:Lnet/sf/saxon/expr/Operand;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->caseOrder:Lnet/sf/saxon/expr/Operand;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->language:Lnet/sf/saxon/expr/Operand;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->stable:Lnet/sf/saxon/expr/Operand;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->collationName:Lnet/sf/saxon/expr/Operand;

    if-eqz p0, :cond_2

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public setBackwardsCompatible(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->backwardsCompatible:Z

    return-void
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->baseURI:Ljava/lang/String;

    return-void
.end method

.method public setCaseOrder(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->caseOrder:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setCollation(Lnet/sf/saxon/lib/StringCollator;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->collation:Lnet/sf/saxon/lib/StringCollator;

    return-void
.end method

.method public setCollationNameExpression(Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->collationName:Lnet/sf/saxon/expr/Operand;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->collationName:Lnet/sf/saxon/expr/Operand;

    if-nez v0, :cond_1

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->collationName:Lnet/sf/saxon/expr/Operand;

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->collationName:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :goto_0
    return-void
.end method

.method public setDataTypeExpression(Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->dataTypeExpression:Lnet/sf/saxon/expr/Operand;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->dataTypeExpression:Lnet/sf/saxon/expr/Operand;

    if-nez v0, :cond_1

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->dataTypeExpression:Lnet/sf/saxon/expr/Operand;

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->dataTypeExpression:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :goto_0
    return-void
.end method

.method public setEmptyLeast(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->emptyLeast:Z

    return-void
.end method

.method public setFinalComparator(Lnet/sf/saxon/expr/sort/AtomicComparer;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->n:Lnet/sf/saxon/expr/sort/AtomicComparer;

    return-void
.end method

.method public setLanguage(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->language:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setOrder(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->order:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setSortKey(Lnet/sf/saxon/expr/Expression;Z)V
    .locals 4

    if-eqz p2, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    sget-object v1, Lnet/sf/saxon/expr/OperandUsage;->TRANSMISSION:Lnet/sf/saxon/expr/OperandUsage;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    const/16 v3, 0x44

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/sf/saxon/expr/OperandRole;->ATOMIC_SEQUENCE:Lnet/sf/saxon/expr/OperandRole;

    :goto_0
    new-instance v1, Lnet/sf/saxon/expr/Operand;

    invoke-direct {v1, p0, p1, v0}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v1, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->sortKey:Lnet/sf/saxon/expr/Operand;

    iput-boolean p2, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setContextForSortKey:Z

    return-void
.end method

.method public setStable(Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lnet/sf/saxon/expr/StringLiteral;

    const-string v0, "yes"

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->stable:Lnet/sf/saxon/expr/Operand;

    if-nez v0, :cond_1

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->stable:Lnet/sf/saxon/expr/Operand;

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->stable:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public bridge synthetic typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/sort/SortKeyDefinition;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->checkedOperands()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    .line 3
    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->hasSameFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getLanguage()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    .line 6
    instance-of p2, p1, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz p2, :cond_3

    check-cast p1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/StringLiteral;->getString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 7
    sget-object p2, Lnet/sf/saxon/type/StringConverter$StringToLanguage;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToLanguage;

    .line 8
    invoke-virtual {p1}, Lnet/sf/saxon/expr/StringLiteral;->getGroundedValue()Lnet/sf/saxon/value/StringValue;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/value/StringValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    .line 9
    invoke-virtual {p2, p1}, Lnet/sf/saxon/type/StringConverter$StringToLanguage;->validate(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "The lang attribute of xsl:sort must be a valid language code"

    const-string p2, "XTDE0030"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-object p0
.end method
