.class public Lnet/sf/saxon/regex/ARegexIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/regex/RegexIterator;
.implements Lnet/sf/saxon/expr/LastPositionFinder;


# instance fields
.field public final e:Lnet/sf/saxon/str/UnicodeString;

.field public final f:Lnet/sf/saxon/str/UnicodeString;

.field public final g:Lnet/sf/saxon/regex/REMatcher;

.field public h:Lnet/sf/saxon/str/UnicodeString;

.field public i:Lnet/sf/saxon/str/UnicodeString;

.field public j:I

.field public k:Lnet/sf/saxon/z/IntToIntHashMap;

.field public l:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/regex/REMatcher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/regex/ARegexIterator;->j:I

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sf/saxon/regex/ARegexIterator;->k:Lnet/sf/saxon/z/IntToIntHashMap;

    iput-boolean v0, p0, Lnet/sf/saxon/regex/ARegexIterator;->l:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lnet/sf/saxon/regex/ARegexIterator;->e:Lnet/sf/saxon/str/UnicodeString;

    iput-object p2, p0, Lnet/sf/saxon/regex/ARegexIterator;->f:Lnet/sf/saxon/str/UnicodeString;

    iput-object p3, p0, Lnet/sf/saxon/regex/ARegexIterator;->g:Lnet/sf/saxon/regex/REMatcher;

    iput-object v1, p0, Lnet/sf/saxon/regex/ARegexIterator;->i:Lnet/sf/saxon/str/UnicodeString;

    return-void
.end method

