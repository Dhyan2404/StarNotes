.class public Lnet/sf/saxon/regex/ARegularExpression;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/regex/RegularExpression;


# instance fields
.field public a:Lnet/sf/saxon/str/UnicodeString;

.field public b:Ljava/lang/String;

.field public c:Lnet/sf/saxon/regex/REProgram;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lnet/sf/saxon/Configuration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/str/UnicodeString;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lnet/sf/saxon/Configuration;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/sf/saxon/regex/ARegularExpression;->b:Ljava/lang/String;

    :try_start_0
    new-instance v0, Lnet/sf/saxon/regex/REFlags;

    invoke-direct {v0, p2, p3}, Lnet/sf/saxon/regex/REFlags;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/sf/saxon/regex/RESyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iput-object p1, p0, Lnet/sf/saxon/regex/ARegularExpression;->a:Lnet/sf/saxon/str/UnicodeString;

    new-instance p1, Lnet/sf/saxon/regex/RECompiler;

    invoke-direct {p1}, Lnet/sf/saxon/regex/RECompiler;-><init>()V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/regex/RECompiler;->setFlags(Lnet/sf/saxon/regex/REFlags;)V

    iget-object p2, p0, Lnet/sf/saxon/regex/ARegularExpression;->a:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/regex/RECompiler;->compile(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/regex/REProgram;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/regex/ARegularExpression;->c:Lnet/sf/saxon/regex/REProgram;

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/regex/RECompiler;->getWarnings()Ljava/util/List;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p5, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/regex/ARegularExpression;->c:Lnet/sf/saxon/regex/REProgram;

    sget-object p1, Lnet/sf/saxon/lib/Feature;->REGEX_BACKTRACKING_LIMIT:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p5, p1}, Lnet/sf/saxon/Configuration;->getConfigurationProperty(Lnet/sf/saxon/lib/Feature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/regex/REProgram;->setBacktrackingLimit(I)V
    :try_end_1
    .catch Lnet/sf/saxon/regex/RESyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p2, "FORX0002"

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p2, "FORX0001"

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public static compile(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/regex/ARegularExpression;
    .locals 7

    .line 1
    :try_start_0
    new-instance v6, Lnet/sf/saxon/regex/ARegularExpression;

    invoke-static {p0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    const-string v3, "XP31"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lnet/sf/saxon/regex/ARegularExpression;-><init>(Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lnet/sf/saxon/Configuration;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static compile(Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;)Lnet/sf/saxon/regex/ARegularExpression;
    .locals 7

    .line 3
    :try_start_0
    new-instance v6, Lnet/sf/saxon/regex/ARegularExpression;

    const-string v3, "XP31"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lnet/sf/saxon/regex/ARegularExpression;-><init>(Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lnet/sf/saxon/Configuration;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public analyze(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/regex/RegexIterator;
    .locals 3

    new-instance v0, Lnet/sf/saxon/regex/ARegexIterator;

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    iget-object v1, p0, Lnet/sf/saxon/regex/ARegularExpression;->a:Lnet/sf/saxon/str/UnicodeString;

    new-instance v2, Lnet/sf/saxon/regex/REMatcher;

    iget-object p0, p0, Lnet/sf/saxon/regex/ARegularExpression;->c:Lnet/sf/saxon/regex/REProgram;

    invoke-direct {v2, p0}, Lnet/sf/saxon/regex/REMatcher;-><init>(Lnet/sf/saxon/regex/REProgram;)V

    invoke-direct {v0, p1, v1, v2}, Lnet/sf/saxon/regex/ARegexIterator;-><init>(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/regex/REMatcher;)V

    return-object v0
.end method

.method public containsMatch(Lnet/sf/saxon/str/UnicodeString;)Z
    .locals 1

    new-instance v0, Lnet/sf/saxon/regex/REMatcher;

    iget-object p0, p0, Lnet/sf/saxon/regex/ARegularExpression;->c:Lnet/sf/saxon/regex/REProgram;

    invoke-direct {v0, p0}, Lnet/sf/saxon/regex/REMatcher;-><init>(Lnet/sf/saxon/regex/REProgram;)V

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/regex/REMatcher;->match(Lnet/sf/saxon/str/UnicodeString;I)Z

    move-result p0

    return p0
.end method

.method public getFlags()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/ARegularExpression;->b:Ljava/lang/String;

    return-object p0
.end method

.method public isPlatformNative()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public matches(Lnet/sf/saxon/str/UnicodeString;)Z
    .locals 1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/regex/ARegularExpression;->c:Lnet/sf/saxon/regex/REProgram;

    invoke-virtual {v0}, Lnet/sf/saxon/regex/REProgram;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/regex/REMatcher;

    iget-object p0, p0, Lnet/sf/saxon/regex/ARegularExpression;->c:Lnet/sf/saxon/regex/REProgram;

    invoke-direct {v0, p0}, Lnet/sf/saxon/regex/REMatcher;-><init>(Lnet/sf/saxon/regex/REProgram;)V

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/regex/REMatcher;->isAnchoredMatch(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result p0

    return p0
.end method

.method public replace(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/regex/REMatcher;

    iget-object p0, p0, Lnet/sf/saxon/regex/ARegularExpression;->c:Lnet/sf/saxon/regex/REProgram;

    invoke-direct {v0, p0}, Lnet/sf/saxon/regex/REMatcher;-><init>(Lnet/sf/saxon/regex/REProgram;)V

    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lnet/sf/saxon/regex/REMatcher;->replace(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/regex/RESyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p2, "FORX0004"

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public replaceWith(Lnet/sf/saxon/str/UnicodeString;Ljava/util/function/Function;)Lnet/sf/saxon/str/UnicodeString;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/str/UnicodeString;",
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/str/UnicodeString;",
            "Lnet/sf/saxon/str/UnicodeString;",
            ">;)",
            "Lnet/sf/saxon/str/UnicodeString;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/regex/REMatcher;

    iget-object p0, p0, Lnet/sf/saxon/regex/ARegularExpression;->c:Lnet/sf/saxon/regex/REProgram;

    invoke-direct {v0, p0}, Lnet/sf/saxon/regex/REMatcher;-><init>(Lnet/sf/saxon/regex/REProgram;)V

    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lnet/sf/saxon/regex/REMatcher;->replaceWith(Lnet/sf/saxon/str/UnicodeString;Ljava/util/function/Function;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/regex/RESyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p2, "FORX0004"

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public tokenize(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/tree/iter/AtomicIterator;
    .locals 2

    new-instance v0, Lnet/sf/saxon/regex/ATokenIterator;

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    new-instance v1, Lnet/sf/saxon/regex/REMatcher;

    iget-object p0, p0, Lnet/sf/saxon/regex/ARegularExpression;->c:Lnet/sf/saxon/regex/REProgram;

    invoke-direct {v1, p0}, Lnet/sf/saxon/regex/REMatcher;-><init>(Lnet/sf/saxon/regex/REProgram;)V

    invoke-direct {v0, p1, v1}, Lnet/sf/saxon/regex/ATokenIterator;-><init>(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/regex/REMatcher;)V

    return-object v0
.end method
