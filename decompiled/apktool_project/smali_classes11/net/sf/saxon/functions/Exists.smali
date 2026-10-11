.class public Lnet/sf/saxon/functions/Exists;
.super Lnet/sf/saxon/functions/Aggregate;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/Aggregate;-><init>()V

    return-void
.end method

.method public static a(Lnet/sf/saxon/om/SequenceIterator;)Z
    .locals 2

    instance-of v0, p0, Lnet/sf/saxon/tree/iter/LookaheadIterator;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/tree/iter/LookaheadIterator;

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/LookaheadIterator;->supportsHasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/LookaheadIterator;->hasNext()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return v0
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
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/Exists;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/BooleanValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 2
    aget-object p0, p2, p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/functions/Exists;->a(Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method

.method public getCompilerName()Ljava/lang/String;
    .locals 0

    const-string p0, "ExistsCompiler"

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "Exists"

    return-object p0
.end method

.method public makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    new-instance v0, Lnet/sf/saxon/functions/Exists$a;

    invoke-direct {v0, p0, p0, p1}, Lnet/sf/saxon/functions/Exists$a;-><init>(Lnet/sf/saxon/functions/Exists;Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public varargs makeOptimizedFunctionCall(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v1, p3, v0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v1

    const v2, 0xc000

    if-ne v1, v2, :cond_0

    sget-object p0, Lnet/sf/saxon/value/BooleanValue;->TRUE:Lnet/sf/saxon/value/BooleanValue;

    aget-object p1, p3, v0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v2, 0x2000

    if-ne v1, v2, :cond_1

    sget-object p0, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    aget-object p1, p3, v0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_1
    aget-object v1, p3, v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->isOptimizeForStreaming()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lnet/sf/saxon/expr/Expression;->unordered(ZZ)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    aput-object v1, p3, v0

    instance-of v1, v1, Lnet/sf/saxon/expr/VennExpression;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->isOptimizeForStreaming()Z

    move-result v1

    if-nez v1, :cond_2

    aget-object p3, p3, v0

    check-cast p3, Lnet/sf/saxon/expr/VennExpression;

    invoke-virtual {p3}, Lnet/sf/saxon/expr/BinaryExpression;->getOperator()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    new-array v3, v2, [Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p3}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "exists"

    invoke-static {v4, v1, v3}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    new-array v2, v2, [Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p3}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p3

    aput-object p3, v2, v0

    invoke-static {v4, p0, v2}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p3, Lnet/sf/saxon/expr/OrExpression;

    invoke-direct {p3, v1, p0}, Lnet/sf/saxon/expr/OrExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p3, p1, p2}, Lnet/sf/saxon/expr/OrExpression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
