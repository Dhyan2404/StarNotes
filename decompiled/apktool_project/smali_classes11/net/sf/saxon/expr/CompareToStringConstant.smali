.class public Lnet/sf/saxon/expr/CompareToStringConstant;
.super Lnet/sf/saxon/expr/CompareToConstant;
.source "SourceFile"


# instance fields
.field public final o:Lnet/sf/saxon/str/UnicodeString;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/str/UnicodeString;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/CompareToConstant;-><init>(Lnet/sf/saxon/expr/Expression;)V

    iput p2, p0, Lnet/sf/saxon/expr/CompareToConstant;->operator:I

    iput-object p3, p0, Lnet/sf/saxon/expr/CompareToStringConstant;->o:Lnet/sf/saxon/str/UnicodeString;

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

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CompareToConstant;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v0

    const v1, 0x484b12a0    # 207946.5f

    add-int/2addr v0, v1

    iget-object p0, p0, Lnet/sf/saxon/expr/CompareToStringConstant;->o:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 3

    new-instance v0, Lnet/sf/saxon/expr/CompareToStringConstant;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CompareToConstant;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget v1, p0, Lnet/sf/saxon/expr/CompareToConstant;->operator:I

    iget-object v2, p0, Lnet/sf/saxon/expr/CompareToStringConstant;->o:Lnet/sf/saxon/str/UnicodeString;

    invoke-direct {v0, p1, v1, v2}, Lnet/sf/saxon/expr/CompareToStringConstant;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/str/UnicodeString;)V

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

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-static {}, Lnet/sf/saxon/expr/sort/CodepointCollator;->getInstance()Lnet/sf/saxon/expr/sort/CodepointCollator;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/CompareToStringConstant;->o:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v0, p1, v1}, Lnet/sf/saxon/expr/sort/CodepointCollator;->compareStrings(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/CompareToConstant;->d(I)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/expr/CompareToStringConstant;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/expr/CompareToStringConstant;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/CompareToConstant;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CompareToConstant;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lnet/sf/saxon/expr/CompareToStringConstant;->o:Lnet/sf/saxon/str/UnicodeString;

    iget-object v1, p0, Lnet/sf/saxon/expr/CompareToStringConstant;->o:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "compareToString"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    sget-object v0, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    iget v1, p0, Lnet/sf/saxon/expr/CompareToConstant;->operator:I

    aget-object v0, v0, v1

    const-string v1, "op"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CompareToStringConstant;->getComparand()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

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

    invoke-static {}, Lnet/sf/saxon/expr/sort/CodepointCollatingComparer;->getInstance()Lnet/sf/saxon/expr/sort/CodepointCollatingComparer;

    move-result-object p0

    return-object p0
.end method

.method public getComparand()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/CompareToStringConstant;->o:Lnet/sf/saxon/str/UnicodeString;

    return-object p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "compareToString"

    return-object p0
.end method

.method public getRhsExpression()Lnet/sf/saxon/expr/Expression;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/StringLiteral;

    iget-object p0, p0, Lnet/sf/saxon/expr/CompareToStringConstant;->o:Lnet/sf/saxon/str/UnicodeString;

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CompareToConstant;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    iget v2, p0, Lnet/sf/saxon/expr/CompareToConstant;->operator:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/expr/CompareToStringConstant;->o:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object p0, p0, Lnet/sf/saxon/expr/CompareToStringConstant;->o:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
