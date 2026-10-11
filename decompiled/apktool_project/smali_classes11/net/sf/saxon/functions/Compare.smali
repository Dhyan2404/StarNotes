.class public Lnet/sf/saxon/functions/Compare;
.super Lnet/sf/saxon/functions/CollatingFunctionFixed;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/CollatingFunctionFixed;-><init>()V

    return-void
.end method

.method public static b(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/expr/sort/AtomicComparer;)Lnet/sf/saxon/value/Int64Value;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p0, p1}, Lnet/sf/saxon/expr/sort/AtomicComparer;->compareAtomicValues(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I

    move-result p0

    if-gez p0, :cond_1

    sget-object p0, Lnet/sf/saxon/value/Int64Value;->MINUS_ONE:Lnet/sf/saxon/value/Int64Value;

    return-object p0

    :cond_1
    if-lez p0, :cond_2

    sget-object p0, Lnet/sf/saxon/value/Int64Value;->PLUS_ONE:Lnet/sf/saxon/value/Int64Value;

    return-object p0

    :cond_2
    sget-object p0, Lnet/sf/saxon/value/Int64Value;->ZERO:Lnet/sf/saxon/value/Int64Value;

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/GroundedValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    aget-object v0, p2, v0

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/StringValue;

    const/4 v1, 0x1

    .line 3
    aget-object p2, p2, v1

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/StringValue;

    .line 4
    new-instance v1, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/CollatingFunctionFixed;->getStringCollator()Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;-><init>(Lnet/sf/saxon/lib/StringCollator;Lnet/sf/saxon/expr/XPathContext;)V

    .line 5
    invoke-static {v0, p2, v1}, Lnet/sf/saxon/functions/Compare;->b(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/expr/sort/AtomicComparer;)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->itemOrEmpty(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/Compare;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method
