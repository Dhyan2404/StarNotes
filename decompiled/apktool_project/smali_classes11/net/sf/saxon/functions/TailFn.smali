.class public Lnet/sf/saxon/functions/TailFn;
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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    aget-object p0, p2, p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/TailIterator;->make(Lnet/sf/saxon/om/SequenceIterator;I)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toLazySequence(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/TailFn;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/TailExpression;

    move-result-object p0

    return-object p0
.end method

.method public makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/TailExpression;
    .locals 1

    .line 2
    new-instance p0, Lnet/sf/saxon/expr/TailExpression;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/expr/TailExpression;-><init>(Lnet/sf/saxon/expr/Expression;I)V

    return-object p0
.end method
