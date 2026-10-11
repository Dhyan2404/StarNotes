.class public Lnet/sf/saxon/expr/instruct/WherePopulated;
.super Lnet/sf/saxon/expr/UnaryExpression;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ItemMappingFunction;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/UnaryExpression;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public static isDeemedEmpty(Lnet/sf/saxon/om/Item;)Z
    .locals 7

    instance-of v0, p0, Lnet/sf/saxon/om/NodeInfo;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v5

    if-eq v5, v4, :cond_1

    const/16 v6, 0x9

    if-eq v5, v6, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v5

    cmp-long p0, v5, v1

    if-nez p0, :cond_0

    move v3, v4

    :cond_0
    return v3

    :cond_1
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->hasChildNodes()Z

    move-result p0

    xor-int/2addr p0, v4

    return p0

    :cond_2
    instance-of v0, p0, Lnet/sf/saxon/value/StringValue;

    if-nez v0, :cond_9

    instance-of v0, p0, Lnet/sf/saxon/value/HexBinaryValue;

    if-nez v0, :cond_9

    instance-of v0, p0, Lnet/sf/saxon/value/Base64BinaryValue;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lnet/sf/saxon/ma/map/MapItem;

    if-eqz v0, :cond_4

    check-cast p0, Lnet/sf/saxon/ma/map/MapItem;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/MapItem;->isEmpty()Z

    move-result p0

    return p0

    :cond_4
    instance-of v0, p0, Lnet/sf/saxon/ma/arrays/ArrayItem;

    if-eqz v0, :cond_8

    check-cast p0, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/ArrayItem;->members()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->asIterable()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/Item;

    invoke-static {v1}, Lnet/sf/saxon/expr/instruct/WherePopulated;->isDeemedEmpty(Lnet/sf/saxon/om/Item;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_7
    return v4

    :cond_8
    return v3

    :cond_9
    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v5

    cmp-long p0, v5, v1

    if-nez p0, :cond_a

    move v3, v4

    :cond_a
    return v3
.end method


# virtual methods
.method public computeCardinality()I
    .locals 0

    invoke-super {p0}, Lnet/sf/saxon/expr/UnaryExpression;->computeCardinality()I

    move-result p0

    or-int/lit16 p0, p0, 0x2000

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/instruct/WherePopulated;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/instruct/WherePopulated;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "condCont"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "wherePop"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public getOperandRole()Lnet/sf/saxon/expr/OperandRole;
    .locals 2

    new-instance p0, Lnet/sf/saxon/expr/OperandRole;

    const/4 v0, 0x0

    sget-object v1, Lnet/sf/saxon/expr/OperandUsage;->TRANSMISSION:Lnet/sf/saxon/expr/OperandUsage;

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;)V

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "WherePopulated"

    return-object p0
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/ItemMappingIterator;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lnet/sf/saxon/expr/ItemMappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMappingFunction;)V

    return-object v0
.end method

.method public mapItem(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p1}, Lnet/sf/saxon/expr/instruct/WherePopulated;->isDeemedEmpty(Lnet/sf/saxon/om/Item;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/event/WherePopulatedOutputter;

    invoke-direct {v0, p1}, Lnet/sf/saxon/event/WherePopulatedOutputter;-><init>(Lnet/sf/saxon/event/Outputter;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    return-void
.end method
