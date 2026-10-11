.class public interface abstract Lnet/sf/saxon/tree/iter/AtomicIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# virtual methods
.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/AtomicIterator;->next()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public abstract next()Lnet/sf/saxon/value/AtomicValue;
.end method
