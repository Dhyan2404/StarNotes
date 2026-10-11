.class public Lnet/sf/saxon/functions/RegexFunctionSansFlags;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lnet/sf/saxon/functions/SystemFunction;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/Configuration;->makeSystemFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/functions/SystemFunction;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    return-object v0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/functions/RegexFunctionSansFlags;->a()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lnet/sf/saxon/om/Sequence;

    const/4 v1, 0x0

    array-length v2, p2

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, p2

    sget-object v1, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    aput-object v1, v0, p2

    invoke-interface {p0, p1, v0}, Lnet/sf/saxon/expr/Callable;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public varargs makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/functions/RegexFunctionSansFlags;->a()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lnet/sf/saxon/expr/Expression;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    new-instance v1, Lnet/sf/saxon/expr/StringLiteral;

    const-string v2, ""

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, p1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method
