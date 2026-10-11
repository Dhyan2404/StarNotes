.class public Lnet/sf/saxon/expr/accum/VirtualAccumulatorData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/accum/IAccumulatorData;


# instance fields
.field public final a:Lnet/sf/saxon/expr/accum/IAccumulatorData;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/accum/IAccumulatorData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/accum/VirtualAccumulatorData;->a:Lnet/sf/saxon/expr/accum/IAccumulatorData;

    return-void
.end method


# virtual methods
.method public getAccumulator()Lnet/sf/saxon/expr/accum/Accumulator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/accum/VirtualAccumulatorData;->a:Lnet/sf/saxon/expr/accum/IAccumulatorData;

    invoke-interface {p0}, Lnet/sf/saxon/expr/accum/IAccumulatorData;->getAccumulator()Lnet/sf/saxon/expr/accum/Accumulator;

    move-result-object p0

    return-object p0
.end method

.method public getValue(Lnet/sf/saxon/om/NodeInfo;Z)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p1, Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    invoke-virtual {p1}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getOriginalNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/expr/accum/VirtualAccumulatorData;->a:Lnet/sf/saxon/expr/accum/IAccumulatorData;

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/expr/accum/IAccumulatorData;->getValue(Lnet/sf/saxon/om/NodeInfo;Z)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method
