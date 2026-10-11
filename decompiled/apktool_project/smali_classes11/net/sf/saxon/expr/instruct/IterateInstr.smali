.class public final Lnet/sf/saxon/expr/instruct/IterateInstr;
.super Lnet/sf/saxon/expr/instruct/Instruction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ContextSwitchingExpression;


# instance fields
.field public final n:Lnet/sf/saxon/expr/Operand;

.field public final o:Lnet/sf/saxon/expr/Operand;

.field public final p:Lnet/sf/saxon/expr/Operand;

.field public final q:Lnet/sf/saxon/expr/Operand;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/LocalParamBlock;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V
    .locals 4

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Instruction;-><init>()V

    if-nez p4, :cond_0

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p4

    :cond_0
    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->FOCUS_CONTROLLING_SELECT:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/IterateInstr;->n:Lnet/sf/saxon/expr/Operand;

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    sget-object v0, Lnet/sf/saxon/expr/OperandRole;->FOCUS_CONTROLLED_ACTION:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {p1, p0, p3, v0}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/IterateInstr;->o:Lnet/sf/saxon/expr/Operand;

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    new-instance p3, Lnet/sf/saxon/expr/OperandRole;

    sget-object v0, Lnet/sf/saxon/expr/OperandUsage;->NAVIGATION:Lnet/sf/saxon/expr/OperandUsage;

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    new-instance v2, Lcom/sunia/HTREnginev2/kqi;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/kqi;-><init>()V

    const/16 v3, 0x10

    invoke-direct {p3, v3, v0, v1, v2}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Predicate;)V

    invoke-direct {p1, p0, p2, p3}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/IterateInstr;->p:Lnet/sf/saxon/expr/Operand;

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    new-instance p2, Lnet/sf/saxon/expr/OperandRole;

    const/4 p3, 0x2

    sget-object v0, Lnet/sf/saxon/expr/OperandUsage;->TRANSMISSION:Lnet/sf/saxon/expr/OperandUsage;

    invoke-direct {p2, p3, v0}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;)V

    invoke-direct {p1, p0, p4, p2}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/IterateInstr;->q:Lnet/sf/saxon/expr/Operand;

    return-void
.end method