.method public static computeNestingTable(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/z/IntToIntHashMap;
    .locals 14

    new-instance v0, Lnet/sf/saxon/z/IntToIntHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lnet/sf/saxon/z/IntToIntHashMap;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v1

    new-array v1, v1, [I

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v2

    new-array v2, v2, [Z

    const/4 v3, 0x0

    aput v3, v1, v3

    const/4 v4, 0x1

    move v5, v3

    move v6, v5

    move v7, v6

    move v8, v4

    move v9, v8

    :goto_0
    int-to-long v10, v5

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v12

    cmp-long v12, v10, v12

    if-gez v12, :cond_7

    invoke-virtual {p0, v10, v11}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v10

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    const/16 v11, 0x5b

    if-ne v10, v11, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    const/16 v11, 0x5d

    if-ne v10, v11, :cond_2

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_2
    const/16 v11, 0x28

    if-ne v10, v11, :cond_5

    if-nez v6, :cond_5

    add-int/lit8 v10, v5, 0x1

    int-to-long v10, v10

    invoke-virtual {p0, v10, v11}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v10

    const/16 v11, 0x3f

    if-eq v10, v11, :cond_3

    move v10, v4

    goto :goto_1

    :cond_3
    move v10, v3

    :goto_1
    add-int/lit8 v11, v7, 0x1

    aput-boolean v10, v2, v7

    if-eqz v10, :cond_4

    add-int/lit8 v7, v8, -0x1

    aget v7, v1, v7

    invoke-virtual {v0, v9, v7}, Lnet/sf/saxon/z/IntToIntHashMap;->put(II)V

    add-int/lit8 v7, v8, 0x1

    add-int/lit8 v10, v9, 0x1

    aput v9, v1, v8

    move v8, v7

    move v9, v10

    :cond_4
    move v7, v11

    goto :goto_2

    :cond_5
    const/16 v11, 0x29

    if-ne v10, v11, :cond_6

    if-nez v6, :cond_6

    add-int/lit8 v7, v7, -0x1

    aget-boolean v10, v2, v7

    if-eqz v10, :cond_6

    add-int/lit8 v8, v8, -0x1

    :cond_6
    :goto_2
    add-int/2addr v5, v4

    goto :goto_0

    :cond_7
    return-object v0
.end method


# virtual methods
.method public final f()Lnet/sf/saxon/value/StringValue;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    iget-object p0, p0, Lnet/sf/saxon/regex/ARegexIterator;->h:Lnet/sf/saxon/str/UnicodeString;

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object v0
.end method

.method public getLength()I
    .locals 4

    new-instance v0, Lnet/sf/saxon/regex/ARegexIterator;

    iget-object v1, p0, Lnet/sf/saxon/regex/ARegexIterator;->e:Lnet/sf/saxon/str/UnicodeString;

    iget-object v2, p0, Lnet/sf/saxon/regex/ARegexIterator;->f:Lnet/sf/saxon/str/UnicodeString;

    new-instance v3, Lnet/sf/saxon/regex/REMatcher;

    iget-object p0, p0, Lnet/sf/saxon/regex/ARegexIterator;->g:Lnet/sf/saxon/regex/REMatcher;

    invoke-virtual {p0}, Lnet/sf/saxon/regex/REMatcher;->getProgram()Lnet/sf/saxon/regex/REProgram;

    move-result-object p0

    invoke-direct {v3, p0}, Lnet/sf/saxon/regex/REMatcher;-><init>(Lnet/sf/saxon/regex/REProgram;)V

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/saxon/regex/ARegexIterator;-><init>(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/regex/REMatcher;)V

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0}, Lnet/sf/saxon/regex/ARegexIterator;->next()Lnet/sf/saxon/value/StringValue;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public getNumberOfGroups()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/ARegexIterator;->g:Lnet/sf/saxon/regex/REMatcher;

    invoke-virtual {p0}, Lnet/sf/saxon/regex/REMatcher;->getParenCount()I

    move-result p0

    return p0
.end method

.method public getRegexGroup(I)Lnet/sf/saxon/str/UnicodeString;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/regex/ARegexIterator;->isMatching()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/regex/ARegexIterator;->g:Lnet/sf/saxon/regex/REMatcher;

    invoke-virtual {v0}, Lnet/sf/saxon/regex/REMatcher;->getParenCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/regex/ARegexIterator;->g:Lnet/sf/saxon/regex/REMatcher;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/regex/REMatcher;->getParen(I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public isMatching()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/regex/ARegexIterator;->i:Lnet/sf/saxon/str/UnicodeString;

    if-nez v0, :cond_0

    iget p0, p0, Lnet/sf/saxon/regex/ARegexIterator;->j:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/regex/ARegexIterator;->next()Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/value/StringValue;
    .locals 9

    .line 2
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/regex/ARegexIterator;->i:Lnet/sf/saxon/str/UnicodeString;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_6

    iget v3, p0, Lnet/sf/saxon/regex/ARegexIterator;->j:I

    if-ltz v3, :cond_6

    .line 3
    iget-boolean v0, p0, Lnet/sf/saxon/regex/ARegexIterator;->l:Z

    const/4 v4, -0x1

    if-eqz v0, :cond_1

    add-int/lit8 v3, v3, 0x1

    int-to-long v5, v3

    .line 4
    iget-object v0, p0, Lnet/sf/saxon/regex/ARegexIterator;->e:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-ltz v0, :cond_1

    .line 5
    iget v0, p0, Lnet/sf/saxon/regex/ARegexIterator;->j:I

    int-to-long v5, v0

    iget-object v0, p0, Lnet/sf/saxon/regex/ARegexIterator;->e:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-gez v0, :cond_0

    .line 6
    iget-object v0, p0, Lnet/sf/saxon/regex/ARegexIterator;->e:Lnet/sf/saxon/str/UnicodeString;

    iget v5, p0, Lnet/sf/saxon/regex/ARegexIterator;->j:I

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Lnet/sf/saxon/str/UnicodeString;->substring(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/regex/ARegexIterator;->h:Lnet/sf/saxon/str/UnicodeString;

    .line 7
    iput-object v2, p0, Lnet/sf/saxon/regex/ARegexIterator;->i:Lnet/sf/saxon/str/UnicodeString;

    goto :goto_0

    .line 8
    :cond_0
    iput-object v2, p0, Lnet/sf/saxon/regex/ARegexIterator;->h:Lnet/sf/saxon/str/UnicodeString;

    .line 9
    iput v4, p0, Lnet/sf/saxon/regex/ARegexIterator;->j:I

    return-object v2

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/regex/ARegexIterator;->g:Lnet/sf/saxon/regex/REMatcher;

    iget-object v5, p0, Lnet/sf/saxon/regex/ARegexIterator;->e:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v0, v5, v3}, Lnet/sf/saxon/regex/REMatcher;->match(Lnet/sf/saxon/str/UnicodeString;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Lnet/sf/saxon/regex/ARegexIterator;->g:Lnet/sf/saxon/regex/REMatcher;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/regex/REMatcher;->getParenStart(I)I

    move-result v0

    .line 12
    iget-object v3, p0, Lnet/sf/saxon/regex/ARegexIterator;->g:Lnet/sf/saxon/regex/REMatcher;

    invoke-virtual {v3, v1}, Lnet/sf/saxon/regex/REMatcher;->getParenEnd(I)I

    move-result v3

    if-ne v0, v3, :cond_2

    const/4 v1, 0x1

    .line 13
    :cond_2
    iput-boolean v1, p0, Lnet/sf/saxon/regex/ARegexIterator;->l:Z

    .line 14
    iget v1, p0, Lnet/sf/saxon/regex/ARegexIterator;->j:I

    if-ne v1, v0, :cond_3

    .line 15
    iput-object v2, p0, Lnet/sf/saxon/regex/ARegexIterator;->i:Lnet/sf/saxon/str/UnicodeString;

    .line 16
    iget-object v1, p0, Lnet/sf/saxon/regex/ARegexIterator;->e:Lnet/sf/saxon/str/UnicodeString;

    int-to-long v4, v0

    int-to-long v6, v3

    invoke-virtual {v1, v4, v5, v6, v7}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/regex/ARegexIterator;->h:Lnet/sf/saxon/str/UnicodeString;

    .line 17
    iput v3, p0, Lnet/sf/saxon/regex/ARegexIterator;->j:I

    goto :goto_1

    .line 18
    :cond_3
    iget-object v2, p0, Lnet/sf/saxon/regex/ARegexIterator;->e:Lnet/sf/saxon/str/UnicodeString;

    int-to-long v4, v1

    int-to-long v0, v0

    invoke-virtual {v2, v4, v5, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/regex/ARegexIterator;->h:Lnet/sf/saxon/str/UnicodeString;

    .line 19
    iget-object v2, p0, Lnet/sf/saxon/regex/ARegexIterator;->e:Lnet/sf/saxon/str/UnicodeString;

    int-to-long v3, v3

    invoke-virtual {v2, v0, v1, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/regex/ARegexIterator;->i:Lnet/sf/saxon/str/UnicodeString;

    goto :goto_1

    .line 20
    :cond_4
    iget v0, p0, Lnet/sf/saxon/regex/ARegexIterator;->j:I

    int-to-long v0, v0

    iget-object v3, p0, Lnet/sf/saxon/regex/ARegexIterator;->e:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v3}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-gez v0, :cond_5

    .line 21
    iget-object v0, p0, Lnet/sf/saxon/regex/ARegexIterator;->e:Lnet/sf/saxon/str/UnicodeString;

    iget v1, p0, Lnet/sf/saxon/regex/ARegexIterator;->j:I

    int-to-long v5, v1

    invoke-virtual {v0, v5, v6}, Lnet/sf/saxon/str/UnicodeString;->substring(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/regex/ARegexIterator;->h:Lnet/sf/saxon/str/UnicodeString;

    .line 22
    iput-object v2, p0, Lnet/sf/saxon/regex/ARegexIterator;->i:Lnet/sf/saxon/str/UnicodeString;

    .line 23
    iput v4, p0, Lnet/sf/saxon/regex/ARegexIterator;->j:I

    goto :goto_1

    .line 24
    :cond_5
    iput-object v2, p0, Lnet/sf/saxon/regex/ARegexIterator;->h:Lnet/sf/saxon/str/UnicodeString;

    .line 25
    iput v4, p0, Lnet/sf/saxon/regex/ARegexIterator;->j:I

    return-object v2

    .line 26
    :cond_6
    iget v3, p0, Lnet/sf/saxon/regex/ARegexIterator;->j:I

    if-ltz v3, :cond_7

    .line 27
    iput-object v0, p0, Lnet/sf/saxon/regex/ARegexIterator;->h:Lnet/sf/saxon/str/UnicodeString;

    .line 28
    iput-object v2, p0, Lnet/sf/saxon/regex/ARegexIterator;->i:Lnet/sf/saxon/str/UnicodeString;

    .line 29
    iget-object v0, p0, Lnet/sf/saxon/regex/ARegexIterator;->g:Lnet/sf/saxon/regex/REMatcher;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/regex/REMatcher;->getParenEnd(I)I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/regex/ARegexIterator;->j:I

    .line 30
    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/regex/ARegexIterator;->f()Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0

    .line 31
    :cond_7
    iput-object v2, p0, Lnet/sf/saxon/regex/ARegexIterator;->h:Lnet/sf/saxon/str/UnicodeString;
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 32
    :catch_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException$StackOverflow;

    const-string v0, "SXRE0001"

    sget-object v1, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const-string v2, "Stack overflow (excessive recursion) during regular expression evaluation"

    invoke-direct {p0, v2, v0, v1}, Lnet/sf/saxon/trans/XPathException$StackOverflow;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    .line 33
    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0
.end method

.method public processMatchingSubstring(Lnet/sf/saxon/regex/RegexMatchHandler;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/regex/ARegexIterator;->g:Lnet/sf/saxon/regex/REMatcher;

    invoke-virtual {v0}, Lnet/sf/saxon/regex/REMatcher;->getParenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/regex/ARegexIterator;->h:Lnet/sf/saxon/str/UnicodeString;

    invoke-interface {p1, p0}, Lnet/sf/saxon/regex/RegexMatchHandler;->characters(Lnet/sf/saxon/str/UnicodeString;)V

    goto/16 :goto_6

    :cond_0
    new-instance v2, Lnet/sf/saxon/z/IntHashMap;

    invoke-direct {v2, v0}, Lnet/sf/saxon/z/IntHashMap;-><init>(I)V

    :goto_0
    const/4 v3, 0x0

    if-gt v1, v0, :cond_9

    iget-object v4, p0, Lnet/sf/saxon/regex/ARegexIterator;->g:Lnet/sf/saxon/regex/REMatcher;

    invoke-virtual {v4, v1}, Lnet/sf/saxon/regex/REMatcher;->getParenStart(I)I

    move-result v4

    iget-object v5, p0, Lnet/sf/saxon/regex/ARegexIterator;->g:Lnet/sf/saxon/regex/REMatcher;

    invoke-virtual {v5, v3}, Lnet/sf/saxon/regex/REMatcher;->getParenStart(I)I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    iget-object v5, p0, Lnet/sf/saxon/regex/ARegexIterator;->g:Lnet/sf/saxon/regex/REMatcher;

    invoke-virtual {v5, v1}, Lnet/sf/saxon/regex/REMatcher;->getParenEnd(I)I

    move-result v5

    iget-object v6, p0, Lnet/sf/saxon/regex/ARegexIterator;->g:Lnet/sf/saxon/regex/REMatcher;

    invoke-virtual {v6, v3}, Lnet/sf/saxon/regex/REMatcher;->getParenStart(I)I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x4

    if-ge v4, v5, :cond_3

    invoke-virtual {v2, v4}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v4, v7}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v5}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v5, v4}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    neg-int v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lnet/sf/saxon/regex/ARegexIterator;->k:Lnet/sf/saxon/z/IntToIntHashMap;

    if-nez v5, :cond_4

    iget-object v5, p0, Lnet/sf/saxon/regex/ARegexIterator;->f:Lnet/sf/saxon/str/UnicodeString;

    invoke-static {v5}, Lnet/sf/saxon/regex/ARegexIterator;->computeNestingTable(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/z/IntToIntHashMap;

    move-result-object v5

    iput-object v5, p0, Lnet/sf/saxon/regex/ARegexIterator;->k:Lnet/sf/saxon/z/IntToIntHashMap;

    :cond_4
    iget-object v5, p0, Lnet/sf/saxon/regex/ARegexIterator;->k:Lnet/sf/saxon/z/IntToIntHashMap;

    invoke-virtual {v5, v1}, Lnet/sf/saxon/z/IntToIntHashMap;->get(I)I

    move-result v5

    invoke-virtual {v2, v4}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v4, v3}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    neg-int v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    neg-int v8, v5

    if-ne v6, v8, :cond_6

    move v4, v3

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    neg-int v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v0}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    :goto_4
    int-to-long v4, v3

    iget-object v1, p0, Lnet/sf/saxon/regex/ARegexIterator;->h:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    cmp-long v1, v4, v6

    if-gez v1, :cond_e

    invoke-virtual {v2, v3}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v6

    invoke-interface {p1, v6}, Lnet/sf/saxon/regex/RegexMatchHandler;->characters(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->clear()V

    :cond_a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_b

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p1, v6}, Lnet/sf/saxon/regex/RegexMatchHandler;->onGroupStart(I)V

    goto :goto_5

    :cond_b
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    neg-int v6, v6

    invoke-interface {p1, v6}, Lnet/sf/saxon/regex/RegexMatchHandler;->onGroupEnd(I)V

    goto :goto_5

    :cond_c
    iget-object v1, p0, Lnet/sf/saxon/regex/ARegexIterator;->h:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_d

    iget-object v1, p0, Lnet/sf/saxon/regex/ARegexIterator;->h:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v1, v4, v5}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_e
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_f

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-interface {p1, p0}, Lnet/sf/saxon/regex/RegexMatchHandler;->characters(Lnet/sf/saxon/str/UnicodeString;)V

    :cond_f
    :goto_6
    return-void
.end method

.method public supportsGetLength()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
