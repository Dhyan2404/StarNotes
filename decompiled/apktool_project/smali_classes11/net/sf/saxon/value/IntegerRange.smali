.class public Lnet/sf/saxon/value/IntegerRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/AtomicSequence;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/value/IntegerRange$a;
    }
.end annotation


# instance fields
.field public end:J

.field public start:J

.field public step:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_5

    cmp-long v1, p5, p1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "end before start in IntegerRange"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    sub-long/2addr p5, p1

    div-long v0, p5, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    iput-wide p1, p0, Lnet/sf/saxon/value/IntegerRange;->start:J

    iput-wide p3, p0, Lnet/sf/saxon/value/IntegerRange;->step:J

    mul-long/2addr p5, p3

    div-long/2addr p5, p3

    add-long/2addr p1, p5

    iput-wide p1, p0, Lnet/sf/saxon/value/IntegerRange;->end:J

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Maximum length of sequence in Saxon is 2147483647"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "step = 0 in IntegerRange"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public effectiveBooleanValue()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/value/IntegerRange;->iterate()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->effectiveBooleanValue(Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result p0

    return p0
.end method

.method public getCanonicalLexicalRepresentation()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/value/IntegerRange;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public getEnd()J
    .locals 2

    iget-wide v0, p0, Lnet/sf/saxon/value/IntegerRange;->end:J

    return-wide v0
.end method

.method public getLength()I
    .locals 4

    iget-wide v0, p0, Lnet/sf/saxon/value/IntegerRange;->end:J

    iget-wide v2, p0, Lnet/sf/saxon/value/IntegerRange;->start:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lnet/sf/saxon/value/IntegerRange;->step:J

    div-long/2addr v0, v2

    long-to-int p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getStart()J
    .locals 2

    iget-wide v0, p0, Lnet/sf/saxon/value/IntegerRange;->start:J

    return-wide v0
.end method

.method public getStep()J
    .locals 2

    iget-wide v0, p0, Lnet/sf/saxon/value/IntegerRange;->step:J

    return-wide v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->stringify(Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->getStringValue(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic head()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/value/IntegerRange;->head()Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic head()Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/value/IntegerRange;->head()Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public head()Lnet/sf/saxon/value/IntegerValue;
    .locals 3

    .line 3
    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    iget-wide v1, p0, Lnet/sf/saxon/value/IntegerRange;->start:J

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    return-object v0
.end method

.method public bridge synthetic itemAt(I)Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/IntegerRange;->itemAt(I)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic itemAt(I)Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/IntegerRange;->itemAt(I)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public itemAt(I)Lnet/sf/saxon/value/IntegerValue;
    .locals 4

    if-ltz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/value/IntegerRange;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v0, p0, Lnet/sf/saxon/value/IntegerRange;->start:J

    int-to-long v2, p1

    iget-wide p0, p0, Lnet/sf/saxon/value/IntegerRange;->step:J

    mul-long/2addr v2, p0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic iterate()Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/value/IntegerRange;->iterate()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    return-object p0
.end method

.method public iterate()Lnet/sf/saxon/tree/iter/AtomicIterator;
    .locals 15

    .line 2
    iget-wide v3, p0, Lnet/sf/saxon/value/IntegerRange;->step:J

    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-lez v0, :cond_0

    .line 3
    new-instance v7, Lnet/sf/saxon/expr/AscendingRangeIterator;

    iget-wide v1, p0, Lnet/sf/saxon/value/IntegerRange;->start:J

    iget-wide v5, p0, Lnet/sf/saxon/value/IntegerRange;->end:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/sf/saxon/expr/AscendingRangeIterator;-><init>(JJJ)V

    return-object v7

    .line 4
    :cond_0
    new-instance v0, Lnet/sf/saxon/expr/DescendingRangeIterator;

    iget-wide v9, p0, Lnet/sf/saxon/value/IntegerRange;->start:J

    iget-wide v1, p0, Lnet/sf/saxon/value/IntegerRange;->step:J

    neg-long v11, v1

    iget-wide v13, p0, Lnet/sf/saxon/value/IntegerRange;->end:J

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lnet/sf/saxon/expr/DescendingRangeIterator;-><init>(JJJ)V

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/value/AtomicValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/value/IntegerRange$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/IntegerRange$a;-><init>(Lnet/sf/saxon/value/IntegerRange;)V

    return-object v0
.end method

.method public reduce()Lnet/sf/saxon/om/GroundedValue;
    .locals 4

    iget-wide v0, p0, Lnet/sf/saxon/value/IntegerRange;->start:J

    iget-wide v2, p0, Lnet/sf/saxon/value/IntegerRange;->end:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/value/IntegerRange;->itemAt(I)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public subsequence(II)Lnet/sf/saxon/om/GroundedValue;
    .locals 11

    if-gtz p2, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_0
    iget-wide v0, p0, Lnet/sf/saxon/value/IntegerRange;->start:J

    const/4 v2, 0x0

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v2, p1

    add-long v5, v0, v2

    int-to-long p1, p2

    iget-wide v7, p0, Lnet/sf/saxon/value/IntegerRange;->step:J

    mul-long/2addr p1, v7

    add-long/2addr p1, v5

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lnet/sf/saxon/value/IntegerRange;->end:J

    cmp-long p0, p1, v0

    if-lez p0, :cond_1

    move-wide v9, v0

    goto :goto_0

    :cond_1
    move-wide v9, p1

    :goto_0
    cmp-long p0, v9, v5

    if-ltz p0, :cond_2

    new-instance p0, Lnet/sf/saxon/value/IntegerRange;

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lnet/sf/saxon/value/IntegerRange;-><init>(JJJ)V

    return-object p0

    :cond_2
    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnet/sf/saxon/value/IntegerRange;->start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnet/sf/saxon/value/IntegerRange;->step:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lnet/sf/saxon/value/IntegerRange;->step:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnet/sf/saxon/value/IntegerRange;->end:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
