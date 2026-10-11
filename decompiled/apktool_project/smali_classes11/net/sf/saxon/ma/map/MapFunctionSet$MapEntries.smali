.class public Lnet/sf/saxon/ma/map/MapFunctionSet$MapEntries;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/ma/map/MapFunctionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapEntries"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    aget-object p0, p2, p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/ma/map/MapItem;

    new-instance p1, Lnet/sf/saxon/ma/zeno/ZenoSequence;

    invoke-direct {p1}, Lnet/sf/saxon/ma/zeno/ZenoSequence;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/MapItem;->keyValuePairs()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/ma/map/KeyValuePair;

    new-instance v0, Lnet/sf/saxon/ma/map/DictionaryMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lnet/sf/saxon/ma/map/DictionaryMap;-><init>(I)V

    iget-object v1, p2, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    const-string v1, "value"

    iget-object p2, p2, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {v0, v1, p2}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/ma/zeno/ZenoSequence;->appendSequence(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/zeno/ZenoSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method
