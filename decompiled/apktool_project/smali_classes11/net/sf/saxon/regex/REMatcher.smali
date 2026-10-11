.class public Lnet/sf/saxon/regex/REMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/regex/REMatcher$State;
    }
.end annotation


# static fields
.field public static final j:I = 0x10


# instance fields
.field public a:Lnet/sf/saxon/regex/REProgram;

.field public b:Lnet/sf/saxon/str/UnicodeString;

.field public c:Lnet/sf/saxon/regex/History;

.field public d:I

.field public e:Lnet/sf/saxon/regex/REMatcher$State;

.field public f:[I

.field public g:[I

.field public h:Lnet/sf/saxon/regex/Operation;

.field public i:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/regex/REProgram;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/sf/saxon/regex/History;

    invoke-direct {v0}, Lnet/sf/saxon/regex/History;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/regex/REMatcher;->c:Lnet/sf/saxon/regex/History;

    const/16 v0, 0x10

    iput v0, p0, Lnet/sf/saxon/regex/REMatcher;->d:I

    new-instance v0, Lnet/sf/saxon/regex/REMatcher$State;

    invoke-direct {v0}, Lnet/sf/saxon/regex/REMatcher$State;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/regex/REMatcher;->e:Lnet/sf/saxon/regex/REMatcher$State;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/regex/REMatcher;->setProgram(Lnet/sf/saxon/regex/REProgram;)V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 10

    iget-object v0, p0, Lnet/sf/saxon/regex/REMatcher;->a:Lnet/sf/saxon/regex/REProgram;

    iget-object v0, v0, Lnet/sf/saxon/regex/REProgram;->preconditions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/regex/RegexPrecondition;

    iget v3, v1, Lnet/sf/saxon/regex/RegexPrecondition;->fixedPosition:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1

    iget-object v1, v1, Lnet/sf/saxon/regex/RegexPrecondition;->operation:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v1, p0, v3}, Lnet/sf/saxon/regex/Operation;->iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return v5

    :cond_1
    iget v3, v1, Lnet/sf/saxon/regex/RegexPrecondition;->minPosition:I

    if-ge p1, v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, p1

    :goto_0
    int-to-long v6, v3

    iget-object v8, p0, Lnet/sf/saxon/regex/REMatcher;->b:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v8}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    iget v6, v1, Lnet/sf/saxon/regex/RegexPrecondition;->fixedPosition:I

    if-eq v6, v4, :cond_3

    if-ne v6, v3, :cond_4

    :cond_3
    iget-object v6, v1, Lnet/sf/saxon/regex/RegexPrecondition;->operation:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v6, p0, v3}, Lnet/sf/saxon/regex/Operation;->iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;

    move-result-object v6

    invoke-interface {v6}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    move v2, v5

    :goto_1
    if-nez v2, :cond_0

    return v5

    :cond_6
    return v2
.end method

