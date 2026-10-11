.class public Lnet/sf/saxon/regex/OpBackReference;
.super Lnet/sf/saxon/regex/Operation;
.source "SourceFile"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/regex/Operation;-><init>()V

    iput p1, p0, Lnet/sf/saxon/regex/OpBackReference;->a:I

    return-void
.end method


# virtual methods
.method public display()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/sf/saxon/regex/OpBackReference;->a:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;
    .locals 7

    iget-object v0, p1, Lnet/sf/saxon/regex/REMatcher;->f:[I

    iget p0, p0, Lnet/sf/saxon/regex/OpBackReference;->a:I

    aget v0, v0, p0

    iget-object v1, p1, Lnet/sf/saxon/regex/REMatcher;->g:[I

    aget p0, v1, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    if-ne p0, v1, :cond_0

    goto :goto_2

    :cond_0
    if-ne v0, p0, :cond_1

    new-instance p0, Lnet/sf/saxon/z/IntSingletonIterator;

    invoke-direct {p0, p2}, Lnet/sf/saxon/z/IntSingletonIterator;-><init>(I)V

    return-object p0

    :cond_1
    sub-int/2addr p0, v0

    iget-object v1, p1, Lnet/sf/saxon/regex/REMatcher;->b:Lnet/sf/saxon/str/UnicodeString;

    add-int v2, p2, p0

    add-int/lit8 v3, v2, -0x1

    int-to-long v3, v3

    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_2

    invoke-static {}, Lnet/sf/saxon/expr/sort/EmptyIntIterator;->getInstance()Lnet/sf/saxon/expr/sort/EmptyIntIterator;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v3, p1, Lnet/sf/saxon/regex/REMatcher;->a:Lnet/sf/saxon/regex/REProgram;

    iget-object v3, v3, Lnet/sf/saxon/regex/REProgram;->flags:Lnet/sf/saxon/regex/REFlags;

    invoke-virtual {v3}, Lnet/sf/saxon/regex/REFlags;->isCaseIndependent()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    :goto_0
    if-ge v4, p0, :cond_6

    add-int v3, p2, v4

    int-to-long v5, v3

    invoke-virtual {v1, v5, v6}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v3

    add-int v5, v0, v4

    int-to-long v5, v5

    invoke-virtual {v1, v5, v6}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v5

    invoke-virtual {p1, v3, v5}, Lnet/sf/saxon/regex/REMatcher;->b(II)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lnet/sf/saxon/expr/sort/EmptyIntIterator;->getInstance()Lnet/sf/saxon/expr/sort/EmptyIntIterator;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-ge v4, p0, :cond_6

    add-int p1, p2, v4

    int-to-long v5, p1

    invoke-virtual {v1, v5, v6}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result p1

    add-int v3, v0, v4

    int-to-long v5, v3

    invoke-virtual {v1, v5, v6}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v3

    if-eq p1, v3, :cond_5

    invoke-static {}, Lnet/sf/saxon/expr/sort/EmptyIntIterator;->getInstance()Lnet/sf/saxon/expr/sort/EmptyIntIterator;

    move-result-object p0

    return-object p0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    new-instance p0, Lnet/sf/saxon/z/IntSingletonIterator;

    invoke-direct {p0, v2}, Lnet/sf/saxon/z/IntSingletonIterator;-><init>(I)V

    return-object p0

    :cond_7
    :goto_2
    invoke-static {}, Lnet/sf/saxon/expr/sort/EmptyIntIterator;->getInstance()Lnet/sf/saxon/expr/sort/EmptyIntIterator;

    move-result-object p0

    return-object p0
.end method

.method public matchesEmptyString()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
