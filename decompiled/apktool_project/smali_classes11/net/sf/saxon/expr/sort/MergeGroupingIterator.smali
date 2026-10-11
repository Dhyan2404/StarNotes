.class public Lnet/sf/saxon/expr/sort/MergeGroupingIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/GroupIterator;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;
.implements Lnet/sf/saxon/expr/LastPositionFinder;


# instance fields
.field public final e:Lnet/sf/saxon/om/SequenceIterator;

.field public f:Lnet/sf/saxon/value/ObjectValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/value/ObjectValue<",
            "Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lnet/sf/saxon/value/ObjectValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/value/ObjectValue<",
            "Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/Item;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/Item;",
            ">;>;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-",
            "Lnet/sf/saxon/value/ObjectValue<",
            "Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;",
            ">;>;"
        }
    .end annotation
.end field

.field public k:I

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/value/AtomicValue;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lnet/sf/saxon/expr/LastPositionFinder;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;Ljava/util/Comparator;Lnet/sf/saxon/expr/LastPositionFinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/SequenceIterator;",
            "Ljava/util/Comparator<",
            "-",
            "Lnet/sf/saxon/value/ObjectValue<",
            "Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;",
            ">;>;",
            "Lnet/sf/saxon/expr/LastPositionFinder;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->f:Lnet/sf/saxon/value/ObjectValue;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->k:I

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/ObjectValue;

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->g:Lnet/sf/saxon/value/ObjectValue;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/value/ObjectValue;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;

    iget-object p1, p1, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;->b:Ljava/util/List;

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->l:Ljava/util/List;

    :cond_0
    iput-object p2, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->j:Ljava/util/Comparator;

    iput-object p3, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->m:Lnet/sf/saxon/expr/LastPositionFinder;

    return-void
.end method

.method public static synthetic f(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->w(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public getCurrentGroupingKey()Lnet/sf/saxon/om/AtomicSequence;
    .locals 1

    new-instance v0, Lnet/sf/saxon/om/AtomicArray;

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->l:Ljava/util/List;

    invoke-direct {v0, p0}, Lnet/sf/saxon/om/AtomicArray;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->m:Lnet/sf/saxon/expr/LastPositionFinder;

    invoke-interface {p0}, Lnet/sf/saxon/expr/LastPositionFinder;->getLength()I

    move-result p0

    return p0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->g:Lnet/sf/saxon/value/ObjectValue;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterateCurrentGroup()Lnet/sf/saxon/om/SequenceIterator;
    .locals 1

    .line 1
    new-instance v0, Lnet/sf/saxon/tree/iter/ListIterator$Of;

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->h:Ljava/util/List;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/iter/ListIterator$Of;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public iterateCurrentGroup(Ljava/lang/String;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->i:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Lnet/sf/saxon/tree/iter/ListIterator$Of;

    invoke-direct {p1, p0}, Lnet/sf/saxon/tree/iter/ListIterator$Of;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public final j()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->h:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->i:Ljava/util/Map;

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->f:Lnet/sf/saxon/value/ObjectValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/ObjectValue;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;

    iget-object v0, v0, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;->a:Lnet/sf/saxon/om/Item;

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->f:Lnet/sf/saxon/value/ObjectValue;

    invoke-virtual {v1}, Lnet/sf/saxon/value/ObjectValue;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;

    iget-object v1, v1, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;->c:Ljava/lang/String;

    iget-object v2, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->i:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v2}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/value/ObjectValue;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->g:Lnet/sf/saxon/value/ObjectValue;

    return-void

    :cond_1
    :try_start_0
    iget-object v3, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->j:Ljava/util/Comparator;

    iget-object v4, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->f:Lnet/sf/saxon/value/ObjectValue;

    invoke-interface {v3, v4, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lnet/sf/saxon/value/ObjectValue;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;

    iget-object v0, v1, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;->a:Lnet/sf/saxon/om/Item;

    invoke-virtual {v2}, Lnet/sf/saxon/value/ObjectValue;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;

    iget-object v1, v1, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;->c:Ljava/lang/String;

    iget-object v3, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    iget-object v3, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->i:Ljava/util/Map;

    new-instance v4, Lcom/sunia/HTREnginev2/jmj;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/jmj;-><init>()V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-gtz v3, :cond_3

    iput-object v2, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->g:Lnet/sf/saxon/value/ObjectValue;

    return-void

    :cond_3
    invoke-virtual {v2}, Lnet/sf/saxon/value/ObjectValue;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;->b:Ljava/util/List;

    new-instance v3, Lnet/sf/saxon/trans/XPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Merge input for source "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not ordered according to merge key, detected at key value: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "XTDE2220"

    invoke-direct {v3, p0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Merge key values are of non-comparable types ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lnet/sf/saxon/type/Type;->displayTypeName(Lnet/sf/saxon/om/Item;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/value/ObjectValue;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;

    iget-object v0, v0, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;->a:Lnet/sf/saxon/om/Item;

    invoke-static {v0}, Lnet/sf/saxon/type/Type;->displayTypeName(Lnet/sf/saxon/om/Item;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XTTE2230"

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw p0
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->g:Lnet/sf/saxon/value/ObjectValue;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->f:Lnet/sf/saxon/value/ObjectValue;

    const/4 v1, -0x1

    iput v1, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->k:I

    return-object v0

    :cond_0
    iput-object v0, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->f:Lnet/sf/saxon/value/ObjectValue;

    iget v1, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->k:I

    invoke-virtual {v0}, Lnet/sf/saxon/value/ObjectValue;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;

    iget-object v0, v0, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;->b:Ljava/util/List;

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->l:Ljava/util/List;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->j()V

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;->f:Lnet/sf/saxon/value/ObjectValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/ObjectValue;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;->a:Lnet/sf/saxon/om/Item;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0
.end method

.method public supportsGetLength()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportsHasNext()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
