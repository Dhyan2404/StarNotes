.class public Lnet/sf/saxon/ma/arrays/ArraySort;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/ma/arrays/ArraySort$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/ma/arrays/ArraySort$b;Lnet/sf/saxon/ma/arrays/ArraySort$b;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/ma/arrays/ArraySort;->c(Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/ma/arrays/ArraySort$b;Lnet/sf/saxon/ma/arrays/ArraySort$b;)I

    move-result p0

    return p0
.end method

.method public static b(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/GroundedValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/Atomizer;->getAtomizingIterator(Lnet/sf/saxon/om/SequenceIterator;Z)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/ma/arrays/ArraySort$b;Lnet/sf/saxon/ma/arrays/ArraySort$b;)I
    .locals 2

    iget-object v0, p1, Lnet/sf/saxon/ma/arrays/ArraySort$b;->b:Lnet/sf/saxon/om/GroundedValue;

    iget-object v1, p2, Lnet/sf/saxon/ma/arrays/ArraySort$b;->b:Lnet/sf/saxon/om/GroundedValue;

    invoke-static {v0, v1, p0}, Lnet/sf/saxon/ma/arrays/ArraySort;->compareSortKeys(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/sort/AtomicComparer;)I

    move-result p0

    if-nez p0, :cond_0

    iget p0, p1, Lnet/sf/saxon/ma/arrays/ArraySort$b;->c:I

    iget p1, p2, Lnet/sf/saxon/ma/arrays/ArraySort$b;->c:I

    sub-int/2addr p0, p1

    :cond_0
    return p0
.end method

.method public static compareSortKeys(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/sort/AtomicComparer;)I
    .locals 2

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/value/AtomicValue;

    if-nez v0, :cond_1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0

    :cond_1
    if-nez v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :try_start_0
    invoke-interface {p2, v0, v1}, Lnet/sf/saxon/expr/sort/AtomicComparer;->compareAtomicValues(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I

    move-result v0
    :try_end_0
    .catch Lnet/sf/saxon/trans/NoDynamicContextException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/ma/arrays/ArrayItem;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    aget-object v1, p2, v0

    invoke-interface {v1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/ma/arrays/ArrayItem;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->arrayLength()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    array-length v3, p2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDefaultCollationName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_0
    aget-object v3, p2, v4

    invoke-interface {v3}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/value/StringValue;

    if-nez v3, :cond_1

    .line 7
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDefaultCollationName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v5

    invoke-interface {v3}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, v3, p0}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0

    .line 9
    :goto_0
    array-length v3, p2

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ne v3, v5, :cond_2

    const/4 v3, 0x2

    .line 10
    aget-object p2, p2, v3

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/Function;

    goto :goto_1

    :cond_2
    move-object p2, v6

    .line 11
    :goto_1
    invoke-virtual {v1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->members()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/om/GroundedValue;

    .line 12
    new-instance v8, Lnet/sf/saxon/ma/arrays/ArraySort$b;

    invoke-direct {v8, v6}, Lnet/sf/saxon/ma/arrays/ArraySort$b;-><init>(Lnet/sf/saxon/ma/arrays/ArraySort$a;)V

    .line 13
    iput-object v7, v8, Lnet/sf/saxon/ma/arrays/ArraySort$b;->a:Lnet/sf/saxon/om/GroundedValue;

    add-int/lit8 v9, v5, 0x1

    .line 14
    iput v5, v8, Lnet/sf/saxon/ma/arrays/ArraySort$b;->c:I

    if-eqz p2, :cond_3

    new-array v5, v4, [Lnet/sf/saxon/om/Sequence;

    aput-object v7, v5, v0

    .line 15
    invoke-static {p2, p1, v5}, Lnet/sf/saxon/functions/SystemFunction;->dynamicCall(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object v5

    invoke-interface {v5}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v5

    iput-object v5, v8, Lnet/sf/saxon/ma/arrays/ArraySort$b;->b:Lnet/sf/saxon/om/GroundedValue;

    goto :goto_3

    .line 16
    :cond_3
    invoke-static {v7}, Lnet/sf/saxon/ma/arrays/ArraySort;->b(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v5

    iput-object v5, v8, Lnet/sf/saxon/ma/arrays/ArraySort$b;->b:Lnet/sf/saxon/om/GroundedValue;

    .line 17
    :goto_3
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v9

    goto :goto_2

    :cond_4
    const/16 p2, 0x278

    .line 18
    invoke-static {p0, p2, p1}, Lnet/sf/saxon/expr/sort/AtomicSortComparer;->makeSortComparer(Lnet/sf/saxon/lib/StringCollator;ILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object p0

    .line 19
    :try_start_0
    new-instance p1, Lcom/sunia/HTREnginev2/pf;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/pf;-><init>(Lnet/sf/saxon/expr/sort/AtomicComparer;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->arrayLength()I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/ma/arrays/ArraySort$b;

    .line 22
    iget-object p2, p2, Lnet/sf/saxon/ma/arrays/ArraySort$b;->a:Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 23
    :cond_5
    new-instance p1, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;

    invoke-direct {p1, p0}, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;-><init>(Ljava/util/List;)V

    return-object p1

    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Non-comparable types found while sorting: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p0, "XPTY0004"

    .line 25
    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 26
    throw p1
.end method

.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/ma/arrays/ArraySort;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p0

    return-object p0
.end method
