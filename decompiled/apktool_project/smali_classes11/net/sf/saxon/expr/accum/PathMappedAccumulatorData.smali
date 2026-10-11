.class public Lnet/sf/saxon/expr/accum/PathMappedAccumulatorData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/accum/IAccumulatorData;


# static fields
.field public static final synthetic c:Z


# instance fields
.field public final a:Lnet/sf/saxon/expr/accum/IAccumulatorData;

.field public final b:Lnet/sf/saxon/om/NodeInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/accum/IAccumulatorData;Lnet/sf/saxon/om/NodeInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/accum/PathMappedAccumulatorData;->a:Lnet/sf/saxon/expr/accum/IAccumulatorData;

    iput-object p2, p0, Lnet/sf/saxon/expr/accum/PathMappedAccumulatorData;->b:Lnet/sf/saxon/om/NodeInfo;

    return-void
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeInfo;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/expr/accum/PathMappedAccumulatorData;->b:Lnet/sf/saxon/om/NodeInfo;

    instance-of v0, v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    invoke-virtual {p1}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getNodeNumber()I

    move-result p1

    iget-object v0, p0, Lnet/sf/saxon/expr/accum/PathMappedAccumulatorData;->b:Lnet/sf/saxon/om/NodeInfo;

    check-cast v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getTree()Lnet/sf/saxon/tree/tiny/TinyTree;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/expr/accum/PathMappedAccumulatorData;->b:Lnet/sf/saxon/om/NodeInfo;

    check-cast p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getNodeNumber()I

    move-result p0

    add-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNode(I)Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-static {p1, v1, v2}, Lnet/sf/saxon/tree/util/Navigator;->getSiblingPosition(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodeTest;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/expr/accum/PathMappedAccumulatorData;->b:Lnet/sf/saxon/om/NodeInfo;

    :cond_2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x3

    invoke-interface {p0, v1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v1

    :goto_1
    add-int/lit8 v2, p1, -0x1

    if-lez p1, :cond_2

    invoke-interface {v1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    move p1, v2

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method public getAccumulator()Lnet/sf/saxon/expr/accum/Accumulator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue(Lnet/sf/saxon/om/NodeInfo;Z)Lnet/sf/saxon/om/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/accum/PathMappedAccumulatorData;->a:Lnet/sf/saxon/expr/accum/IAccumulatorData;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/accum/PathMappedAccumulatorData;->a(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Lnet/sf/saxon/expr/accum/IAccumulatorData;->getValue(Lnet/sf/saxon/om/NodeInfo;Z)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method
