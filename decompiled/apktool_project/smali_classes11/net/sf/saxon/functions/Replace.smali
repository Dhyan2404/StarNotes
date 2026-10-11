.class public Lnet/sf/saxon/functions/Replace;
.super Lnet/sf/saxon/functions/RegexFunction;
.source "SourceFile"


# instance fields
.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/functions/RegexFunction;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/functions/Replace;->i:Z

    return-void
.end method

.method public static checkReplacement(Lnet/sf/saxon/str/UnicodeString;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :goto_0
    int-to-long v1, v0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_5

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v1

    const/16 v2, 0x24

    if-ne v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    int-to-long v1, v0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-le v1, v2, :cond_4

    :cond_0
    const-string p0, "Invalid replacement string in replace(): $ sign must be followed by digit 0-9"

    return-object p0

    :cond_1
    const-string p0, "Invalid replacement string in replace(): $ sign at end of string"

    return-object p0

    :cond_2
    const/16 v3, 0x5c

    if-ne v1, v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    int-to-long v4, v0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    invoke-virtual {p0, v4, v5}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v1

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_4

    const-string p0, "Invalid replacement string in replace(): \\ character must be followed by \\ or $"

    return-object p0

    :cond_3
    const-string p0, "Invalid replacement string in replace(): \\ character at end of string"

    return-object p0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public allowRegexMatchingEmptyString()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/Replace;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/StringValue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    aget-object v0, p2, v0

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/StringValue;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/value/StringValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    :goto_0
    const/4 v1, 0x2

    .line 4
    aget-object v1, p2, v1

    invoke-interface {v1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    .line 5
    invoke-virtual {p0, p2}, Lnet/sf/saxon/functions/RegexFunction;->getRegularExpression([Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/regex/RegularExpression;

    move-result-object p2

    .line 6
    invoke-interface {p2}, Lnet/sf/saxon/regex/RegularExpression;->getFlags()Ljava/lang/String;

    move-result-object v2

    const-string v3, "q"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p2}, Lnet/sf/saxon/regex/RegularExpression;->isPlatformNative()Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    iget-boolean p0, p0, Lnet/sf/saxon/functions/Replace;->i:Z

    if-nez p0, :cond_2

    .line 8
    invoke-static {v1}, Lnet/sf/saxon/functions/Replace;->checkReplacement(Lnet/sf/saxon/str/UnicodeString;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "FORX0004"

    invoke-direct {p2, p0, v0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    throw p2

    .line 10
    :cond_2
    :goto_1
    new-instance p0, Lnet/sf/saxon/value/StringValue;

    invoke-interface {p2, v0, v1}, Lnet/sf/saxon/regex/RegularExpression;->replace(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object p0
.end method

.method public varargs makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 4

    array-length v0, p1

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    aget-object v0, p1, v0

    instance-of v1, v0, Lnet/sf/saxon/expr/StringLiteral;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :cond_1
    :goto_0
    const/4 v0, 0x2

    aget-object v0, p1, v0

    instance-of v1, v0, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    check-cast v0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/StringLiteral;->getString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/functions/Replace;->checkReplacement(Lnet/sf/saxon/str/UnicodeString;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lnet/sf/saxon/functions/Replace;->i:Z

    :cond_2
    invoke-super {p0, p1}, Lnet/sf/saxon/functions/RegexFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method
