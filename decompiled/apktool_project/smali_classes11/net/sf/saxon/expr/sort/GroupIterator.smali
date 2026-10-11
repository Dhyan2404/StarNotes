.class public interface abstract Lnet/sf/saxon/expr/sort/GroupIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# virtual methods
.method public abstract getCurrentGroupingKey()Lnet/sf/saxon/om/AtomicSequence;
.end method

.method public abstract iterateCurrentGroup()Lnet/sf/saxon/om/SequenceIterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method
