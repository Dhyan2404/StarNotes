.class public Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;
.super Lnet/sf/saxon/expr/Expression;
.source "SourceFile"


# instance fields
.field public n:Lnet/sf/saxon/expr/oper/OperandArray;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lnet/sf/saxon/expr/Expression;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/expr/Expression;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/sf/saxon/expr/oper/OperandArray;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->NAVIGATE:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {p1, p0, v0, v1}, Lnet/sf/saxon/expr/oper/OperandArray;-><init>(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->setOperanda(Lnet/sf/saxon/expr/oper/OperandArray;)V

    return-void
.end method


# virtual methods
.method public final computeCardinality()I
    .locals 0

    const/16 p0, 0x4000

    return p0
.end method

.method public computeHashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const v0, 0x778b92a0

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

.method public computeSpecialProperties()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/oper/OperandArray;->getNumberOfOperands()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->operands()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;

    invoke-direct {p1, v0}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;-><init>(Ljava/util/List;)V

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;

    invoke-virtual {p1}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/oper/OperandArray;->getNumberOfOperands()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/oper/OperandArray;->getNumberOfOperands()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/oper/OperandArray;->getNumberOfOperands()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/oper/OperandArray;->getOperand(I)Lnet/sf/saxon/expr/Operand;

    move-result-object v2

    invoke-virtual {p1}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Lnet/sf/saxon/expr/oper/OperandArray;->getOperand(I)Lnet/sf/saxon/expr/Operand;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/oper/OperandArray;->getNumberOfOperands()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->eagerEvaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;

    invoke-direct {p0, v0}, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "arrayBlock"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->operands()Ljava/lang/Iterable;

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

    const-string p0, "SquareArrayConstructor"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/oper/OperandArray;->operandExpressions()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/16 v2, 0x4000

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/Expression;

    if-nez v1, :cond_0

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v4

    invoke-static {v1, v4, v0}, Lnet/sf/saxon/type/Type;->getCommonSuperType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v3

    invoke-static {v2, v3}, Lnet/sf/saxon/value/Cardinality;->union(II)I

    move-result v2

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v1

    :cond_2
    new-instance p0, Lnet/sf/saxon/ma/arrays/ArrayItemType;

    invoke-static {v1, v2}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/ma/arrays/ArrayItemType;-><init>(Lnet/sf/saxon/value/SequenceType;)V

    return-object p0
.end method

.method public getOperand(I)Lnet/sf/saxon/expr/Operand;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->n:Lnet/sf/saxon/expr/oper/OperandArray;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/oper/OperandArray;->getOperand(I)Lnet/sf/saxon/expr/Operand;

    move-result-object p0

    return-object p0
.end method

.method public getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->n:Lnet/sf/saxon/expr/oper/OperandArray;

    return-object p0
.end method

.method public getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/UType;->FUNCTION:Lnet/sf/saxon/type/UType;

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "ArrayBlock"

    return-object p0
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

    iget-object p0, p0, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->n:Lnet/sf/saxon/expr/oper/OperandArray;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/oper/OperandArray;->operands()Ljava/lang/Iterable;

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

    move-result-object p2

    if-eq p2, p0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->preEvaluate(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public final preEvaluate(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->operands()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/expr/Literal;

    if-nez v1, :cond_0

    return-object p0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->makeDynamicContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p1

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public setOperanda(Lnet/sf/saxon/expr/oper/OperandArray;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->n:Lnet/sf/saxon/expr/oper/OperandArray;

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/oper/OperandArray;->getNumberOfOperands()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "]"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "["

    if-eq v0, v2, :cond_1

    const/4 v5, 0x2

    if-eq v0, v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object p0

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/oper/OperandArray;->getOperand(I)Lnet/sf/saxon/expr/Operand;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", ...]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Lnet/sf/saxon/expr/oper/OperandArray;->getOperand(I)Lnet/sf/saxon/expr/Operand;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object p0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/oper/OperandArray;->getOperand(I)Lnet/sf/saxon/expr/Operand;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object p0

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/oper/OperandArray;->getOperand(I)Lnet/sf/saxon/expr/Operand;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "[]"

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
    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->preEvaluate(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method
