.class public Lnet/sf/saxon/functions/ContextItemAccessorFunction;
.super Lnet/sf/saxon/functions/ContextAccessorFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/ContextItemAccessorFunction$Number_0;,
        Lnet/sf/saxon/functions/ContextItemAccessorFunction$StringAccessor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/ContextAccessorFunction;-><init>()V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/functions/ContextItemAccessorFunction;Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/functions/ContextItemAccessorFunction;->b(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method private synthetic b(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Context item for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is absent"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "XPDY0002"

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bindContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Function;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lnet/sf/saxon/expr/CallableDelegate;

    new-instance v0, Lcom/sunia/HTREnginev2/tbe;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/tbe;-><init>(Lnet/sf/saxon/functions/ContextItemAccessorFunction;)V

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/CallableDelegate;-><init>(Lnet/sf/saxon/expr/CallableDelegate$Lambda;)V

    new-instance p0, Lnet/sf/saxon/type/SpecificFunctionType;

    const/4 v0, 0x0

    new-array v1, v0, [Lnet/sf/saxon/value/SequenceType;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {p0, v1, v2}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    new-instance v1, Lnet/sf/saxon/functions/CallableFunction;

    invoke-direct {v1, v0, p1, p0}, Lnet/sf/saxon/functions/CallableFunction;-><init>(ILnet/sf/saxon/expr/Callable;Lnet/sf/saxon/type/FunctionItemType;)V

    return-object v1

    :cond_0
    new-instance v1, Lnet/sf/saxon/functions/ConstantFunction;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/functions/ContextItemAccessorFunction;->evaluate(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    invoke-direct {v1, p1}, Lnet/sf/saxon/functions/ConstantFunction;-><init>(Lnet/sf/saxon/om/GroundedValue;)V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/functions/SystemFunction;->setDetails(Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;)V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {v1, p0}, Lnet/sf/saxon/functions/SystemFunction;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    return-object v1
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/functions/ContextItemAccessorFunction;->evaluate(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

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

    new-array v0, v1, [Lnet/sf/saxon/om/Sequence;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-interface {p0, p2, v0}, Lnet/sf/saxon/expr/Callable;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public makeContextItemExplicit()Lnet/sf/saxon/expr/Expression;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/sf/saxon/expr/Expression;

    new-instance v1, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {v1}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 3

    new-instance p1, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {p1}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    const-string v1, "http://saxon.sf.net/"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->functionSet:Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;

    iget-object p0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->name:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    new-array v0, v2, [Lnet/sf/saxon/expr/Expression;

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw p1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    new-array v2, v2, [Lnet/sf/saxon/expr/Expression;

    aput-object p1, v2, v1

    invoke-static {v0, p0, v2}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method
