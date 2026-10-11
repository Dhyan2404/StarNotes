.class public Lnet/sf/saxon/functions/SubstringBefore;
.super Lnet/sf/saxon/functions/CollatingFunctionFixed;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/CollatingFunctionFixed;-><init>()V

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
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/SubstringBefore;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/StringValue;
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

    .line 5
    new-instance v0, Lnet/sf/saxon/value/StringValue;

    check-cast p0, Lnet/sf/saxon/lib/SubstringMatcher;

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/lib/SubstringMatcher;->substringBefore(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object v0
.end method

.method public getCompilerName()Ljava/lang/String;
    .locals 0

    const-string p0, "SubstringBeforeCompiler"

    return-object p0
.end method

.method public isSubstringMatchingFunction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
