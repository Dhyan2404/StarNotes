.class public abstract Lnet/sf/saxon/functions/FoldingFunction;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-array v2, v0, [Lnet/sf/saxon/om/Sequence;

    const/4 v3, 0x0

    invoke-static {p2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/functions/FoldingFunction;->getFold(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/Fold;

    move-result-object p0

    aget-object p1, p2, v3

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p0, p2}, Lnet/sf/saxon/functions/Fold;->processItem(Lnet/sf/saxon/om/Item;)V

    invoke-interface {p0}, Lnet/sf/saxon/functions/Fold;->isFinished()Z

    move-result p2

    if-eqz p2, :cond_0

    :cond_1
    invoke-interface {p0}, Lnet/sf/saxon/functions/Fold;->result()Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public varargs abstract getFold(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/Fold;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "Fold"

    return-object p0
.end method
