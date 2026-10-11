.class public abstract Lnet/sf/saxon/tree/iter/RangeIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/GroundedIterator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public containsEq(Lnet/sf/saxon/value/NumericValue;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/value/IntegerValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/value/IntegerValue;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->isWholeNumber()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lnet/sf/saxon/type/Converter$DecimalToInteger;->INSTANCE:Lnet/sf/saxon/type/Converter$DecimalToInteger;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/Converter$DecimalToInteger;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p1

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/RangeIterator;->getMin()Lnet/sf/saxon/value/IntegerValue;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/NumericValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/RangeIterator;->getMax()Lnet/sf/saxon/value/IntegerValue;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/NumericValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/RangeIterator;->getFirst()Lnet/sf/saxon/value/IntegerValue;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/IntegerValue;->minus(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/RangeIterator;->getStep()Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/value/IntegerValue;->mod(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/value/Int64Value;->ZERO:Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/NumericValue;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public abstract getFirst()Lnet/sf/saxon/value/IntegerValue;
.end method

.method public abstract getLast()Lnet/sf/saxon/value/IntegerValue;
.end method

.method public abstract getMax()Lnet/sf/saxon/value/IntegerValue;
.end method

.method public abstract getMin()Lnet/sf/saxon/value/IntegerValue;
.end method

.method public abstract getResidue()Lnet/sf/saxon/om/GroundedValue;
.end method

.method public abstract getStep()Lnet/sf/saxon/value/IntegerValue;
.end method
