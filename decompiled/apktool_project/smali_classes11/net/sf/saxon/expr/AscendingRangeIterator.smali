.class public Lnet/sf/saxon/expr/AscendingRangeIterator;
.super Lnet/sf/saxon/tree/iter/RangeIterator;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AtomicIterator;
.implements Lnet/sf/saxon/tree/iter/ReversibleIterator;
.implements Lnet/sf/saxon/expr/LastPositionFinder;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;
.implements Lnet/sf/saxon/tree/iter/GroundedIterator;


# instance fields
.field public e:J

.field public f:J

.field public g:J

.field public h:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/tree/iter/RangeIterator;-><init>()V

    iput-wide p1, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->e:J

    iput-wide p3, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->f:J

    sub-long v0, p1, p3

    iput-wide v0, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->g:J

    iput-wide p5, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->h:J

    const-wide/16 v0, 0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    sub-long/2addr p5, p1

    div-long/2addr p5, p3

    mul-long/2addr p5, p3

    add-long/2addr p1, p5

    iput-wide p1, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->h:J

    :cond_0
    return-void
.end method

.method public static makeLongRangeIterator(JJJ)Lnet/sf/saxon/tree/iter/AtomicIterator;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result v2

    if-eqz v2, :cond_4

    if-lez v2, :cond_0

    cmp-long v3, p0, p4

    if-gtz v3, :cond_4

    :cond_0
    if-gez v2, :cond_1

    cmp-long v2, p0, p4

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    sub-long v2, p4, p0

    div-long/2addr v2, p2

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    new-instance v0, Lnet/sf/saxon/expr/AscendingRangeIterator;

    move-object v1, v0

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lnet/sf/saxon/expr/AscendingRangeIterator;-><init>(JJJ)V

    return-object v0

    :cond_2
    new-instance v0, Lnet/sf/saxon/expr/DescendingRangeIterator;

    neg-long v4, p2

    move-object v1, v0

    move-wide v2, p0

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lnet/sf/saxon/expr/DescendingRangeIterator;-><init>(JJJ)V

    return-object v0

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Saxon limit on sequence length exceeded (2^31)"

    const-string p2, "XPDY0130"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofAtomic()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    return-object p0
.end method

.method public static makeRangeIterator(Lnet/sf/saxon/value/IntegerValue;Lnet/sf/saxon/value/IntegerValue;Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/tree/iter/AtomicIterator;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v0, Lnet/sf/saxon/value/Int64Value;->ZERO:Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/NumericValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p2}, Lnet/sf/saxon/value/NumericValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result v1

    if-lez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    instance-of v1, p0, Lnet/sf/saxon/value/BigIntegerValue;

    if-nez v1, :cond_5

    instance-of v1, p1, Lnet/sf/saxon/value/BigIntegerValue;

    if-nez v1, :cond_5

    instance-of v1, p2, Lnet/sf/saxon/value/BigIntegerValue;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v7

    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v5

    invoke-virtual {p2}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide p0

    sub-long v0, p0, v7

    div-long/2addr v0, v5

    const-wide/32 v2, 0x7fffffff

    cmp-long p2, v0, v2

    if-gtz p2, :cond_4

    const-wide/16 v0, 0x0

    cmp-long p2, v5, v0

    if-lez p2, :cond_3

    new-instance p2, Lnet/sf/saxon/expr/AscendingRangeIterator;

    move-object v2, p2

    move-wide v3, v7

    move-wide v7, p0

    invoke-direct/range {v2 .. v8}, Lnet/sf/saxon/expr/AscendingRangeIterator;-><init>(JJJ)V

    return-object p2

    :cond_3
    new-instance p2, Lnet/sf/saxon/expr/DescendingRangeIterator;

    neg-long v5, v5

    move-object v2, p2

    move-wide v3, p0

    invoke-direct/range {v2 .. v8}, Lnet/sf/saxon/expr/DescendingRangeIterator;-><init>(JJJ)V

    return-object p2

    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Saxon limit on sequence length exceeded (2^31)"

    const-string p2, "XPDY0130"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    if-gez v0, :cond_6

    new-instance v0, Lnet/sf/saxon/expr/BigRangeIterator;

    invoke-virtual {p2}, Lnet/sf/saxon/value/IntegerValue;->asBigInteger()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1}, Lnet/sf/saxon/value/IntegerValue;->asBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/value/IntegerValue;->asBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p2, p1, p0}, Lnet/sf/saxon/expr/BigRangeIterator;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    :cond_6
    new-instance v0, Lnet/sf/saxon/expr/BigRangeIterator;

    invoke-virtual {p0}, Lnet/sf/saxon/value/IntegerValue;->asBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/value/IntegerValue;->asBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Lnet/sf/saxon/value/IntegerValue;->asBigInteger()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lnet/sf/saxon/expr/BigRangeIterator;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    :cond_7
    :goto_1
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofAtomic()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_2
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofAtomic()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getFirst()Lnet/sf/saxon/value/IntegerValue;
    .locals 3

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    iget-wide v1, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->e:J

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    return-object v0
.end method

.method public getLast()Lnet/sf/saxon/value/IntegerValue;
    .locals 3

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    iget-wide v1, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->h:J

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    return-object v0
.end method

.method public getLength()I
    .locals 4

    iget-wide v0, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->h:J

    iget-wide v2, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public getMax()Lnet/sf/saxon/value/IntegerValue;
    .locals 3

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    iget-wide v1, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->h:J

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    return-object v0
.end method

.method public getMin()Lnet/sf/saxon/value/IntegerValue;
    .locals 3

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    iget-wide v1, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->e:J

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    return-object v0
.end method

.method public getResidue()Lnet/sf/saxon/om/GroundedValue;
    .locals 8

    new-instance v7, Lnet/sf/saxon/value/IntegerRange;

    iget-wide v1, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->g:J

    iget-wide v3, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->f:J

    iget-wide v5, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->h:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/sf/saxon/value/IntegerRange;-><init>(JJJ)V

    return-object v7
.end method

.method public bridge synthetic getReverseIterator()Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/AscendingRangeIterator;->getReverseIterator()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    return-object p0
.end method

.method public getReverseIterator()Lnet/sf/saxon/tree/iter/AtomicIterator;
    .locals 8

    .line 2
    new-instance v7, Lnet/sf/saxon/expr/DescendingRangeIterator;

    iget-wide v1, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->h:J

    iget-wide v3, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->f:J

    iget-wide v5, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->e:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/sf/saxon/expr/DescendingRangeIterator;-><init>(JJJ)V

    return-object v7
.end method

.method public getStep()Lnet/sf/saxon/value/IntegerValue;
    .locals 3

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    iget-wide v1, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->f:J

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    return-object v0
.end method

.method public hasNext()Z
    .locals 4

    iget-wide v0, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->g:J

    iget-wide v2, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->f:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->h:J

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isActuallyGrounded()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public materialize()Lnet/sf/saxon/om/GroundedValue;
    .locals 8

    new-instance v7, Lnet/sf/saxon/value/IntegerRange;

    iget-wide v1, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->e:J

    iget-wide v3, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->f:J

    iget-wide v5, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->h:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/sf/saxon/value/IntegerRange;-><init>(JJJ)V

    return-object v7
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/AscendingRangeIterator;->next()Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/AscendingRangeIterator;->next()Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/value/IntegerValue;
    .locals 4

    .line 3
    iget-wide v0, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->g:J

    iget-wide v2, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->g:J

    .line 4
    iget-wide v2, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;->h:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    invoke-static {v0, v1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0
.end method

.method public supportsGetLength()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportsHasNext()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
