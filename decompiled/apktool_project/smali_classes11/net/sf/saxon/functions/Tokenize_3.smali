.class public Lnet/sf/saxon/functions/Tokenize_3;
.super Lnet/sf/saxon/functions/RegexFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/RegexFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public allowRegexMatchingEmptyString()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p1, 0x0

    aget-object p1, p2, p1

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/AtomicValue;

    if-nez p1, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p2}, Lnet/sf/saxon/functions/RegexFunction;->getRegularExpression([Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/regex/RegularExpression;

    move-result-object p0

    invoke-interface {p0, p1}, Lnet/sf/saxon/regex/RegularExpression;->tokenize(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toLazySequence(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method
