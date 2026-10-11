.class public interface abstract Lnet/sf/saxon/om/Sequence;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract head()Lnet/sf/saxon/om/Item;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract iterate()Lnet/sf/saxon/om/SequenceIterator;
.end method

.method public makeRepeatable()Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-object p0
.end method

.method public materialize()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method
