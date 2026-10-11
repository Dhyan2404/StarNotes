.class public Lnet/sf/saxon/functions/registry/XPath40FunctionSet$HighestOrLowest;
.super Lnet/sf/saxon/functions/registry/SefFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/registry/XPath40FunctionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HighestOrLowest"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/registry/SefFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v1, p2, v0

    array-length v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-lt v2, v4, :cond_0

    aget-object v2, p2, v3

    invoke-interface {v2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/value/StringValue;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDefaultCollationName()Ljava/lang/String;

    move-result-object v2

    :cond_1
    array-length v5, p2

    const/4 v6, 0x3

    if-lt v5, v6, :cond_2

    aget-object p2, p2, v4

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/Function;

    goto :goto_1

    :cond_2
    const-string p2, "data"

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v5

    invoke-static {p2, v5, v3}, Lnet/sf/saxon/functions/SystemFunction;->makeFunction(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p2

    :goto_1
    new-instance v5, Lnet/sf/saxon/trans/SymbolicName$F;

    new-instance v7, Lnet/sf/saxon/om/StructuredQName;

    const-string v8, "http://ns.saxonica.com/xpath-functions"

    const-string v9, "mhk_highest"

    const-string v10, ""

    invoke-direct {v7, v10, v8, v9}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x4

    invoke-direct {v5, v7, v8}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    new-array v7, v8, [Lnet/sf/saxon/om/Sequence;

    invoke-interface {v1}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    aput-object v1, v7, v0

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v0, v2}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    aput-object v0, v7, v3

    aput-object p2, v7, v4

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object p2

    iget-object p2, p2, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->name:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p2}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    const-string v0, "highest"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p2

    aput-object p2, v7, v6

    invoke-virtual {p0, p1, v5, v7}, Lnet/sf/saxon/functions/registry/SefFunction;->callFunction(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/trans/SymbolicName$F;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method
