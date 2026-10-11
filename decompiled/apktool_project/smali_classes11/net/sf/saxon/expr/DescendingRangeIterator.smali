.class public Lnet/sf/saxon/expr/DescendingRangeIterator;
.super Lnet/sf/saxon/tree/iter/RangeIterator;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AtomicIterator;
.implements Lnet/sf/saxon/tree/iter/ReversibleIterator;
.implements Lnet/sf/saxon/expr/LastPositionFinder;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;


# static fields
.field public static final synthetic i:Z


# instance fields
.field public e:J

.field public f:J

.field public g:J

.field public h:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/tree/iter/RangeIterator;-><init>()V

    iput-wide p1, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->e:J

    iput-wide p3, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->f:J

    add-long v0, p1, p3

    iput-wide v0, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->g:J

    iput-wide p5, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->h:J

    const-wide/16 v0, 0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    sub-long/2addr p5, p1

    div-long/2addr p5, p3

    mul-long/2addr p5, p3

    add-long/2addr p1, p5

    iput-wide p1, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->h:J

    :cond_0
    return-void
.end method


# virtual methods
.method public getFirst()Lnet/sf/saxon/value/IntegerValue;
    .locals 3

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    iget-wide v1, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->e:J

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    return-object v0
.end method

.method public getLast()Lnet/sf/saxon/value/IntegerValue;
    .locals 3

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    iget-wide v1, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->h:J

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    return-object v0
.end method

.method public getLength()I
    .locals 4

    iget-wide v0, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->e:J

    iget-wide v2, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->h:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public getMax()Lnet/sf/saxon/value/IntegerValue;
    .locals 3

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    iget-wide v1, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->e:J

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    return-object v0
.end method

.method public getMin()Lnet/sf/saxon/value/IntegerValue;
    .locals 3

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    iget-wide v1, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->h:J

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    return-object v0
.end method

.method public getResidue()Lnet/sf/saxon/om/GroundedValue;
    .locals 8

    new-instance v7, Lnet/sf/saxon/value/IntegerRange;

    iget-wide v1, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->g:J

    iget-wide v3, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->f:J

    neg-long v3, v3

    iget-wide v5, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->h:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/sf/saxon/value/IntegerRange;-><init>(JJJ)V

    return-object v7
.end method

.method public bridge synthetic getReverseIterator()Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/DescendingRangeIterator;->getReverseIterator()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    return-object p0
.end method

.method public getReverseIterator()Lnet/sf/saxon/tree/iter/AtomicIterator;
    .locals 8

    .line 2
    new-instance v7, Lnet/sf/saxon/expr/AscendingRangeIterator;

    iget-wide v1, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->e:J

    iget-wide v3, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->f:J

    iget-wide v5, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->h:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/sf/saxon/expr/AscendingRangeIterator;-><init>(JJJ)V

    return-object v7
.end method

.method public getStep()Lnet/sf/saxon/value/IntegerValue;
    .locals 3

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    iget-wide v1, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->f:J

    neg-long v1, v1

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    return-object v0
.end method

.method public hasNext()Z
    .locals 4

    iget-wide v0, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->g:J

    iget-wide v2, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->f:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->h:J

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

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

    iget-wide v1, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->e:J

    iget-wide v3, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->f:J

    neg-long v3, v3

    iget-wide v5, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->h:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/sf/saxon/value/IntegerRange;-><init>(JJJ)V

    return-object v7
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/DescendingRangeIterator;->next()Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/DescendingRangeIterator;->next()Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/value/IntegerValue;
    .locals 4

    .line 3
    iget-wide v0, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->g:J

    iget-wide v2, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->g:J

    .line 4
    iget-wide v2, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;->h:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

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
