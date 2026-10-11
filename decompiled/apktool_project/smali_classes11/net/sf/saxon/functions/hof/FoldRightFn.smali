.class public Lnet/sf/saxon/functions/hof/FoldRightFn;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p3}, Lnet/sf/saxon/functions/Reverse;->getReverseIterator(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    const/4 p3, 0x2

    new-array p3, p3, [Lnet/sf/saxon/om/Sequence;

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const/4 v0, 0x1

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p2

    aput-object p2, p3, v0

    :try_start_0
    invoke-static {p1, p4, p3}, Lnet/sf/saxon/functions/SystemFunction;->dynamicCall(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p2
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0, p4}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p0

    :cond_0
    return-object p2
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/Function;

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-interface {v1}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    const/4 v2, 0x0

    aget-object p2, p2, v2

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p2

    invoke-virtual {p0, v0, v1, p2, p1}, Lnet/sf/saxon/functions/hof/FoldRightFn;->a(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public getResultItemType([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/type/ItemType;
    .locals 0

    const/4 p0, 0x2

    aget-object p0, p1, p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    instance-of p1, p0, Lnet/sf/saxon/type/AnyFunctionType;

    if-eqz p1, :cond_0

    check-cast p0, Lnet/sf/saxon/type/AnyFunctionType;

    invoke-virtual {p0}, Lnet/sf/saxon/type/AnyFunctionType;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0
.end method
