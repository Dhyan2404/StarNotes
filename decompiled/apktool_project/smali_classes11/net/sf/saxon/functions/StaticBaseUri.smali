.class public Lnet/sf/saxon/functions/StaticBaseUri;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


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
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/StaticBaseUri;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/AnyURIValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/AnyURIValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    new-instance p1, Lnet/sf/saxon/value/AnyURIValue;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/AnyURIValue;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/PackageData;->isRelocatable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lnet/sf/saxon/value/AnyURIValue;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/AnyURIValue;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0
.end method
