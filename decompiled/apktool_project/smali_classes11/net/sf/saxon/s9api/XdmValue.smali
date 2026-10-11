.class public Lnet/sf/saxon/s9api/XdmValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lnet/sf/saxon/s9api/XdmItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/om/GroundedValue;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/s9api/XdmItem;

    .line 6
    invoke-virtual {v1}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lnet/sf/saxon/value/SequenceExtent$Of;

    invoke-direct {p1, v0}, Lnet/sf/saxon/value/SequenceExtent$Of;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lnet/sf/saxon/s9api/XdmValue;->e:Lnet/sf/saxon/om/GroundedValue;

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/s9api/XdmItem;

    invoke-virtual {v1}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Lnet/sf/saxon/value/SequenceExtent$Of;

    invoke-direct {p1, v0}, Lnet/sf/saxon/value/SequenceExtent$Of;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lnet/sf/saxon/s9api/XdmValue;->e:Lnet/sf/saxon/om/GroundedValue;
    :try_end_0
    .catch Lnet/sf/saxon/s9api/SaxonApiUncheckedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 13
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/stream/Stream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "+",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 14
    invoke-interface {p1}, Ljava/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/XdmValue;-><init>(Ljava/util/Iterator;)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/GroundedValue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lnet/sf/saxon/s9api/XdmValue;->e:Lnet/sf/saxon/om/GroundedValue;

    return-void
.end method

