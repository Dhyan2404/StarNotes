.class public Lnet/sf/saxon/regex/JRegexIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/regex/RegexIterator;
.implements Lnet/sf/saxon/expr/LastPositionFinder;


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/regex/Pattern;

.field public final g:Ljava/util/regex/Matcher;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I

.field public k:Lnet/sf/saxon/z/IntToIntHashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/regex/JRegexIterator;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/regex/JRegexIterator;->k:Lnet/sf/saxon/z/IntToIntHashMap;

    iput-object p1, p0, Lnet/sf/saxon/regex/JRegexIterator;->e:Ljava/lang/String;

    iput-object p2, p0, Lnet/sf/saxon/regex/JRegexIterator;->f:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/regex/JRegexIterator;->g:Ljava/util/regex/Matcher;

    iput-object v0, p0, Lnet/sf/saxon/regex/JRegexIterator;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 10

    new-instance v0, Lnet/sf/saxon/z/IntToIntHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lnet/sf/saxon/z/IntToIntHashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/regex/JRegexIterator;->k:Lnet/sf/saxon/z/IntToIntHashMap;

    iget-object v0, p0, Lnet/sf/saxon/regex/JRegexIterator;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    move v4, v2

    move v5, v3

    move v6, v5

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x27

    if-ne v7, v8, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/16 v8, 0x5b

    if-ne v7, v8, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/16 v8, 0x5d

    if-ne v7, v8, :cond_2

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    const/16 v8, 0x28

    if-ne v7, v8, :cond_3

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3f

    if-eq v8, v9, :cond_3

    if-nez v4, :cond_3

    iget-object v7, p0, Lnet/sf/saxon/regex/JRegexIterator;->k:Lnet/sf/saxon/z/IntToIntHashMap;

    add-int/lit8 v8, v5, -0x1

    aget v8, v1, v8

    invoke-virtual {v7, v6, v8}, Lnet/sf/saxon/z/IntToIntHashMap;->put(II)V

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v8, v6, 0x1

    aput v6, v1, v5

    move v5, v7

    move v6, v8

    goto :goto_1

    :cond_3
    const/16 v8, 0x29

    if-ne v7, v8, :cond_4

    if-nez v4, :cond_4

    add-int/lit8 v5, v5, -0x1

    :cond_4
    :goto_1
    add-int/2addr v2, v3

    goto :goto_0

    :cond_5
    return-void
.end method

.method public getLength()I
    .locals 2

    new-instance v0, Lnet/sf/saxon/regex/JRegexIterator;

    iget-object v1, p0, Lnet/sf/saxon/regex/JRegexIterator;->e:Ljava/lang/String;

    iget-object p0, p0, Lnet/sf/saxon/regex/JRegexIterator;->f:Ljava/util/regex/Pattern;

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/regex/JRegexIterator;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    invoke-static {v0}, Lnet/sf/saxon/functions/Count;->steppingCount(Lnet/sf/saxon/om/SequenceIterator;)I

    move-result p0

    return p0
.end method

.method public getNumberOfGroups()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/JRegexIterator;->g:Ljava/util/regex/Matcher;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result p0

    return p0
.end method

