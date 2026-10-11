.class public Lnet/sf/saxon/tree/iter/SingleAtomicIterator;
.super Lnet/sf/saxon/tree/iter/SingletonIterator;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AtomicIterator;
.implements Lnet/sf/saxon/tree/iter/ReversibleIterator;
.implements Lnet/sf/saxon/expr/LastPositionFinder;
.implements Lnet/sf/saxon/tree/iter/GroundedIterator;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/value/AtomicValue;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/tree/iter/SingletonIterator;-><init>(Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public static makeIterator(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/tree/iter/AtomicIterator;
    .locals 1

    if-nez p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofAtomic()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/tree/iter/SingleAtomicIterator;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/iter/SingleAtomicIterator;-><init>(Lnet/sf/saxon/value/AtomicValue;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getReverseIterator()Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/SingleAtomicIterator;->getReverseIterator()Lnet/sf/saxon/tree/iter/SingleAtomicIterator;

    move-result-object p0

    return-object p0
.end method

.method public getReverseIterator()Lnet/sf/saxon/tree/iter/SingleAtomicIterator;
    .locals 1

    .line 3
    new-instance v0, Lnet/sf/saxon/tree/iter/SingleAtomicIterator;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/SingletonIterator;->getValue()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/AtomicValue;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/iter/SingleAtomicIterator;-><init>(Lnet/sf/saxon/value/AtomicValue;)V

    return-object v0
.end method

.method public bridge synthetic getReverseIterator()Lnet/sf/saxon/tree/iter/SingletonIterator;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/SingleAtomicIterator;->getReverseIterator()Lnet/sf/saxon/tree/iter/SingleAtomicIterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/SingleAtomicIterator;->next()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 2
    invoke-super {p0}, Lnet/sf/saxon/tree/iter/SingletonIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/AtomicValue;

    return-object p0
.end method
