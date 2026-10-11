.class public Lnet/sf/saxon/expr/flwor/TupleExpression;
.super Lnet/sf/saxon/expr/Expression;
.source "SourceFile"


# instance fields
.field public n:Lnet/sf/saxon/expr/oper/OperandArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    return-void
.end method


# virtual methods
.method public computeCardinality()I
    .locals 0

    const/16 p0, 0x4000

    return p0
.end method

.method public computeHashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TupleExpression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/16 v0, 0x4d

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TupleExpression;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/oper/OperandArray;->getNumberOfOperands()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/flwor/TupleExpression;->getSlot(I)Lnet/sf/saxon/expr/LocalVariableReference;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/LocalVariableReference;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/sf/saxon/expr/flwor/TupleExpression;

    invoke-direct {p1}, Lnet/sf/saxon/expr/flwor/TupleExpression;-><init>()V

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/flwor/TupleExpression;->setVariables(Ljava/util/List;)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lnet/sf/saxon/expr/flwor/TupleExpression;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lnet/sf/saxon/expr/flwor/TupleExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TupleExpression;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/oper/OperandArray;->getNumberOfOperands()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/flwor/TupleExpression;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/oper/OperandArray;->getNumberOfOperands()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TupleExpression;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/flwor/TupleExpression;->getSlot(I)Lnet/sf/saxon/expr/LocalVariableReference;

    move-result-object v2

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/flwor/TupleExpression;->getSlot(I)Lnet/sf/saxon/expr/LocalVariableReference;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/Tuple;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TupleExpression;->getSize()I

    move-result v0

    .line 3
    new-array v1, v0, [Lnet/sf/saxon/om/Sequence;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/flwor/TupleExpression;->getSlot(I)Lnet/sf/saxon/expr/LocalVariableReference;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/LocalVariableReference;->evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Lnet/sf/saxon/expr/flwor/Tuple;

    invoke-direct {p0, v1}, Lnet/sf/saxon/expr/flwor/Tuple;-><init>([Lnet/sf/saxon/om/Sequence;)V

    return-object p0
.end method

.method public bridge synthetic evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/flwor/TupleExpression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/Tuple;

    move-result-object p0

    return-object p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "tuple"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TupleExpression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "tuple"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getIntrinsicDependencies()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 1

    new-instance p0, Lnet/sf/saxon/type/JavaExternalObjectType;

    const-class v0, Lnet/sf/saxon/expr/flwor/Tuple;

    invoke-direct {p0, v0}, Lnet/sf/saxon/type/JavaExternalObjectType;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method public getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/TupleExpression;->n:Lnet/sf/saxon/expr/oper/OperandArray;

    return-object p0
.end method

.method public getSize()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TupleExpression;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/oper/OperandArray;->getNumberOfOperands()I

    move-result p0

    return p0
.end method

.method public getSlot(I)Lnet/sf/saxon/expr/LocalVariableReference;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TupleExpression;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/oper/OperandArray;->getOperandExpression(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/LocalVariableReference;

    return-object p0
.end method

.method public includesBinding(Lnet/sf/saxon/expr/Binding;)Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TupleExpression;->operands()Ljava/lang/Iterable;

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

    check-cast v0, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/LocalVariableReference;->getBinding()Lnet/sf/saxon/expr/LocalBinding;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public operands()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/TupleExpression;->n:Lnet/sf/saxon/expr/oper/OperandArray;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/oper/OperandArray;->operands()Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public setCurrentTuple(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/flwor/Tuple;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p2}, Lnet/sf/saxon/expr/flwor/Tuple;->getMembers()[Lnet/sf/saxon/om/Sequence;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TupleExpression;->getSize()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/flwor/TupleExpression;->getSlot(I)Lnet/sf/saxon/expr/LocalVariableReference;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/LocalVariableReference;->getBinding()Lnet/sf/saxon/expr/LocalBinding;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/expr/LocalBinding;->getLocalSlotNumber()I

    move-result v2

    aget-object v3, p2, v1

    invoke-interface {p1, v2, v3}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOperanda(Lnet/sf/saxon/expr/oper/OperandArray;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/TupleExpression;->n:Lnet/sf/saxon/expr/oper/OperandArray;

    return-void
.end method

.method public setSlot(ILnet/sf/saxon/expr/LocalVariableReference;)V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TupleExpression;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/oper/OperandArray;->setOperand(ILnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setVariables(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/LocalVariableReference;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lnet/sf/saxon/expr/Expression;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Expression;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/sf/saxon/expr/oper/OperandArray;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->SAME_FOCUS_ACTION:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {p1, p0, v0, v1}, Lnet/sf/saxon/expr/oper/OperandArray;-><init>(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/flwor/TupleExpression;->setOperanda(Lnet/sf/saxon/expr/oper/OperandArray;)V

    return-void
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TupleExpression;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/TupleExpression;->n:Lnet/sf/saxon/expr/oper/OperandArray;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/oper/OperandArray;->getOperand(I)Lnet/sf/saxon/expr/Operand;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
