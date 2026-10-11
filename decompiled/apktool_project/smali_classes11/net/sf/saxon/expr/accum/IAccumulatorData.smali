.class public interface abstract Lnet/sf/saxon/expr/accum/IAccumulatorData;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAccumulator()Lnet/sf/saxon/expr/accum/Accumulator;
.end method

.method public abstract getValue(Lnet/sf/saxon/om/NodeInfo;Z)Lnet/sf/saxon/om/Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method
