.class public Lnet/sf/saxon/expr/accum/FailedAccumulatorData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/accum/IAccumulatorData;


# instance fields
.field public final a:Lnet/sf/saxon/expr/accum/Accumulator;

.field public final b:Lnet/sf/saxon/trans/XPathException;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/accum/Accumulator;Lnet/sf/saxon/trans/XPathException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/accum/FailedAccumulatorData;->a:Lnet/sf/saxon/expr/accum/Accumulator;

    iput-object p2, p0, Lnet/sf/saxon/expr/accum/FailedAccumulatorData;->b:Lnet/sf/saxon/trans/XPathException;

    return-void
.end method


# virtual methods
.method public getAccumulator()Lnet/sf/saxon/expr/accum/Accumulator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/accum/FailedAccumulatorData;->a:Lnet/sf/saxon/expr/accum/Accumulator;

    return-object p0
.end method

.method public getValue(Lnet/sf/saxon/om/NodeInfo;Z)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/accum/FailedAccumulatorData;->b:Lnet/sf/saxon/trans/XPathException;

    throw p0
.end method
