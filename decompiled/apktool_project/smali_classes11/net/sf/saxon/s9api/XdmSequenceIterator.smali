.class public Lnet/sf/saxon/s9api/XdmSequenceIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/sf/saxon/s9api/XdmItem;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/tree/iter/LookaheadIterator;

.field public f:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/s9api/XdmSequenceIterator;->f:Z

    :try_start_0
    invoke-static {p1}, Lnet/sf/saxon/tree/iter/LookaheadIteratorImpl;->makeLookaheadIterator(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/tree/iter/LookaheadIterator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/s9api/XdmSequenceIterator;->e:Lnet/sf/saxon/tree/iter/LookaheadIterator;
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static ofAtomicValues(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/s9api/XdmSequenceIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/SequenceIterator;",
            ")",
            "Lnet/sf/saxon/s9api/XdmSequenceIterator<",
            "Lnet/sf/saxon/s9api/XdmAtomicValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/s9api/XdmSequenceIterator;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmSequenceIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    return-object v0
.end method

.method public static ofNode(Lnet/sf/saxon/s9api/XdmNode;)Lnet/sf/saxon/s9api/XdmSequenceIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/s9api/XdmNode;",
            ")",
            "Lnet/sf/saxon/s9api/XdmSequenceIterator<",
            "Lnet/sf/saxon/s9api/XdmNode;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/s9api/XdmSequenceIterator;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmSequenceIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    return-object v0
.end method

.method public static ofNodes(Lnet/sf/saxon/tree/iter/AxisIterator;)Lnet/sf/saxon/s9api/XdmSequenceIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/tree/iter/AxisIterator;",
            ")",
            "Lnet/sf/saxon/s9api/XdmSequenceIterator<",
            "Lnet/sf/saxon/s9api/XdmNode;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/s9api/XdmSequenceIterator;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmSequenceIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/s9api/XdmSequenceIterator;->f:Z

    iget-object p0, p0, Lnet/sf/saxon/s9api/XdmSequenceIterator;->e:Lnet/sf/saxon/tree/iter/LookaheadIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sf/saxon/s9api/XdmSequenceIterator;->f:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XdmSequenceIterator;->e:Lnet/sf/saxon/tree/iter/LookaheadIterator;

    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/LookaheadIterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmSequenceIterator;->next()Lnet/sf/saxon/s9api/XdmItem;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/s9api/XdmItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/XdmSequenceIterator;->e:Lnet/sf/saxon/tree/iter/LookaheadIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmItem;->wrapItem(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/s9api/XdmItem;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public stream()Lnet/sf/saxon/s9api/streams/XdmStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/s9api/streams/XdmStream<",
            "TT;>;"
        }
    .end annotation

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/cvo;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/cvo;-><init>(Lnet/sf/saxon/s9api/XdmSequenceIterator;)V

    invoke-interface {v0, v1}, Ljava/util/stream/BaseStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmStream;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/streams/XdmStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method
