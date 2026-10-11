.class public Lnet/sf/saxon/expr/flwor/WhereClause;
.super Lnet/sf/saxon/expr/flwor/Clause;
.source "SourceFile"


# instance fields
.field public final d:Lnet/sf/saxon/expr/Operand;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/expr/flwor/Clause;-><init>()V

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->INSPECT:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p1, p2, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/flwor/WhereClause;->d:Lnet/sf/saxon/expr/Operand;

    return-void
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WhereClause;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    return-void
.end method

.method public bridge synthetic copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/Clause;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/flwor/WhereClause;->copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/WhereClause;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/WhereClause;
    .locals 2

    .line 2
    new-instance v0, Lnet/sf/saxon/expr/flwor/WhereClause;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WhereClause;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p2}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lnet/sf/saxon/expr/flwor/WhereClause;-><init>(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/Expression;)V

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/flwor/Clause;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/flwor/Clause;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    return-object v0
.end method

.method public explain(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "where"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WhereClause;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public gatherVariableReferences(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/Binding;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/parser/ExpressionVisitor;",
            "Lnet/sf/saxon/expr/Binding;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/VariableReference;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WhereClause;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->gatherVariableReferences(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Binding;Ljava/util/List;)V

    return-void
.end method

.method public getClauseKey()Lnet/sf/saxon/expr/flwor/Clause$ClauseName;
    .locals 0

    sget-object p0, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->WHERE:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    return-object p0
.end method

.method public getPredicate()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/WhereClause;->d:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getPullStream(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/TuplePull;
    .locals 0

    new-instance p2, Lnet/sf/saxon/expr/flwor/WhereClausePull;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WhereClause;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lnet/sf/saxon/expr/flwor/WhereClausePull;-><init>(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/Expression;)V

    return-object p2
.end method

.method public getPushStream(Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/TuplePush;
    .locals 0

    new-instance p3, Lnet/sf/saxon/expr/flwor/WhereClausePush;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WhereClause;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-direct {p3, p2, p1, p0}, Lnet/sf/saxon/expr/flwor/WhereClausePush;-><init>(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/expr/Expression;)V

    return-object p3
.end method

.method public getTraceInfo()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WhereClause;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "condition"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public processOperands(Lnet/sf/saxon/expr/flwor/OperandProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/WhereClause;->d:Lnet/sf/saxon/expr/Operand;

    invoke-interface {p1, p0}, Lnet/sf/saxon/expr/flwor/OperandProcessor;->processOperand(Lnet/sf/saxon/expr/Operand;)V

    return-void
.end method

.method public refineVariableType(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Ljava/util/List;Lnet/sf/saxon/expr/Expression;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/parser/ExpressionVisitor;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/VariableReference;",
            ">;",
            "Lnet/sf/saxon/expr/Expression;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WhereClause;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/VariableReference;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WhereClause;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WhereClause;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/expr/Literal;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WhereClause;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WhereClause;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lnet/sf/saxon/expr/VariableReference;->refineVariableType(Lnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/GroundedValue;I)V

    invoke-static {p3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->resetStaticProperties(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPredicate(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/WhereClause;->d:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setRepeated(Z)V
    .locals 0

    invoke-super {p0, p1}, Lnet/sf/saxon/expr/flwor/Clause;->setRepeated(Z)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/WhereClause;->d:Lnet/sf/saxon/expr/Operand;

    sget-object p1, Lnet/sf/saxon/expr/OperandRole;->REPEAT_INSPECT:Lnet/sf/saxon/expr/OperandRole;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setOperandRole(Lnet/sf/saxon/expr/OperandRole;)V

    :cond_0
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WhereClause;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WhereClause;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/flwor/Clause;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    return-void
.end method
