.class public Lnet/sf/saxon/tree/iter/AdjacentTextNodeMergingIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;
.implements Ljava/io/Closeable;


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

    :try_start_0
    iput-object p1, p0, Lnet/sf/saxon/tree/iter/AdjacentTextNodeMergingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/iter/AdjacentTextNodeMergingIterator;->f:Lnet/sf/saxon/om/Item;
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/AdjacentTextNodeMergingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/AdjacentTextNodeMergingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/AdjacentTextNodeMergingIterator;->f:Lnet/sf/saxon/om/Item;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/tree/iter/AdjacentTextNodeMergingIterator;->f:Lnet/sf/saxon/om/Item;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/tree/iter/AdjacentTextNodeMergingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/tree/iter/AdjacentTextNodeMergingIterator;->f:Lnet/sf/saxon/om/Item;

    invoke-static {v0}, Lnet/sf/saxon/expr/AdjacentTextNodeMerger;->isTextNode(Lnet/sf/saxon/om/Item;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/tree/iter/AdjacentTextNodeMergingIterator;->f:Lnet/sf/saxon/om/Item;

    invoke-static {v2}, Lnet/sf/saxon/expr/AdjacentTextNodeMerger;->isTextNode(Lnet/sf/saxon/om/Item;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/tree/iter/AdjacentTextNodeMergingIterator;->f:Lnet/sf/saxon/om/Item;

    invoke-interface {v2}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    iget-object v2, p0, Lnet/sf/saxon/tree/iter/AdjacentTextNodeMergingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v2}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/tree/iter/AdjacentTextNodeMergingIterator;->f:Lnet/sf/saxon/om/Item;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeBuilder;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/AdjacentTextNodeMergingIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/tree/util/Orphan;

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/tree/util/Orphan;-><init>(Lnet/sf/saxon/Configuration;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/util/Orphan;->setNodeKind(S)V

    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/util/Orphan;->setStringValue(Lnet/sf/saxon/str/UnicodeString;)V

    return-object p0

    :cond_3
    return-object v0
.end method

.method public supportsHasNext()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
