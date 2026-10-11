.class public final Lnet/sf/saxon/value/DayTimeDurationValue;
.super Lnet/sf/saxon/value/DurationValue;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/XPathComparable;
.implements Lnet/sf/saxon/value/ContextFreeAtomicValue;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/value/DurationValue;-><init>()V

    .line 2
    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->DAY_TIME_DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object v0, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public constructor <init>(IIIIJI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lnet/sf/saxon/value/DurationValue;-><init>()V

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    if-ltz p4, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    if-ltz v2, :cond_4

    if-ltz p7, :cond_4

    int-to-double v2, p2

    const-wide v4, 0x40f5180000000000L    # 86400.0

    mul-double/2addr v2, v4

    int-to-double v4, p3

    const-wide v6, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    int-to-double v4, p4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    long-to-double v4, p5

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_3

    const/4 v2, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 4
    :goto_0
    iput-boolean p1, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    .line 5
    iput v2, p0, Lnet/sf/saxon/value/DurationValue;->_months:I

    int-to-long p1, p2

    const-wide/16 v3, 0x18

    mul-long/2addr p1, v3

    int-to-long v3, p3

    add-long/2addr p1, v3

    const-wide/16 v3, 0x3c

    mul-long/2addr p1, v3

    int-to-long p3, p4

    add-long/2addr p1, p3

    mul-long/2addr p1, v3

    add-long/2addr p1, p5

    const p3, 0xf4240

    if-le p7, p3, :cond_1

    .line 6
    div-int p4, p7, p3

    int-to-long p4, p4

    add-long/2addr p1, p4

    .line 7
    rem-int/2addr p7, p3

    .line 8
    :cond_1
    iput-wide p1, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    mul-int/lit16 p3, p7, 0x3e8

    .line 9
    iput p3, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    cmp-long p1, p1, v0

    if-nez p1, :cond_2

    if-nez p7, :cond_2

    .line 10
    iput-boolean v2, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    .line 11
    :cond_2
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DAY_TIME_DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void

    .line 12
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Duration seconds limit exceeded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Negative component value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(IIIJI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lnet/sf/saxon/value/DurationValue;-><init>()V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz p1, :cond_1

    if-gtz p2, :cond_1

    if-gtz p3, :cond_1

    cmp-long v4, p4, v0

    if-gtz v4, :cond_1

    if-lez p6, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    cmp-long v0, p4, v0

    if-ltz v0, :cond_3

    if-gez p6, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v3

    :goto_3
    if-eqz v4, :cond_5

    if-nez v0, :cond_4

    goto :goto_4

    .line 15
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Some component values are positive and others are negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_4
    if-eqz v0, :cond_6

    .line 16
    iput-boolean v3, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    neg-int p1, p1

    neg-int p2, p2

    neg-int p3, p3

    neg-long p4, p4

    neg-int p6, p6

    :cond_6
    int-to-double v0, p1

    const-wide v3, 0x40f5180000000000L    # 86400.0

    mul-double/2addr v0, v3

    int-to-double v3, p2

    const-wide v5, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v3, v5

    add-double/2addr v0, v3

    int-to-double v3, p3

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    mul-double/2addr v3, v5

    add-double/2addr v0, v3

    long-to-double v3, p4

    add-double/2addr v0, v3

    const-wide/high16 v3, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v0, v0, v3

    if-gtz v0, :cond_8

    .line 17
    iput v2, p0, Lnet/sf/saxon/value/DurationValue;->_months:I

    int-to-long v0, p1

    const-wide/16 v2, 0x18

    mul-long/2addr v0, v2

    int-to-long p1, p2

    add-long/2addr v0, p1

    const-wide/16 p1, 0x3c

    mul-long/2addr v0, p1

    int-to-long v2, p3

    add-long/2addr v0, v2

    mul-long/2addr v0, p1

    add-long/2addr v0, p4

    const p1, 0x3b9aca00

    if-le p6, p1, :cond_7

    .line 18
    div-int p2, p6, p1

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 19
    rem-int/2addr p6, p1

    .line 20
    :cond_7
    iput-wide v0, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    .line 21
    iput p6, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    .line 22
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DAY_TIME_DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void

    .line 23
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Duration seconds limit exceeded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromJavaDuration(Ljava/time/Duration;)Lnet/sf/saxon/value/DayTimeDurationValue;
    .locals 7

    invoke-virtual {p0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v4

    invoke-virtual {p0}, Ljava/time/Duration;->getNano()I

    move-result v6

    const-wide/16 v0, 0x0

    cmp-long p0, v4, v0

    if-gez p0, :cond_0

    new-instance p0, Lnet/sf/saxon/value/DayTimeDurationValue;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v0, -0x3b9aca00

    add-int/2addr v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnet/sf/saxon/value/DayTimeDurationValue;-><init>(IIIJI)V

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/value/DayTimeDurationValue;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnet/sf/saxon/value/DayTimeDurationValue;-><init>(IIIJI)V

    return-object p0
.end method

.method public static fromMicroseconds(J)Lnet/sf/saxon/value/DayTimeDurationValue;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Long;->signum(J)I

    move-result v1

    if-gez v1, :cond_0

    neg-long p0, p0

    :cond_0
    new-instance v8, Lnet/sf/saxon/value/DayTimeDurationValue;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/32 v5, 0xf4240

    div-long v9, p0, v5

    rem-long/2addr p0, v5

    long-to-int v7, p0

    move-object v0, v8

    move-wide v5, v9

    invoke-direct/range {v0 .. v7}, Lnet/sf/saxon/value/DayTimeDurationValue;-><init>(IIIIJI)V

    return-object v8
.end method

.method public static fromMilliseconds(J)Lnet/sf/saxon/value/DayTimeDurationValue;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/ValidationException;
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Long;->signum(J)I

    move-result v1

    if-gez v1, :cond_0

    neg-long p0, p0

    :cond_0
    :try_start_0
    new-instance v8, Lnet/sf/saxon/value/DayTimeDurationValue;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x3e8

    div-long v9, p0, v5

    rem-long/2addr p0, v5

    long-to-int p0, p0

    mul-int/lit16 v7, p0, 0x3e8

    move-object v0, v8

    move-wide v5, v9

    invoke-direct/range {v0 .. v7}, Lnet/sf/saxon/value/DayTimeDurationValue;-><init>(IIIIJI)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :catch_0
    new-instance p0, Lnet/sf/saxon/type/ValidationFailure;

    const-string p1, "Duration exceeds limits"

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationFailure;->makeException()Lnet/sf/saxon/type/ValidationException;

    move-result-object p0

    throw p0
.end method

.method public static fromNanoseconds(J)Lnet/sf/saxon/value/DayTimeDurationValue;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v7, Lnet/sf/saxon/value/DayTimeDurationValue;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/32 v4, 0x3b9aca00

    div-long v8, p0, v4

    rem-long/2addr p0, v4

    long-to-int v6, p0

    move-object v0, v7

    move-wide v4, v8

    invoke-direct/range {v0 .. v6}, Lnet/sf/saxon/value/DayTimeDurationValue;-><init>(IIIJI)V

    return-object v7
.end method

.method public static fromSeconds(Ljava/math/BigDecimal;)Lnet/sf/saxon/value/DayTimeDurationValue;
    .locals 7

    new-instance v0, Lnet/sf/saxon/value/DayTimeDurationValue;

    invoke-direct {v0}, Lnet/sf/saxon/value/DayTimeDurationValue;-><init>()V

    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lcom/sunia/HTREnginev2/dri;->a(Ljava/math/BigInteger;)J

    move-result-wide v3

    iput-wide v3, v0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {p0, v1}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    sget-object v1, Lnet/sf/saxon/value/BigDecimalValue;->BIG_DECIMAL_ONE_BILLION:Ljava/math/BigDecimal;

    invoke-virtual {p0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    iput p0, v0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    iget-wide v3, v0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    if-nez p0, :cond_2

    iput-boolean v2, v0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    :cond_2
    return-object v0
.end method

.method public static makeDayTimeDurationValue(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lnet/sf/saxon/value/DurationValue;->makeDuration(Lnet/sf/saxon/str/UnicodeString;ZZ)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/type/ValidationFailure;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    check-cast p0, Lnet/sf/saxon/value/DurationValue;

    sget-object v0, Lnet/sf/saxon/type/Converter$DurationToDayTimeDuration;->INSTANCE:Lnet/sf/saxon/type/Converter$DurationToDayTimeDuration;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/type/Converter$DurationToDayTimeDuration;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/DayTimeDurationValue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/DurationValue;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/value/DayTimeDurationValue;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/value/DayTimeDurationValue;

    iget-wide v1, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    iget-wide v3, v0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    or-long/2addr v1, v3

    const-wide v3, 0x7fffffff00000000L

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getTotalSeconds()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/value/DurationValue;->getTotalSeconds()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/DayTimeDurationValue;->fromSeconds(Ljava/math/BigDecimal;)Lnet/sf/saxon/value/DayTimeDurationValue;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Overflow when adding two durations"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "FODT0002"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/DayTimeDurationValue;->getLengthInNanoseconds()J

    move-result-wide p0

    invoke-virtual {v0}, Lnet/sf/saxon/value/DayTimeDurationValue;->getLengthInNanoseconds()J

    move-result-wide v0

    add-long/2addr p0, v0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/DayTimeDurationValue;->fromNanoseconds(J)Lnet/sf/saxon/value/DayTimeDurationValue;

    move-result-object p0

    return-object p0

    :cond_1
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

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DayTimeDurationValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I
    .locals 7

    .line 2
    instance-of v0, p1, Lnet/sf/saxon/value/DayTimeDurationValue;

    if-eqz v0, :cond_5

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    check-cast p1, Lnet/sf/saxon/value/DayTimeDurationValue;

    .line 5
    iget-boolean v0, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    iget-boolean v1, p1, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 6
    :cond_1
    iget-wide v0, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    iget-wide v4, p1, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    cmp-long v6, v0, v4

    if-eqz v6, :cond_3

    .line 7
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    iget-boolean p0, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    mul-int/2addr p1, v2

    return p1

    .line 8
    :cond_3
    iget v0, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    iget p1, p1, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    iget-boolean p0, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    mul-int/2addr p1, v2

    return p1

    .line 9
    :cond_5
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot compare xs:dayTimeDuration to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getTotalSeconds()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/DayTimeDurationValue;->fromSeconds(Ljava/math/BigDecimal;)Lnet/sf/saxon/value/DayTimeDurationValue;

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

    .line 16
    instance-of v0, p1, Lnet/sf/saxon/value/DayTimeDurationValue;

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getTotalSeconds()Ljava/math/BigDecimal;

    move-result-object p0

    .line 18
    invoke-virtual {p1}, Lnet/sf/saxon/value/DurationValue;->getTotalSeconds()Ljava/math/BigDecimal;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Lnet/sf/saxon/value/BigDecimalValue;

    const/16 v1, 0x14

    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {p0, p1, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    return-object v0

    .line 21
    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Divide by zero (durations)"

    const-string v0, "FOAR0001"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot divide two durations of different type"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "XPTY0004"

    .line 23
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 24
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

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    const-string v1, "FODT0002"

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getTotalSeconds()Ljava/math/BigDecimal;

    move-result-object p0

    .line 3
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 4
    :try_start_0
    invoke-static {p0}, Lnet/sf/saxon/value/DayTimeDurationValue;->fromSeconds(Ljava/math/BigDecimal;)Lnet/sf/saxon/value/DayTimeDurationValue;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lnet/sf/saxon/trans/XPathException;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/trans/XPathException;

    throw p0

    .line 7
    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "Overflow when dividing a duration by a number"

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {p1, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 9
    throw p1

    .line 10
    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot divide a duration by zero"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 12
    throw p0

    .line 13
    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot divide a duration by NaN"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "FOCA0005"

    .line 14
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 15
    throw p0
.end method

.method public getLengthInMicroseconds()J
    .locals 4

    iget-wide v0, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    const-wide v2, 0x8637bd05af6L

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-boolean p0, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    if-eqz p0, :cond_0

    neg-long v0, v0

    :cond_0
    return-wide v0

    :cond_1
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "Value is too large to be expressed in microseconds"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLengthInNanoseconds()J
    .locals 4

    iget-wide v0, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    const-wide v2, 0x225c17d04L

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    iget v2, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-boolean p0, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    if-eqz p0, :cond_0

    neg-long v0, v0

    :cond_0
    return-wide v0

    :cond_1
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "Value is too large to be expressed in nanoseconds"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLengthInSeconds()D
    .locals 6

    iget-wide v0, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    long-to-double v0, v0

    iget v2, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    int-to-double v2, v2

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-boolean p0, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    if-eqz p0, :cond_0

    neg-double v0, v0

    :cond_0
    return-wide v0
.end method

.method public getPrimitiveStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 7

    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    iget-boolean v1, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getDays()I

    move-result v1

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getHours()I

    move-result v2

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getMinutes()I

    move-result v3

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getSeconds()I

    move-result v4

    const/16 v5, 0x50

    invoke-virtual {v0, v5}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    if-eqz v1, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "D"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_1
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    iget v5, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    if-eqz v5, :cond_3

    :cond_2
    const/16 v5, 0x54

    invoke-virtual {v0, v5}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_3
    if-eqz v2, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "H"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_4
    if-eqz v3, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "M"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_5
    if-nez v4, :cond_6

    iget v5, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    if-nez v5, :cond_6

    if-nez v1, :cond_8

    if-nez v3, :cond_8

    if-nez v2, :cond_8

    :cond_6
    iget p0, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    if-nez p0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "S"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_7
    int-to-long v1, v4

    const-wide/32 v5, 0x3b9aca00

    mul-long/2addr v1, v5

    int-to-long v5, p0

    add-long/2addr v1, v5

    invoke-static {v0, v4, v1, v2}, Lnet/sf/saxon/value/DurationValue;->formatFractionalSeconds(Lnet/sf/saxon/str/UnicodeBuilder;IJ)V

    :cond_8
    :goto_0
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->DAY_TIME_DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

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

.method public multiply(D)Lnet/sf/saxon/value/DayTimeDurationValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 6
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DayTimeDurationValue;->multiply(Ljava/math/BigDecimal;)Lnet/sf/saxon/value/DayTimeDurationValue;

    move-result-object p0

    return-object p0

    .line 10
    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot multiply a duration by infinity"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "FODT0002"

    .line 11
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 12
    throw p0

    .line 13
    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot multiply a duration by NaN"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "FOCA0005"

    .line 14
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 15
    throw p0
.end method

.method public multiply(Ljava/math/BigDecimal;)Lnet/sf/saxon/value/DayTimeDurationValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getTotalSeconds()Ljava/math/BigDecimal;

    move-result-object p0

    .line 17
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 18
    :try_start_0
    invoke-static {p0}, Lnet/sf/saxon/value/DayTimeDurationValue;->fromSeconds(Ljava/math/BigDecimal;)Lnet/sf/saxon/value/DayTimeDurationValue;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lnet/sf/saxon/trans/XPathException;

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/trans/XPathException;

    throw p0

    .line 21
    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Overflow when multiplying a duration by a number"

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "FODT0002"

    .line 22
    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 23
    throw p1
.end method

.method public bridge synthetic multiply(D)Lnet/sf/saxon/value/DurationValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/value/DayTimeDurationValue;->multiply(D)Lnet/sf/saxon/value/DayTimeDurationValue;

    move-result-object p0

    return-object p0
.end method

.method public multiply(J)Lnet/sf/saxon/value/DurationValue;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-wide v0, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget v0, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lnet/sf/saxon/value/DayTimeDurationValue;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-wide v5, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    mul-long/2addr v5, p1

    iget-boolean p0, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    int-to-long p0, p0

    mul-long/2addr v5, p0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lnet/sf/saxon/value/DayTimeDurationValue;-><init>(IIIJI)V

    return-object v0

    .line 5
    :cond_1
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DayTimeDurationValue;->multiply(Ljava/math/BigDecimal;)Lnet/sf/saxon/value/DayTimeDurationValue;

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

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DayTimeDurationValue;->multiply(Ljava/math/BigDecimal;)Lnet/sf/saxon/value/DayTimeDurationValue;

    move-result-object p0

    return-object p0
.end method

.method public negate()Lnet/sf/saxon/value/DurationValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/value/DayTimeDurationValue;

    invoke-direct {v0}, Lnet/sf/saxon/value/DayTimeDurationValue;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/value/AtomicValue;->setTypeLabel(Lnet/sf/saxon/type/AtomicType;)V

    iget-wide v1, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    iput-wide v1, v0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    iget v1, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    iput v1, v0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    iget-boolean p0, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    xor-int/lit8 p0, p0, 0x1

    iput-boolean p0, v0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    return-object v0
.end method

.method public subtract(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/DurationValue;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/value/DayTimeDurationValue;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/value/DayTimeDurationValue;

    iget-wide v1, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    iget-wide v3, v0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    or-long/2addr v1, v3

    const-wide v3, 0x7fffffff00000000L

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getTotalSeconds()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/value/DurationValue;->getTotalSeconds()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/DayTimeDurationValue;->fromSeconds(Ljava/math/BigDecimal;)Lnet/sf/saxon/value/DayTimeDurationValue;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Overflow when subtracting two durations"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "FODT0002"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/DayTimeDurationValue;->getLengthInNanoseconds()J

    move-result-wide p0

    invoke-virtual {v0}, Lnet/sf/saxon/value/DayTimeDurationValue;->getLengthInNanoseconds()J

    move-result-wide v0

    sub-long/2addr p0, v0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/DayTimeDurationValue;->fromNanoseconds(J)Lnet/sf/saxon/value/DayTimeDurationValue;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot subtract two durations of different type"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "XPTY0004"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0
.end method

.method public toJavaDuration()Ljava/time/Duration;
    .locals 4

    iget-boolean v0, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    neg-long v0, v0

    iget p0, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    neg-int p0, p0

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object p0

    return-object p0

    :cond_0
    iget-wide v0, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    iget p0, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method
