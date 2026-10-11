.class public Lnet/sf/saxon/pattern/PatternMaker;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/Configuration;Z)Lnet/sf/saxon/pattern/Pattern;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->toPattern(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static getAxisForPathStep(Lnet/sf/saxon/expr/Expression;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p0, Lnet/sf/saxon/expr/AxisExpression;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/sf/saxon/om/AxisInfo;->inverseAxis:[I

    check-cast p0, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result p0

    aget p0, v0, p0

    return p0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/expr/FilterExpression;

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/expr/FilterExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/pattern/PatternMaker;->getAxisForPathStep(Lnet/sf/saxon/expr/Expression;)I

    move-result p0

    return p0

    :cond_1
    instance-of v0, p0, Lnet/sf/saxon/expr/FirstItemExpression;

    if-eqz v0, :cond_2

    check-cast p0, Lnet/sf/saxon/expr/FirstItemExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/pattern/PatternMaker;->getAxisForPathStep(Lnet/sf/saxon/expr/Expression;)I

    move-result p0

    return p0

    :cond_2
    instance-of v0, p0, Lnet/sf/saxon/expr/LastItemExpression;

    if-eqz v0, :cond_3

    check-cast p0, Lnet/sf/saxon/expr/LastItemExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/pattern/PatternMaker;->getAxisForPathStep(Lnet/sf/saxon/expr/Expression;)I

    move-result p0

    return p0

    :cond_3
    instance-of v0, p0, Lnet/sf/saxon/expr/TailExpression;

    if-eqz v0, :cond_4

    check-cast p0, Lnet/sf/saxon/expr/TailExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/pattern/PatternMaker;->getAxisForPathStep(Lnet/sf/saxon/expr/Expression;)I

    move-result p0

    return p0

    :cond_4
    instance-of v0, p0, Lnet/sf/saxon/expr/SubscriptExpression;

    if-eqz v0, :cond_5

    check-cast p0, Lnet/sf/saxon/expr/SubscriptExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/pattern/PatternMaker;->getAxisForPathStep(Lnet/sf/saxon/expr/Expression;)I

    move-result p0

    return p0

    :cond_5
    instance-of v0, p0, Lnet/sf/saxon/expr/SlashExpression;

    if-eqz v0, :cond_6

    check-cast p0, Lnet/sf/saxon/expr/SlashExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getFirstStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/pattern/PatternMaker;->getAxisForPathStep(Lnet/sf/saxon/expr/Expression;)I

    move-result p0

    return p0

    :cond_6
    instance-of p0, p0, Lnet/sf/saxon/expr/ContextItemExpression;

    if-eqz p0, :cond_7

    const/16 p0, 0xc

    return p0

    :cond_7
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "The path in a pattern must contain simple steps"

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
