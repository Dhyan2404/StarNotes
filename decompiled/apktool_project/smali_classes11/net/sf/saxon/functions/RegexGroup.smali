.class public Lnet/sf/saxon/functions/RegexGroup;
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
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/RegexGroup;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/StringValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getCurrentRegexIterator()Lnet/sf/saxon/regex/RegexIterator;

    move-result-object p0

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4
    aget-object p1, p2, p1

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/NumericValue;

    .line 5
    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide p1

    long-to-int p1, p1

    invoke-interface {p0, p1}, Lnet/sf/saxon/regex/RegexIterator;->getRegexGroup(I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->makeUStringValue(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method
