.class public abstract Lnet/sf/saxon/functions/StaticContextAccessor;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/StaticContextAccessor$DefaultCollation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/StaticContextAccessor;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/StaticContextAccessor;->evaluate(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public abstract evaluate(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)Lnet/sf/saxon/value/AtomicValue;
.end method

.method public makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/StaticContextAccessor;->evaluate(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0
.end method
