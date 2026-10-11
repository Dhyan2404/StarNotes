.class public final Lnet/sf/saxon/expr/LastItemExpression;
.super Lnet/sf/saxon/expr/SingleItemFilter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/SingleItemFilter;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method


# virtual methods
.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/LastItemExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/expr/LastItemExpression;-><init>(Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    instance-of p1, p0, Lnet/sf/saxon/tree/iter/ReversibleIterator;

    if-eqz p1, :cond_0

    check-cast p0, Lnet/sf/saxon/tree/iter/ReversibleIterator;

    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/ReversibleIterator;->getReverseIterator()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    move-object p1, v0

    goto :goto_0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "lastOf"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
