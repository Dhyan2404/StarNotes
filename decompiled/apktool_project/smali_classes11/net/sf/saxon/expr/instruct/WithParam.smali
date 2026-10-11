.class public Lnet/sf/saxon/expr/instruct/WithParam;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static EMPTY_ARRAY:[Lnet/sf/saxon/expr/instruct/WithParam;


# instance fields
.field public a:Lnet/sf/saxon/expr/Operand;

.field public b:Z

.field public c:I

.field public d:Lnet/sf/saxon/value/SequenceType;

.field public e:Lnet/sf/saxon/om/StructuredQName;

.field public f:Lnet/sf/saxon/expr/parser/Evaluator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lnet/sf/saxon/expr/instruct/WithParam;

    sput-object v0, Lnet/sf/saxon/expr/instruct/WithParam;->EMPTY_ARRAY:[Lnet/sf/saxon/expr/instruct/WithParam;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/WithParam;->b:Z

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/expr/instruct/WithParam;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/WithParam;->f:Lnet/sf/saxon/expr/parser/Evaluator;

    return-void
.end method

.method public static copy(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/expr/parser/RebindingMap;)[Lnet/sf/saxon/expr/instruct/WithParam;
    .locals 6

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lnet/sf/saxon/expr/instruct/WithParam;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    new-instance v2, Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-direct {v2}, Lnet/sf/saxon/expr/instruct/WithParam;-><init>()V

    aput-object v2, v0, v1

    aget-object v3, p1, v1

    iget v4, v3, Lnet/sf/saxon/expr/instruct/WithParam;->c:I

    iput v4, v2, Lnet/sf/saxon/expr/instruct/WithParam;->c:I

    iget-boolean v4, v3, Lnet/sf/saxon/expr/instruct/WithParam;->b:Z

    iput-boolean v4, v2, Lnet/sf/saxon/expr/instruct/WithParam;->b:Z

    new-instance v4, Lnet/sf/saxon/expr/Operand;

    iget-object v3, v3, Lnet/sf/saxon/expr/instruct/WithParam;->a:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p2}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    sget-object v5, Lnet/sf/saxon/expr/OperandRole;->NAVIGATE:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v4, p0, v3, v5}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v4, v2, Lnet/sf/saxon/expr/instruct/WithParam;->a:Lnet/sf/saxon/expr/Operand;

    aget-object v2, v0, v1

    aget-object v3, p1, v1

    iget-object v4, v3, Lnet/sf/saxon/expr/instruct/WithParam;->d:Lnet/sf/saxon/value/SequenceType;

    iput-object v4, v2, Lnet/sf/saxon/expr/instruct/WithParam;->d:Lnet/sf/saxon/value/SequenceType;

    iget-object v3, v3, Lnet/sf/saxon/expr/instruct/WithParam;->e:Lnet/sf/saxon/om/StructuredQName;

    iput-object v3, v2, Lnet/sf/saxon/expr/instruct/WithParam;->e:Lnet/sf/saxon/om/StructuredQName;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static exportParameters([Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/trace/ExpressionPresenter;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p0, :cond_5

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p0, v1

    const-string v3, "withParam"

    invoke-virtual {p1, v3}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    iget-object v3, v2, Lnet/sf/saxon/expr/instruct/WithParam;->e:Lnet/sf/saxon/om/StructuredQName;

    const-string v4, "name"

    invoke-virtual {p1, v4, v3}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    const-string v3, ""

    if-eqz p2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    move-object v4, v3

    :goto_1
    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/WithParam;->isTypeChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "c"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "flags"

    invoke-virtual {p1, v5, v4}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->getOptions()Lnet/sf/saxon/trace/ExpressionPresenter$Options;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/WithParam;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v4

    sget-object v5, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    if-eq v4, v5, :cond_3

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/WithParam;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/value/SequenceType;->toAlphaCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "as"

    invoke-virtual {p1, v5, v4}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/WithParam;->getSlotNumber()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/WithParam;->getSlotNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "slot"

    invoke-virtual {p1, v4, v3}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v2, v2, Lnet/sf/saxon/expr/instruct/WithParam;->a:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public static gatherOperands(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/instruct/WithParam;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/Expression;",
            "[",
            "Lnet/sf/saxon/expr/instruct/WithParam;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget-object v1, p1, v0

    iget-object v1, v1, Lnet/sf/saxon/expr/instruct/WithParam;->a:Lnet/sf/saxon/expr/Operand;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;[Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, v2, Lnet/sf/saxon/expr/instruct/WithParam;->a:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v3, p0, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/WithParam;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static simplify([Lnet/sf/saxon/expr/instruct/WithParam;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    iget-object v2, v2, Lnet/sf/saxon/expr/instruct/WithParam;->a:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static typeCheck([Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    iget-object v2, v2, Lnet/sf/saxon/expr/instruct/WithParam;->a:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/WithParam;->a:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->lazyEvaluator(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/parser/Evaluator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/WithParam;->f:Lnet/sf/saxon/expr/parser/Evaluator;

    return-void
.end method

.method public getEvaluationMode()Lnet/sf/saxon/expr/parser/Evaluator;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/WithParam;->f:Lnet/sf/saxon/expr/parser/Evaluator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/WithParam;->a()V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/WithParam;->f:Lnet/sf/saxon/expr/parser/Evaluator;

    return-object p0
.end method

.method public getInstructionNameCode()I
    .locals 0

    const/16 p0, 0xdd

    return p0
.end method

.method public getRequiredType()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/WithParam;->d:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public getSelectExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/WithParam;->a:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getSelectOperand()Lnet/sf/saxon/expr/Operand;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/WithParam;->a:Lnet/sf/saxon/expr/Operand;

    return-object p0
.end method

.method public getSelectValue(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/WithParam;->f:Lnet/sf/saxon/expr/parser/Evaluator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/WithParam;->a()V

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getTemporaryOutputState()I

    move-result v0

    const/16 v1, 0xdd

    invoke-interface {p1, v1}, Lnet/sf/saxon/expr/XPathContext;->setTemporaryOutputState(I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/WithParam;->f:Lnet/sf/saxon/expr/parser/Evaluator;

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/WithParam;->a:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v1, p0, p1}, Lnet/sf/saxon/expr/parser/Evaluator;->evaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-interface {p1, v0}, Lnet/sf/saxon/expr/XPathContext;->setTemporaryOutputState(I)V

    return-object p0
.end method

.method public getSlotNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/WithParam;->c:I

    return p0
.end method

.method public getVariableQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/WithParam;->e:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public isTypeChecked()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/WithParam;->b:Z

    return p0
.end method

.method public setRequiredType(Lnet/sf/saxon/value/SequenceType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/WithParam;->d:Lnet/sf/saxon/value/SequenceType;

    return-void
.end method

.method public setSelectExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->NAVIGATE:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p1, p2, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/WithParam;->a:Lnet/sf/saxon/expr/Operand;

    return-void
.end method

.method public setSlotNumber(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/instruct/WithParam;->c:I

    return-void
.end method

.method public setTypeChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/WithParam;->b:Z

    return-void
.end method

.method public setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/WithParam;->e:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method
