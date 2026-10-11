.class public Lnet/sf/saxon/expr/sort/CodepointCollator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/StringCollator;
.implements Lnet/sf/saxon/lib/SubstringMatcher;


# static fields
.field public static final a:Lnet/sf/saxon/expr/sort/CodepointCollator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/sort/CodepointCollator;

    invoke-direct {v0}, Lnet/sf/saxon/expr/sort/CodepointCollator;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/sort/CodepointCollator;->a:Lnet/sf/saxon/expr/sort/CodepointCollator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/expr/sort/CodepointCollator;
    .locals 1

    sget-object v0, Lnet/sf/saxon/expr/sort/CodepointCollator;->a:Lnet/sf/saxon/expr/sort/CodepointCollator;

    return-object v0
.end method


# virtual methods
.method public compareStrings(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)I
    .locals 0

    invoke-virtual {p1, p2}, Lnet/sf/saxon/str/UnicodeString;->compareTo(Lnet/sf/saxon/str/UnicodeString;)I

    move-result p0

    return p0
.end method

.method public comparesEqual(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Z
    .locals 0

    invoke-virtual {p1, p2}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public contains(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Z
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->indexOf(Lnet/sf/saxon/str/UnicodeString;J)J

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
    .locals 4

    invoke-virtual {p2}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    invoke-virtual {p2}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, p2, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->hasSubstring(Lnet/sf/saxon/str/UnicodeString;J)Z

    move-result p0

    return p0
.end method

.method public getCollationKey(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/expr/sort/AtomicMatchKey;
    .locals 0

    return-object p1
.end method

.method public getCollationURI()Ljava/lang/String;
    .locals 0

    const-string p0, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    return-object p0
.end method

.method public startsWith(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Z
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->hasSubstring(Lnet/sf/saxon/str/UnicodeString;J)Z

    move-result p0

    return p0
.end method

.method public substringAfter(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 4

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->indexOf(Lnet/sf/saxon/str/UnicodeString;J)J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-gez p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    add-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Lnet/sf/saxon/str/UnicodeString;->substring(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public substringBefore(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 4

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->indexOf(Lnet/sf/saxon/str/UnicodeString;J)J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-gez p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1, v2, v3}, Lnet/sf/saxon/str/UnicodeString;->prefix(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method
