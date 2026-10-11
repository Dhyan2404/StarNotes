.class public Lnet/sf/saxon/expr/BigRangeIterator;
.super Lnet/sf/saxon/tree/iter/RangeIterator;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AtomicIterator;
.implements Lnet/sf/saxon/expr/LastPositionFinder;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;


# instance fields
.field public e:Ljava/math/BigInteger;

.field public f:Ljava/math/BigInteger;

.field public g:Ljava/math/BigInteger;

.field public h:Ljava/math/BigInteger;

.field public i:Z


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-direct {p0}, Lnet/sf/saxon/tree/iter/RangeIterator;-><init>()V

    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const-wide/32 v1, 0x7fffffff

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_1

    iput-object p1, p0, Lnet/sf/saxon/expr/BigRangeIterator;->e:Ljava/math/BigInteger;

    iput-object p2, p0, Lnet/sf/saxon/expr/BigRangeIterator;->f:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/BigRangeIterator;->g:Ljava/math/BigInteger;

    iput-object p3, p0, Lnet/sf/saxon/expr/BigRangeIterator;->h:Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lnet/sf/saxon/expr/BigRangeIterator;->i:Z

    return-void

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Saxon limit on sequence length exceeded (2^31)"

    const-string p2, "XPDY0130"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final f(Ljava/math/BigInteger;)Z
    .locals 3

    iget-boolean v0, p0, Lnet/sf/saxon/expr/BigRangeIterator;->i:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object p0, p0, Lnet/sf/saxon/expr/BigRangeIterator;->h:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-eqz v0, :cond_0

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_0
    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public getFirst()Lnet/sf/saxon/value/IntegerValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/BigRangeIterator;->e:Ljava/math/BigInteger;

    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->makeIntegerValue(Ljava/math/BigInteger;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public getLast()Lnet/sf/saxon/value/IntegerValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/BigRangeIterator;->h:Ljava/math/BigInteger;

    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->makeIntegerValue(Ljava/math/BigInteger;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public getLength()I
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/BigRangeIterator;->h:Ljava/math/BigInteger;

    iget-object v1, p0, Lnet/sf/saxon/expr/BigRangeIterator;->e:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/expr/BigRangeIterator;->f:Ljava/math/BigInteger;

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/UncheckedXPathException;

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Sequence exceeds Saxon limit (32-bit integer)"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw p0
.end method

.method public getMax()Lnet/sf/saxon/value/IntegerValue;
    .locals 1

    iget-boolean v0, p0, Lnet/sf/saxon/expr/BigRangeIterator;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BigRangeIterator;->getFirst()Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BigRangeIterator;->getLast()Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getMin()Lnet/sf/saxon/value/IntegerValue;
    .locals 1

    iget-boolean v0, p0, Lnet/sf/saxon/expr/BigRangeIterator;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BigRangeIterator;->getLast()Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BigRangeIterator;->getFirst()Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getResidue()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/value/SequenceExtent;->makeResidue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public getStep()Lnet/sf/saxon/value/IntegerValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/BigRangeIterator;->f:Ljava/math/BigInteger;

    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->makeIntegerValue(Ljava/math/BigInteger;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public hasNext()Z
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/BigRangeIterator;->g:Ljava/math/BigInteger;

    iget-object v1, p0, Lnet/sf/saxon/expr/BigRangeIterator;->f:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/BigRangeIterator;->f(Ljava/math/BigInteger;)Z

    move-result p0

    return p0
.end method

.method public isActuallyGrounded()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BigRangeIterator;->next()Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BigRangeIterator;->next()Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/value/IntegerValue;
    .locals 2

    .line 3
    iget-object v0, p0, Lnet/sf/saxon/expr/BigRangeIterator;->g:Ljava/math/BigInteger;

    iget-object v1, p0, Lnet/sf/saxon/expr/BigRangeIterator;->f:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/BigRangeIterator;->g:Ljava/math/BigInteger;

    .line 4
    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/BigRangeIterator;->f(Ljava/math/BigInteger;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/BigRangeIterator;->g:Ljava/math/BigInteger;

    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->makeIntegerValue(Ljava/math/BigInteger;)Lnet/sf/saxon/value/IntegerValue;

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
