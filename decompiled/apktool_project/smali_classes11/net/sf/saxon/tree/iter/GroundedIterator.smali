.class public interface abstract Lnet/sf/saxon/tree/iter/GroundedIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# virtual methods
.method public abstract getResidue()Lnet/sf/saxon/om/GroundedValue;
.end method

.method public abstract isActuallyGrounded()Z
.end method

.method public materialize()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/value/SequenceExtent;->from(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/value/SequenceExtent$Of;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceExtent$Of;->reduce()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method
