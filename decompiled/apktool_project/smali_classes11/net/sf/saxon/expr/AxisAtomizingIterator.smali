.class public final Lnet/sf/saxon/expr/AxisAtomizingIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# instance fields
.field public final e:Lnet/sf/saxon/om/AtomizedValueIterator;

.field public f:Lnet/sf/saxon/om/AtomicSequence;

.field public g:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/AtomizedValueIterator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/AxisAtomizingIterator;->f:Lnet/sf/saxon/om/AtomicSequence;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/expr/AxisAtomizingIterator;->g:I

    iput-object p1, p0, Lnet/sf/saxon/expr/AxisAtomizingIterator;->e:Lnet/sf/saxon/om/AtomizedValueIterator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/AxisAtomizingIterator;->e:Lnet/sf/saxon/om/AtomizedValueIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/AxisAtomizingIterator;->e:Lnet/sf/saxon/om/AtomizedValueIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/AxisAtomizingIterator;->next()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/value/AtomicValue;
    .locals 3

    .line 2
    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/expr/AxisAtomizingIterator;->f:Lnet/sf/saxon/om/AtomicSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget v2, p0, Lnet/sf/saxon/expr/AxisAtomizingIterator;->g:I

    invoke-interface {v0}, Lnet/sf/saxon/om/AtomicSequence;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 4
    iget-object v0, p0, Lnet/sf/saxon/expr/AxisAtomizingIterator;->f:Lnet/sf/saxon/om/AtomicSequence;

    iget v1, p0, Lnet/sf/saxon/expr/AxisAtomizingIterator;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sf/saxon/expr/AxisAtomizingIterator;->g:I

    invoke-interface {v0, v1}, Lnet/sf/saxon/om/AtomicSequence;->itemAt(I)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    iput-object v1, p0, Lnet/sf/saxon/expr/AxisAtomizingIterator;->f:Lnet/sf/saxon/om/AtomicSequence;

    goto :goto_0

    .line 6
    :cond_1
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/AxisAtomizingIterator;->e:Lnet/sf/saxon/om/AtomizedValueIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/AtomizedValueIterator;->nextAtomizedValue()Lnet/sf/saxon/om/AtomicSequence;

    move-result-object v0

    if-nez v0, :cond_2

    .line 7
    iput-object v1, p0, Lnet/sf/saxon/expr/AxisAtomizingIterator;->f:Lnet/sf/saxon/om/AtomicSequence;

    return-object v1

    .line 8
    :cond_2
    instance-of v2, v0, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v2, :cond_3

    .line 9
    iput-object v1, p0, Lnet/sf/saxon/expr/AxisAtomizingIterator;->f:Lnet/sf/saxon/om/AtomicSequence;

    .line 10
    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    return-object v0

    .line 11
    :cond_3
    iput-object v0, p0, Lnet/sf/saxon/expr/AxisAtomizingIterator;->f:Lnet/sf/saxon/om/AtomicSequence;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lnet/sf/saxon/expr/AxisAtomizingIterator;->g:I
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 13
    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0
.end method
