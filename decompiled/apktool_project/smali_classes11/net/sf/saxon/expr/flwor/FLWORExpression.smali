.class public Lnet/sf/saxon/expr/flwor/FLWORExpression;
.super Lnet/sf/saxon/expr/Expression;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/flwor/FLWORExpression$b;
    }
.end annotation


# static fields
.field public static final n:Lnet/sf/saxon/expr/OperandRole;

.field public static final o:Lnet/sf/saxon/expr/OperandRole;

.field public static final synthetic p:Z


# instance fields
.field public clauses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/flwor/Clause;",
            ">;"
        }
    .end annotation
.end field

.field public returnClauseOp:Lnet/sf/saxon/expr/Operand;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    sget-object v1, Lnet/sf/saxon/expr/OperandUsage;->TRANSMISSION:Lnet/sf/saxon/expr/OperandUsage;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    sput-object v0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->n:Lnet/sf/saxon/expr/OperandRole;

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    sput-object v0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->o:Lnet/sf/saxon/expr/OperandRole;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    return-void
.end method

.method public static synthetic d(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;Lnet/sf/saxon/expr/Operand;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->r(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;Lnet/sf/saxon/expr/Operand;)V

    return-void
.end method

.method public static synthetic e(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;Lnet/sf/saxon/expr/Operand;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->p(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;Lnet/sf/saxon/expr/Operand;)V

    return-void
.end method

.method public static synthetic g(Lnet/sf/saxon/expr/Operand;)V
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->m(Lnet/sf/saxon/expr/Operand;)V

    return-void
.end method

.method public static synthetic h(Ljava/util/List;Lnet/sf/saxon/expr/Operand;)V
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->o(Ljava/util/List;Lnet/sf/saxon/expr/Operand;)V

    return-void
.end method

.method public static synthetic i(Lnet/sf/saxon/expr/Operand;)V
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->q(Lnet/sf/saxon/expr/Operand;)V

    return-void
.end method

.method public static isLoopingClause(Lnet/sf/saxon/expr/flwor/Clause;)Z
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getClauseKey()Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->FOR:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getClauseKey()Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->GROUP_BY:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getClauseKey()Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    move-result-object p0

    sget-object v0, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->WINDOW:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic j(Ljava/util/List;Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Operand;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->n(Ljava/util/List;Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Operand;)V

    return-void
.end method

.method public static synthetic m(Lnet/sf/saxon/expr/Operand;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->checkForUpdatingSubexpressions()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->isUpdatingExpression()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "An updating expression cannot be used in a clause of a FLWOR expression"

    const-string v1, "XUST0001"

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic n(Ljava/util/List;Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Operand;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/sf/saxon/expr/Binding;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->dependsOnVariable(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Binding;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic o(Ljava/util/List;Lnet/sf/saxon/expr/Operand;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic p(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;Lnet/sf/saxon/expr/Operand;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p2, p0, p1}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    return-void
.end method

.method public static synthetic q(Lnet/sf/saxon/expr/Operand;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public static synthetic r(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;Lnet/sf/saxon/expr/Operand;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p2, p0, p1}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    return-void
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/flwor/Clause;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->getReturnClause()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object p0

    return-object p0
.end method

.method public allowExtractingCommonSubexpressions()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public checkForUpdatingSubexpressions()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/e8g;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/e8g;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/flwor/Clause;->processOperands(Lnet/sf/saxon/expr/flwor/OperandProcessor;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->getReturnClause()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->checkForUpdatingSubexpressions()V

    return-void
.end method

.method public computeCardinality()I
    .locals 0

    const p0, 0xe000

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lnet/sf/saxon/expr/flwor/FLWORExpression;

    invoke-direct {v1}, Lnet/sf/saxon/expr/flwor/FLWORExpression;-><init>()V

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {v3, v1, p1}, Lnet/sf/saxon/expr/flwor/Clause;->copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/Clause;

    move-result-object v4

    invoke-virtual {v3}, Lnet/sf/saxon/expr/flwor/Clause;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/sf/saxon/expr/flwor/Clause;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v3}, Lnet/sf/saxon/expr/flwor/Clause;->isRepeated()Z

    move-result v5

    invoke-virtual {v4, v5}, Lnet/sf/saxon/expr/flwor/Clause;->setRepeated(Z)V

    invoke-virtual {v3}, Lnet/sf/saxon/expr/flwor/Clause;->getRangeVariables()[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v3

    invoke-virtual {v4}, Lnet/sf/saxon/expr/flwor/Clause;->getRangeVariables()[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v5

    const/4 v6, 0x0

    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_0

    aget-object v7, v3, v6

    aget-object v8, v5, v6

    invoke-virtual {p1, v7, v8}, Lnet/sf/saxon/expr/parser/RebindingMap;->put(Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Binding;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->getReturnClause()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->init(Ljava/util/List;Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v1
.end method

.method public evaluatePendingUpdates(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/PendingUpdateList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/flwor/SingularityPull;

    invoke-direct {v0}, Lnet/sf/saxon/expr/flwor/SingularityPull;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {v2, v0, p1}, Lnet/sf/saxon/expr/flwor/Clause;->getPullStream(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/TuplePull;

    move-result-object v0

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/flwor/TuplePull;->nextTuple(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->getReturnClause()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Expression;->evaluatePendingUpdates(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/PendingUpdateList;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "FLWOR"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/flwor/Clause;->explain(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    goto :goto_0

    :cond_0
    const-string v0, "return"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startSubsidiaryElement(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->getReturnClause()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endSubsidiaryElement()V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getClauseList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/flwor/Clause;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    return-object p0
.end method

.method public getEvaluationMethod()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "FLWOR"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->getReturnClause()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getReturnClause()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->returnClauseOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public hasLoopingVariableReference(Lnet/sf/saxon/expr/Binding;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {p0, v2, p1}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->k(Lnet/sf/saxon/expr/flwor/Clause;Lnet/sf/saxon/expr/Binding;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    const/4 v2, 0x1

    if-gez v1, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    if-eqz v3, :cond_3

    move v1, v0

    :cond_3
    iget-object v3, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->getReturnClause()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    new-array v5, v2, [Lnet/sf/saxon/expr/Binding;

    aput-object p1, v5, v0

    invoke-static {v4, v5}, Lnet/sf/saxon/expr/parser/ExpressionTool;->dependsOnVariable(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Binding;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/sunia/HTREnginev2/g8g;

    invoke-direct {v5, v4, p1}, Lcom/sunia/HTREnginev2/g8g;-><init>(Ljava/util/List;Lnet/sf/saxon/expr/Binding;)V

    iget-object p1, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_3
    if-ltz p1, :cond_5

    :try_start_0
    iget-object v6, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {v6, v5}, Lnet/sf/saxon/expr/flwor/Clause;->processOperands(Lnet/sf/saxon/expr/flwor/OperandProcessor;)V

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_4

    move v3, p1

    goto :goto_4

    :catch_0
    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_5
    :goto_4
    sub-int/2addr v3, v2

    :goto_5
    if-lt v3, v1, :cond_7

    iget-object p1, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-static {p1}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->isLoopingClause(Lnet/sf/saxon/expr/flwor/Clause;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v2

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    :cond_7
    return v0
.end method

.method public hasVariableBinding(Lnet/sf/saxon/expr/Binding;)Z
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->k(Lnet/sf/saxon/expr/flwor/Clause;Lnet/sf/saxon/expr/Binding;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public implementsStaticTypeCheck()Z
    .locals 3

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/flwor/Clause;

    sget-object v2, Lnet/sf/saxon/expr/flwor/FLWORExpression$a;->a:[I

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/Clause;->getClauseKey()Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method public init(Ljava/util/List;Lnet/sf/saxon/expr/Expression;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/flwor/Clause;",
            ">;",
            "Lnet/sf/saxon/expr/Expression;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-static {v0}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->isLoopingClause(Lnet/sf/saxon/expr/flwor/Clause;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Lnet/sf/saxon/expr/Operand;

    if-eqz p1, :cond_2

    sget-object p1, Lnet/sf/saxon/expr/flwor/FLWORExpression;->o:Lnet/sf/saxon/expr/OperandRole;

    goto :goto_1

    :cond_2
    sget-object p1, Lnet/sf/saxon/expr/flwor/FLWORExpression;->n:Lnet/sf/saxon/expr/OperandRole;

    :goto_1
    invoke-direct {v0, p0, p2, p1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->returnClauseOp:Lnet/sf/saxon/expr/Operand;

    return-void
.end method

.method public injectCode(Lnet/sf/saxon/expr/parser/CodeInjector;)V
    .locals 5

    if-eqz p1, :cond_5

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/flwor/Clause;

    instance-of v1, v1, Lnet/sf/saxon/expr/flwor/TraceClause;

    if-eqz v1, :cond_0

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-interface {p1, p0, v3}, Lnet/sf/saxon/expr/parser/CodeInjector;->injectClause(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/flwor/Clause;)Lnet/sf/saxon/expr/flwor/Clause;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v3, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-interface {p1, p0, v1}, Lnet/sf/saxon/expr/parser/CodeInjector;->injectClause(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/flwor/Clause;)Lnet/sf/saxon/expr/flwor/Clause;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iput-object v0, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->returnClauseOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->injectCode(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/CodeInjector;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_5
    return-void
.end method

.method public isUpdatingExpression()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->getReturnClause()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->isUpdatingExpression()Z

    move-result p0

    return p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/flwor/SingularityPull;

    invoke-direct {v0}, Lnet/sf/saxon/expr/flwor/SingularityPull;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {v2, v0, p1}, Lnet/sf/saxon/expr/flwor/Clause;->getPullStream(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/TuplePull;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/sf/saxon/expr/flwor/ReturnClauseIterator;

    invoke-direct {v1, v0, p0, p1}, Lnet/sf/saxon/expr/flwor/ReturnClauseIterator;-><init>(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/XPathContext;)V

    return-object v1
.end method

.method public final k(Lnet/sf/saxon/expr/flwor/Clause;Lnet/sf/saxon/expr/Binding;)Z
    .locals 3

    invoke-virtual {p1}, Lnet/sf/saxon/expr/flwor/Clause;->getRangeVariables()[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p0, v1

    if-ne v2, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final l([Lnet/sf/saxon/expr/Binding;[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;)[Lnet/sf/saxon/expr/Binding;
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    new-array p1, p0, [Lnet/sf/saxon/expr/Binding;

    :cond_0
    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [Lnet/sf/saxon/expr/Binding;

    array-length v1, p1

    invoke-static {p1, p0, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    array-length v1, p2

    invoke-static {p2, p0, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public operands()Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/flwor/Clause;

    new-instance v3, Lcom/sunia/HTREnginev2/j8g;

    invoke-direct {v3, v0}, Lcom/sunia/HTREnginev2/j8g;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/flwor/Clause;->processOperands(Lnet/sf/saxon/expr/flwor/OperandProcessor;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->returnClauseOp:Lnet/sf/saxon/expr/Operand;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/flwor/Clause;

    new-instance v3, Lcom/sunia/HTREnginev2/f8g;

    invoke-direct {v3, p1, p2}, Lcom/sunia/HTREnginev2/f8g;-><init>(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/flwor/Clause;->processOperands(Lnet/sf/saxon/expr/flwor/OperandProcessor;)V

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/expr/flwor/Clause;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->returnClauseOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->getReturnClause()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/flwor/Clause;

    instance-of v4, v1, Lnet/sf/saxon/expr/flwor/LetClause;

    if-nez v4, :cond_1

    instance-of v4, v1, Lnet/sf/saxon/expr/flwor/ForClause;

    if-eqz v4, :cond_2

    instance-of v4, v1, Lnet/sf/saxon/expr/flwor/ForMemberClause;

    if-nez v4, :cond_2

    check-cast v1, Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/ForClause;->getPositionVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->t(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_2
    move v1, v2

    :cond_3
    iget-object v4, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/flwor/Clause;->getClauseKey()Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    move-result-object v6

    sget-object v7, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->LET:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    if-ne v6, v7, :cond_4

    move-object v6, v5

    check-cast v6, Lnet/sf/saxon/expr/flwor/LetClause;

    new-array v7, v3, [Lnet/sf/saxon/expr/Binding;

    invoke-virtual {v6}, Lnet/sf/saxon/expr/flwor/LetClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {p0, v7}, Lnet/sf/saxon/expr/parser/ExpressionTool;->dependsOnVariable(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Binding;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v4, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed unused variable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lnet/sf/saxon/expr/flwor/LetClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p0}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    :cond_5
    move v4, v3

    goto/16 :goto_5

    :cond_6
    iget-object v7, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {v6}, Lnet/sf/saxon/expr/flwor/LetClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnet/sf/saxon/expr/flwor/Clause;->containsNonInlineableVariableReference(Lnet/sf/saxon/expr/Binding;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v7, v3

    goto :goto_1

    :cond_8
    move v7, v2

    :goto_1
    if-nez v7, :cond_4

    invoke-virtual {v6}, Lnet/sf/saxon/expr/flwor/LetClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v7

    invoke-virtual {v7}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getNominalReferenceCount()I

    move-result v7

    if-ne v7, v3, :cond_9

    move v7, v3

    goto :goto_2

    :cond_9
    move v7, v2

    :goto_2
    invoke-virtual {v6}, Lnet/sf/saxon/expr/flwor/LetClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    instance-of v8, v8, Lnet/sf/saxon/expr/VariableReference;

    if-nez v8, :cond_b

    invoke-virtual {v6}, Lnet/sf/saxon/expr/flwor/LetClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    instance-of v8, v8, Lnet/sf/saxon/expr/Literal;

    if-eqz v8, :cond_a

    goto :goto_3

    :cond_a
    move v8, v2

    goto :goto_4

    :cond_b
    :goto_3
    move v8, v3

    :goto_4
    if-nez v7, :cond_c

    if-eqz v8, :cond_4

    :cond_c
    invoke-virtual {v6}, Lnet/sf/saxon/expr/flwor/LetClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v4

    invoke-virtual {v6}, Lnet/sf/saxon/expr/flwor/LetClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    invoke-static {p0, v4, v7, v3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->replaceVariableReferences(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Expression;Z)V

    iget-object v4, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inlined variable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lnet/sf/saxon/expr/flwor/LetClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p0}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    iget-object v4, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->getReturnClause()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_d
    move v4, v2

    :goto_5
    or-int/2addr v1, v4

    if-nez v4, :cond_3

    if-eqz v1, :cond_f

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_6
    if-lt v0, v3, :cond_f

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/Clause;->getClauseKey()Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    move-result-object v1

    sget-object v4, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->TRACE:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    if-ne v1, v4, :cond_e

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/Clause;->getClauseKey()Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    move-result-object v1

    if-ne v1, v4, :cond_e

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_e
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_f
    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/flwor/Clause;

    instance-of v4, v1, Lnet/sf/saxon/expr/flwor/WhereClause;

    if-eqz v4, :cond_10

    check-cast v1, Lnet/sf/saxon/expr/flwor/WhereClause;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/WhereClause;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->dependsOnFocus(Lnet/sf/saxon/expr/Expression;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v0, v3

    goto :goto_7

    :cond_11
    move v0, v2

    :goto_7
    if-eqz v0, :cond_14

    if-eqz p2, :cond_14

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->tryToFactorOutDot(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_13

    if-ne v0, p0, :cond_12

    goto :goto_8

    :cond_12
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->resetLocalStaticProperties()V

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_13
    :goto_8
    return-object p0

    :cond_14
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->u(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_15

    if-eq v0, p0, :cond_15

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_15
    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/flwor/Clause;

    instance-of v4, v1, Lnet/sf/saxon/expr/flwor/ForClause;

    if-eqz v4, :cond_17

    instance-of v4, v1, Lnet/sf/saxon/expr/flwor/ForMemberClause;

    if-nez v4, :cond_17

    check-cast v1, Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/ForClause;->getPositionVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v1

    if-eqz v1, :cond_16

    goto :goto_9

    :cond_17
    instance-of v1, v1, Lnet/sf/saxon/expr/flwor/LetClause;

    if-nez v1, :cond_16

    goto :goto_9

    :cond_18
    move v2, v3

    :goto_9
    if-eqz v2, :cond_19

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->t(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_19
    return-object p0
.end method

.method public process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/flwor/ReturnClausePush;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->getReturnClause()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lnet/sf/saxon/expr/flwor/ReturnClausePush;-><init>(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/Expression;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {v2, v0, p1, p2}, Lnet/sf/saxon/expr/flwor/Clause;->getPushStream(Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/TuplePush;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lnet/sf/saxon/expr/flwor/TuplePush;->processTuple(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/TuplePush;->close()V

    return-void
.end method

.method public final s(Ljava/util/List;)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;)",
            "Lnet/sf/saxon/expr/Expression;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/Expression;

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/expr/AndExpression;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Expression;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->s(Ljava/util/List;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/expr/AndExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public simplify()Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/h8g;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/h8g;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/flwor/Clause;->processOperands(Lnet/sf/saxon/expr/flwor/OperandProcessor;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->returnClauseOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->getReturnClause()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method

.method public staticTypeCheck(Lnet/sf/saxon/value/SequenceType;ZLnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p4}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object p2

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->returnClauseOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->getReturnClause()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p2, v1, p1, p3, p4}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method

.method public final t(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->getReturnClause()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/query/QueryModule;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v1}, Lnet/sf/saxon/query/QueryModule;->getCodeInjector()Lnet/sf/saxon/expr/parser/CodeInjector;

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/expr/flwor/ForClause;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/ForClause;->isAllowingEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lnet/sf/saxon/expr/flwor/OuterForExpression;

    invoke-direct {v3}, Lnet/sf/saxon/expr/flwor/OuterForExpression;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v3, Lnet/sf/saxon/expr/ForExpression;

    invoke-direct {v3}, Lnet/sf/saxon/expr/ForExpression;-><init>()V

    :goto_1
    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/Clause;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {v3, v0}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/Assignation;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/ForClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/Assignation;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/ForClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/ForClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v2

    invoke-static {v0, v2, v3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->rebindVariableReferences(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Binding;)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/flwor/LetClause;

    new-instance v3, Lnet/sf/saxon/expr/LetExpression;

    invoke-direct {v3}, Lnet/sf/saxon/expr/LetExpression;-><init>()V

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/Clause;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {v3, v0}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/LetClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/Assignation;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/LetClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/Assignation;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/LetClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/LetClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->isIndexedVariable()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Assignation;->setIndexedVariable()V

    :cond_3
    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/LetClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v2

    invoke-static {v0, v2, v3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->rebindVariableReferences(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Binding;)V

    :goto_2
    move-object v0, v3

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/Clause;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ... return "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->getReturnClause()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, " return "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->getReturnClause()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toString()Ljava/lang/String;

    move-result-object p0

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

    new-instance v0, Lcom/sunia/HTREnginev2/i8g;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/i8g;-><init>(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {v3, v0}, Lnet/sf/saxon/expr/flwor/Clause;->processOperands(Lnet/sf/saxon/expr/flwor/OperandProcessor;)V

    iget-object v3, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {v3, p1, p2}, Lnet/sf/saxon/expr/flwor/Clause;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-object v3, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/flwor/Clause;->getRangeVariables()[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v8, v2

    :goto_2
    iget-object v9, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_0

    iget-object v9, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {v9, p1, v6, v7}, Lnet/sf/saxon/expr/flwor/Clause;->gatherVariableReferences(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/Binding;Ljava/util/List;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->getReturnClause()Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    invoke-static {v8, v6, v7}, Lnet/sf/saxon/expr/parser/ExpressionTool;->gatherVariableReferences(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Binding;Ljava/util/List;)V

    iget-object v6, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->getReturnClause()Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    invoke-virtual {v6, p1, v7, v8}, Lnet/sf/saxon/expr/flwor/Clause;->refineVariableType(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Ljava/util/List;Lnet/sf/saxon/expr/Expression;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->returnClauseOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    return-object p0
.end method

.method public final u(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/flwor/Clause;

    instance-of v6, v4, Lnet/sf/saxon/expr/flwor/WhereClause;

    if-eqz v6, :cond_0

    new-instance v6, Lnet/sf/saxon/expr/flwor/FLWORExpression$b;

    invoke-direct {v6, v5}, Lnet/sf/saxon/expr/flwor/FLWORExpression$b;-><init>(Lnet/sf/saxon/expr/flwor/FLWORExpression$a;)V

    check-cast v4, Lnet/sf/saxon/expr/flwor/WhereClause;

    iput-object v4, v6, Lnet/sf/saxon/expr/flwor/FLWORExpression$b;->b:Lnet/sf/saxon/expr/flwor/WhereClause;

    iget-object v4, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    iput v4, v6, Lnet/sf/saxon/expr/flwor/FLWORExpression$b;->a:I

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    return-object v5

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/flwor/FLWORExpression$b;

    iget-object v1, v1, Lnet/sf/saxon/expr/flwor/FLWORExpression$b;->b:Lnet/sf/saxon/expr/flwor/WhereClause;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/flwor/FLWORExpression$b;

    iget v3, v3, Lnet/sf/saxon/expr/flwor/FLWORExpression$b;->a:I

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/WhereClause;->getPredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v4, v5}, Lnet/sf/saxon/expr/BooleanExpression;->listAndComponents(Lnet/sf/saxon/expr/Expression;Ljava/util/List;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_2
    if-ltz v6, :cond_a

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/expr/Expression;

    iget-object v8, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    add-int/lit8 v8, v8, -0x1

    :goto_3
    if-ltz v8, :cond_7

    iget-object v9, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {v9}, Lnet/sf/saxon/expr/flwor/Clause;->getRangeVariables()[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v10

    invoke-static {v7, v10}, Lnet/sf/saxon/expr/parser/ExpressionTool;->dependsOnVariable(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Binding;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v9}, Lnet/sf/saxon/expr/flwor/Clause;->getClauseKey()Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    move-result-object v10

    sget-object v11, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->COUNT:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    if-ne v10, v11, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_4
    :goto_4
    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/sf/saxon/expr/Expression;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v3

    invoke-interface {v11, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    :cond_5
    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->s(Ljava/util/List;)Lnet/sf/saxon/expr/Expression;

    move-result-object v11

    invoke-virtual {v1, v11}, Lnet/sf/saxon/expr/flwor/WhereClause;->setPredicate(Lnet/sf/saxon/expr/Expression;)V

    :goto_5
    instance-of v11, v9, Lnet/sf/saxon/expr/flwor/ForClause;

    if-eqz v11, :cond_6

    move-object v11, v9

    check-cast v11, Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {v11}, Lnet/sf/saxon/expr/flwor/ForClause;->isAllowingEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v11, p0, p1, p2, v7}, Lnet/sf/saxon/expr/flwor/ForClause;->addPredicate(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;Lnet/sf/saxon/expr/Expression;)Z

    move-result v11

    if-nez v11, :cond_7

    new-instance v11, Lnet/sf/saxon/expr/flwor/WhereClause;

    invoke-direct {v11, p0, v10}, Lnet/sf/saxon/expr/flwor/WhereClause;-><init>(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v9}, Lnet/sf/saxon/expr/flwor/Clause;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v9

    invoke-virtual {v11, v9}, Lnet/sf/saxon/expr/flwor/Clause;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    iget-object v9, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v9, v8, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_6

    :cond_6
    new-instance v10, Lnet/sf/saxon/expr/flwor/WhereClause;

    invoke-direct {v10, p0, v7}, Lnet/sf/saxon/expr/flwor/WhereClause;-><init>(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v9}, Lnet/sf/saxon/expr/flwor/Clause;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v9

    invoke-virtual {v10, v9}, Lnet/sf/saxon/expr/flwor/Clause;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    iget-object v9, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v9, v8, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_7
    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v8, v6, :cond_9

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_7

    :cond_8
    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->s(Ljava/util/List;)Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    invoke-virtual {v1, v8}, Lnet/sf/saxon/expr/flwor/WhereClause;->setPredicate(Lnet/sf/saxon/expr/Expression;)V

    :goto_7
    new-instance v8, Lnet/sf/saxon/expr/flwor/WhereClause;

    invoke-direct {v8, p0, v7}, Lnet/sf/saxon/expr/flwor/WhereClause;-><init>(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v7

    invoke-virtual {v8, v7}, Lnet/sf/saxon/expr/flwor/Clause;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    iget-object v7, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v7, v2, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_9
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_2

    :cond_a
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_b
    return-object p0
.end method

.method public unordered(ZZ)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->clauses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/flwor/Clause;

    instance-of v2, v1, Lnet/sf/saxon/expr/flwor/ForClause;

    if-eqz v2, :cond_0

    check-cast v1, Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/ForClause;->getPositionVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/expr/Expression;->unordered(ZZ)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/flwor/ForClause;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;->returnClauseOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->getReturnClause()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Expression;->unordered(ZZ)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method
