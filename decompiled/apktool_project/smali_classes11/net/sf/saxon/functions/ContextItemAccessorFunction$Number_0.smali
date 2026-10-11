.class public Lnet/sf/saxon/functions/ContextItemAccessorFunction$Number_0;
.super Lnet/sf/saxon/functions/ContextItemAccessorFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/ContextItemAccessorFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Number_0"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/ContextItemAccessorFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    iget-object v0, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->name:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lnet/sf/saxon/functions/SystemFunction;->makeFunction(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->atomize()Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/om/AtomicSequence;->getLength()I

    move-result v0

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    new-array v0, v1, [Lnet/sf/saxon/om/Sequence;

    const/4 v1, 0x0

    invoke-interface {p1}, Lnet/sf/saxon/om/AtomicSequence;->head()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-interface {p0, p2, v0}, Lnet/sf/saxon/expr/Callable;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "When number() is called with no arguments, the atomized value of the context node must not be a sequence of several atomic values"

    const-string p2, "XPTY0004"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw p0

    :cond_1
    sget-object p0, Lnet/sf/saxon/value/DoubleValue;->NaN:Lnet/sf/saxon/value/DoubleValue;

    return-object p0
.end method

.method public makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 4

    new-instance p1, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {p1}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lnet/sf/saxon/expr/Expression;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "data"

    invoke-static {p1, v0, v2}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    new-array v1, v1, [Lnet/sf/saxon/expr/Expression;

    aput-object p1, v1, v3

    invoke-static {v0, p0, v1}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method
