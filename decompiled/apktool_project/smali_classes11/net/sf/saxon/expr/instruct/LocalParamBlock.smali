.class public Lnet/sf/saxon/expr/instruct/LocalParamBlock;
.super Lnet/sf/saxon/expr/instruct/Instruction;
.source "SourceFile"


# instance fields
.field public n:[Lnet/sf/saxon/expr/Operand;


# direct methods
.method public constructor <init>([Lnet/sf/saxon/expr/instruct/LocalParam;)V
    .locals 5

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Instruction;-><init>()V

    array-length v0, p1

    new-array v0, v0, [Lnet/sf/saxon/expr/Operand;

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/LocalParamBlock;->n:[Lnet/sf/saxon/expr/Operand;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/LocalParamBlock;->n:[Lnet/sf/saxon/expr/Operand;

    new-instance v2, Lnet/sf/saxon/expr/Operand;

    aget-object v3, p1, v0

    sget-object v4, Lnet/sf/saxon/expr/OperandRole;->NAVIGATE:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v2, p0, v3, v4}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public computeSpecialProperties()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParamBlock;->getNumberOfParams()I

    move-result v0

    new-array v0, v0, [Lnet/sf/saxon/expr/instruct/LocalParam;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParamBlock;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/instruct/LocalParam;

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/instruct/LocalParam;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/instruct/LocalParam;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lnet/sf/saxon/expr/parser/RebindingMap;->put(Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Binding;)V

    add-int/lit8 v2, v1, 0x1

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/expr/instruct/LocalParamBlock;

    invoke-direct {p0, v0}, Lnet/sf/saxon/expr/instruct/LocalParamBlock;-><init>([Lnet/sf/saxon/expr/instruct/LocalParam;)V

    return-object p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "params"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParamBlock;->operands()Ljava/lang/Iterable;

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

.method public final getCardinality()I
    .locals 0

    const/16 p0, 0x2000

    return p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "params"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object p0

    return-object p0
.end method

.method public getNumberOfParams()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/LocalParamBlock;->n:[Lnet/sf/saxon/expr/Operand;

    array-length p0, p0

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

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/LocalParamBlock;->n:[Lnet/sf/saxon/expr/Operand;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParamBlock;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/instruct/LocalParam;

    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/LocalParam;->getSlotNumber()I

    move-result v0

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/instruct/LocalParam;->getSelectValue(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
