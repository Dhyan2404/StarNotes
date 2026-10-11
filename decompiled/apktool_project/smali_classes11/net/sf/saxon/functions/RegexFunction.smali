.class public abstract Lnet/sf/saxon/functions/RegexFunction;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/functions/StatefulSystemFunction;


# instance fields
.field public h:Lnet/sf/saxon/regex/RegularExpression;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([Lnet/sf/saxon/expr/Expression;)V
    .locals 6

    const/4 v0, 0x1

    aget-object v1, p1, v0

    instance-of v1, v1, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v1, :cond_1

    array-length v1, p1

    sub-int/2addr v1, v0

    aget-object v1, p1, v1

    instance-of v1, v1, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    aget-object v2, p1, v0

    check-cast v2, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/StringLiteral;->getGroundedValue()Lnet/sf/saxon/value/StringValue;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/value/StringValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    array-length v3, p1

    sub-int/2addr v3, v0

    aget-object p1, p1, v3

    check-cast p1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object p1

    const-string v3, "XP30"

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getXsdVersion()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/XSD11"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v2, p1, v3, v4}, Lnet/sf/saxon/Configuration;->compileRegularExpression(Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lnet/sf/saxon/regex/RegularExpression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/functions/RegexFunction;->h:Lnet/sf/saxon/regex/RegularExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/RegexFunction;->allowRegexMatchingEmptyString()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lnet/sf/saxon/functions/RegexFunction;->h:Lnet/sf/saxon/regex/RegularExpression;

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/sf/saxon/regex/RegularExpression;->matches(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sf/saxon/functions/RegexFunction;->h:Lnet/sf/saxon/regex/RegularExpression;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public abstract allowRegexMatchingEmptyString()Z
.end method

.method public copy()Lnet/sf/saxon/functions/RegexFunction;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result v2

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/functions/SystemFunction;->makeFunction(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/functions/RegexFunction;

    .line 3
    iget-object p0, p0, Lnet/sf/saxon/functions/RegexFunction;->h:Lnet/sf/saxon/regex/RegularExpression;

    iput-object p0, v0, Lnet/sf/saxon/functions/RegexFunction;->h:Lnet/sf/saxon/regex/RegularExpression;

    return-object v0
.end method

.method public bridge synthetic copy()Lnet/sf/saxon/functions/SystemFunction;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/functions/RegexFunction;->copy()Lnet/sf/saxon/functions/RegexFunction;

    move-result-object p0

    return-object p0
.end method

.method public getRegularExpression([Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/regex/RegularExpression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/functions/RegexFunction;->h:Lnet/sf/saxon/regex/RegularExpression;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v2, p1, v1

    invoke-interface {v2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    array-length v3, p1

    sub-int/2addr v3, v1

    aget-object p1, p1, v3

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getXsdVersion()I

    move-result v3

    const/16 v4, 0xb

    const-string v5, "XP30"

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/XSD11"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v2, p1, v5, v3}, Lnet/sf/saxon/Configuration;->compileRegularExpression(Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lnet/sf/saxon/regex/RegularExpression;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/RegexFunction;->allowRegexMatchingEmptyString()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    invoke-interface {p1, p0}, Lnet/sf/saxon/regex/RegularExpression;->matches(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "The regular expression must not be one that matches a zero-length string"

    const-string v0, "FORX0003"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-object p1
.end method

.method public getStaticRegex()Lnet/sf/saxon/regex/RegularExpression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/RegexFunction;->h:Lnet/sf/saxon/regex/RegularExpression;

    return-object p0
.end method

.method public varargs makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/RegexFunction;->a([Lnet/sf/saxon/expr/Expression;)V

    invoke-super {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public varargs makeOptimizedFunctionCall(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lnet/sf/saxon/functions/RegexFunction;->a([Lnet/sf/saxon/expr/Expression;)V

    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/functions/SystemFunction;->makeOptimizedFunctionCall(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method
