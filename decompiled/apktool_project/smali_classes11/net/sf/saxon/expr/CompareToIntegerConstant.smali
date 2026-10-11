.class public Lnet/sf/saxon/expr/CompareToIntegerConstant;
.super Lnet/sf/saxon/expr/CompareToConstant;
.source "SourceFile"


# instance fields
.field public final o:J


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;IJ)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/CompareToConstant;-><init>(Lnet/sf/saxon/expr/Expression;)V

    iput p2, p0, Lnet/sf/saxon/expr/CompareToConstant;->operator:I

    iput-wide p3, p0, Lnet/sf/saxon/expr/CompareToIntegerConstant;->o:J

    return-void
.end method


# virtual methods
.method public computeCardinality()I
    .locals 0

    const/16 p0, 0x4000

    return p0
.end method

.method public computeHashCode()I
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CompareToConstant;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v0

    const v1, 0x136b12a0

    add-int/2addr v0, v1

    iget-wide v1, p0, Lnet/sf/saxon/expr/CompareToIntegerConstant;->o:J

    long-to-int p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 4

    new-instance v0, Lnet/sf/saxon/expr/CompareToIntegerConstant;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CompareToConstant;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget v1, p0, Lnet/sf/saxon/expr/CompareToConstant;->operator:I

    iget-wide v2, p0, Lnet/sf/saxon/expr/CompareToIntegerConstant;->o:J

    invoke-direct {v0, p1, v1, v2, v3}, Lnet/sf/saxon/expr/CompareToIntegerConstant;-><init>(Lnet/sf/saxon/expr/Expression;IJ)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CompareToConstant;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lnet/sf/saxon/expr/CompareToConstant;->operator:I

    const/16 p1, 0x33

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    iget-wide v0, p0, Lnet/sf/saxon/expr/CompareToIntegerConstant;->o:J

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/value/NumericValue;->compareTo(J)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/CompareToConstant;->d(I)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lnet/sf/saxon/expr/CompareToIntegerConstant;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/expr/CompareToIntegerConstant;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/CompareToConstant;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CompareToConstant;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lnet/sf/saxon/expr/CompareToIntegerConstant;->o:J

    iget-wide v2, p0, Lnet/sf/saxon/expr/CompareToIntegerConstant;->o:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget p1, p1, Lnet/sf/saxon/expr/CompareToConstant;->operator:I

    iget p0, p0, Lnet/sf/saxon/expr/CompareToConstant;->operator:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "compareToInt"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    sget-object v0, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    iget v1, p0, Lnet/sf/saxon/expr/CompareToConstant;->operator:I

    aget-object v0, v0, v1

    const-string v1, "op"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lnet/sf/saxon/expr/CompareToIntegerConstant;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "val"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CompareToConstant;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getAtomicComparer()Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/expr/sort/DoubleSortComparer;->getInstance()Lnet/sf/saxon/expr/sort/DoubleSortComparer;

    move-result-object p0

    return-object p0
.end method

.method public getComparand()J
    .locals 2

    iget-wide v0, p0, Lnet/sf/saxon/expr/CompareToIntegerConstant;->o:J

    return-wide v0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "compareToInt"

    return-object p0
.end method

.method public getRhsExpression()Lnet/sf/saxon/expr/Expression;
    .locals 4

    new-instance v0, Lnet/sf/saxon/expr/Literal;

    new-instance v1, Lnet/sf/saxon/value/Int64Value;

    iget-wide v2, p0, Lnet/sf/saxon/expr/CompareToIntegerConstant;->o:J

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/Literal;-><init>(Lnet/sf/saxon/om/GroundedValue;)V

    return-object v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CompareToConstant;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    iget v3, p0, Lnet/sf/saxon/expr/CompareToConstant;->operator:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnet/sf/saxon/expr/CompareToIntegerConstant;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CompareToConstant;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->parenthesize(Lnet/sf/saxon/expr/Expression;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    iget v3, p0, Lnet/sf/saxon/expr/CompareToConstant;->operator:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnet/sf/saxon/expr/CompareToIntegerConstant;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
