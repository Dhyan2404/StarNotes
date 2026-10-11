.class public interface abstract Lnet/sf/saxon/om/Item;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/GroundedValue;


# virtual methods
.method public abstract atomize()Lnet/sf/saxon/om/AtomicSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract getGenre()Lnet/sf/saxon/om/Genre;
.end method

.method public getLength()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
.end method

.method public head()Lnet/sf/saxon/om/Item;
    .locals 0

    return-object p0
.end method

.method public isStreamed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public itemAt(I)Lnet/sf/saxon/om/Item;
    .locals 0

    if-nez p1, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic iterate()Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    .line 1
    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->iterate()Lnet/sf/saxon/tree/iter/SingletonIterator;

    move-result-object p0

    return-object p0
.end method

.method public iterate()Lnet/sf/saxon/tree/iter/SingletonIterator;
    .locals 0

    .line 2
    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/tree/iter/SingletonIterator;

    return-object p0
.end method

.method public reduce()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    return-object p0
.end method

.method public subsequence(II)Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    if-gtz p1, :cond_0

    add-int/2addr p1, p2

    if-lez p1, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
