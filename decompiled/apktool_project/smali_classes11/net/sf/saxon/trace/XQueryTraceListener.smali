.class public Lnet/sf/saxon/trace/XQueryTraceListener;
.super Lnet/sf/saxon/trace/AbstractTraceListener;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/trace/AbstractTraceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public endRuleSearch(Ljava/lang/Object;Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/om/Item;)V
    .locals 0

    return-void
.end method

.method public getOpeningAttributes()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public startRuleSearch()V
    .locals 0

    return-void
.end method

.method public tag(Lnet/sf/saxon/trace/Traceable;)Ljava/lang/String;
    .locals 1

    instance-of p0, p1, Lnet/sf/saxon/trace/TraceableComponent;

    if-eqz p0, :cond_3

    instance-of p0, p1, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    if-eqz p0, :cond_0

    const-string p0, "variable"

    return-object p0

    :cond_0
    instance-of p0, p1, Lnet/sf/saxon/expr/instruct/UserFunction;

    if-eqz p0, :cond_1

    const-string p0, "function"

    return-object p0

    :cond_1
    instance-of p0, p1, Lnet/sf/saxon/query/XQueryExpression;

    if-eqz p0, :cond_2

    const-string p0, "query"

    return-object p0

    :cond_2
    const-string p0, "misc"

    return-object p0

    :cond_3
    instance-of p0, p1, Lnet/sf/saxon/functions/Trace;

    if-eqz p0, :cond_4

    const-string p0, "fn:trace"

    return-object p0

    :cond_4
    instance-of p0, p1, Lnet/sf/saxon/expr/flwor/ClauseInfo;

    if-eqz p0, :cond_5

    check-cast p1, Lnet/sf/saxon/expr/flwor/ClauseInfo;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/flwor/ClauseInfo;->getClause()Lnet/sf/saxon/expr/flwor/Clause;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getClauseKey()Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of p0, p1, Lnet/sf/saxon/expr/Expression;

    if-eqz p0, :cond_a

    check-cast p1, Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getExpressionName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "xsl:"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "ATTR"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string p1, "LRE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string p1, "value-of"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object p0

    :pswitch_0
    const-string p0, "attribute"

    return-object p0

    :pswitch_1
    const-string p0, "element"

    return-object p0

    :pswitch_2
    const-string p0, "text"

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x540e1c4d -> :sswitch_2
        0x1277f -> :sswitch_1
        0x1ed1f1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
