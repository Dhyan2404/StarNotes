.class public Lnet/sf/saxon/tree/iter/UntypedAtomizingIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;
.implements Lnet/sf/saxon/expr/LastPositionFinder;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;


# instance fields
.field public final e:Lnet/sf/saxon/om/SequenceIterator;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/iter/UntypedAtomizingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/UntypedAtomizingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/UntypedAtomizingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/UntypedAtomizingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->getLength(Lnet/sf/saxon/om/SequenceIterator;)I

    move-result p0

    return p0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/UntypedAtomizingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    check-cast p0, Lnet/sf/saxon/tree/iter/LookaheadIterator;

    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/LookaheadIterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/UntypedAtomizingIterator;->next()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/value/AtomicValue;
    .locals 1

    .line 2
    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/tree/iter/UntypedAtomizingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->atomize()Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/AtomicValue;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0
.end method

.method public supportsGetLength()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/UntypedAtomizingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->supportsGetLength(Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result p0

    return p0
.end method

.method public supportsHasNext()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/UntypedAtomizingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    instance-of v0, p0, Lnet/sf/saxon/tree/iter/LookaheadIterator;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/tree/iter/LookaheadIterator;

    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/LookaheadIterator;->supportsHasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
