.class public final Lnet/sf/saxon/expr/PatternMatchExpression;
.super Lnet/sf/saxon/expr/Expression;
.source "SourceFile"


# instance fields
.field public final n:Lnet/sf/saxon/expr/Operand;

.field public final o:Lnet/sf/saxon/expr/Operand;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/pattern/Pattern;)V
    .locals 5

    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    new-instance v1, Lnet/sf/saxon/expr/OperandRole;

    sget-object v2, Lnet/sf/saxon/expr/OperandUsage;->NAVIGATION:Lnet/sf/saxon/expr/OperandUsage;

    sget-object v3, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/PatternMatchExpression;->n:Lnet/sf/saxon/expr/Operand;

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    sget-object v0, Lnet/sf/saxon/expr/OperandRole;->INSPECT:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {p1, p0, p2, v0}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/PatternMatchExpression;->o:Lnet/sf/saxon/expr/Operand;

    return-void
.end method


# virtual methods
.method public computeCardinality()I
    .locals 0

    const/16 p0, 0x4000

    return p0
.end method

.method public computeHashCode()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PatternMatchExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->computeHashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PatternMatchExpression;->getPattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->computeHashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    new-instance p1, Lnet/sf/saxon/expr/PatternMatchExpression;

    iget-object v0, p0, Lnet/sf/saxon/expr/PatternMatchExpression;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/PatternMatchExpression;->o:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/pattern/Pattern;

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/expr/PatternMatchExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/pattern/Pattern;)V

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PatternMatchExpression;->getPattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PatternMatchExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1, p1}, Lnet/sf/saxon/pattern/Pattern;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/expr/PatternMatchExpression;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/expr/PatternMatchExpression;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/PatternMatchExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PatternMatchExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/PatternMatchExpression;->getPattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PatternMatchExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->equals(Ljava/lang/Object;)Z

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/PatternMatchExpression;->effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

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

    const-string v0, "patMatch"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PatternMatchExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PatternMatchExpression;->getPattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/Pattern;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "match"

    return-object p0
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

.method public getPattern()Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/PatternMatchExpression;->o:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/pattern/Pattern;

    return-object p0
.end method

.method public getSelectExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/PatternMatchExpression;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
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

    iget-object v0, p0, Lnet/sf/saxon/expr/PatternMatchExpression;->n:Lnet/sf/saxon/expr/Operand;

    iget-object v1, p0, Lnet/sf/saxon/expr/PatternMatchExpression;->o:Lnet/sf/saxon/expr/Operand;

    filled-new-array {v0, v1}, [Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->operandList([Lnet/sf/saxon/expr/Operand;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "patMatch("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PatternMatchExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PatternMatchExpression;->getPattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "patMatch("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PatternMatchExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PatternMatchExpression;->getPattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
