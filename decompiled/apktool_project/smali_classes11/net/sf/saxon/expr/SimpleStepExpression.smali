.class public final Lnet/sf/saxon/expr/SimpleStepExpression;
.super Lnet/sf/saxon/expr/SlashExpression;
.source "SourceFile"


# static fields
.field public static final r:Lnet/sf/saxon/expr/OperandRole;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    sget-object v1, Lnet/sf/saxon/expr/OperandUsage;->TRANSMISSION:Lnet/sf/saxon/expr/OperandUsage;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    const/4 v3, 0x6

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    sput-object v0, Lnet/sf/saxon/expr/SimpleStepExpression;->r:Lnet/sf/saxon/expr/OperandRole;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/expr/SlashExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    instance-of p0, p2, Lnet/sf/saxon/expr/AxisExpression;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public bridge synthetic copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/SimpleStepExpression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/SimpleStepExpression;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/SimpleStepExpression;
    .locals 3

    .line 2
    new-instance v0, Lnet/sf/saxon/expr/SimpleStepExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lnet/sf/saxon/expr/SimpleStepExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    .line 3
    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public getAxisExpression()Lnet/sf/saxon/expr/AxisExpression;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/AxisExpression;

    return-object p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "simpleStep"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getOperandRole(I)Lnet/sf/saxon/expr/OperandRole;
    .locals 0

    if-nez p1, :cond_0

    sget-object p0, Lnet/sf/saxon/expr/OperandRole;->FOCUS_CONTROLLING_SELECT:Lnet/sf/saxon/expr/OperandRole;

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/sf/saxon/expr/SimpleStepExpression;->r:Lnet/sf/saxon/expr/OperandRole;

    :goto_0
    return-object p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->getInstance()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/AxisExpression;->iterate(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XPDY0002"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The context item for axis step "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is absent"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    throw p1

    :cond_1
    throw p1
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v0

    if-ne p2, v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->setContextSettingExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    instance-of p1, p1, Lnet/sf/saxon/expr/AxisExpression;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Lnet/sf/saxon/expr/SlashExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lnet/sf/saxon/expr/SlashExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    instance-of p1, p1, Lnet/sf/saxon/expr/ContextItemExpression;

    if-eqz p1, :cond_3

    sget-object p1, Lnet/sf/saxon/om/AxisInfo;->isForwards:[Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result p2

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_3
    return-object p0
.end method
