.class public abstract Lnet/sf/saxon/value/SequenceExtent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/GroundedValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/value/SequenceExtent$Of;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/value/SequenceExtent$Of;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/SequenceIterator;",
            ")",
            "Lnet/sf/saxon/value/SequenceExtent$Of<",
            "Lnet/sf/saxon/om/Item;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->supportsGetLength(Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x14

    goto :goto_0

    :cond_0
    move-object v1, p0

    check-cast v1, Lnet/sf/saxon/expr/LastPositionFinder;

    invoke-interface {v1}, Lnet/sf/saxon/expr/LastPositionFinder;->getLength()I

    move-result v1

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance p0, Lnet/sf/saxon/value/SequenceExtent$Of;

    invoke-direct {p0, v0}, Lnet/sf/saxon/value/SequenceExtent$Of;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static makeResidue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;
    .locals 2

    instance-of v0, p0, Lnet/sf/saxon/tree/iter/GroundedIterator;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/tree/iter/GroundedIterator;

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/GroundedIterator;->isActuallyGrounded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/GroundedIterator;->getResidue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/value/SequenceExtent;->from(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/value/SequenceExtent$Of;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->reduce()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public static makeSequenceExtent(Ljava/util/List;)Lnet/sf/saxon/om/GroundedValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/sf/saxon/om/Item;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lnet/sf/saxon/om/GroundedValue;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/GroundedValue;

    return-object p0

    :cond_1
    new-instance v0, Lnet/sf/saxon/value/SequenceExtent$Of;

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/SequenceExtent$Of;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public abstract reverseIterate()Lnet/sf/saxon/om/SequenceIterator;
.end method
