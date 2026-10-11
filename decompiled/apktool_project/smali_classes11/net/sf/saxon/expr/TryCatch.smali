.class public Lnet/sf/saxon/expr/TryCatch;
.super Lnet/sf/saxon/expr/Expression;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/TryCatch$a;,
        Lnet/sf/saxon/expr/TryCatch$CatchClause;
    }
.end annotation


# instance fields
.field public final n:Lnet/sf/saxon/expr/Operand;

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/TryCatch$CatchClause;",
            ">;"
        }
    .end annotation
.end field

.field public p:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/TryCatch;->o:Ljava/util/List;

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->SAME_FOCUS_ACTION:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/TryCatch;->n:Lnet/sf/saxon/expr/Operand;

    return-void
.end method

.method public static synthetic c(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/om/Item;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public static synthetic d(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/TryCatch;->c(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/om/Item;)V

    return-void
.end method


# virtual methods
.method public addCatchExpression(Lnet/sf/saxon/pattern/QNameTest;Lnet/sf/saxon/expr/Expression;)V
    .locals 3

    new-instance v0, Lnet/sf/saxon/expr/TryCatch$CatchClause;

    invoke-direct {v0}, Lnet/sf/saxon/expr/TryCatch$CatchClause;-><init>()V

    new-instance v1, Lnet/sf/saxon/expr/Operand;

    sget-object v2, Lnet/sf/saxon/expr/OperandRole;->SAME_FOCUS_ACTION:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v1, p0, p2, v2}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v1, v0, Lnet/sf/saxon/expr/TryCatch$CatchClause;->catchOp:Lnet/sf/saxon/expr/Operand;

    iput-object p1, v0, Lnet/sf/saxon/expr/TryCatch$CatchClause;->nameTest:Lnet/sf/saxon/pattern/QNameTest;

    iget-object p0, p0, Lnet/sf/saxon/expr/TryCatch;->o:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public allowExtractingCommonSubexpressions()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public computeCardinality()I
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/TryCatch;->getTryExpr()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v0

    iget-object p0, p0, Lnet/sf/saxon/expr/TryCatch;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/TryCatch$CatchClause;

    iget-object v1, v1, Lnet/sf/saxon/expr/TryCatch$CatchClause;->catchOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v1

    invoke-static {v0, v1}, Lnet/sf/saxon/value/Cardinality;->union(II)I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public computeHashCode()I
    .locals 3

    const v0, 0x636b12a0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/expr/TryCatch;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/expr/TryCatch;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/TryCatch$CatchClause;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    shl-int/2addr v2, v1

    xor-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/TryCatch;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 4

    new-instance v0, Lnet/sf/saxon/expr/TryCatch;

    iget-object v1, p0, Lnet/sf/saxon/expr/TryCatch;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/TryCatch;-><init>(Lnet/sf/saxon/expr/Expression;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/TryCatch;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/TryCatch$CatchClause;

    iget-object v3, v2, Lnet/sf/saxon/expr/TryCatch$CatchClause;->nameTest:Lnet/sf/saxon/pattern/QNameTest;

    iget-object v2, v2, Lnet/sf/saxon/expr/TryCatch$CatchClause;->catchOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lnet/sf/saxon/expr/TryCatch;->addCatchExpression(Lnet/sf/saxon/pattern/QNameTest;Lnet/sf/saxon/expr/Expression;)V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lnet/sf/saxon/expr/TryCatch;->p:Z

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/TryCatch;->setRollbackOutput(Z)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/expr/TryCatch;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/expr/TryCatch;

    iget-object v0, p1, Lnet/sf/saxon/expr/TryCatch;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/TryCatch;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lnet/sf/saxon/expr/TryCatch;->o:Ljava/util/List;

    iget-object p0, p0, Lnet/sf/saxon/expr/TryCatch;->o:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/expr/TryCatch;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->eagerEvaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->isGlobalError()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lnet/sf/saxon/om/StructuredQName;

    const-string v3, "http://saxon.sf.net/"

    const-string v4, "XXXX9999"

    const-string v5, "saxon"

    invoke-direct {v1, v5, v3, v4}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/TryCatch;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/TryCatch$CatchClause;

    iget-object v4, v3, Lnet/sf/saxon/expr/TryCatch$CatchClause;->nameTest:Lnet/sf/saxon/pattern/QNameTest;

    invoke-interface {v4, v1}, Lnet/sf/saxon/pattern/QNameTest;->matches(Lnet/sf/saxon/om/StructuredQName;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object p0, v3, Lnet/sf/saxon/expr/TryCatch$CatchClause;->catchOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentException(Lnet/sf/saxon/trans/XPathException;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setIsGlobalError(Z)V

    :cond_3
    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setHasBeenReported(Z)V

    throw v0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "try"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    iget-boolean v0, p0, Lnet/sf/saxon/expr/TryCatch;->p:Z

    if-eqz v0, :cond_0

    const-string v0, "flags"

    const-string v1, "r"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/TryCatch;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/TryCatch;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/TryCatch$CatchClause;

    const-string v1, "catch"

    invoke-virtual {p1, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    iget-object v1, v0, Lnet/sf/saxon/expr/TryCatch$CatchClause;->nameTest:Lnet/sf/saxon/pattern/QNameTest;

    invoke-interface {v1}, Lnet/sf/saxon/pattern/QNameTest;->exportQNameTest()Ljava/lang/String;

    move-result-object v1

    const-string v2, "errors"

    invoke-virtual {p1, v2, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lnet/sf/saxon/expr/TryCatch$CatchClause;->catchOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getCatchClauses()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/TryCatch$CatchClause;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/TryCatch;->o:Ljava/util/List;

    return-object p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "tryCatch"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/TryCatch;->getTryExpr()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/expr/TryCatch;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/TryCatch$CatchClause;

    iget-object v1, v1, Lnet/sf/saxon/expr/TryCatch$CatchClause;->catchOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sf/saxon/type/Type;->getCommonSuperType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "TryCatch"

    return-object p0
.end method

.method public getTryExpr()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/TryCatch;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getTryOperand()Lnet/sf/saxon/expr/Operand;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/TryCatch;->n:Lnet/sf/saxon/expr/Operand;

    return-object p0
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isRollbackOutput()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/TryCatch;->p:Z

    return p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/XPathContextMajor;->createThreadManager()V

    new-instance v1, Lnet/sf/saxon/expr/TryCatch$a;

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/expr/TryCatch;->o:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/expr/TryCatch$a;-><init>(Lnet/sf/saxon/lib/ErrorReporter;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/XPathContextMajor;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/expr/TryCatch;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->eagerEvaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    invoke-virtual {v0}, Lnet/sf/saxon/expr/XPathContextMajor;->waitForChildThreads()V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/XPathContextMajor;->getTailCallInfo()Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;

    move-result-object v0

    instance-of v2, v0, Lnet/sf/saxon/expr/instruct/BreakInstr;

    if-eqz v2, :cond_0

    check-cast v0, Lnet/sf/saxon/expr/instruct/BreakInstr;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/instruct/BreakInstr;->markContext(Lnet/sf/saxon/expr/XPathContext;)V

    :cond_0
    invoke-interface {v1}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->isGlobalError()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lnet/sf/saxon/om/StructuredQName;

    const-string v3, "http://saxon.sf.net/"

    const-string v4, "XXXX9999"

    const-string v5, "saxon"

    invoke-direct {v1, v5, v3, v4}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/expr/TryCatch;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/TryCatch$CatchClause;

    iget-object v4, v3, Lnet/sf/saxon/expr/TryCatch$CatchClause;->nameTest:Lnet/sf/saxon/pattern/QNameTest;

    invoke-interface {v4, v1}, Lnet/sf/saxon/pattern/QNameTest;->matches(Lnet/sf/saxon/om/StructuredQName;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object p0, v3, Lnet/sf/saxon/expr/TryCatch$CatchClause;->catchOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentException(Lnet/sf/saxon/trans/XPathException;)V

    invoke-static {p0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->eagerEvaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/XPathContextMajor;->getTailCallInfo()Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/expr/instruct/BreakInstr;

    if-eqz v1, :cond_3

    check-cast v0, Lnet/sf/saxon/expr/instruct/BreakInstr;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/instruct/BreakInstr;->markContext(Lnet/sf/saxon/expr/XPathContext;)V

    :cond_3
    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setIsGlobalError(Z)V

    :cond_5
    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setHasBeenReported(Z)V

    throw v0
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

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/expr/TryCatch;->n:Lnet/sf/saxon/expr/Operand;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lnet/sf/saxon/expr/TryCatch;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/TryCatch$CatchClause;

    iget-object v1, v1, Lnet/sf/saxon/expr/TryCatch$CatchClause;->catchOp:Lnet/sf/saxon/expr/Operand;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimizeChildren(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    instance-of p2, p1, Lnet/sf/saxon/expr/LetExpression;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/TryCatch;->getTryExpr()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    const/4 v0, 0x1

    new-array v1, v0, [Lnet/sf/saxon/expr/Binding;

    move-object v2, p1

    check-cast v2, Lnet/sf/saxon/expr/LetExpression;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->dependsOnVariable(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Binding;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/LetExpression;->setNeedsEagerEvaluation(Z)V

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/event/Outputter;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/XPathContextMajor;->createThreadManager()V

    new-instance v2, Lnet/sf/saxon/expr/TryCatch$a;

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/saxon/expr/TryCatch;->o:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/expr/TryCatch$a;-><init>(Lnet/sf/saxon/lib/ErrorReporter;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/XPathContextMajor;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    iget-boolean v2, p0, Lnet/sf/saxon/expr/TryCatch;->p:Z

    if-eqz v2, :cond_0

    new-instance v2, Lnet/sf/saxon/event/OutputterEventBuffer;

    invoke-direct {v2}, Lnet/sf/saxon/event/OutputterEventBuffer;-><init>()V

    invoke-virtual {v2, v0}, Lnet/sf/saxon/event/Outputter;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lnet/sf/saxon/event/EventMonitor;

    invoke-direct {v2, p1}, Lnet/sf/saxon/event/EventMonitor;-><init>(Lnet/sf/saxon/event/Outputter;)V

    invoke-virtual {v2, v0}, Lnet/sf/saxon/event/Outputter;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/TryCatch;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/XPathContextMajor;->waitForChildThreads()V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/XPathContextMajor;->getTailCallInfo()Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/expr/instruct/BreakInstr;

    if-eqz v1, :cond_1

    check-cast v0, Lnet/sf/saxon/expr/instruct/BreakInstr;

    invoke-virtual {v0, p2}, Lnet/sf/saxon/expr/instruct/BreakInstr;->markContext(Lnet/sf/saxon/expr/XPathContext;)V

    :cond_1
    iget-boolean v0, p0, Lnet/sf/saxon/expr/TryCatch;->p:Z

    if-eqz v0, :cond_2

    move-object v0, v2

    check-cast v0, Lnet/sf/saxon/event/OutputterEventBuffer;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/event/OutputterEventBuffer;->replay(Lnet/sf/saxon/event/Outputter;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->isGlobalError()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Lnet/sf/saxon/om/StructuredQName;

    const-string v4, "http://saxon.sf.net/"

    const-string v5, "XXXX9999"

    const-string v6, "saxon"

    invoke-direct {v1, v6, v4, v5}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p0, p0, Lnet/sf/saxon/expr/TryCatch;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/TryCatch$CatchClause;

    iget-object v5, v4, Lnet/sf/saxon/expr/TryCatch$CatchClause;->nameTest:Lnet/sf/saxon/pattern/QNameTest;

    invoke-interface {v5, v1}, Lnet/sf/saxon/pattern/QNameTest;->matches(Lnet/sf/saxon/om/StructuredQName;)Z

    move-result v5

    if-eqz v5, :cond_4

    instance-of p0, v2, Lnet/sf/saxon/event/EventMonitor;

    if-eqz p0, :cond_6

    check-cast v2, Lnet/sf/saxon/event/EventMonitor;

    invoke-virtual {v2}, Lnet/sf/saxon/event/EventMonitor;->hasBeenWrittenTo()Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". The error could not be caught, because rollback-output=no was specified, and output was already written to the result tree"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "XTDE3530"

    invoke-direct {p1, p0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p1

    :cond_6
    :goto_1
    iget-object p0, v4, Lnet/sf/saxon/expr/TryCatch$CatchClause;->catchOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentException(Lnet/sf/saxon/trans/XPathException;)V

    invoke-static {p0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->eagerEvaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/XPathContextMajor;->getTailCallInfo()Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/expr/instruct/BreakInstr;

    if-eqz v1, :cond_7

    check-cast v0, Lnet/sf/saxon/expr/instruct/BreakInstr;

    invoke-virtual {v0, p2}, Lnet/sf/saxon/expr/instruct/BreakInstr;->markContext(Lnet/sf/saxon/expr/XPathContext;)V

    :cond_7
    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    new-instance p2, Lcom/sunia/HTREnginev2/con;

    invoke-direct {p2, p1}, Lcom/sunia/HTREnginev2/con;-><init>(Lnet/sf/saxon/event/Outputter;)V

    invoke-static {p0, p2}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    return-void

    :cond_8
    invoke-virtual {v0, v3}, Lnet/sf/saxon/trans/XPathException;->setIsGlobalError(Z)V

    :cond_9
    invoke-virtual {v0, v3}, Lnet/sf/saxon/trans/XPathException;->setHasBeenReported(Z)V

    throw v0
.end method

.method public setRollbackOutput(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/TryCatch;->p:Z

    return-void
.end method
