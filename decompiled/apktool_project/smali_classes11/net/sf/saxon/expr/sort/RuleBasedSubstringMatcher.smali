.class public Lnet/sf/saxon/expr/sort/RuleBasedSubstringMatcher;
.super Lnet/sf/saxon/expr/sort/SimpleCollation;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/SubstringMatcher;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/text/RuleBasedCollator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/expr/sort/SimpleCollation;-><init>(Ljava/lang/String;Ljava/util/Comparator;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/text/RuleBasedCollator;

    const-string v1, " =\'-\'=\'*\'< a < b < c < d < e < f < g < h < i < j < k < l < m < n < o < p < q < r < s < t < u < v < w < x < y < z"

    invoke-direct {v0, v1}, Ljava/text/RuleBasedCollator;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Ljava/text/CollationElementIterator;->next()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/text/CollationElementIterator;Ljava/text/CollationElementIterator;[IZ)Z
    .locals 5

    :cond_0
    invoke-virtual {p2}, Ljava/text/CollationElementIterator;->next()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    :goto_0
    move v3, v2

    :cond_2
    const/4 v4, 0x0

    if-eq v3, v0, :cond_4

    :cond_3
    invoke-virtual {p1}, Ljava/text/CollationElementIterator;->next()I

    move-result v3

    if-eqz v3, :cond_3

    if-ne v3, v2, :cond_2

    return v4

    :cond_4
    invoke-virtual {p1}, Ljava/text/CollationElementIterator;->getOffset()I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/RuleBasedSubstringMatcher;->b(Ljava/text/CollationElementIterator;Ljava/text/CollationElementIterator;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz p4, :cond_6

    :cond_5
    invoke-virtual {p1}, Ljava/text/CollationElementIterator;->next()I

    move-result v3

    if-eqz v3, :cond_5

    if-ne v3, v2, :cond_8

    return v1

    :cond_6
    if-eqz p3, :cond_7

    sub-int/2addr v0, v1

    aput v0, p3, v4

    invoke-virtual {p1}, Ljava/text/CollationElementIterator;->getOffset()I

    move-result p0

    aput p0, p3, v1

    :cond_7
    return v1

    :cond_8
    invoke-virtual {p1, v0}, Ljava/text/CollationElementIterator;->setOffset(I)V

    invoke-virtual {p1}, Ljava/text/CollationElementIterator;->getOffset()I

    move-result v3

    if-eq v3, v0, :cond_9

    invoke-virtual {p1}, Ljava/text/CollationElementIterator;->next()I

    :cond_9
    invoke-virtual {p2}, Ljava/text/CollationElementIterator;->reset()V

    :cond_a
    invoke-virtual {p2}, Ljava/text/CollationElementIterator;->next()I

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_0
.end method

.method public final b(Ljava/text/CollationElementIterator;Ljava/text/CollationElementIterator;)Z
    .locals 1

    :cond_0
    invoke-virtual {p2}, Ljava/text/CollationElementIterator;->next()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p1}, Ljava/text/CollationElementIterator;->next()I

    move-result v0

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_0

    const/4 p0, 0x0

    return p0
.end method

.method public final c()Ljava/text/RuleBasedCollator;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SimpleCollation;->getComparator()Ljava/util/Comparator;

    move-result-object p0

    check-cast p0, Ljava/text/RuleBasedCollator;

    return-object p0
.end method

.method public contains(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Z
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/RuleBasedSubstringMatcher;->c()Ljava/text/RuleBasedCollator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lnet/sf/saxon/expr/sort/RuleBasedSubstringMatcher;->a(Ljava/text/CollationElementIterator;Ljava/text/CollationElementIterator;[IZ)Z

    move-result p0

    return p0
.end method

.method public endsWith(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Z
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/RuleBasedSubstringMatcher;->c()Ljava/text/RuleBasedCollator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lnet/sf/saxon/expr/sort/RuleBasedSubstringMatcher;->a(Ljava/text/CollationElementIterator;Ljava/text/CollationElementIterator;[IZ)Z

    move-result p0

    return p0
.end method

.method public getCollationKey(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/expr/sort/AtomicMatchKey;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/sort/CollationMatchKey;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/RuleBasedSubstringMatcher;->c()Ljava/text/RuleBasedCollator;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/RuleBasedCollator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/sort/CollationMatchKey;-><init>(Ljava/text/CollationKey;)V

    return-object v0
.end method

.method public startsWith(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/RuleBasedSubstringMatcher;->c()Ljava/text/RuleBasedCollator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/RuleBasedSubstringMatcher;->b(Ljava/text/CollationElementIterator;Ljava/text/CollationElementIterator;)Z

    move-result p0

    return p0
.end method

.method public substringAfter(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/RuleBasedSubstringMatcher;->c()Ljava/text/RuleBasedCollator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1}, Ljava/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;

    move-result-object v1

    invoke-virtual {v0, p2}, Ljava/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v0, v2}, Lnet/sf/saxon/expr/sort/RuleBasedSubstringMatcher;->a(Ljava/text/CollationElementIterator;Ljava/text/CollationElementIterator;[IZ)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    aget p0, v0, p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->substring(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public substringBefore(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/RuleBasedSubstringMatcher;->c()Ljava/text/RuleBasedCollator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1}, Ljava/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;

    move-result-object v1

    invoke-virtual {v0, p2}, Ljava/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v0, v2}, Lnet/sf/saxon/expr/sort/RuleBasedSubstringMatcher;->a(Ljava/text/CollationElementIterator;Ljava/text/CollationElementIterator;[IZ)Z

    move-result p0

    if-eqz p0, :cond_0

    aget p0, v0, v2

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->prefix(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0
.end method
