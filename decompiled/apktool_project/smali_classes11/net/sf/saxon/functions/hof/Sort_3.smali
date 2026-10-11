.class public Lnet/sf/saxon/functions/hof/Sort_3;
.super Lnet/sf/saxon/functions/Sort_2;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/Sort_2;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v1, p2, v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x2

    aget-object v3, p2, v3

    invoke-interface {v3}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/Function;

    invoke-interface {v1}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v1

    move v4, v0

    :goto_0
    invoke-interface {v1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    new-instance v7, Lnet/sf/saxon/functions/Sort_1$ItemToBeSorted;

    invoke-direct {v7}, Lnet/sf/saxon/functions/Sort_1$ItemToBeSorted;-><init>()V

    iput-object v5, v7, Lnet/sf/saxon/functions/Sort_1$ItemToBeSorted;->value:Lnet/sf/saxon/om/Item;

    add-int/lit8 v8, v4, 0x1

    iput v4, v7, Lnet/sf/saxon/functions/Sort_1$ItemToBeSorted;->originalPosition:I

    new-array v4, v6, [Lnet/sf/saxon/om/Sequence;

    aput-object v5, v4, v0

    invoke-static {v3, p1, v4}, Lnet/sf/saxon/functions/SystemFunction;->dynamicCall(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object v4

    invoke-interface {v4}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v4

    iput-object v4, v7, Lnet/sf/saxon/functions/Sort_1$ItemToBeSorted;->sortKey:Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v8

    goto :goto_0

    :cond_0
    aget-object p2, p2, v6

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/Sort_2;->getCollation(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object p2

    invoke-virtual {p0, v2, p2, p1}, Lnet/sf/saxon/functions/Sort_1;->doSort(Ljava/util/ArrayList;Lnet/sf/saxon/lib/StringCollator;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method
