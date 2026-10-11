.class public Lnet/sf/saxon/functions/hof/PartialApply;
.super Lnet/sf/saxon/expr/Expression;
.source "SourceFile"


# static fields
.field public static final synthetic p:Z


# instance fields
.field public final n:Lnet/sf/saxon/expr/Operand;

.field public final o:[Lnet/sf/saxon/expr/Operand;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V
    .locals 4

    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->INSPECT:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/functions/hof/PartialApply;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    array-length p1, p2

    new-array p1, p1, [Lnet/sf/saxon/expr/Operand;

    iput-object p1, p0, Lnet/sf/saxon/functions/hof/PartialApply;->o:[Lnet/sf/saxon/expr/Operand;

    const/4 p1, 0x0

    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_1

    aget-object v0, p2, p1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/functions/hof/PartialApply;->o:[Lnet/sf/saxon/expr/Operand;

    new-instance v2, Lnet/sf/saxon/expr/Operand;

    sget-object v3, Lnet/sf/saxon/expr/OperandRole;->NAVIGATE:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v2, p0, v0, v3}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    aput-object v2, v1, p1

    aget-object v0, p2, p1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public computeCardinality()I
    .locals 0

    const/16 p0, 0x4000

    return p0
.end method

.method public computeHashCode()I
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/PartialApply;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const v0, 0x236b92a0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Operand;

    if-nez v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v2

    move v3, v2

    move v2, v1

    move v1, v3

    :goto_1
    xor-int/2addr v0, v1

    move v1, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/functions/hof/PartialApply;->o:[Lnet/sf/saxon/expr/Operand;

    array-length v0, v0

    new-array v0, v0, [Lnet/sf/saxon/expr/Expression;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/functions/hof/PartialApply;->o:[Lnet/sf/saxon/expr/Operand;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lnet/sf/saxon/functions/hof/PartialApply;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/PartialApply;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lnet/sf/saxon/functions/hof/PartialApply;-><init>(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lnet/sf/saxon/functions/hof/PartialApply;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lnet/sf/saxon/functions/hof/PartialApply;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/PartialApply;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/functions/hof/PartialApply;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/functions/hof/PartialApply;->o:[Lnet/sf/saxon/expr/Operand;

    array-length v0, v0

    iget-object v2, p1, Lnet/sf/saxon/functions/hof/PartialApply;->o:[Lnet/sf/saxon/expr/Operand;

    array-length v2, v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    move v0, v1

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/functions/hof/PartialApply;->o:[Lnet/sf/saxon/expr/Operand;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v0, v3, :cond_7

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    iget-object v5, p1, Lnet/sf/saxon/functions/hof/PartialApply;->o:[Lnet/sf/saxon/expr/Operand;

    aget-object v5, v5, v0

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    if-eq v3, v4, :cond_5

    return v1

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return v4
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Function;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/PartialApply;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/Function;

    .line 3
    iget-object v1, p0, Lnet/sf/saxon/functions/hof/PartialApply;->o:[Lnet/sf/saxon/expr/Operand;

    array-length v1, v1

    new-array v1, v1, [Lnet/sf/saxon/om/Sequence;

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lnet/sf/saxon/functions/hof/PartialApply;->o:[Lnet/sf/saxon/expr/Operand;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 5
    aget-object v3, v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 6
    aput-object v3, v1, v2

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v3}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v3

    aput-object v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p0, Lnet/sf/saxon/functions/hof/CurriedFunction;

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/functions/hof/CurriedFunction;-><init>(Lnet/sf/saxon/om/Function;[Lnet/sf/saxon/om/Sequence;)V

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
    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/hof/PartialApply;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Function;

    move-result-object p0

    return-object p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "partialApply"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/PartialApply;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    iget-object v0, p0, Lnet/sf/saxon/functions/hof/PartialApply;->o:[Lnet/sf/saxon/expr/Operand;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    const-string v3, "null"

    invoke-virtual {p1, v3, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getArgument(I)Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/PartialApply;->o:[Lnet/sf/saxon/expr/Operand;

    aget-object p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getBaseExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/PartialApply;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "partialApply"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 7

    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/PartialApply;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    instance-of v2, v0, Lnet/sf/saxon/type/SpecificFunctionType;

    if-eqz v2, :cond_0

    move-object v3, v0

    check-cast v3, Lnet/sf/saxon/type/SpecificFunctionType;

    invoke-virtual {v3}, Lnet/sf/saxon/type/SpecificFunctionType;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/PartialApply;->getNumberOfPlaceHolders()I

    move-result v4

    new-array v4, v4, [Lnet/sf/saxon/value/SequenceType;

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v5, p0, Lnet/sf/saxon/functions/hof/PartialApply;->o:[Lnet/sf/saxon/expr/Operand;

    array-length v6, v5

    if-ge v1, v6, :cond_3

    aget-object v5, v5, v1

    if-nez v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    move-object v6, v0

    check-cast v6, Lnet/sf/saxon/type/SpecificFunctionType;

    invoke-virtual {v6}, Lnet/sf/saxon/type/SpecificFunctionType;->getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;

    move-result-object v6

    aget-object v6, v6, v1

    aput-object v6, v4, v2

    move v2, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v4, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    new-instance p0, Lnet/sf/saxon/type/SpecificFunctionType;

    invoke-direct {p0, v4, v3}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    return-object p0
.end method

.method public getNumberOfArguments()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/PartialApply;->o:[Lnet/sf/saxon/expr/Operand;

    array-length p0, p0

    return p0
.end method

.method public getNumberOfPlaceHolders()I
    .locals 4

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/PartialApply;->o:[Lnet/sf/saxon/expr/Operand;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
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

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/sf/saxon/functions/hof/PartialApply;->o:[Lnet/sf/saxon/expr/Operand;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lnet/sf/saxon/functions/hof/PartialApply;->n:Lnet/sf/saxon/expr/Operand;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/PartialApply;->o:[Lnet/sf/saxon/expr/Operand;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public setBaseExpression(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/PartialApply;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/PartialApply;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ")"

    const-string v3, "("

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/PartialApply;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Expression;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/PartialApply;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lnet/sf/saxon/functions/hof/PartialApply;->o:[Lnet/sf/saxon/expr/Operand;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    aget-object v3, v3, v1

    if-nez v3, :cond_1

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    iget-object v3, p0, Lnet/sf/saxon/functions/hof/PartialApply;->o:[Lnet/sf/saxon/expr/Operand;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_2

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheckChildren(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/PartialApply;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    iget-object v0, p0, Lnet/sf/saxon/functions/hof/PartialApply;->o:[Lnet/sf/saxon/expr/Operand;

    array-length v0, v0

    new-array v0, v0, [Lnet/sf/saxon/value/SequenceType;

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lnet/sf/saxon/functions/hof/PartialApply;->o:[Lnet/sf/saxon/expr/Operand;

    array-length v5, v4

    const-string v6, "saxon:call"

    if-ge v3, v5, :cond_1

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    instance-of v7, p2, Lnet/sf/saxon/type/SpecificFunctionType;

    if-eqz v7, :cond_0

    move-object v7, p2

    check-cast v7, Lnet/sf/saxon/type/SpecificFunctionType;

    invoke-virtual {v7}, Lnet/sf/saxon/type/SpecificFunctionType;->getArity()I

    move-result v8

    if-ge v3, v8, :cond_0

    new-instance v8, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-direct {v8, v2, v6, v3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v7}, Lnet/sf/saxon/type/SpecificFunctionType;->getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;

    move-result-object v6

    aget-object v6, v6, v3

    aput-object v6, v0, v3

    invoke-virtual {v1, v5, v6, v8, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    if-eq v6, v5, :cond_0

    invoke-virtual {v4, v6}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Lnet/sf/saxon/type/SpecificFunctionType;

    instance-of v4, p2, Lnet/sf/saxon/type/AnyFunctionType;

    if-eqz v4, :cond_2

    check-cast p2, Lnet/sf/saxon/type/AnyFunctionType;

    invoke-virtual {p2}, Lnet/sf/saxon/type/AnyFunctionType;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p2

    goto :goto_1

    :cond_2
    sget-object p2, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    :goto_1
    invoke-direct {v3, v0, p2}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    const/16 p2, 0x4000

    invoke-static {v3, p2}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p2

    new-instance v0, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-direct {v0, v2, v6, v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/PartialApply;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v1, v2, p2, v0, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/hof/PartialApply;->setBaseExpression(Lnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method
