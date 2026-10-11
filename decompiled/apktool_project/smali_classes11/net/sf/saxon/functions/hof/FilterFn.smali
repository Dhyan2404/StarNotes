.class public Lnet/sf/saxon/functions/hof/FilterFn;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/functions/hof/FilterFn;->c(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/sf/saxon/om/Sequence;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, p1, v0}, Lnet/sf/saxon/functions/SystemFunction;->dynamicCall(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    new-instance p0, Lcom/sunia/HTREnginev2/bmg;

    invoke-direct {p0, p1, p3}, Lcom/sunia/HTREnginev2/bmg;-><init>(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-static {p2, p0}, Lnet/sf/saxon/expr/ItemMappingIterator;->filter(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemFilter$Lambda;)Lnet/sf/saxon/expr/ItemMappingIterator;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/Function;

    const/4 v1, 0x0

    aget-object p2, p2, v1

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p2

    invoke-virtual {p0, v0, p2, p1}, Lnet/sf/saxon/functions/hof/FilterFn;->b(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toLazySequence(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "FilterFn"

    return-object p0
.end method
