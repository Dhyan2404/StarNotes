.class public final Lnet/sf/saxon/value/YearMonthDurationValue;
.super Lnet/sf/saxon/value/DurationValue;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/XPathComparable;
.implements Lnet/sf/saxon/value/ContextFreeAtomicValue;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/value/DurationValue;-><init>()V

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->YEAR_MONTH_DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object v0, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public static fromMonths(I)Lnet/sf/saxon/value/YearMonthDurationValue;
    .locals 4

    new-instance v0, Lnet/sf/saxon/value/YearMonthDurationValue;

    invoke-direct {v0}, Lnet/sf/saxon/value/YearMonthDurationValue;-><init>()V

    const/4 v1, 0x0

    if-gez p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, v0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    if-gez p0, :cond_1

    neg-int p0, p0

    :cond_1
    iput p0, v0, Lnet/sf/saxon/value/DurationValue;->_months:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    iput v1, v0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    return-object v0
.end method

.method public static makeYearMonthDurationValue(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lnet/sf/saxon/value/DurationValue;->makeDuration(Lnet/sf/saxon/str/UnicodeString;ZZ)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/type/ValidationFailure;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    check-cast p0, Lnet/sf/saxon/value/DurationValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getYears()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getMonths()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->signum()I

    move-result p0

    mul-int/2addr v0, p0

    invoke-static {v0}, Lnet/sf/saxon/value/YearMonthDurationValue;->fromMonths(I)Lnet/sf/saxon/value/YearMonthDurationValue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 1

    const/16 p0, 0x14

    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {p1, p2, p0, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public add(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/DurationValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/value/YearMonthDurationValue;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/value/YearMonthDurationValue;->getLengthInMonths()I

    move-result p0

    check-cast p1, Lnet/sf/saxon/value/YearMonthDurationValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/YearMonthDurationValue;->getLengthInMonths()I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p0}, Lnet/sf/saxon/value/YearMonthDurationValue;->fromMonths(I)Lnet/sf/saxon/value/YearMonthDurationValue;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot add two durations of different type"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "XPTY0004"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/expr/sort/XPathComparable;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/YearMonthDurationValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I
    .locals 2

    .line 2
    instance-of v0, p1, Lnet/sf/saxon/value/YearMonthDurationValue;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/value/YearMonthDurationValue;->getLengthInMonths()I

    move-result p0

    check-cast p1, Lnet/sf/saxon/value/YearMonthDurationValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/YearMonthDurationValue;->getLengthInMonths()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot compare xs:yearMonthDuration with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/value/YearMonthDurationValue;->getLengthInMonths()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/YearMonthDurationValue;->fromMonths(I)Lnet/sf/saxon/value/YearMonthDurationValue;

    move-result-object p0

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-object p0
.end method

.method public divide(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/BigDecimalValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 11
    instance-of v0, p1, Lnet/sf/saxon/value/YearMonthDurationValue;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0}, Lnet/sf/saxon/value/YearMonthDurationValue;->getLengthInMonths()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 13
    check-cast p1, Lnet/sf/saxon/value/YearMonthDurationValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/YearMonthDurationValue;->getLengthInMonths()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    new-instance v1, Lnet/sf/saxon/value/BigDecimalValue;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/value/YearMonthDurationValue;->a(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-direct {v1, p0}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    return-object v1

    .line 16
    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Divide by zero (durations)"

    const-string v0, "FOAR0001"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot divide two durations of different type"

    const-string v0, "XPTY0004"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public divide(D)Lnet/sf/saxon/value/DurationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/value/YearMonthDurationValue;->getLengthInMonths()I

    move-result p0

    int-to-double v0, p0

    div-double/2addr v0, p1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_0

    const-wide p0, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double p0, v0, p0

    if-gtz p0, :cond_0

    const-wide/high16 p0, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double p0, v0, p0

    if-ltz p0, :cond_0

    .line 4
    new-instance p0, Lnet/sf/saxon/value/DoubleValue;

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DoubleValue;->round(I)Lnet/sf/saxon/value/NumericValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {p0}, Lnet/sf/saxon/value/YearMonthDurationValue;->fromMonths(I)Lnet/sf/saxon/value/YearMonthDurationValue;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Overflow when dividing a duration by a number"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "FODT0002"

    .line 6
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 7
    throw p0

    .line 8
    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot divide a duration by NaN"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "FOCA0005"

    .line 9
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 10
    throw p0
.end method

.method public getLengthInMonths()I
    .locals 1

    iget v0, p0, Lnet/sf/saxon/value/DurationValue;->_months:I

    iget-boolean p0, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    mul-int/2addr v0, p0

    return v0
.end method

.method public getPrimitiveStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getYears()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getMonths()I

    move-result v1

    new-instance v2, Lnet/sf/saxon/str/UnicodeBuilder;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    iget-boolean p0, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x2d

    invoke-virtual {v2, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_0
    const/16 p0, 0x50

    invoke-virtual {v2, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    if-eqz v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "Y"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_1
    if-nez v1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "M"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_3
    invoke-virtual {v2}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->YEAR_MONTH_DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public getXPathComparable()Lnet/sf/saxon/expr/sort/XPathComparable;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getXPathComparable(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/XPathComparable;
    .locals 0

    .line 2
    return-object p0
.end method

.method public getXPathMatchKey(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/AtomicMatchKey;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic multiply(D)Lnet/sf/saxon/value/DurationValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/value/YearMonthDurationValue;->multiply(D)Lnet/sf/saxon/value/YearMonthDurationValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic multiply(J)Lnet/sf/saxon/value/DurationValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/value/YearMonthDurationValue;->multiply(J)Lnet/sf/saxon/value/YearMonthDurationValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic multiply(Ljava/math/BigDecimal;)Lnet/sf/saxon/value/DurationValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/YearMonthDurationValue;->multiply(Ljava/math/BigDecimal;)Lnet/sf/saxon/value/YearMonthDurationValue;

    move-result-object p0

    return-object p0
.end method

.method public multiply(D)Lnet/sf/saxon/value/YearMonthDurationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lnet/sf/saxon/value/YearMonthDurationValue;->getLengthInMonths()I

    move-result p0

    int-to-double v0, p0

    mul-double/2addr p1, v0

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_0

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double p0, p1, v0

    if-gtz p0, :cond_0

    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double p0, p1, v0

    if-ltz p0, :cond_0

    .line 10
    new-instance p0, Lnet/sf/saxon/value/DoubleValue;

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DoubleValue;->round(I)Lnet/sf/saxon/value/NumericValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {p0}, Lnet/sf/saxon/value/YearMonthDurationValue;->fromMonths(I)Lnet/sf/saxon/value/YearMonthDurationValue;

    move-result-object p0

    return-object p0

    .line 11
    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Overflow when multiplying a duration by a number"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "FODT0002"

    .line 12
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 13
    throw p0

    .line 14
    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot multiply a duration by NaN"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "FOCA0005"

    .line 15
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 16
    throw p0
.end method

.method public multiply(J)Lnet/sf/saxon/value/YearMonthDurationValue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lnet/sf/saxon/value/DurationValue;->_months:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x7530

    if-ge v0, v1, :cond_0

    long-to-int p1, p1

    .line 5
    invoke-virtual {p0}, Lnet/sf/saxon/value/YearMonthDurationValue;->getLengthInMonths()I

    move-result p0

    mul-int/2addr p1, p0

    invoke-static {p1}, Lnet/sf/saxon/value/YearMonthDurationValue;->fromMonths(I)Lnet/sf/saxon/value/YearMonthDurationValue;

    move-result-object p0

    return-object p0

    :cond_0
    long-to-double p1, p1

    .line 6
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/value/YearMonthDurationValue;->multiply(D)Lnet/sf/saxon/value/YearMonthDurationValue;

    move-result-object p0

    return-object p0
.end method

.method public multiply(Ljava/math/BigDecimal;)Lnet/sf/saxon/value/YearMonthDurationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lnet/sf/saxon/value/YearMonthDurationValue;->getLengthInMonths()I

    move-result p0

    int-to-long v0, p0

    .line 18
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object p1

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-gtz p1, :cond_0

    .line 20
    new-instance p1, Lnet/sf/saxon/value/BigDecimalValue;

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/value/BigDecimalValue;->round(I)Lnet/sf/saxon/value/NumericValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {p0}, Lnet/sf/saxon/value/YearMonthDurationValue;->fromMonths(I)Lnet/sf/saxon/value/YearMonthDurationValue;

    move-result-object p0

    return-object p0

    .line 21
    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Overflow when multiplying a duration by a number"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "FODT0002"

    .line 22
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 23
    throw p0
.end method

.method public negate()Lnet/sf/saxon/value/DurationValue;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/value/YearMonthDurationValue;->getLengthInMonths()I

    move-result p0

    neg-int p0, p0

    invoke-static {p0}, Lnet/sf/saxon/value/YearMonthDurationValue;->fromMonths(I)Lnet/sf/saxon/value/YearMonthDurationValue;

    move-result-object p0

    return-object p0
.end method

.method public subtract(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/DurationValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/value/YearMonthDurationValue;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/value/YearMonthDurationValue;->getLengthInMonths()I

    move-result p0

    check-cast p1, Lnet/sf/saxon/value/YearMonthDurationValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/YearMonthDurationValue;->getLengthInMonths()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Lnet/sf/saxon/value/YearMonthDurationValue;->fromMonths(I)Lnet/sf/saxon/value/YearMonthDurationValue;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot subtract two durations of different type"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "XPTY0004"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0
.end method
