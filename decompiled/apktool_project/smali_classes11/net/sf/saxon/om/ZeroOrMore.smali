.class public Lnet/sf/saxon/om/ZeroOrMore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/GroundedValue;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/sf/saxon/om/Item;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/sf/saxon/om/GroundedValue;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/om/ZeroOrMore;->e:Ljava/util/List;

    return-void
.end method

.method public static fromSequenceIterator(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/ZeroOrMore;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/sf/saxon/om/Item;",
            ">(",
            "Lnet/sf/saxon/om/SequenceIterator;",
            ")",
            "Lnet/sf/saxon/om/ZeroOrMore<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/om/ZeroOrMore;

    invoke-direct {p0, v0}, Lnet/sf/saxon/om/ZeroOrMore;-><init>(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public effectiveBooleanValue()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/om/ZeroOrMore;->getLength()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lnet/sf/saxon/om/ZeroOrMore;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/Item;

    instance-of v2, v1, Lnet/sf/saxon/om/NodeInfo;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    :cond_1
    if-ne v0, v3, :cond_2

    instance-of v0, v1, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v0, :cond_2

    invoke-interface {v1}, Lnet/sf/saxon/om/GroundedValue;->effectiveBooleanValue()Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/om/ZeroOrMore;->iterate()Lnet/sf/saxon/tree/iter/ListIterator$Of;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->effectiveBooleanValue(Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result p0

    return p0
.end method

.method public getCardinality()I
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/om/ZeroOrMore;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const p0, 0xc000

    return p0

    :cond_0
    const/16 p0, 0x4000

    return p0

    :cond_1
    const/16 p0, 0x2000

    return p0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/ZeroOrMore;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->stringify(Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->getStringValue(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/om/ZeroOrMore;->e:Ljava/util/List;

    return-object p0
.end method

.method public head()Lnet/sf/saxon/om/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/om/ZeroOrMore;->itemAt(I)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public itemAt(I)Lnet/sf/saxon/om/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/om/ZeroOrMore;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/om/ZeroOrMore;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/Item;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic iterate()Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/om/ZeroOrMore;->iterate()Lnet/sf/saxon/tree/iter/ListIterator$Of;

    move-result-object p0

    return-object p0
.end method

.method public iterate()Lnet/sf/saxon/tree/iter/ListIterator$Of;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/tree/iter/ListIterator$Of<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lnet/sf/saxon/tree/iter/ListIterator$Of;

    iget-object p0, p0, Lnet/sf/saxon/om/ZeroOrMore;->e:Ljava/util/List;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/iter/ListIterator$Of;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/om/ZeroOrMore;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public reduce()Lnet/sf/saxon/om/GroundedValue;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/om/ZeroOrMore;->getLength()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/om/ZeroOrMore;->itemAt(I)Lnet/sf/saxon/om/Item;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public reverseIterate()Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/ZeroOrMore;->e:Ljava/util/List;

    invoke-static {p0}, Lnet/sf/saxon/functions/Reverse;->reverseIterator(Ljava/util/List;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public subsequence(II)Lnet/sf/saxon/om/GroundedValue;
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/om/ZeroOrMore;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lnet/sf/saxon/value/SequenceExtent$Of;

    iget-object p0, p0, Lnet/sf/saxon/om/ZeroOrMore;->e:Ljava/util/List;

    add-int/2addr p2, p1

    invoke-interface {p0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/SequenceExtent$Of;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceExtent$Of;->reduce()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/om/ZeroOrMore;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-nez v1, :cond_0

    const-string v2, "("

    goto :goto_1

    :cond_0
    const-string v2, ", "

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sf/saxon/om/ZeroOrMore;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/Item;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
