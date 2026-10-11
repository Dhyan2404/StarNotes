.class public Lnet/sf/saxon/expr/flwor/DiagnosticClause;
.super Lnet/sf/saxon/expr/flwor/Clause;
.source "SourceFile"


# instance fields
.field public d:Lnet/sf/saxon/expr/Operand;

.field public e:Lnet/sf/saxon/expr/parser/Evaluator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/flwor/Clause;-><init>()V

    return-void
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/DiagnosticClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    return-void
.end method

.method public bridge synthetic copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/Clause;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/flwor/DiagnosticClause;->copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/DiagnosticClause;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/DiagnosticClause;
    .locals 2

    .line 2
    new-instance v0, Lnet/sf/saxon/expr/flwor/DiagnosticClause;

    invoke-direct {v0}, Lnet/sf/saxon/expr/flwor/DiagnosticClause;-><init>()V

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/flwor/Clause;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/flwor/Clause;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    .line 5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/DiagnosticClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lnet/sf/saxon/expr/flwor/DiagnosticClause;->initSequence(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public explain(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "trace"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/DiagnosticClause;->getSequence()Lnet/sf/saxon/expr/Expression;

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

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/DiagnosticClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->gatherVariableReferences(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Binding;Ljava/util/List;)V

    return-void
.end method

.method public getClauseKey()Lnet/sf/saxon/expr/flwor/Clause$ClauseName;
    .locals 0

    sget-object p0, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->DIAG:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    return-object p0
.end method

.method public getEvaluator()Lnet/sf/saxon/expr/parser/Evaluator;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/DiagnosticClause;->e:Lnet/sf/saxon/expr/parser/Evaluator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/DiagnosticClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->lazyEvaluator(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/parser/Evaluator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/flwor/DiagnosticClause;->e:Lnet/sf/saxon/expr/parser/Evaluator;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/DiagnosticClause;->e:Lnet/sf/saxon/expr/parser/Evaluator;

    return-object p0
.end method

.method public getPullStream(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/TuplePull;
    .locals 0

    new-instance p2, Lnet/sf/saxon/expr/flwor/DiagnosticClausePull;

    invoke-direct {p2, p1, p0}, Lnet/sf/saxon/expr/flwor/DiagnosticClausePull;-><init>(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/flwor/DiagnosticClause;)V

    return-object p2
.end method

.method public getPushStream(Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/TuplePush;
    .locals 0

    new-instance p3, Lnet/sf/saxon/expr/flwor/DiagnosticClausePush;

    invoke-direct {p3, p2, p1, p0}, Lnet/sf/saxon/expr/flwor/DiagnosticClausePush;-><init>(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/expr/flwor/DiagnosticClause;)V

    return-object p3
.end method

.method public getRangeVariables()[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    return-object p0
.end method

.method public getSequence()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/DiagnosticClause;->d:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public initSequence(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->REPEAT_NAVIGATE:Lnet/sf/saxon/expr/OperandRole;

    goto :goto_0

    :cond_0
    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->NAVIGATE:Lnet/sf/saxon/expr/OperandRole;

    :goto_0
    invoke-direct {v0, p1, p2, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/flwor/DiagnosticClause;->d:Lnet/sf/saxon/expr/Operand;

    return-void
.end method

.method public processOperands(Lnet/sf/saxon/expr/flwor/OperandProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/DiagnosticClause;->d:Lnet/sf/saxon/expr/Operand;

    invoke-interface {p1, p0}, Lnet/sf/saxon/expr/flwor/OperandProcessor;->processOperand(Lnet/sf/saxon/expr/Operand;)V

    return-void
.end method

.method public refineVariableType(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Ljava/util/List;Lnet/sf/saxon/expr/Expression;)V
    .locals 5
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

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/DiagnosticClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/VariableReference;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/DiagnosticClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v2

    instance-of v3, p1, Lnet/sf/saxon/expr/Literal;

    if-eqz v3, :cond_0

    move-object v3, p1

    check-cast v3, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lnet/sf/saxon/expr/VariableReference;->refineVariableType(Lnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/GroundedValue;I)V

    invoke-static {p3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->resetStaticProperties(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "trace "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/DiagnosticClause;->getSequence()Lnet/sf/saxon/expr/Expression;

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

    const-string v1, "trace "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/DiagnosticClause;->getSequence()Lnet/sf/saxon/expr/Expression;

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

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/DiagnosticClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->lazyEvaluator(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/parser/Evaluator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/DiagnosticClause;->e:Lnet/sf/saxon/expr/parser/Evaluator;

    return-void
.end method
