.class public Lnet/sf/saxon/tree/iter/HomogeneityCheckerIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# instance fields
.field public e:Lnet/sf/saxon/om/SequenceIterator;

.field public f:Lnet/sf/saxon/s9api/Location;

.field public g:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/s9api/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/iter/HomogeneityCheckerIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    iput-object p2, p0, Lnet/sf/saxon/tree/iter/HomogeneityCheckerIterator;->f:Lnet/sf/saxon/s9api/Location;

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/tree/iter/HomogeneityCheckerIterator;->g:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/HomogeneityCheckerIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/HomogeneityCheckerIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public final f()Lnet/sf/saxon/trans/UncheckedXPathException;
    .locals 2

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Cannot mix nodes and atomic values in the result of a path expression"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string v1, "XPTY0018"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/HomogeneityCheckerIterator;->f:Lnet/sf/saxon/s9api/Location;

    invoke-virtual {v0, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    new-instance p0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/tree/iter/HomogeneityCheckerIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v1, p0, Lnet/sf/saxon/tree/iter/HomogeneityCheckerIterator;->g:I

    const/4 v2, -0x1

    if-nez v1, :cond_4

    instance-of v1, v0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/tree/iter/HomogeneityCheckerIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v2, v0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/HomogeneityCheckerIterator;->f()Lnet/sf/saxon/trans/UncheckedXPathException;

    move-result-object p0

    throw p0

    :cond_2
    new-instance v0, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;

    new-instance v2, Lnet/sf/saxon/tree/iter/ListIterator$Of;

    invoke-direct {v2, v1}, Lnet/sf/saxon/tree/iter/ListIterator$Of;-><init>(Ljava/util/List;)V

    invoke-static {}, Lnet/sf/saxon/expr/sort/GlobalOrderComparer;->getInstance()Lnet/sf/saxon/expr/sort/GlobalOrderComparer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Ljava/util/Comparator;)V

    iput-object v0, p0, Lnet/sf/saxon/tree/iter/HomogeneityCheckerIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    const/4 v1, 0x1

    iput v1, p0, Lnet/sf/saxon/tree/iter/HomogeneityCheckerIterator;->g:I

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0

    :cond_3
    iput v2, p0, Lnet/sf/saxon/tree/iter/HomogeneityCheckerIterator;->g:I

    goto :goto_1

    :cond_4
    if-ne v1, v2, :cond_6

    instance-of v1, v0, Lnet/sf/saxon/om/NodeInfo;

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/HomogeneityCheckerIterator;->f()Lnet/sf/saxon/trans/UncheckedXPathException;

    move-result-object p0

    throw p0

    :cond_6
    :goto_1
    return-object v0
.end method
