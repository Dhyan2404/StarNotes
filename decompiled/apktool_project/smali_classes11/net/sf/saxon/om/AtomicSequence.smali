.class public interface abstract Lnet/sf/saxon/om/AtomicSequence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/GroundedValue;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/sf/saxon/om/GroundedValue;",
        "Ljava/lang/Iterable<",
        "Lnet/sf/saxon/value/AtomicValue;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getCanonicalLexicalRepresentation()Lnet/sf/saxon/str/UnicodeString;
.end method

.method public abstract getLength()I
.end method

.method public abstract getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
.end method

.method public bridge synthetic head()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-interface {p0}, Lnet/sf/saxon/om/AtomicSequence;->head()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public abstract head()Lnet/sf/saxon/value/AtomicValue;
.end method

.method public bridge synthetic itemAt(I)Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lnet/sf/saxon/om/AtomicSequence;->itemAt(I)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public abstract itemAt(I)Lnet/sf/saxon/value/AtomicValue;
.end method

.method public bridge synthetic iterate()Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    .line 1
    invoke-interface {p0}, Lnet/sf/saxon/om/AtomicSequence;->iterate()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    return-object p0
.end method

.method public abstract iterate()Lnet/sf/saxon/tree/iter/AtomicIterator;
.end method
