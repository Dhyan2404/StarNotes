.class public Lnet/sf/saxon/trace/TraceCodeInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/parser/CodeInjector;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/trace/TraceCodeInjector;Lnet/sf/saxon/expr/Operand;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/trace/TraceCodeInjector;->b(Lnet/sf/saxon/expr/Operand;)V

    return-void
.end method

.method private synthetic b(Lnet/sf/saxon/expr/Operand;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0, p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->injectCode(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/CodeInjector;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method


# virtual methods
.method public inject(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/expr/flwor/FLWORExpression;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/expr/flwor/FLWORExpression;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->injectCode(Lnet/sf/saxon/expr/parser/CodeInjector;)V

    return-object p1

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/expr/instruct/TraceExpression;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trace/TraceCodeInjector;->isApplicable(Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lnet/sf/saxon/expr/instruct/TraceExpression;

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/instruct/TraceExpression;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    :cond_1
    return-object p1
.end method

.method public injectClause(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/flwor/Clause;)Lnet/sf/saxon/expr/flwor/Clause;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/sunia/HTREnginev2/tkn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/tkn;-><init>(Lnet/sf/saxon/trace/TraceCodeInjector;)V

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/flwor/Clause;->processOperands(Lnet/sf/saxon/expr/flwor/OperandProcessor;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p0, Lnet/sf/saxon/expr/flwor/TraceClause;

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/expr/flwor/TraceClause;-><init>(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/flwor/Clause;)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw p1
.end method

.method public isApplicable(Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public process(Lnet/sf/saxon/trace/TraceableComponent;)V
    .locals 1

    invoke-interface {p1}, Lnet/sf/saxon/trace/TraceableComponent;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/instruct/ComponentTracer;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/trace/TraceableComponent;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0, p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->injectCode(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/CodeInjector;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-interface {p1, p0}, Lnet/sf/saxon/trace/TraceableComponent;->setBody(Lnet/sf/saxon/expr/Expression;)V

    new-instance p0, Lnet/sf/saxon/expr/instruct/ComponentTracer;

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/instruct/ComponentTracer;-><init>(Lnet/sf/saxon/trace/TraceableComponent;)V

    invoke-interface {p1, p0}, Lnet/sf/saxon/trace/TraceableComponent;->setBody(Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    return-void
.end method
