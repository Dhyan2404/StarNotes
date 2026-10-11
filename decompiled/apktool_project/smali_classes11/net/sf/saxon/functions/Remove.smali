.class public Lnet/sf/saxon/functions/Remove;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/Remove$RemoveIterator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x1

    aget-object p1, p2, p0

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    const/4 v0, 0x0

    if-ge p1, p0, :cond_0

    aget-object p0, p2, v0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/functions/Remove$RemoveIterator;

    aget-object p2, p2, v0

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lnet/sf/saxon/functions/Remove$RemoveIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;I)V

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toLazySequence(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "Remove"

    return-object p0
.end method

.method public makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 6

    const/4 v0, 0x1

    aget-object v1, p1, v0

    invoke-static {v1}, Lnet/sf/saxon/expr/Literal;->isAtomic(Lnet/sf/saxon/expr/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v0, p1, v0

    check-cast v0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/value/IntegerValue;

    if-eqz v1, :cond_1

    :try_start_0
    check-cast v0, Lnet/sf/saxon/value/IntegerValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    aget-object p0, p1, v3

    return-object p0

    :cond_0
    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    new-instance v0, Lnet/sf/saxon/expr/TailExpression;

    aget-object v1, p1, v3

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/expr/TailExpression;-><init>(Lnet/sf/saxon/expr/Expression;I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    invoke-super {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method
