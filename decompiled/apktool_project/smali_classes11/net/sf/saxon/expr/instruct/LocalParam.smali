.class public final Lnet/sf/saxon/expr/instruct/LocalParam;
.super Lnet/sf/saxon/expr/instruct/Instruction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/LocalBinding;


# static fields
.field public static final w:I = 0x4

.field public static final x:I = 0x8

.field public static final y:I = 0x10

.field public static final synthetic z:Z


# instance fields
.field public n:Lnet/sf/saxon/expr/Operand;

.field public o:Lnet/sf/saxon/expr/parser/Evaluator;

.field public p:I

.field public q:Lnet/sf/saxon/expr/Operand;

.field public r:Lnet/sf/saxon/om/StructuredQName;

.field public s:Lnet/sf/saxon/value/SequenceType;

.field public t:I

.field public u:I

.field public v:Lnet/sf/saxon/expr/parser/Evaluator;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Instruction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->n:Lnet/sf/saxon/expr/Operand;

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->o:Lnet/sf/saxon/expr/parser/Evaluator;

    const/4 v1, 0x0

    iput v1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->p:I

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->q:Lnet/sf/saxon/expr/Operand;

    const/16 v1, -0x3e7

    iput v1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->t:I

    const/16 v1, 0xa

    iput v1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->u:I

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->v:Lnet/sf/saxon/expr/parser/Evaluator;

    return-void
.end method


# virtual methods
.method public addReference(Lnet/sf/saxon/expr/VariableReference;Z)V
    .locals 0

    return-void
.end method

.method public checkAgainstRequiredType(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->r:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->s:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1, v3}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v1

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->s:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v1, v2, p0, v0, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    :cond_0
    return-void
.end method

.method public computeCardinality()I
    .locals 0

    const p0, 0xe000

    return p0
.end method

