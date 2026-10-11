.class public Lnet/sf/saxon/ma/map/MapFunctionSet$MapFind;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/ma/map/MapFunctionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapFind"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/ma/map/MapFunctionSet$MapFind;Lnet/sf/saxon/value/AtomicValue;Ljava/util/List;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/ma/map/MapFunctionSet$MapFind;->b(Lnet/sf/saxon/value/AtomicValue;Ljava/util/List;Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method private synthetic b(Lnet/sf/saxon/value/AtomicValue;Ljava/util/List;Lnet/sf/saxon/om/Item;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p3, Lnet/sf/saxon/ma/arrays/ArrayItem;

    if-eqz v0, :cond_0

    check-cast p3, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-virtual {p3}, Lnet/sf/saxon/ma/arrays/ArrayItem;->members()Ljava/lang/Iterable;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/Sequence;

    invoke-virtual {p0, v0, p1, p2}, Lnet/sf/saxon/ma/map/MapFunctionSet$MapFind;->c(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/value/AtomicValue;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    instance-of v0, p3, Lnet/sf/saxon/ma/map/MapItem;

    if-eqz v0, :cond_2

    check-cast p3, Lnet/sf/saxon/ma/map/MapItem;

    invoke-virtual {p3, p1}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p3}, Lnet/sf/saxon/ma/map/MapItem;->keyValuePairs()Ljava/lang/Iterable;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/ma/map/KeyValuePair;

    iget-object v0, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {p0, v0, p1, p2}, Lnet/sf/saxon/ma/map/MapFunctionSet$MapFind;->c(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/value/AtomicValue;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public final c(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/value/AtomicValue;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/Sequence;",
            "Lnet/sf/saxon/value/AtomicValue;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/GroundedValue;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/o8j;

    invoke-direct {v0, p0, p2, p3}, Lcom/sunia/HTREnginev2/o8j;-><init>(Lnet/sf/saxon/ma/map/MapFunctionSet$MapFind;Lnet/sf/saxon/value/AtomicValue;Ljava/util/List;)V

    invoke-static {p1, v0}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    return-void
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/ma/arrays/ArrayItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    .line 3
    aget-object v0, p2, v0

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    const/4 v1, 0x0

    .line 4
    aget-object p2, p2, v1

    invoke-virtual {p0, p2, v0, p1}, Lnet/sf/saxon/ma/map/MapFunctionSet$MapFind;->c(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/value/AtomicValue;Ljava/util/List;)V

    .line 5
    new-instance p0, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;

    invoke-direct {p0, p1}, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;-><init>(Ljava/util/List;)V

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
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/ma/map/MapFunctionSet$MapFind;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p0

    return-object p0
.end method
