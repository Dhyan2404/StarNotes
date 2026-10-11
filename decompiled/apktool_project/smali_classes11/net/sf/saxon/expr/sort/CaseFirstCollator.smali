.class public Lnet/sf/saxon/expr/sort/CaseFirstCollator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/StringCollator;


# instance fields
.field public final a:Lnet/sf/saxon/lib/StringCollator;

.field public final b:Z

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/lib/StringCollator;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/CaseFirstCollator;->a:Lnet/sf/saxon/lib/StringCollator;

    iput-boolean p2, p0, Lnet/sf/saxon/expr/sort/CaseFirstCollator;->b:Z

    iput-object p3, p0, Lnet/sf/saxon/expr/sort/CaseFirstCollator;->c:Ljava/lang/String;

    return-void
.end method

.method public static makeCaseOrderedCollator(Ljava/lang/String;Lnet/sf/saxon/lib/StringCollator;Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "lower-first"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "upper-first"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lnet/sf/saxon/expr/sort/CaseFirstCollator;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0, p0}, Lnet/sf/saxon/expr/sort/CaseFirstCollator;-><init>(Lnet/sf/saxon/lib/StringCollator;ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "case-order must be lower-first, upper-first, or #default"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p2, Lnet/sf/saxon/expr/sort/CaseFirstCollator;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0, p0}, Lnet/sf/saxon/expr/sort/CaseFirstCollator;-><init>(Lnet/sf/saxon/lib/StringCollator;ZLjava/lang/String;)V

    :goto_0
    return-object p2
.end method


# virtual methods
.method public compareStrings(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)I
    .locals 13

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p2}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    const-string v0, "L"

    invoke-static {v0}, Lnet/sf/saxon/regex/charclass/Categories;->getCategory(Ljava/lang/String;)Lnet/sf/saxon/regex/charclass/Categories$Category;

    move-result-object v0

    const-string v1, "Lu"

    invoke-static {v1}, Lnet/sf/saxon/regex/charclass/Categories;->getCategory(Ljava/lang/String;)Lnet/sf/saxon/regex/charclass/Categories$Category;

    move-result-object v1

    const-string v2, "Ll"

    invoke-static {v2}, Lnet/sf/saxon/regex/charclass/Categories;->getCategory(Ljava/lang/String;)Lnet/sf/saxon/regex/charclass/Categories$Category;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/expr/sort/CaseFirstCollator;->a:Lnet/sf/saxon/lib/StringCollator;

    invoke-interface {v3, p1, p2}, Lnet/sf/saxon/lib/StringCollator;->compareStrings(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)I

    move-result v3

    if-eqz v3, :cond_0

    return v3

    :cond_0
    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_0
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v7

    cmp-long v7, v3, v7

    const-wide/16 v8, 0x1

    if-gez v7, :cond_1

    invoke-virtual {p2}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v10

    cmp-long v7, v5, v10

    if-gez v7, :cond_1

    invoke-virtual {p1, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v7

    invoke-virtual {p2, v5, v6}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v10

    if-ne v7, v10, :cond_1

    add-long/2addr v3, v8

    add-long/2addr v5, v8

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v10

    cmp-long v7, v3, v10

    if-gez v7, :cond_2

    invoke-virtual {p1, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v7

    invoke-virtual {v0, v7}, Lnet/sf/saxon/regex/charclass/Categories$Category;->test(I)Z

    move-result v7

    if-nez v7, :cond_2

    add-long/2addr v3, v8

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {p2}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v10

    cmp-long v7, v5, v10

    if-gez v7, :cond_3

    invoke-virtual {p2, v5, v6}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v7

    invoke-virtual {v0, v7}, Lnet/sf/saxon/regex/charclass/Categories$Category;->test(I)Z

    move-result v7

    if-nez v7, :cond_3

    add-long/2addr v5, v8

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v10

    cmp-long v7, v3, v10

    const/4 v10, 0x0

    if-ltz v7, :cond_4

    return v10

    :cond_4
    invoke-virtual {p2}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v11

    cmp-long v7, v5, v11

    if-ltz v7, :cond_5

    return v10

    :cond_5
    iget-boolean v7, p0, Lnet/sf/saxon/expr/sort/CaseFirstCollator;->b:Z

    add-long v10, v3, v8

    invoke-virtual {p1, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v3

    if-eqz v7, :cond_6

    invoke-virtual {v1, v3}, Lnet/sf/saxon/regex/charclass/Categories$Category;->test(I)Z

    move-result v3

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v3}, Lnet/sf/saxon/regex/charclass/Categories$Category;->test(I)Z

    move-result v3

    :goto_3
    iget-boolean v4, p0, Lnet/sf/saxon/expr/sort/CaseFirstCollator;->b:Z

    add-long/2addr v8, v5

    if-eqz v4, :cond_7

    invoke-virtual {p2, v5, v6}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v4

    invoke-virtual {v1, v4}, Lnet/sf/saxon/regex/charclass/Categories$Category;->test(I)Z

    move-result v4

    goto :goto_4

    :cond_7
    invoke-virtual {p2, v5, v6}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v4

    invoke-virtual {v2, v4}, Lnet/sf/saxon/regex/charclass/Categories$Category;->test(I)Z

    move-result v4

    :goto_4
    move-wide v5, v8

    if-eqz v3, :cond_8

    if-nez v4, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    if-eqz v4, :cond_9

    if-nez v3, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    move-wide v3, v10

    goto/16 :goto_0
.end method

.method public comparesEqual(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/CaseFirstCollator;->compareStrings(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCollationKey(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/expr/sort/AtomicMatchKey;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/CaseFirstCollator;->a:Lnet/sf/saxon/lib/StringCollator;

    invoke-interface {p0, p1}, Lnet/sf/saxon/lib/StringCollator;->getCollationKey(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object p0

    return-object p0
.end method

.method public getCollationURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/CaseFirstCollator;->c:Ljava/lang/String;

    return-object p0
.end method