.method public computeEvaluationMode()V
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->u:I

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_0

    sget-object v0, Lnet/sf/saxon/expr/parser/Evaluator$MakeIndexedVariable;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$MakeIndexedVariable;

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->v:Lnet/sf/saxon/expr/parser/Evaluator;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iget v1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->u:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->lazyEvaluator(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/parser/Evaluator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->v:Lnet/sf/saxon/expr/parser/Evaluator;

    :cond_2
    :goto_1
    return-void
.end method

.method public computeSpecialProperties()I
    .locals 0

    const/high16 p0, 0x2000000

    return p0
.end method

.method public bridge synthetic copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/LocalParam;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/instruct/LocalParam;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/instruct/LocalParam;
    .locals 2

    .line 2
    new-instance v0, Lnet/sf/saxon/expr/instruct/LocalParam;

    invoke-direct {v0}, Lnet/sf/saxon/expr/instruct/LocalParam;-><init>()V

    .line 3
    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->n:Lnet/sf/saxon/expr/Operand;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->getConversion()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/LocalParam;->setConversion(Lnet/sf/saxon/expr/Expression;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->o:Lnet/sf/saxon/expr/parser/Evaluator;

    iput-object v1, v0, Lnet/sf/saxon/expr/instruct/LocalParam;->o:Lnet/sf/saxon/expr/parser/Evaluator;

    .line 6
    iget v1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->p:I

    iput v1, v0, Lnet/sf/saxon/expr/instruct/LocalParam;->p:I

    .line 7
    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->q:Lnet/sf/saxon/expr/Operand;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/instruct/LocalParam;->setSelectExpression(Lnet/sf/saxon/expr/Expression;)V

    .line 9
    :cond_1
    iget-object p1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->r:Lnet/sf/saxon/om/StructuredQName;

    iput-object p1, v0, Lnet/sf/saxon/expr/instruct/LocalParam;->r:Lnet/sf/saxon/om/StructuredQName;

    .line 10
    iget-object p1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->s:Lnet/sf/saxon/value/SequenceType;

    iput-object p1, v0, Lnet/sf/saxon/expr/instruct/LocalParam;->s:Lnet/sf/saxon/value/SequenceType;

    .line 11
    iget p1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->t:I

    iput p1, v0, Lnet/sf/saxon/expr/instruct/LocalParam;->t:I

    .line 12
    iget p1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->u:I

    iput p1, v0, Lnet/sf/saxon/expr/instruct/LocalParam;->u:I

    .line 13
    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->v:Lnet/sf/saxon/expr/parser/Evaluator;

    iput-object p0, v0, Lnet/sf/saxon/expr/instruct/LocalParam;->v:Lnet/sf/saxon/expr/parser/Evaluator;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->isTunnelParam()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->isRequiredParam()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->isImplicitlyRequiredParam()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "i"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->t:I

    invoke-interface {p1, p0}, Lnet/sf/saxon/expr/XPathContext;->evaluateLocalVariable(I)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "param"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    const-string v0, "name"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->getSlotNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "slot"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "flags"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->getOptions()Lnet/sf/saxon/trace/ExpressionPresenter$Options;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->toAlphaCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "as"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "select"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->getConversion()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v0, "conversion"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_3
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getCardinality()I
    .locals 0

    const/16 p0, 0x2000

    return p0
.end method

.method public getConversion()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->n:Lnet/sf/saxon/expr/Operand;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getConversionEvaluator()Lnet/sf/saxon/expr/parser/Evaluator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->o:Lnet/sf/saxon/expr/parser/Evaluator;

    return-object p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "param"

    return-object p0
.end method

.method public getInstructionNameCode()I
    .locals 0

    const/16 p0, 0xc3

    return p0
.end method

.method public getIntegerBoundsForVariable()[Lnet/sf/saxon/value/IntegerValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object p0

    return-object p0
.end method

.method public getLocalSlotNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->t:I

    return p0
.end method

.method public getRequiredType()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->s:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public getSelectExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->q:Lnet/sf/saxon/expr/Operand;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSelectValue(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lnet/sf/saxon/expr/Literal;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getTemporaryOutputState()I

    move-result v1

    const/16 v2, 0xdd

    invoke-interface {p1, v2}, Lnet/sf/saxon/expr/XPathContext;->setTemporaryOutputState(I)V

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->v:Lnet/sf/saxon/expr/parser/Evaluator;

    if-nez p0, :cond_1

    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;

    :cond_1
    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/parser/Evaluator;->evaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-interface {p1, v1}, Lnet/sf/saxon/expr/XPathContext;->setTemporaryOutputState(I)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Internal error: No select expression"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public getSlotNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->t:I

    return p0
.end method

.method public getVariableQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->r:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public hasVariableBinding(Lnet/sf/saxon/expr/Binding;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAssignable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCompatible(Lnet/sf/saxon/expr/instruct/LocalParam;)Z
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/LocalParam;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/LocalParam;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/value/SequenceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->isTunnelParam()Z

    move-result p0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/LocalParam;->isTunnelParam()Z

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGlobal()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isImplicitlyRequiredParam()Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->p:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIndexedVariable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLiftable(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isRequiredParam()Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->p:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTunnelParam()Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->p:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public mayCreateNewNodes()Z
    .locals 0

    const/4 p0, 0x0

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

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->q:Lnet/sf/saxon/expr/Operand;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->n:Lnet/sf/saxon/expr/Operand;

    filled-new-array {v0, v1}, [Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->operandSparseList([Lnet/sf/saxon/expr/Operand;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    if-eq p1, p0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method

.method public processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->r:Lnet/sf/saxon/om/StructuredQName;

    iget v0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->t:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->isTunnelParam()Z

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Lnet/sf/saxon/expr/XPathContext;->useLocalParameter(Lnet/sf/saxon/om/StructuredQName;IZ)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->n:Lnet/sf/saxon/expr/Operand;

    if-eqz p1, :cond_3

    iget p1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->t:I

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->o:Lnet/sf/saxon/expr/parser/Evaluator;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->getConversion()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lnet/sf/saxon/expr/parser/Evaluator;->evaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->isRequiredParam()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->isImplicitlyRequiredParam()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget p1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->t:I

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/instruct/LocalParam;->getSelectValue(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->r:Lnet/sf/saxon/om/StructuredQName;

    iget v2, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->t:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->isTunnelParam()Z

    move-result v3

    xor-int/2addr v0, v3

    invoke-interface {p2, v1, v2, v0}, Lnet/sf/saxon/expr/XPathContext;->useLocalParameter(Lnet/sf/saxon/om/StructuredQName;IZ)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No value supplied for required parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->isImplicitlyRequiredParam()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". A value is required because the default value is not a valid instance of the required type"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->isTunnelParam()Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". A non-tunnel parameter with this name was supplied, but a tunnel parameter is required"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". A tunnel parameter with this name was supplied, but a non-tunnel parameter is required"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_7
    :goto_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    const-string p1, "XTDE0700"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0
.end method

.method public setConversion(Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->n:Lnet/sf/saxon/expr/Operand;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->n:Lnet/sf/saxon/expr/Operand;

    :cond_0
    invoke-static {p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->eagerEvaluator(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/parser/Evaluator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->o:Lnet/sf/saxon/expr/parser/Evaluator;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->n:Lnet/sf/saxon/expr/Operand;

    :goto_0
    return-void
.end method

.method public setImplicitlyRequiredParam(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->p:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->p:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->p:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->p:I

    :goto_0
    return-void
.end method

.method public setIndexedVariable()V
    .locals 0

    return-void
.end method

.method public setReferenceCount(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->u:I

    return-void
.end method

.method public setRequiredParam(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->p:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->p:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->p:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->p:I

    :goto_0
    return-void
.end method

.method public setRequiredType(Lnet/sf/saxon/value/SequenceType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->s:Lnet/sf/saxon/value/SequenceType;

    return-void
.end method

.method public setSelectExpression(Lnet/sf/saxon/expr/Expression;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->q:Lnet/sf/saxon/expr/Operand;

    if-nez v1, :cond_0

    new-instance v1, Lnet/sf/saxon/expr/Operand;

    sget-object v2, Lnet/sf/saxon/expr/OperandRole;->NAVIGATE:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v1, p0, p1, v2}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->q:Lnet/sf/saxon/expr/Operand;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->q:Lnet/sf/saxon/expr/Operand;

    :goto_0
    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->v:Lnet/sf/saxon/expr/parser/Evaluator;

    return-void
.end method

.method public setSlotNumber(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->t:I

    return-void
.end method

.method public setTunnel(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->p:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->p:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->p:I

    and-int/lit8 p1, p1, -0x9

    iput p1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->p:I

    :goto_0
    return-void
.end method

.method public setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;->r:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    if-eq p2, p0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/LocalParam;->checkAgainstRequiredType(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)V

    return-object p0
.end method