.method public static makeSequence(Ljava/lang/Iterable;)Lnet/sf/saxon/s9api/XdmValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lnet/sf/saxon/s9api/XdmValue;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/s9api/XdmValue;->makeValue(Ljava/lang/Object;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object v1

    instance-of v2, v1, Lnet/sf/saxon/s9api/XdmItem;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/s9api/XdmValue;->getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/Item;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Lnet/sf/saxon/s9api/XdmArray;

    invoke-direct {v2, v1}, Lnet/sf/saxon/s9api/XdmArray;-><init>(Ljava/lang/Iterable;)V

    invoke-virtual {v2}, Lnet/sf/saxon/s9api/XdmArray;->getUnderlyingValue()Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lnet/sf/saxon/value/SequenceExtent;->makeSequenceExtent(Ljava/util/List;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    return-object p0
.end method

.method public static makeValue(Ljava/lang/Object;)Lnet/sf/saxon/s9api/XdmValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p0, Lnet/sf/saxon/om/Sequence;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/om/Sequence;

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/s9api/XdmValue;

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/s9api/XdmValue;

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmMap;->makeMap(Ljava/util/Map;)Lnet/sf/saxon/s9api/XdmMap;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmArray;->makeArray([Ljava/lang/Object;)Lnet/sf/saxon/s9api/XdmArray;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Ljava/lang/Iterable;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->makeSequence(Ljava/lang/Iterable;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;->makeAtomicValue(Ljava/lang/Object;)Lnet/sf/saxon/s9api/XdmAtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Lnet/sf/saxon/om/AtomicSequence;)Lnet/sf/saxon/s9api/XdmValue;
    .locals 2

    .line 22
    invoke-interface {p0}, Lnet/sf/saxon/om/AtomicSequence;->getLength()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 23
    new-instance v0, Lnet/sf/saxon/s9api/XdmValue;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmValue;-><init>(Lnet/sf/saxon/om/GroundedValue;)V

    return-object v0

    .line 24
    :cond_0
    new-instance v0, Lnet/sf/saxon/s9api/XdmAtomicValue;

    invoke-interface {p0}, Lnet/sf/saxon/om/AtomicSequence;->head()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Lnet/sf/saxon/value/AtomicValue;)V

    return-object v0

    .line 25
    :cond_1
    invoke-static {}, Lnet/sf/saxon/s9api/XdmEmptySequence;->getInstance()Lnet/sf/saxon/s9api/XdmEmptySequence;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;
    .locals 3

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lnet/sf/saxon/s9api/XdmEmptySequence;->getInstance()Lnet/sf/saxon/s9api/XdmEmptySequence;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lnet/sf/saxon/s9api/XdmEmptySequence;->getInstance()Lnet/sf/saxon/s9api/XdmEmptySequence;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 6
    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    .line 7
    instance-of v0, p0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Lnet/sf/saxon/s9api/XdmNode;

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmNode;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    return-object v0

    .line 9
    :cond_2
    instance-of v0, p0, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v0, :cond_3

    .line 10
    new-instance v0, Lnet/sf/saxon/s9api/XdmAtomicValue;

    check-cast p0, Lnet/sf/saxon/value/AtomicValue;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Lnet/sf/saxon/value/AtomicValue;)V

    return-object v0

    .line 11
    :cond_3
    instance-of v0, p0, Lnet/sf/saxon/ma/map/MapItem;

    if-eqz v0, :cond_4

    .line 12
    new-instance v0, Lnet/sf/saxon/s9api/XdmMap;

    check-cast p0, Lnet/sf/saxon/ma/map/MapItem;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmMap;-><init>(Lnet/sf/saxon/ma/map/MapItem;)V

    return-object v0

    .line 13
    :cond_4
    instance-of v0, p0, Lnet/sf/saxon/ma/arrays/ArrayItem;

    if-eqz v0, :cond_5

    .line 14
    new-instance v0, Lnet/sf/saxon/s9api/XdmArray;

    check-cast p0, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmArray;-><init>(Lnet/sf/saxon/ma/arrays/ArrayItem;)V

    return-object v0

    .line 15
    :cond_5
    instance-of v0, p0, Lnet/sf/saxon/om/Function;

    if-eqz v0, :cond_6

    .line 16
    new-instance v0, Lnet/sf/saxon/s9api/XdmFunctionItem;

    check-cast p0, Lnet/sf/saxon/om/Function;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmFunctionItem;-><init>(Lnet/sf/saxon/om/Function;)V

    return-object v0

    .line 17
    :cond_6
    instance-of v0, p0, Lnet/sf/saxon/value/AnyExternalObject;

    if-eqz v0, :cond_7

    .line 18
    new-instance v0, Lnet/sf/saxon/s9api/XdmExternalObject;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmExternalObject;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 19
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown item type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_8
    new-instance v0, Lnet/sf/saxon/s9api/XdmValue;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmValue;-><init>(Lnet/sf/saxon/om/GroundedValue;)V

    return-object v0

    :catch_0
    move-exception p0

    .line 21
    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public append(Lnet/sf/saxon/s9api/XdmValue;)Lnet/sf/saxon/s9api/XdmValue;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmValue;->iterator()Lnet/sf/saxon/s9api/XdmSequenceIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/s9api/XdmItem;

    invoke-virtual {v1}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmValue;->iterator()Lnet/sf/saxon/s9api/XdmSequenceIterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/s9api/XdmItem;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lnet/sf/saxon/value/SequenceExtent;->makeSequenceExtent(Ljava/util/List;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/s9api/XdmValue;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/XdmValue;-><init>(Lnet/sf/saxon/om/GroundedValue;)V

    return-object p1
.end method

.method public documentOrder()Lnet/sf/saxon/s9api/XdmValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/XdmValue;->e:Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;

    invoke-static {}, Lnet/sf/saxon/expr/sort/GlobalOrderComparer;->getInstance()Lnet/sf/saxon/expr/sort/GlobalOrderComparer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Ljava/util/Comparator;)V

    new-instance p0, Lnet/sf/saxon/s9api/XdmValue;

    invoke-static {v0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/s9api/XdmValue;-><init>(Lnet/sf/saxon/om/GroundedValue;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Lnet/sf/saxon/trans/UncheckedXPathException;)V

    throw v0
.end method

.method public getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XdmValue;->e:Lnet/sf/saxon/om/GroundedValue;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XdmValue;->e:Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public itemAt(I)Lnet/sf/saxon/s9api/XdmItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;,
            Lnet/sf/saxon/s9api/SaxonApiUncheckedException;
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmValue;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/XdmValue;->e:Lnet/sf/saxon/om/GroundedValue;

    invoke-static {p0, p1}, Lnet/sf/saxon/om/SequenceTool;->itemAt(Lnet/sf/saxon/om/Sequence;I)Lnet/sf/saxon/om/Item;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmItem;
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmValue;->iterator()Lnet/sf/saxon/s9api/XdmSequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Lnet/sf/saxon/s9api/XdmSequenceIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/s9api/XdmSequenceIterator<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiUncheckedException;
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmValue;->getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    .line 3
    new-instance v0, Lnet/sf/saxon/s9api/XdmSequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmSequenceIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public select(Lnet/sf/saxon/s9api/streams/Step;)Lnet/sf/saxon/s9api/streams/XdmStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">(",
            "Lnet/sf/saxon/s9api/streams/Step<",
            "TT;>;)",
            "Lnet/sf/saxon/s9api/streams/XdmStream<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmValue;->stream()Lnet/sf/saxon/s9api/streams/XdmStream;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/streams/XdmStream;->flatMapToXdm(Lnet/sf/saxon/s9api/streams/Step;)Lnet/sf/saxon/s9api/streams/XdmStream;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XdmValue;->e:Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result p0

    return p0
.end method

.method public stream()Lnet/sf/saxon/s9api/streams/XdmStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/s9api/streams/XdmStream<",
            "+",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmStream;

    invoke-interface {p0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/streams/XdmStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public subsequence(II)Lnet/sf/saxon/s9api/XdmValue;
    .locals 1

    new-instance v0, Lnet/sf/saxon/s9api/XdmValue;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XdmValue;->e:Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/om/GroundedValue;->subsequence(II)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmValue;-><init>(Lnet/sf/saxon/om/GroundedValue;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const-string v0, "true"

    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/s9api/XdmValue;->e:Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {v1}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v3, :cond_0

    check-cast v2, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    invoke-static {}, Lnet/sf/saxon/Configuration;->newConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    :cond_2
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    new-instance v4, Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-direct {v4}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>()V

    const-string v5, "method"

    const-string v6, "adaptive"

    invoke-virtual {v4, v5, v6}, Lnet/sf/saxon/serialize/SerializationProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "indent"

    invoke-virtual {v4, v5, v0}, Lnet/sf/saxon/serialize/SerializationProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "omit-xml-declaration"

    invoke-virtual {v4, v5, v0}, Lnet/sf/saxon/serialize/SerializationProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lnet/sf/saxon/lib/SerializerFactory;->getReceiver(Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/s9api/XdmValue;->e:Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {v1}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v1

    invoke-static {v1, v0}, Lnet/sf/saxon/event/SequenceCopier;->copySequence(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/event/Receiver;)V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
