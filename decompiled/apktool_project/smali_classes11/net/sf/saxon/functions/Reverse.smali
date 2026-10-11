.class public Lnet/sf/saxon/functions/Reverse;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/Reverse$ReverseListIterator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static getReverseIterator(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 1

    instance-of v0, p0, Lnet/sf/saxon/tree/iter/ReversibleIterator;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/tree/iter/ReversibleIterator;

    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/ReversibleIterator;->getReverseIterator()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/value/SequenceExtent;->from(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/value/SequenceExtent$Of;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceExtent$Of;->reverseIterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static reverseIterator(Ljava/util/List;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/sf/saxon/om/Item;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lnet/sf/saxon/om/SequenceIterator;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/functions/Reverse$ReverseListIterator;

    invoke-direct {v0, p0}, Lnet/sf/saxon/functions/Reverse$ReverseListIterator;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    aget-object p0, p2, p0

    instance-of p1, p0, Lnet/sf/saxon/value/SequenceExtent;

    if-eqz p1, :cond_0

    check-cast p0, Lnet/sf/saxon/value/SequenceExtent;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/SequenceExtent;->from(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/value/SequenceExtent$Of;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceExtent;->reverseIterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toLazySequence(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public getSpecialProperties([Lnet/sf/saxon/expr/Expression;)I
    .locals 2

    const/4 p0, 0x0

    aget-object p0, p1, p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result p0

    const/high16 p1, 0x40000

    and-int v0, p0, p1

    const/high16 v1, 0x20000

    if-eqz v0, :cond_0

    const p1, -0x40001

    and-int/2addr p0, p1

    or-int/2addr p0, v1

    return p0

    :cond_0
    and-int v0, p0, v1

    if-eqz v0, :cond_1

    const v0, -0x20001

    and-int/2addr p0, v0

    or-int/2addr p0, p1

    :cond_1
    return p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "Reverse"

    return-object p0
.end method

.method public varargs makeOptimizedFunctionCall(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v1, p3, v0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v1

    const/16 v2, 0x6000

    if-ne v1, v2, :cond_0

    aget-object p0, p3, v0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/functions/SystemFunction;->makeOptimizedFunctionCall(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method
