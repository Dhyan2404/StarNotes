.class public Lnet/sf/saxon/expr/sort/HTML5CaseBlindCollator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/StringCollator;
.implements Lnet/sf/saxon/lib/SubstringMatcher;


# static fields
.field public static final a:Lnet/sf/saxon/expr/sort/HTML5CaseBlindCollator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/sort/HTML5CaseBlindCollator;

    invoke-direct {v0}, Lnet/sf/saxon/expr/sort/HTML5CaseBlindCollator;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/sort/HTML5CaseBlindCollator;->a:Lnet/sf/saxon/expr/sort/HTML5CaseBlindCollator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/expr/sort/HTML5CaseBlindCollator;
    .locals 1

    sget-object v0, Lnet/sf/saxon/expr/sort/HTML5CaseBlindCollator;->a:Lnet/sf/saxon/expr/sort/HTML5CaseBlindCollator;

    return-object v0
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)I
    .locals 12

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    invoke-virtual {p2}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_0
    cmp-long p0, v4, v0

    if-nez p0, :cond_1

    cmp-long p0, v6, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0

    :cond_1
    cmp-long p0, v6, v2

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const-wide/16 v8, 0x1

    add-long v10, v4, v8

    invoke-virtual {p1, v4, v5}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result p0

    add-long v4, v6, v8

    invoke-virtual {p2, v6, v7}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v6

    const/16 v7, 0x7a

    const/16 v8, 0x61

    if-lt p0, v8, :cond_3

    if-gt p0, v7, :cond_3

    add-int/lit8 p0, p0, -0x20

    :cond_3
    if-lt v6, v8, :cond_4

    if-gt v6, v7, :cond_4

    add-int/lit8 v6, v6, -0x20

    :cond_4
    sub-int/2addr p0, v6

    if-eqz p0, :cond_5

    return p0

    :cond_5
    move-wide v6, v4

    move-wide v4, v10

    goto :goto_0
.end method

.method public final b(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 3

    new-instance p0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v0

    const/16 v1, 0x61

    if-gt v1, v0, :cond_0

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x41

    sub-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public compareStrings(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/HTML5CaseBlindCollator;->a(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)I

    move-result p0

    return p0
.end method

.method public comparesEqual(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/HTML5CaseBlindCollator;->a(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public contains(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/HTML5CaseBlindCollator;->b(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/sort/HTML5CaseBlindCollator;->b(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->indexOf(Lnet/sf/saxon/str/UnicodeString;J)J

    move-result-wide p0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public endsWith(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/HTML5CaseBlindCollator;->b(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/sort/HTML5CaseBlindCollator;->b(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v1

    invoke-virtual {p2}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide p1

    sub-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lnet/sf/saxon/str/UnicodeString;->hasSubstring(Lnet/sf/saxon/str/UnicodeString;J)Z

    move-result p0

    return p0
.end method

.method public getCollationKey(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/expr/sort/AtomicMatchKey;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/HTML5CaseBlindCollator;->b(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public getCollationURI()Ljava/lang/String;
    .locals 0

    const-string p0, "http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive"

    return-object p0
.end method

.method public startsWith(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/HTML5CaseBlindCollator;->b(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/sort/HTML5CaseBlindCollator;->b(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->hasSubstring(Lnet/sf/saxon/str/UnicodeString;J)Z

    move-result p0

    return p0
.end method

.method public substringAfter(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 5

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/HTML5CaseBlindCollator;->b(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/sort/HTML5CaseBlindCollator;->b(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lnet/sf/saxon/str/UnicodeString;->indexOf(Lnet/sf/saxon/str/UnicodeString;J)J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-gez p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    add-long/2addr v3, v0

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    invoke-virtual {p1, v3, v4, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public substringBefore(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 5

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/HTML5CaseBlindCollator;->b(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/sort/HTML5CaseBlindCollator;->b(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lnet/sf/saxon/str/UnicodeString;->indexOf(Lnet/sf/saxon/str/UnicodeString;J)J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-gez p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->prefix(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method
