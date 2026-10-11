.class public abstract Lnet/sf/saxon/functions/ScalarSystemFunction;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/ScalarSystemFunction;->resultWhenEmpty()Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/functions/ScalarSystemFunction;->evaluate(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->itemOrEmpty(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public abstract evaluate(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    new-instance v0, Lnet/sf/saxon/functions/ScalarSystemFunction$a;

    invoke-direct {v0, p0, p0, p1}, Lnet/sf/saxon/functions/ScalarSystemFunction$a;-><init>(Lnet/sf/saxon/functions/ScalarSystemFunction;Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    return-object v0
.end method

.method public resultWhenEmpty()Lnet/sf/saxon/om/Sequence;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0
.end method
