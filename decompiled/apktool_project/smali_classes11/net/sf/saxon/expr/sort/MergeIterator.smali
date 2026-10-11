.class public Lnet/sf/saxon/expr/sort/MergeIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;


# instance fields
.field public final e:Lnet/sf/saxon/om/SequenceIterator;

.field public final f:Lnet/sf/saxon/om/SequenceIterator;

.field public g:Lnet/sf/saxon/value/ObjectValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/value/ObjectValue<",
            "Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lnet/sf/saxon/value/ObjectValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/value/ObjectValue<",
            "Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lnet/sf/saxon/value/ObjectValue<",
            "Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/SequenceIterator;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/SequenceIterator;",
            "Lnet/sf/saxon/om/SequenceIterator;",
            "Ljava/util/Comparator<",
            "Lnet/sf/saxon/value/ObjectValue<",
            "Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->g:Lnet/sf/saxon/value/ObjectValue;

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->h:Lnet/sf/saxon/value/ObjectValue;

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    iput-object p2, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->f:Lnet/sf/saxon/om/SequenceIterator;

    iput-object p3, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->i:Ljava/util/Comparator;

    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/ObjectValue;

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->g:Lnet/sf/saxon/value/ObjectValue;

    invoke-interface {p2}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/ObjectValue;

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->h:Lnet/sf/saxon/value/ObjectValue;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->f:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->f:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->g:Lnet/sf/saxon/value/ObjectValue;

    if-nez v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->h:Lnet/sf/saxon/value/ObjectValue;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/MergeIterator;->next()Lnet/sf/saxon/value/ObjectValue;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/value/ObjectValue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/value/ObjectValue<",
            "Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->g:Lnet/sf/saxon/value/ObjectValue;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->h:Lnet/sf/saxon/value/ObjectValue;

    if-eqz v1, :cond_1

    .line 3
    :try_start_0
    iget-object v2, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->i:Ljava/util/Comparator;

    invoke-interface {v2, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v0, :cond_0

    .line 4
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->g:Lnet/sf/saxon/value/ObjectValue;

    .line 5
    iget-object v1, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/value/ObjectValue;

    iput-object v1, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->g:Lnet/sf/saxon/value/ObjectValue;

    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->h:Lnet/sf/saxon/value/ObjectValue;

    .line 7
    iget-object v1, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->f:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/value/ObjectValue;

    iput-object v1, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->h:Lnet/sf/saxon/value/ObjectValue;

    return-object v0

    .line 8
    :catch_0
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->g:Lnet/sf/saxon/value/ObjectValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/ObjectValue;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;

    .line 9
    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->h:Lnet/sf/saxon/value/ObjectValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/ObjectValue;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;

    .line 10
    iget-object v0, v0, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    .line 11
    iget-object p0, p0, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;->b:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/AtomicValue;

    .line 12
    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Merge key values are of non-comparable types ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {v0}, Lnet/sf/saxon/type/Type;->displayTypeName(Lnet/sf/saxon/om/Item;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {p0}, Lnet/sf/saxon/type/Type;->displayTypeName(Lnet/sf/saxon/om/Item;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "XTTE2230"

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 15
    invoke-virtual {v1, p0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    .line 16
    new-instance p0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {p0, v1}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw p0

    :cond_1
    if-eqz v0, :cond_2

    .line 17
    iget-object v1, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/value/ObjectValue;

    iput-object v1, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->g:Lnet/sf/saxon/value/ObjectValue;

    return-object v0

    .line 18
    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->h:Lnet/sf/saxon/value/ObjectValue;

    if-eqz v0, :cond_3

    .line 19
    iget-object v1, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->f:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/value/ObjectValue;

    iput-object v1, p0, Lnet/sf/saxon/expr/sort/MergeIterator;->h:Lnet/sf/saxon/value/ObjectValue;

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public supportsHasNext()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