.method public b(II)Z
    .locals 4

    const/4 p0, 0x1

    if-ne p1, p2, :cond_0

    return p0

    :cond_0
    invoke-static {p2}, Lnet/sf/saxon/regex/CaseVariants;->getCaseVariants(I)[I

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p2, v2

    if-ne p1, v3, :cond_1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public c(I)Z
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/regex/REMatcher;->b:Lnet/sf/saxon/str/UnicodeString;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result p0

    const/16 p1, 0xa

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public captureState()Lnet/sf/saxon/regex/REMatcher$State;
    .locals 1

    new-instance v0, Lnet/sf/saxon/regex/REMatcher$State;

    iget-object p0, p0, Lnet/sf/saxon/regex/REMatcher;->e:Lnet/sf/saxon/regex/REMatcher$State;

    invoke-direct {v0, p0}, Lnet/sf/saxon/regex/REMatcher$State;-><init>(Lnet/sf/saxon/regex/REMatcher$State;)V

    return-object v0
.end method

.method public clearCapturedGroupsBeyond(I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/regex/REMatcher;->e:Lnet/sf/saxon/regex/REMatcher$State;

    iget-object v3, v2, Lnet/sf/saxon/regex/REMatcher$State;->b:[I

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget v3, v3, v1

    if-lt v3, p1, :cond_0

    iget-object v2, v2, Lnet/sf/saxon/regex/REMatcher$State;->c:[I

    aput v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/regex/REMatcher;->f:[I

    if-eqz v1, :cond_3

    :goto_1
    iget-object v1, p0, Lnet/sf/saxon/regex/REMatcher;->f:[I

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget v1, v1, v0

    if-lt v1, p1, :cond_2

    iget-object v2, p0, Lnet/sf/saxon/regex/REMatcher;->g:[I

    aput v1, v2, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public getParen(I)Lnet/sf/saxon/str/UnicodeString;
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/regex/REMatcher;->e:Lnet/sf/saxon/regex/REMatcher$State;

    iget v0, v0, Lnet/sf/saxon/regex/REMatcher$State;->a:I

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/regex/REMatcher;->getParenStart(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/regex/REMatcher;->b:Lnet/sf/saxon/str/UnicodeString;

    int-to-long v2, v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/regex/REMatcher;->getParenEnd(I)I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {v1, v2, v3, p0, p1}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getParenCount()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/REMatcher;->e:Lnet/sf/saxon/regex/REMatcher$State;

    iget p0, p0, Lnet/sf/saxon/regex/REMatcher$State;->a:I

    return p0
.end method

.method public final getParenEnd(I)I
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/regex/REMatcher;->e:Lnet/sf/saxon/regex/REMatcher$State;

    iget-object p0, p0, Lnet/sf/saxon/regex/REMatcher$State;->c:[I

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget p0, p0, p1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final getParenStart(I)I
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/regex/REMatcher;->e:Lnet/sf/saxon/regex/REMatcher$State;

    iget-object p0, p0, Lnet/sf/saxon/regex/REMatcher$State;->b:[I

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget p0, p0, p1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getProgram()Lnet/sf/saxon/regex/REProgram;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/REMatcher;->a:Lnet/sf/saxon/regex/REProgram;

    return-object p0
.end method

.method public isAnchoredMatch(Lnet/sf/saxon/str/UnicodeString;)Z
    .locals 1

    iput-object p1, p0, Lnet/sf/saxon/regex/REMatcher;->b:Lnet/sf/saxon/str/UnicodeString;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/regex/REMatcher;->matchAt(IZ)Z

    move-result p0

    return p0
.end method

.method public match(Ljava/lang/String;)Z
    .locals 1

    .line 27
    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/regex/REMatcher;->match(Lnet/sf/saxon/str/UnicodeString;I)Z

    move-result p0

    return p0
.end method

.method public match(Lnet/sf/saxon/str/UnicodeString;I)Z
    .locals 10

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/regex/REMatcher;->b:Lnet/sf/saxon/str/UnicodeString;

    .line 3
    new-instance v0, Lnet/sf/saxon/regex/REMatcher$State;

    invoke-direct {v0}, Lnet/sf/saxon/regex/REMatcher$State;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/regex/REMatcher;->e:Lnet/sf/saxon/regex/REMatcher$State;

    .line 4
    iget-object v0, p0, Lnet/sf/saxon/regex/REMatcher;->a:Lnet/sf/saxon/regex/REProgram;

    iget v1, v0, Lnet/sf/saxon/regex/REProgram;->optimizationFlags:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_5

    .line 5
    iget-object v0, v0, Lnet/sf/saxon/regex/REProgram;->flags:Lnet/sf/saxon/regex/REFlags;

    invoke-virtual {v0}, Lnet/sf/saxon/regex/REFlags;->isMultiLine()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    .line 6
    invoke-virtual {p0, p2}, Lnet/sf/saxon/regex/REMatcher;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, v4}, Lnet/sf/saxon/regex/REMatcher;->matchAt(IZ)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    return v3

    .line 7
    :cond_1
    invoke-virtual {p0, p2, v4}, Lnet/sf/saxon/regex/REMatcher;->matchAt(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    const/16 v0, 0xa

    int-to-long v1, p2

    .line 8
    invoke-virtual {p1, v0, v1, v2}, Lnet/sf/saxon/str/UnicodeString;->indexOf(IJ)J

    move-result-wide v0

    long-to-int p2, v0

    add-int/2addr p2, v3

    int-to-long v0, p2

    .line 9
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-gez v0, :cond_4

    if-gtz p2, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p0, p2, v4}, Lnet/sf/saxon/regex/REMatcher;->matchAt(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_4
    :goto_1
    return v4

    .line 11
    :cond_5
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v0

    sub-int/2addr v0, p2

    .line 12
    iget-object v1, p0, Lnet/sf/saxon/regex/REMatcher;->a:Lnet/sf/saxon/regex/REProgram;

    iget v2, v1, Lnet/sf/saxon/regex/REProgram;->minimumLength:I

    if-ge v0, v2, :cond_6

    return v4

    .line 13
    :cond_6
    iget-object v0, v1, Lnet/sf/saxon/regex/REProgram;->prefix:Lnet/sf/saxon/str/UnicodeString;

    if-nez v0, :cond_d

    .line 14
    iget-object v0, v1, Lnet/sf/saxon/regex/REProgram;->initialCharClass:Lnet/sf/saxon/z/IntPredicateProxy;

    if-eqz v0, :cond_9

    .line 15
    :goto_2
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v1

    if-ge p2, v1, :cond_8

    int-to-long v1, p2

    .line 16
    invoke-virtual {p1, v1, v2}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v1

    invoke-interface {v0, v1}, Lnet/sf/saxon/z/IntPredicateProxy;->test(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    invoke-virtual {p0, p2, v4}, Lnet/sf/saxon/regex/REMatcher;->matchAt(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    return v3

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_8
    return v4

    .line 18
    :cond_9
    invoke-virtual {p0, p2}, Lnet/sf/saxon/regex/REMatcher;->a(I)Z

    move-result v0

    if-nez v0, :cond_a

    return v4

    :cond_a
    :goto_3
    add-int/lit8 v0, p2, -0x1

    .line 19
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 20
    invoke-virtual {p0, p2, v4}, Lnet/sf/saxon/regex/REMatcher;->matchAt(IZ)Z

    move-result v0

    if-eqz v0, :cond_b

    return v3

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_c
    return v4

    .line 21
    :cond_d
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v1

    .line 22
    iget-object v2, p0, Lnet/sf/saxon/regex/REMatcher;->a:Lnet/sf/saxon/regex/REProgram;

    iget-object v2, v2, Lnet/sf/saxon/regex/REProgram;->flags:Lnet/sf/saxon/regex/REFlags;

    invoke-virtual {v2}, Lnet/sf/saxon/regex/REFlags;->isCaseIndependent()Z

    move-result v2

    :goto_4
    add-int v5, p2, v1

    sub-int/2addr v5, v3

    int-to-long v5, v5

    .line 23
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_13

    if-eqz v2, :cond_f

    move v6, p2

    move v5, v4

    :goto_5
    if-ge v5, v1, :cond_11

    int-to-long v7, v6

    .line 24
    invoke-virtual {p1, v7, v8}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v7

    int-to-long v8, v5

    invoke-virtual {v0, v8, v9}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lnet/sf/saxon/regex/REMatcher;->b(II)Z

    move-result v7

    if-nez v7, :cond_e

    goto :goto_7

    :cond_e
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_f
    move v6, p2

    move v5, v4

    :goto_6
    if-ge v5, v1, :cond_11

    int-to-long v7, v6

    .line 25
    invoke-virtual {p1, v7, v8}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v7

    int-to-long v8, v5

    invoke-virtual {v0, v8, v9}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v8

    if-eq v7, v8, :cond_10

    :goto_7
    move v5, v4

    goto :goto_8

    :cond_10
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_11
    move v5, v3

    :goto_8
    if-eqz v5, :cond_12

    .line 26
    invoke-virtual {p0, p2, v4}, Lnet/sf/saxon/regex/REMatcher;->matchAt(IZ)Z

    move-result v5

    if-eqz v5, :cond_12

    return v3

    :cond_12
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_13
    return v4
.end method

.method public matchAt(IZ)Z
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/regex/REMatcher;->e:Lnet/sf/saxon/regex/REMatcher$State;

    const/4 v1, 0x1

    iput v1, v0, Lnet/sf/saxon/regex/REMatcher$State;->a:I

    iput-boolean p2, p0, Lnet/sf/saxon/regex/REMatcher;->i:Z

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/regex/REMatcher;->setParenStart(II)V

    iget-object v0, p0, Lnet/sf/saxon/regex/REMatcher;->a:Lnet/sf/saxon/regex/REProgram;

    iget v0, v0, Lnet/sf/saxon/regex/REProgram;->optimizationFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/sf/saxon/regex/REMatcher;->d:I

    new-array v2, v0, [I

    iput-object v2, p0, Lnet/sf/saxon/regex/REMatcher;->f:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/sf/saxon/regex/REMatcher;->g:[I

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/regex/REMatcher;->h:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/regex/Operation;->iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/regex/REMatcher;->setParenEnd(II)V

    return v1

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/regex/REMatcher;->e:Lnet/sf/saxon/regex/REMatcher$State;

    iput p2, p0, Lnet/sf/saxon/regex/REMatcher$State;->a:I

    return p2
.end method

.method public replace(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v7, v5

    move v9, v7

    move v8, v6

    :goto_0
    if-ge v7, v4, :cond_e

    invoke-virtual {v0, v1, v7}, Lnet/sf/saxon/regex/REMatcher;->match(Lnet/sf/saxon/str/UnicodeString;I)Z

    move-result v10

    if-eqz v10, :cond_e

    int-to-long v10, v7

    invoke-virtual {v0, v5}, Lnet/sf/saxon/regex/REMatcher;->getParenStart(I)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v10

    invoke-virtual {v3, v10}, Lnet/sf/saxon/str/UnicodeString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    if-eqz v8, :cond_0

    iget-object v8, v0, Lnet/sf/saxon/regex/REMatcher;->a:Lnet/sf/saxon/regex/REProgram;

    iget-object v8, v8, Lnet/sf/saxon/regex/REProgram;->flags:Lnet/sf/saxon/regex/REFlags;

    invoke-virtual {v8}, Lnet/sf/saxon/regex/REFlags;->isLiteral()Z

    move-result v9

    move v8, v5

    :cond_0
    if-nez v9, :cond_c

    iget-object v9, v0, Lnet/sf/saxon/regex/REMatcher;->a:Lnet/sf/saxon/regex/REProgram;

    iget v9, v9, Lnet/sf/saxon/regex/REProgram;->maxParens:I

    sub-int/2addr v9, v6

    move v10, v5

    move v11, v6

    :goto_1
    int-to-long v12, v10

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v14

    cmp-long v14, v12, v14

    if-gez v14, :cond_b

    invoke-virtual {v2, v12, v13}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v12

    const/16 v13, 0x24

    const/16 v14, 0x5c

    if-ne v12, v14, :cond_4

    add-int/lit8 v10, v10, 0x1

    int-to-long v11, v10

    invoke-virtual {v2, v11, v12}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v11

    if-eq v11, v14, :cond_2

    if-ne v11, v13, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Lnet/sf/saxon/regex/RESyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid escape \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\' in replacement string"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/regex/RESyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v11, v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v11

    invoke-virtual {v3, v11}, Lnet/sf/saxon/str/UnicodeString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    :cond_3
    :goto_3
    move v11, v5

    goto :goto_7

    :cond_4
    if-ne v12, v13, :cond_a

    add-int/lit8 v10, v10, 0x1

    int-to-long v11, v10

    invoke-virtual {v2, v11, v12}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v11

    const/16 v12, 0x30

    if-lt v11, v12, :cond_9

    const/16 v13, 0x39

    if-gt v11, v13, :cond_9

    add-int/lit8 v11, v11, -0x30

    const/16 v14, 0x9

    if-gt v9, v14, :cond_5

    if-lt v9, v11, :cond_3

    invoke-virtual {v0, v11}, Lnet/sf/saxon/regex/REMatcher;->getParen(I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v3, v11}, Lnet/sf/saxon/str/UnicodeString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    goto :goto_3

    :cond_5
    :goto_4
    add-int/2addr v10, v6

    int-to-long v14, v10

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v16

    cmp-long v16, v14, v16

    if-ltz v16, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v2, v14, v15}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v14

    if-lt v14, v12, :cond_8

    if-gt v14, v13, :cond_8

    mul-int/lit8 v15, v11, 0xa

    add-int/lit8 v14, v14, -0x30

    add-int/2addr v14, v15

    if-le v14, v9, :cond_7

    goto :goto_5

    :cond_7
    move v11, v14

    goto :goto_4

    :cond_8
    :goto_5
    add-int/lit8 v10, v10, -0x1

    :goto_6
    invoke-virtual {v0, v11}, Lnet/sf/saxon/regex/REMatcher;->getParen(I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v3, v11}, Lnet/sf/saxon/str/UnicodeString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    goto :goto_3

    :cond_9
    new-instance v0, Lnet/sf/saxon/regex/RESyntaxException;

    const-string v1, "$ in replacement string must be followed by a digit"

    invoke-direct {v0, v1}, Lnet/sf/saxon/regex/RESyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v13, Lnet/sf/saxon/str/UnicodeChar;

    invoke-direct {v13, v12}, Lnet/sf/saxon/str/UnicodeChar;-><init>(I)V

    invoke-virtual {v3, v13}, Lnet/sf/saxon/str/UnicodeString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    :goto_7
    add-int/2addr v10, v6

    goto/16 :goto_1

    :cond_b
    move v9, v11

    goto :goto_8

    :cond_c
    invoke-virtual {v3, v2}, Lnet/sf/saxon/str/UnicodeString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    :goto_8
    invoke-virtual {v0, v5}, Lnet/sf/saxon/regex/REMatcher;->getParenEnd(I)I

    move-result v10

    if-ne v10, v7, :cond_d

    add-int/lit8 v10, v10, 0x1

    :cond_d
    move v7, v10

    goto/16 :goto_0

    :cond_e
    if-eqz v8, :cond_f

    return-object v1

    :cond_f
    int-to-long v5, v7

    int-to-long v7, v4

    invoke-virtual {v1, v5, v6, v7, v8}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v3, v0}, Lnet/sf/saxon/str/UnicodeString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->economize()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0
.end method

.method public replaceWith(Lnet/sf/saxon/str/UnicodeString;Ljava/util/function/Function;)Lnet/sf/saxon/str/UnicodeString;
    .locals 8
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

    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v0}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/regex/REMatcher;->match(Lnet/sf/saxon/str/UnicodeString;I)Z

    move-result v4

    if-eqz v4, :cond_3

    int-to-long v4, v3

    :goto_1
    invoke-virtual {p0, v2}, Lnet/sf/saxon/regex/REMatcher;->getParenStart(I)I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    invoke-virtual {p1, v4, v5}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v6

    invoke-virtual {v0, v6}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Lnet/sf/saxon/regex/REMatcher;->getParenStart(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v2}, Lnet/sf/saxon/regex/REMatcher;->getParenEnd(I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p1, v4, v5, v6, v7}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v4}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v5

    invoke-virtual {v0, v5}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v2}, Lnet/sf/saxon/regex/REMatcher;->getParenEnd(I)I

    move-result v4

    if-ne v4, v3, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    :goto_3
    if-ge v3, v1, :cond_4

    int-to-long v4, v3

    invoke-virtual {p1, v4, v5}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public resetState(Lnet/sf/saxon/regex/REMatcher$State;)V
    .locals 1

    new-instance v0, Lnet/sf/saxon/regex/REMatcher$State;

    invoke-direct {v0, p1}, Lnet/sf/saxon/regex/REMatcher$State;-><init>(Lnet/sf/saxon/regex/REMatcher$State;)V

    iput-object v0, p0, Lnet/sf/saxon/regex/REMatcher;->e:Lnet/sf/saxon/regex/REMatcher$State;

    return-void
.end method

.method public final setParenEnd(II)V
    .locals 5

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/regex/REMatcher;->e:Lnet/sf/saxon/regex/REMatcher$State;

    iget-object v0, v0, Lnet/sf/saxon/regex/REMatcher$State;->c:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [I

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lnet/sf/saxon/regex/REMatcher;->e:Lnet/sf/saxon/regex/REMatcher$State;

    iget-object v0, v0, Lnet/sf/saxon/regex/REMatcher$State;->c:[I

    array-length v0, v0

    const/4 v3, -0x1

    invoke-static {v2, v0, v1, v3}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Lnet/sf/saxon/regex/REMatcher;->e:Lnet/sf/saxon/regex/REMatcher$State;

    iput-object v2, v0, Lnet/sf/saxon/regex/REMatcher$State;->c:[I

    goto :goto_0

    :cond_0
    aput p2, v0, p1

    return-void
.end method

.method public final setParenStart(II)V
    .locals 5

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/regex/REMatcher;->e:Lnet/sf/saxon/regex/REMatcher$State;

    iget-object v0, v0, Lnet/sf/saxon/regex/REMatcher$State;->b:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [I

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lnet/sf/saxon/regex/REMatcher;->e:Lnet/sf/saxon/regex/REMatcher$State;

    iget-object v0, v0, Lnet/sf/saxon/regex/REMatcher$State;->b:[I

    array-length v0, v0

    const/4 v3, -0x1

    invoke-static {v2, v0, v1, v3}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Lnet/sf/saxon/regex/REMatcher;->e:Lnet/sf/saxon/regex/REMatcher$State;

    iput-object v2, v0, Lnet/sf/saxon/regex/REMatcher$State;->b:[I

    goto :goto_0

    :cond_0
    aput p2, v0, p1

    return-void
.end method

.method public setProgram(Lnet/sf/saxon/regex/REProgram;)V
    .locals 2

    iput-object p1, p0, Lnet/sf/saxon/regex/REMatcher;->a:Lnet/sf/saxon/regex/REProgram;

    if-eqz p1, :cond_0

    iget v0, p1, Lnet/sf/saxon/regex/REProgram;->maxParens:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lnet/sf/saxon/regex/REProgram;->operation:Lnet/sf/saxon/regex/Operation;

    iput-object p1, p0, Lnet/sf/saxon/regex/REMatcher;->h:Lnet/sf/saxon/regex/Operation;

    iput v0, p0, Lnet/sf/saxon/regex/REMatcher;->d:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    iput p1, p0, Lnet/sf/saxon/regex/REMatcher;->d:I

    :goto_0
    return-void
.end method

.method public split(Lnet/sf/saxon/str/UnicodeString;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/str/UnicodeString;",
            ")",
            "Ljava/util/List<",
            "Lnet/sf/saxon/str/UnicodeString;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/regex/REMatcher;->match(Lnet/sf/saxon/str/UnicodeString;I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v2}, Lnet/sf/saxon/regex/REMatcher;->getParenStart(I)I

    move-result v4

    invoke-virtual {p0, v2}, Lnet/sf/saxon/regex/REMatcher;->getParenEnd(I)I

    move-result v5

    if-ne v5, v3, :cond_0

    int-to-long v6, v3

    add-int/lit8 v4, v4, 0x1

    int-to-long v3, v4

    invoke-virtual {p1, v6, v7, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    int-to-long v6, v3

    int-to-long v3, v4

    invoke-virtual {p1, v6, v7, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move v3, v5

    goto :goto_0

    :cond_1
    int-to-long v2, v3

    int-to-long v4, v1

    invoke-virtual {p1, v2, v3, v4, v5}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
