.class public Lnet/sf/saxon/functions/StartsWith;
.super Lnet/sf/saxon/functions/CollatingFunctionFixed;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/CollatingFunctionFixed;-><init>()V

    return-void
.end method

.method public static startsWith(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/SubstringMatcher;)Z
    .locals 1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lnet/sf/saxon/lib/StringCollator;->comparesEqual(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2, p0, p1}, Lnet/sf/saxon/lib/SubstringMatcher;->startsWith(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
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
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/StartsWith;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/BooleanValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 2
    aget-object p1, p2, p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->getUniStringArg(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    const/4 v0, 0x1

    .line 3
    aget-object p2, p2, v0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/functions/SystemFunction;->getUniStringArg(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/functions/CollatingFunctionFixed;->getStringCollator()Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/lib/SubstringMatcher;

    invoke-static {p1, p2, p0}, Lnet/sf/saxon/functions/StartsWith;->startsWith(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/SubstringMatcher;)Z

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method

.method public getCompilerName()Ljava/lang/String;
    .locals 0

    const-string p0, "StartsWithCompiler"

    return-object p0
.end method

.method public isSubstringMatchingFunction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public varargs makeOptimizedFunctionCall(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/functions/CollatingFunctionFixed;->getStringCollator()Lnet/sf/saxon/lib/StringCollator;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/expr/sort/CodepointCollator;->getInstance()Lnet/sf/saxon/expr/sort/CodepointCollator;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance p1, Lnet/sf/saxon/functions/StartsWith$a;

    invoke-direct {p1, p0, p0, p3}, Lnet/sf/saxon/functions/StartsWith$a;-><init>(Lnet/sf/saxon/functions/StartsWith;Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/functions/SystemFunction;->makeOptimizedFunctionCall(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method
