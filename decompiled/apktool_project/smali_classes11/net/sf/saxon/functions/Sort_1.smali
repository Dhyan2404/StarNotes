.class public Lnet/sf/saxon/functions/Sort_1;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/Sort_1$ItemToBeSorted;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/functions/Sort_1$ItemToBeSorted;Lnet/sf/saxon/functions/Sort_1$ItemToBeSorted;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/functions/Sort_1;->b(Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/functions/Sort_1$ItemToBeSorted;Lnet/sf/saxon/functions/Sort_1$ItemToBeSorted;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/functions/Sort_1$ItemToBeSorted;Lnet/sf/saxon/functions/Sort_1$ItemToBeSorted;)I
    .locals 2

    iget-object v0, p1, Lnet/sf/saxon/functions/Sort_1$ItemToBeSorted;->sortKey:Lnet/sf/saxon/om/GroundedValue;

    iget-object v1, p2, Lnet/sf/saxon/functions/Sort_1$ItemToBeSorted;->sortKey:Lnet/sf/saxon/om/GroundedValue;

    invoke-static {v0, v1, p0}, Lnet/sf/saxon/ma/arrays/ArraySort;->compareSortKeys(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/sort/AtomicComparer;)I

    move-result p0

    if-nez p0, :cond_0

    iget p0, p1, Lnet/sf/saxon/functions/Sort_1$ItemToBeSorted;->originalPosition:I

    iget p1, p2, Lnet/sf/saxon/functions/Sort_1$ItemToBeSorted;->originalPosition:I

    sub-int/2addr p0, p1

    :cond_0
    return p0
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/functions/Sort_1;->getItemsToBeSorted(Lnet/sf/saxon/om/Sequence;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDefaultCollationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, Lnet/sf/saxon/functions/Sort_1;->doSort(Ljava/util/ArrayList;Lnet/sf/saxon/lib/StringCollator;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public doSort(Ljava/util/ArrayList;Lnet/sf/saxon/lib/StringCollator;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lnet/sf/saxon/functions/Sort_1$ItemToBeSorted;",
            ">;",
            "Lnet/sf/saxon/lib/StringCollator;",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")",
            "Lnet/sf/saxon/om/Sequence;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/16 p0, 0x278

    invoke-static {p2, p0, p3}, Lnet/sf/saxon/expr/sort/AtomicSortComparer;->makeSortComparer(Lnet/sf/saxon/lib/StringCollator;ILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object p0

    :try_start_0
    new-instance p2, Lcom/sunia/HTREnginev2/qvm;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/qvm;-><init>(Lnet/sf/saxon/expr/sort/AtomicComparer;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/functions/Sort_1$ItemToBeSorted;

    iget-object p2, p2, Lnet/sf/saxon/functions/Sort_1$ItemToBeSorted;->value:Lnet/sf/saxon/om/Item;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/sf/saxon/value/SequenceExtent$Of;

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/SequenceExtent$Of;-><init>(Ljava/util/List;)V

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Non-comparable types found while sorting: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p0, "XPTY0004"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p1
.end method

.method public getItemsToBeSorted(Lnet/sf/saxon/om/Sequence;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/Sequence;",
            ")",
            "Ljava/util/ArrayList<",
            "Lnet/sf/saxon/functions/Sort_1$ItemToBeSorted;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lnet/sf/saxon/functions/Sort_1$ItemToBeSorted;

    invoke-direct {v2}, Lnet/sf/saxon/functions/Sort_1$ItemToBeSorted;-><init>()V

    iput-object v1, v2, Lnet/sf/saxon/functions/Sort_1$ItemToBeSorted;->value:Lnet/sf/saxon/om/Item;

    add-int/lit8 v3, v0, 0x1

    iput v0, v2, Lnet/sf/saxon/functions/Sort_1$ItemToBeSorted;->originalPosition:I

    invoke-interface {v1}, Lnet/sf/saxon/om/Item;->atomize()Lnet/sf/saxon/om/AtomicSequence;

    move-result-object v0

    iput-object v0, v2, Lnet/sf/saxon/functions/Sort_1$ItemToBeSorted;->sortKey:Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v3

    goto :goto_0

    :cond_0
    return-object p0
.end method