.method public getRegexGroup(I)Lnet/sf/saxon/str/UnicodeString;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/regex/JRegexIterator;->isMatching()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/regex/JRegexIterator;->g:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    if-gt p1, v0, :cond_3

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/regex/JRegexIterator;->g:Ljava/util/regex/Matcher;

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public isMatching()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/regex/JRegexIterator;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    iget p0, p0, Lnet/sf/saxon/regex/JRegexIterator;->j:I

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
    invoke-virtual {p0}, Lnet/sf/saxon/regex/JRegexIterator;->next()Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/value/StringValue;
    .locals 4

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/regex/JRegexIterator;->i:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget v2, p0, Lnet/sf/saxon/regex/JRegexIterator;->j:I

    if-ltz v2, :cond_3

    .line 3
    iget-object v0, p0, Lnet/sf/saxon/regex/JRegexIterator;->g:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lnet/sf/saxon/regex/JRegexIterator;->g:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    .line 5
    iget-object v2, p0, Lnet/sf/saxon/regex/JRegexIterator;->g:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 6
    iget v3, p0, Lnet/sf/saxon/regex/JRegexIterator;->j:I

    if-ne v3, v0, :cond_0

    .line 7
    iput-object v1, p0, Lnet/sf/saxon/regex/JRegexIterator;->i:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lnet/sf/saxon/regex/JRegexIterator;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/regex/JRegexIterator;->h:Ljava/lang/String;

    .line 9
    iput v2, p0, Lnet/sf/saxon/regex/JRegexIterator;->j:I

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/regex/JRegexIterator;->e:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/regex/JRegexIterator;->h:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lnet/sf/saxon/regex/JRegexIterator;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/regex/JRegexIterator;->i:Ljava/lang/String;

    goto :goto_0

    .line 12
    :cond_1
    iget v0, p0, Lnet/sf/saxon/regex/JRegexIterator;->j:I

    iget-object v2, p0, Lnet/sf/saxon/regex/JRegexIterator;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, -0x1

    if-ge v0, v2, :cond_2

    .line 13
    iget-object v0, p0, Lnet/sf/saxon/regex/JRegexIterator;->e:Ljava/lang/String;

    iget v2, p0, Lnet/sf/saxon/regex/JRegexIterator;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/regex/JRegexIterator;->h:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lnet/sf/saxon/regex/JRegexIterator;->i:Ljava/lang/String;

    .line 15
    iput v3, p0, Lnet/sf/saxon/regex/JRegexIterator;->j:I

    goto :goto_0

    .line 16
    :cond_2
    iput-object v1, p0, Lnet/sf/saxon/regex/JRegexIterator;->h:Ljava/lang/String;

    .line 17
    iput v3, p0, Lnet/sf/saxon/regex/JRegexIterator;->j:I

    return-object v1

    .line 18
    :cond_3
    iget v2, p0, Lnet/sf/saxon/regex/JRegexIterator;->j:I

    if-ltz v2, :cond_4

    .line 19
    iput-object v0, p0, Lnet/sf/saxon/regex/JRegexIterator;->h:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lnet/sf/saxon/regex/JRegexIterator;->i:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lnet/sf/saxon/regex/JRegexIterator;->g:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/regex/JRegexIterator;->j:I

    .line 22
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/regex/JRegexIterator;->h:Ljava/lang/String;

    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->makeStringValue(Ljava/lang/CharSequence;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0

    .line 23
    :cond_4
    iput-object v1, p0, Lnet/sf/saxon/regex/JRegexIterator;->h:Ljava/lang/String;

    return-object v1
.end method

.method public processMatchingSubstring(Lnet/sf/saxon/regex/RegexMatchHandler;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/regex/JRegexIterator;->g:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/regex/JRegexIterator;->h:Ljava/lang/String;

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-interface {p1, p0}, Lnet/sf/saxon/regex/RegexMatchHandler;->characters(Lnet/sf/saxon/str/UnicodeString;)V

    goto/16 :goto_6

    :cond_0
    new-instance v1, Lnet/sf/saxon/z/IntHashMap;

    invoke-direct {v1, v0}, Lnet/sf/saxon/z/IntHashMap;-><init>(I)V

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-gt v3, v0, :cond_9

    iget-object v5, p0, Lnet/sf/saxon/regex/JRegexIterator;->g:Ljava/util/regex/Matcher;

    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->start(I)I

    move-result v5

    iget-object v6, p0, Lnet/sf/saxon/regex/JRegexIterator;->g:Ljava/util/regex/Matcher;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    iget-object v6, p0, Lnet/sf/saxon/regex/JRegexIterator;->g:Ljava/util/regex/Matcher;

    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->end(I)I

    move-result v6

    iget-object v7, p0, Lnet/sf/saxon/regex/JRegexIterator;->g:Ljava/util/regex/Matcher;

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    sub-int/2addr v6, v7

    const/4 v7, 0x4

    if-ge v5, v6, :cond_3

    invoke-virtual {v1, v5}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v5, v8}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v6}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v6, v5}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    neg-int v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object v6, p0, Lnet/sf/saxon/regex/JRegexIterator;->k:Lnet/sf/saxon/z/IntToIntHashMap;

    if-nez v6, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/regex/JRegexIterator;->f()V

    :cond_4
    iget-object v6, p0, Lnet/sf/saxon/regex/JRegexIterator;->k:Lnet/sf/saxon/z/IntToIntHashMap;

    invoke-virtual {v6, v3}, Lnet/sf/saxon/z/IntToIntHashMap;->get(I)I

    move-result v6

    invoke-virtual {v1, v5}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v5, v4}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    neg-int v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_7

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    neg-int v9, v6

    if-ne v7, v9, :cond_6

    move v5, v4

    goto :goto_2

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    neg-int v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v0}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    :goto_4
    iget-object v3, p0, Lnet/sf/saxon/regex/JRegexIterator;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    const-wide/16 v5, 0x0

    if-ge v4, v3, :cond_e

    invoke-virtual {v1, v4}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->length()J

    move-result-wide v7

    cmp-long v5, v7, v5

    if-lez v5, :cond_a

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v5

    invoke-interface {p1, v5}, Lnet/sf/saxon/regex/RegexMatchHandler;->characters(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->clear()V

    :cond_a
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_b

    invoke-interface {p1, v5}, Lnet/sf/saxon/regex/RegexMatchHandler;->onGroupStart(I)V

    goto :goto_5

    :cond_b
    neg-int v5, v5

    invoke-interface {p1, v5}, Lnet/sf/saxon/regex/RegexMatchHandler;->onGroupEnd(I)V

    goto :goto_5

    :cond_c
    iget-object v3, p0, Lnet/sf/saxon/regex/JRegexIterator;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v4, v3, :cond_d

    iget-object v3, p0, Lnet/sf/saxon/regex/JRegexIterator;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_e
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->length()J

    move-result-wide v1

    cmp-long p0, v1, v5

    if-lez p0, :cond_f

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
