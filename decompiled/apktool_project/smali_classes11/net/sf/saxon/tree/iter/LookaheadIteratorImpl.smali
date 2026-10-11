.class public Lnet/sf/saxon/tree/iter/LookaheadIteratorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;


# instance fields
.field public final e:Lnet/sf/saxon/om/SequenceIterator;

.field public f:Lnet/sf/saxon/om/Item;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/iter/LookaheadIteratorImpl;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/iter/LookaheadIteratorImpl;->f:Lnet/sf/saxon/om/Item;

    return-void
.end method

.method public static makeLookaheadIterator(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/tree/iter/LookaheadIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p0, Lnet/sf/saxon/tree/iter/LookaheadIterator;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/tree/iter/LookaheadIterator;

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/LookaheadIterator;->supportsHasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lnet/sf/saxon/tree/iter/LookaheadIteratorImpl;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/iter/LookaheadIteratorImpl;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/LookaheadIteratorImpl;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/LookaheadIteratorImpl;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/LookaheadIteratorImpl;->f:Lnet/sf/saxon/om/Item;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/iter/LookaheadIteratorImpl;->f:Lnet/sf/saxon/om/Item;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/tree/iter/LookaheadIteratorImpl;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/tree/iter/LookaheadIteratorImpl;->f:Lnet/sf/saxon/om/Item;

    :cond_0
    return-object v0
.end method

.method public supportsHasNext()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