.method public static synthetic d(Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->g(Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    return p0
.end method

.method public static e(Lnet/sf/saxon/expr/Expression;Z)Z
    .locals 3

    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/BreakInstr;

    if-nez v0, :cond_5

    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/NextIteration;

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    instance-of p1, p0, Lnet/sf/saxon/expr/TryCatch;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v0

    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {v2, p1}, Lnet/sf/saxon/expr/instruct/IterateInstr;->e(Lnet/sf/saxon/expr/Expression;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    return v0

    :cond_5
    :goto_3
    return p1
.end method

.method public static synthetic g(Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    instance-of p0, p0, Lnet/sf/saxon/expr/instruct/LocalParamBlock;

    return p0
.end method


# virtual methods
.method public checkPermittedContents(Lnet/sf/saxon/type/SchemaType;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lnet/sf/saxon/expr/Expression;->checkPermittedContents(Lnet/sf/saxon/type/SchemaType;Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getOnCompletion()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/Expression;->checkPermittedContents(Lnet/sf/saxon/type/SchemaType;Z)V

    return-void
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 5

    new-instance v0, Lnet/sf/saxon/expr/instruct/IterateInstr;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getInitiallyExp()Lnet/sf/saxon/expr/instruct/LocalParamBlock;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/instruct/LocalParamBlock;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/instruct/LocalParamBlock;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getOnCompletion()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v4, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lnet/sf/saxon/expr/instruct/IterateInstr;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/LocalParamBlock;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "iterate"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    const-string v0, "select"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    const-string v0, "params"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getInitiallyExp()Lnet/sf/saxon/expr/instruct/LocalParamBlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/instruct/LocalParamBlock;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getOnCompletion()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "on-completion"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getOnCompletion()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_0
    const-string v0, "action"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getActionExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/IterateInstr;->o:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getInitiallyExp()Lnet/sf/saxon/expr/instruct/LocalParamBlock;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/IterateInstr;->p:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/instruct/LocalParamBlock;

    return-object p0
.end method

.method public getInstructionNameCode()I
    .locals 0

    const/16 p0, 0xa8

    return p0
.end method

.method public final getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getOnCompletion()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getOnCompletion()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lnet/sf/saxon/type/Type;->getCommonSuperType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getOnCompletion()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/IterateInstr;->q:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getSelectExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/IterateInstr;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "Iterate"

    return-object p0
.end method

.method public hasVariableBinding(Lnet/sf/saxon/expr/Binding;)Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getInitiallyExp()Lnet/sf/saxon/expr/instruct/LocalParamBlock;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParamBlock;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/instruct/LocalParam;

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isCompilable()Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->e(Lnet/sf/saxon/expr/Expression;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final mayCreateNewNodes()Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getOnCompletion()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result p0

    and-int/2addr p0, v0

    const/high16 v0, 0x800000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/IterateInstr;->n:Lnet/sf/saxon/expr/Operand;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/IterateInstr;->o:Lnet/sf/saxon/expr/Operand;

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/IterateInstr;->p:Lnet/sf/saxon/expr/Operand;

    iget-object v3, p0, Lnet/sf/saxon/expr/instruct/IterateInstr;->q:Lnet/sf/saxon/expr/Operand;

    filled-new-array {v0, v1, v2, v3}, [Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->operandList([Lnet/sf/saxon/expr/Operand;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/IterateInstr;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/IterateInstr;->p:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->setContextSettingExpression(Lnet/sf/saxon/expr/Expression;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/IterateInstr;->o:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-object p2, p0, Lnet/sf/saxon/expr/instruct/IterateInstr;->q:Lnet/sf/saxon/expr/Operand;

    sget-object v0, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->ABSENT:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    invoke-virtual {p2, p1, v0}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getOnCompletion()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getOnCompletion()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p2}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/XPathContextMinor;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentTemplateRule(Lnet/sf/saxon/trans/rules/Rule;)V

    invoke-virtual {p1}, Lnet/sf/saxon/event/Outputter;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v3

    invoke-virtual {v3, v0}, Lnet/sf/saxon/event/PipelineConfiguration;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/Controller;->isTracing()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/Controller;->getTraceListener()Lnet/sf/saxon/lib/TraceListener;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v2

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getInitiallyExp()Lnet/sf/saxon/expr/instruct/LocalParamBlock;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Lnet/sf/saxon/expr/instruct/Instruction;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    :cond_1
    :goto_1
    invoke-interface {v1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v6

    if-eqz v6, :cond_5

    if-eqz v4, :cond_2

    invoke-interface {v5, v6}, Lnet/sf/saxon/lib/TraceListener;->startCurrentItem(Lnet/sf/saxon/om/Item;)V

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    invoke-virtual {v7, p1, v0}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    if-eqz v4, :cond_3

    invoke-interface {v5, v6}, Lnet/sf/saxon/lib/TraceListener;->endCurrentItem(Lnet/sf/saxon/om/Item;)V

    :cond_3
    invoke-virtual {v0}, Lnet/sf/saxon/expr/XPathContextMajor;->getTailCallInfo()Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    instance-of v6, v6, Lnet/sf/saxon/expr/instruct/BreakInstr;

    if-eqz v6, :cond_1

    invoke-interface {v1}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-object v2

    :cond_5
    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/XPathContextMinor;->setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getOnCompletion()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {v3, p2}, Lnet/sf/saxon/event/PipelineConfiguration;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    return-object v2
.end method

.method public setAction(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/IterateInstr;->o:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setInitiallyExp(Lnet/sf/saxon/expr/instruct/LocalParamBlock;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/IterateInstr;->p:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setOnCompletion(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/IterateInstr;->q:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setSelect(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/IterateInstr;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/IterateInstr;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/IterateInstr;->p:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v0

    if-ne p2, v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p2

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->setContextSettingExpression(Lnet/sf/saxon/expr/Expression;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/IterateInstr;->o:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-object p2, p0, Lnet/sf/saxon/expr/instruct/IterateInstr;->q:Lnet/sf/saxon/expr/Operand;

    sget-object v0, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->ABSENT:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    invoke-virtual {p2, p1, v0}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getOnCompletion()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/IterateInstr;->getOnCompletion()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_2
    return-object p0
.end method
