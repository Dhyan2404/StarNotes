.class public abstract Lnet/sf/saxon/expr/CompareToConstant;
.super Lnet/sf/saxon/expr/UnaryExpression;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ComparisonExpression;


# instance fields
.field protected operator:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/UnaryExpression;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method


# virtual methods
.method public computeSpecialProperties()I
    .locals 0

    const/high16 p0, 0x800000

    return p0
.end method

.method public convertsUntypedToOther()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public d(I)Z
    .locals 3

    iget v0, p0, Lnet/sf/saxon/expr/CompareToConstant;->operator:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown operator "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/sf/saxon/expr/CompareToConstant;->operator:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :pswitch_1
    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1

    :pswitch_2
    if-gez p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1

    :pswitch_3
    if-lez p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    return v1

    :pswitch_4
    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    return v1

    :pswitch_5
    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    return v1

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/CompareToConstant;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/BooleanValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method

.method public getComparisonOperator()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/CompareToConstant;->operator:I

    return p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public getLhs()Lnet/sf/saxon/expr/Operand;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getOperand()Lnet/sf/saxon/expr/Operand;

    move-result-object p0

    return-object p0
.end method

.method public getLhsExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getOperandRole()Lnet/sf/saxon/expr/OperandRole;
    .locals 0

    sget-object p0, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    return-object p0
.end method

.method public getRhs()Lnet/sf/saxon/expr/Operand;
    .locals 3

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CompareToConstant;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, v1, v2}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    return-object v0
.end method

.method public abstract getRhsExpression()Lnet/sf/saxon/expr/Expression;
.end method

.method public getSingletonOperator()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/CompareToConstant;->operator:I

    return p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getOperand()Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CompareToConstant;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    instance-of p1, p1, Lnet/sf/saxon/expr/Literal;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p1

    invoke-static {p1}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p1

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    :cond_0
    return-object p0
.end method
