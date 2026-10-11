.class public final Lnet/sf/saxon/value/DateTimeValue;
.super Lnet/sf/saxon/value/CalendarValue;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/XPathComparable;
.implements Ljava/time/temporal/TemporalAccessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;
    }
.end annotation


# static fields
.field public static final EPOCH:Lnet/sf/saxon/value/DateTimeValue;


# instance fields
.field public f:I

.field public g:B

.field public h:B

.field public i:B

.field public j:B

.field public k:B

.field public l:I

.field public m:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v10, Lnet/sf/saxon/value/DateTimeValue;

    const/16 v1, 0x7b2

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lnet/sf/saxon/value/DateTimeValue;-><init>(IBBBBBIIZ)V

    sput-object v10, Lnet/sf/saxon/value/DateTimeValue;->EPOCH:Lnet/sf/saxon/value/DateTimeValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/value/CalendarValue;-><init>()V

    return-void
.end method

.method public constructor <init>(IBBBBBII)V
    .locals 1

    .line 17
    invoke-direct {p0}, Lnet/sf/saxon/value/CalendarValue;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lnet/sf/saxon/value/DateTimeValue;->m:Z

    .line 19
    iput p1, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    .line 20
    iput-byte p2, p0, Lnet/sf/saxon/value/DateTimeValue;->g:B

    .line 21
    iput-byte p3, p0, Lnet/sf/saxon/value/DateTimeValue;->h:B

    .line 22
    iput-byte p4, p0, Lnet/sf/saxon/value/DateTimeValue;->i:B

    .line 23
    iput-byte p5, p0, Lnet/sf/saxon/value/DateTimeValue;->j:B

    .line 24
    iput-byte p6, p0, Lnet/sf/saxon/value/DateTimeValue;->k:B

    .line 25
    iput p7, p0, Lnet/sf/saxon/value/DateTimeValue;->l:I

    .line 26
    invoke-virtual {p0, p8}, Lnet/sf/saxon/value/CalendarValue;->setTimezoneInMinutes(I)V

    .line 27
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public constructor <init>(IBBBBBIIZ)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lnet/sf/saxon/value/CalendarValue;-><init>()V

    .line 29
    iput-boolean p9, p0, Lnet/sf/saxon/value/DateTimeValue;->m:Z

    .line 30
    iput p1, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    .line 31
    iput-byte p2, p0, Lnet/sf/saxon/value/DateTimeValue;->g:B

    .line 32
    iput-byte p3, p0, Lnet/sf/saxon/value/DateTimeValue;->h:B

    .line 33
    iput-byte p4, p0, Lnet/sf/saxon/value/DateTimeValue;->i:B

    .line 34
    iput-byte p5, p0, Lnet/sf/saxon/value/DateTimeValue;->j:B

    .line 35
    iput-byte p6, p0, Lnet/sf/saxon/value/DateTimeValue;->k:B

    mul-int/lit16 p7, p7, 0x3e8

    .line 36
    iput p7, p0, Lnet/sf/saxon/value/DateTimeValue;->l:I

    .line 37
    invoke-virtual {p0, p8}, Lnet/sf/saxon/value/CalendarValue;->setTimezoneInMinutes(I)V

    .line 38
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;Z)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lnet/sf/saxon/value/CalendarValue;-><init>()V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    if-nez v0, :cond_0

    rsub-int/lit8 v0, v2, 0x1

    .line 5
    iput v0, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    :cond_0
    const/4 v0, 0x2

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lnet/sf/saxon/value/DateTimeValue;->g:B

    const/4 v0, 0x5

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lnet/sf/saxon/value/DateTimeValue;->h:B

    const/16 v0, 0xb

    .line 8
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lnet/sf/saxon/value/DateTimeValue;->i:B

    const/16 v0, 0xc

    .line 9
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lnet/sf/saxon/value/DateTimeValue;->j:B

    const/16 v0, 0xd

    .line 10
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lnet/sf/saxon/value/DateTimeValue;->k:B

    const/16 v0, 0xe

    .line 11
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const v2, 0xf4240

    mul-int/2addr v0, v2

    iput v0, p0, Lnet/sf/saxon/value/DateTimeValue;->l:I

    if-eqz p2, :cond_1

    const/16 p2, 0xf

    .line 12
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/16 v0, 0x10

    .line 13
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr p2, p1

    const p1, 0xea60

    div-int/2addr p2, p1

    .line 14
    invoke-virtual {p0, p2}, Lnet/sf/saxon/value/CalendarValue;->setTimezoneInMinutes(I)V

    .line 15
    :cond_1
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    .line 16
    iput-boolean v1, p0, Lnet/sf/saxon/value/DateTimeValue;->m:Z

    return-void
.end method

.method public static synthetic b(Lnet/sf/saxon/value/DateTimeValue;)I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    return p0
.end method

.method public static synthetic c(Lnet/sf/saxon/value/DateTimeValue;)B
    .locals 0

    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->g:B

    return p0
.end method

.method public static computeHashCode(IBBBBBII)I
    .locals 5

    const/high16 v0, -0x80000000

    if-ne p7, v0, :cond_0

    const/4 p7, 0x0

    goto :goto_0

    :cond_0
    neg-int p7, p7

    :goto_0
    add-int/2addr p4, p7

    if-ltz p4, :cond_1

    const/16 p7, 0x3b

    if-le p4, p7, :cond_2

    :cond_1
    int-to-double v0, p4

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p7, v0

    add-int/2addr p3, p7

    add-int/lit16 p4, p4, 0x5a0

    rem-int/lit8 p4, p4, 0x3c

    :cond_2
    :goto_1
    if-gez p3, :cond_3

    add-int/lit8 p3, p3, 0x18

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/value/DateValue;->yesterday(IBB)Lnet/sf/saxon/value/DateValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/GDateValue;->getYear()I

    move-result p1

    invoke-virtual {p0}, Lnet/sf/saxon/value/GDateValue;->getMonth()B

    move-result p2

    invoke-virtual {p0}, Lnet/sf/saxon/value/GDateValue;->getDay()B

    move-result p0

    move v4, p2

    move p2, p0

    move p0, p1

    move p1, v4

    goto :goto_1

    :cond_3
    :goto_2
    const/16 p7, 0x17

    if-le p3, p7, :cond_4

    add-int/lit8 p3, p3, -0x18

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/value/DateValue;->tomorrow(IBB)Lnet/sf/saxon/value/DateValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/GDateValue;->getYear()I

    move-result p1

    invoke-virtual {p0}, Lnet/sf/saxon/value/GDateValue;->getMonth()B

    move-result p2

    invoke-virtual {p0}, Lnet/sf/saxon/value/GDateValue;->getDay()B

    move-result p0

    move v4, p2

    move p2, p0

    move p0, p1

    move p1, v4

    goto :goto_2

    :cond_4
    shl-int/lit8 p0, p0, 0x4

    shl-int/lit8 p1, p1, 0x1c

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x17

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p3, 0x12

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p4, 0xd

    xor-int/2addr p0, p1

    xor-int/2addr p0, p5

    xor-int/2addr p0, p6

    return p0
.end method

.method public static synthetic d(Lnet/sf/saxon/value/DateTimeValue;)B
    .locals 0

    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->h:B

    return p0
.end method

.method public static synthetic e(Lnet/sf/saxon/value/DateTimeValue;)B
    .locals 0

    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->i:B

    return p0
.end method

.method public static fromJavaDate(Ljava/util/Date;)Lnet/sf/saxon/value/DateTimeValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object p0, Lnet/sf/saxon/value/DateTimeValue;->EPOCH:Lnet/sf/saxon/value/DateTimeValue;

    invoke-static {v0, v1}, Lnet/sf/saxon/value/DayTimeDurationValue;->fromMilliseconds(J)Lnet/sf/saxon/value/DayTimeDurationValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/value/DateTimeValue;->add(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    return-object p0
.end method

.method public static fromJavaInstant(JI)Lnet/sf/saxon/value/DateTimeValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    sget-object v0, Lnet/sf/saxon/value/DateTimeValue;->EPOCH:Lnet/sf/saxon/value/DateTimeValue;

    .line 2
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/DayTimeDurationValue;->fromSeconds(Ljava/math/BigDecimal;)Lnet/sf/saxon/value/DayTimeDurationValue;

    move-result-object p0

    int-to-long p1, p2

    .line 3
    invoke-static {p1, p2}, Lnet/sf/saxon/value/DayTimeDurationValue;->fromNanoseconds(J)Lnet/sf/saxon/value/DayTimeDurationValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DayTimeDurationValue;->add(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/DurationValue;

    move-result-object p0

    .line 4
    invoke-virtual {v0, p0}, Lnet/sf/saxon/value/DateTimeValue;->add(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    return-object p0
.end method

.method public static fromJavaInstant(Ljava/time/Instant;)Lnet/sf/saxon/value/DateTimeValue;
    .locals 2

    .line 5
    :try_start_0
    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/time/Instant;->getNano()I

    move-result p0

    invoke-static {v0, v1, p0}, Lnet/sf/saxon/value/DateTimeValue;->fromJavaInstant(JI)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 6
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static fromJavaTime(J)Lnet/sf/saxon/value/DateTimeValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/value/DateTimeValue;->EPOCH:Lnet/sf/saxon/value/DateTimeValue;

    invoke-static {p0, p1}, Lnet/sf/saxon/value/DayTimeDurationValue;->fromMilliseconds(J)Lnet/sf/saxon/value/DayTimeDurationValue;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/value/DateTimeValue;->add(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    return-object p0
.end method

.method public static fromJulianInstant(Ljava/math/BigDecimal;)Lnet/sf/saxon/value/DateTimeValue;
    .locals 15

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    sget-object v1, Lnet/sf/saxon/value/BigDecimalValue;->BIG_DECIMAL_ONE_BILLION:Ljava/math/BigDecimal;

    invoke-virtual {p0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    div-long v4, v0, v2

    long-to-int v4, v4

    invoke-static {v4}, Lnet/sf/saxon/value/DateValue;->dateFromJulianDayNumber(I)Lnet/sf/saxon/value/DateValue;

    move-result-object v4

    rem-long/2addr v0, v2

    const-wide/16 v2, 0xe10

    div-long v5, v0, v2

    long-to-int v5, v5

    int-to-byte v10, v5

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long v5, v0, v2

    long-to-int v5, v5

    int-to-byte v11, v5

    rem-long/2addr v0, v2

    new-instance v2, Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {v4}, Lnet/sf/saxon/value/GDateValue;->getYear()I

    move-result v7

    invoke-virtual {v4}, Lnet/sf/saxon/value/GDateValue;->getMonth()B

    move-result v8

    invoke-virtual {v4}, Lnet/sf/saxon/value/GDateValue;->getDay()B

    move-result v9

    long-to-int v0, v0

    int-to-byte v12, v0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result v13

    const/4 v14, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v14}, Lnet/sf/saxon/value/DateTimeValue;-><init>(IBBBBBII)V

    return-object v2
.end method

.method public static fromLocalDateTime(Ljava/time/LocalDateTime;)Lnet/sf/saxon/value/DateTimeValue;
    .locals 10

    new-instance v9, Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getYear()I

    move-result v1

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v0

    int-to-byte v2, v0

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v0

    int-to-byte v3, v0

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v0

    int-to-byte v4, v0

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v0

    int-to-byte v5, v0

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v0

    int-to-byte v6, v0

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v7

    const/high16 v8, -0x80000000

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lnet/sf/saxon/value/DateTimeValue;-><init>(IBBBBBII)V

    const/4 p0, 0x0

    iput-boolean p0, v9, Lnet/sf/saxon/value/DateTimeValue;->m:Z

    return-object v9
.end method

.method public static fromOffsetDateTime(Ljava/time/OffsetDateTime;)Lnet/sf/saxon/value/DateTimeValue;
    .locals 10

    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result p0

    div-int/lit8 v9, p0, 0x3c

    new-instance p0, Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getYear()I

    move-result v2

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v1

    int-to-byte v3, v1

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v1

    int-to-byte v4, v1

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v1

    int-to-byte v5, v1

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v1

    int-to-byte v6, v1

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v1

    int-to-byte v7, v1

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v8

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lnet/sf/saxon/value/DateTimeValue;-><init>(IBBBBBII)V

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME_STAMP:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object v0, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/value/DateTimeValue;->m:Z

    return-object p0
.end method

.method public static fromZonedDateTime(Ljava/time/ZonedDateTime;)Lnet/sf/saxon/value/DateTimeValue;
    .locals 0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/DateTimeValue;->fromOffsetDateTime(Ljava/time/OffsetDateTime;)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lnet/sf/saxon/value/DateTimeValue;)B
    .locals 0

    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->j:B

    return p0
.end method

.method public static getCurrentDateTime(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/DateTimeValue;
    .locals 0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getCurrentDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {}, Lnet/sf/saxon/value/DateTimeValue;->now()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lnet/sf/saxon/value/DateTimeValue;)B
    .locals 0

    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->k:B

    return p0
.end method

.method public static synthetic i(Lnet/sf/saxon/value/DateTimeValue;)I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/value/DateTimeValue;->l:I

    return p0
.end method

.method public static j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 3

    new-instance v0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dateTime value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-static {p1, v2}, Lnet/sf/saxon/trans/Err;->wrap(Lnet/sf/saxon/str/UnicodeString;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    const-string p0, "FORG0001"

    invoke-virtual {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    return-object v0
.end method

.method public static k(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 3

    new-instance v0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dateTime value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-static {p1, v2}, Lnet/sf/saxon/trans/Err;->wrap(Lnet/sf/saxon/str/UnicodeString;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    return-object v0
.end method

.method public static makeDateTimeValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ConversionResult;
    .locals 19

    move-object/from16 v0, p0

    .line 14
    new-instance v1, Lnet/sf/saxon/value/DateTimeValue;

    invoke-direct {v1}, Lnet/sf/saxon/value/DateTimeValue;-><init>()V

    .line 15
    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/lib/ConversionRules;->isAllowYearZero()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    iput-boolean v2, v1, Lnet/sf/saxon/value/DateTimeValue;->m:Z

    .line 16
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-static/range {p0 .. p0}, Lnet/sf/saxon/value/Whitespace;->trim(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-:.+TZ"

    invoke-direct {v2, v4, v5, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 17
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v1, "too short"

    .line 18
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 19
    :cond_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    const-string v5, "+"

    .line 20
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v1, "Date must not start with \'+\' sign"

    .line 21
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v6, "-"

    .line 22
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_3

    .line 23
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v1, "No year after \'-\'"

    .line 24
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 25
    :cond_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    move v7, v8

    goto :goto_0

    :cond_3
    move v7, v3

    .line 26
    :goto_0
    invoke-static {v4}, Lnet/sf/saxon/value/DurationValue;->simpleInteger(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_5

    if-ne v9, v8, :cond_4

    const-string v1, "Non-numeric year component"

    .line 27
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v1, "Year is outside the range that Saxon can handle"

    const-string v2, "FODT0001"

    .line 28
    invoke-static {v1, v0, v2}, Lnet/sf/saxon/value/DateTimeValue;->k(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_5
    mul-int/2addr v9, v7

    .line 29
    iput v9, v1, Lnet/sf/saxon/value/DateTimeValue;->f:I

    .line 30
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-ge v8, v9, :cond_6

    const-string v1, "Year is less than four digits"

    .line 31
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 32
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x0

    if-le v8, v9, :cond_7

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v8, 0x30

    if-ne v4, v8, :cond_7

    const-string v1, "When year exceeds 4 digits, leading zeroes are not allowed"

    .line 33
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 34
    :cond_7
    iget v4, v1, Lnet/sf/saxon/value/DateTimeValue;->f:I

    if-nez v4, :cond_8

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/lib/ConversionRules;->isAllowYearZero()Z

    move-result v4

    if-nez v4, :cond_8

    const-string v1, "Year zero is not allowed"

    .line 35
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_8
    if-gez v7, :cond_9

    .line 36
    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/lib/ConversionRules;->isAllowYearZero()Z

    move-result v4

    if-nez v4, :cond_9

    .line 37
    iget v4, v1, Lnet/sf/saxon/value/DateTimeValue;->f:I

    add-int/2addr v4, v3

    iput v4, v1, Lnet/sf/saxon/value/DateTimeValue;->f:I

    .line 38
    :cond_9
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    const-string v7, "Too short"

    if-nez v4, :cond_a

    .line 39
    invoke-static {v7, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 40
    :cond_a
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v1, "Wrong delimiter after year"

    .line 41
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 42
    :cond_b
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_c

    .line 43
    invoke-static {v7, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 44
    :cond_c
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_d

    const-string v1, "Month must be two digits"

    .line 46
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 47
    :cond_d
    invoke-static {v4}, Lnet/sf/saxon/value/DurationValue;->simpleInteger(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_e

    const-string v1, "Non-numeric month component"

    .line 48
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_e
    int-to-byte v4, v4

    .line 49
    iput-byte v4, v1, Lnet/sf/saxon/value/DateTimeValue;->g:B

    if-lt v4, v3, :cond_4a

    const/16 v8, 0xc

    if-le v4, v8, :cond_f

    goto/16 :goto_8

    .line 50
    :cond_f
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_10

    .line 51
    invoke-static {v7, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 52
    :cond_10
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v1, "Wrong delimiter after month"

    .line 53
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 54
    :cond_11
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_12

    .line 55
    invoke-static {v7, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 56
    :cond_12
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v8, v9, :cond_13

    const-string v1, "Day must be two digits"

    .line 58
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 59
    :cond_13
    invoke-static {v4}, Lnet/sf/saxon/value/DurationValue;->simpleInteger(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_14

    const-string v1, "Non-numeric day component"

    .line 60
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_14
    int-to-byte v4, v4

    .line 61
    iput-byte v4, v1, Lnet/sf/saxon/value/DateTimeValue;->h:B

    if-lt v4, v3, :cond_49

    const/16 v8, 0x1f

    if-le v4, v8, :cond_15

    goto/16 :goto_7

    .line 62
    :cond_15
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_16

    .line 63
    invoke-static {v7, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_16
    const-string v4, "T"

    .line 64
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string v1, "Wrong delimiter after day"

    .line 65
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 66
    :cond_17
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_18

    .line 67
    invoke-static {v7, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 68
    :cond_18
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v8, v9, :cond_19

    const-string v1, "Hour must be two digits"

    .line 70
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 71
    :cond_19
    invoke-static {v4}, Lnet/sf/saxon/value/DurationValue;->simpleInteger(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1a

    const-string v1, "Non-numeric hour component"

    .line 72
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_1a
    int-to-byte v4, v4

    .line 73
    iput-byte v4, v1, Lnet/sf/saxon/value/DateTimeValue;->i:B

    const/16 v8, 0x18

    if-le v4, v8, :cond_1b

    const-string v1, "Hour is out of range"

    .line 74
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 75
    :cond_1b
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 76
    invoke-static {v7, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 77
    :cond_1c
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    const-string v11, ":"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    const-string v1, "Wrong delimiter after hour"

    .line 78
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 79
    :cond_1d
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 80
    invoke-static {v7, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 81
    :cond_1e
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-eq v12, v9, :cond_1f

    const-string v1, "Minute must be two digits"

    .line 83
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 84
    :cond_1f
    invoke-static {v4}, Lnet/sf/saxon/value/DurationValue;->simpleInteger(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_20

    const-string v1, "Non-numeric minute component"

    .line 85
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_20
    int-to-byte v4, v4

    .line 86
    iput-byte v4, v1, Lnet/sf/saxon/value/DateTimeValue;->j:B

    const/16 v12, 0x3b

    if-le v4, v12, :cond_21

    const-string v1, "Minute is out of range"

    .line 87
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 88
    :cond_21
    iget-byte v13, v1, Lnet/sf/saxon/value/DateTimeValue;->i:B

    if-ne v13, v8, :cond_22

    if-eqz v4, :cond_22

    const-string v1, "If hour is 24, minute must be 00"

    .line 89
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 90
    :cond_22
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_23

    .line 91
    invoke-static {v7, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 92
    :cond_23
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    const-string v1, "Wrong delimiter after minute"

    .line 93
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 94
    :cond_24
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_25

    .line 95
    invoke-static {v7, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 96
    :cond_25
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v7, v9, :cond_26

    const-string v1, "Second must be two digits"

    .line 98
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 99
    :cond_26
    invoke-static {v4}, Lnet/sf/saxon/value/DurationValue;->simpleInteger(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_27

    const-string v1, "Non-numeric second component"

    .line 100
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_27
    int-to-byte v4, v4

    .line 101
    iput-byte v4, v1, Lnet/sf/saxon/value/DateTimeValue;->k:B

    if-le v4, v12, :cond_28

    const-string v1, "Second is out of range"

    .line 102
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 103
    :cond_28
    iget-byte v7, v1, Lnet/sf/saxon/value/DateTimeValue;->i:B

    if-ne v7, v8, :cond_29

    if-eqz v4, :cond_29

    const-string v1, "If hour is 24, second must be 00"

    .line 104
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_29
    move v4, v10

    move v7, v4

    move v13, v7

    .line 105
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_43

    const/16 v14, 0x9

    if-ne v4, v14, :cond_2a

    const-string v1, "Characters after the end"

    .line 106
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 107
    :cond_2a
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    const-string v12, "."

    .line 108
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_31

    if-eqz v4, :cond_2b

    const-string v1, "Decimal separator occurs twice"

    .line 109
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 110
    :cond_2b
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_2c

    const-string v1, "Decimal point must be followed by digits"

    .line 111
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 112
    :cond_2c
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v14, :cond_2d

    const-string v12, "^[0-9]+$"

    invoke-virtual {v4, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2d

    .line 114
    invoke-virtual {v4, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 115
    :cond_2d
    invoke-static {v4}, Lnet/sf/saxon/value/DurationValue;->simpleInteger(Ljava/lang/String;)I

    move-result v12

    if-gez v12, :cond_2e

    const-string v1, "Non-numeric fractional seconds component"

    .line 116
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 117
    :cond_2e
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v14, 0x2e

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide v16, 0x41cdcd6500000000L    # 1.0E9

    mul-double v14, v14, v16

    .line 118
    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v4, v14

    const v12, 0x3b9aca00

    if-ne v4, v12, :cond_2f

    add-int/lit8 v4, v4, -0x1

    .line 119
    :cond_2f
    iput v4, v1, Lnet/sf/saxon/value/DateTimeValue;->l:I

    .line 120
    iget-byte v12, v1, Lnet/sf/saxon/value/DateTimeValue;->i:B

    if-ne v12, v8, :cond_30

    if-eqz v4, :cond_30

    const-string v1, "If hour is 24, fractional seconds must be 0"

    .line 121
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_30
    move v4, v3

    move v12, v7

    goto :goto_2

    :cond_31
    const-string v12, "Z"

    .line 122
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_33

    if-le v4, v3, :cond_32

    const-string v1, "Z cannot occur here"

    .line 123
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 124
    :cond_32
    invoke-virtual {v1, v10}, Lnet/sf/saxon/value/CalendarValue;->setTimezoneInMinutes(I)V

    move v12, v10

    move v4, v14

    :goto_2
    const/16 v7, 0x3b

    goto/16 :goto_4

    .line 125
    :cond_33
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v14, "Timezone is out of range (-14:00 to +14:00)"

    if-nez v12, :cond_3c

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_34

    goto :goto_3

    .line 126
    :cond_34
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3b

    if-eq v4, v9, :cond_35

    const-string v1, "Misplaced \':\'"

    .line 127
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 128
    :cond_35
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-static {v4}, Lnet/sf/saxon/value/DurationValue;->simpleInteger(Ljava/lang/String;)I

    move-result v12

    if-gez v12, :cond_36

    const-string v1, "Non-numeric timezone minute component"

    .line 130
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 131
    :cond_36
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v9, :cond_37

    const-string v1, "Timezone minute must be two digits"

    .line 132
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_37
    const/16 v4, 0x3b

    if-le v12, v4, :cond_38

    const-string v1, "Timezone minute is out of range"

    .line 133
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 134
    :cond_38
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v15

    const/16 v4, 0x348

    if-ne v15, v4, :cond_39

    if-eqz v12, :cond_39

    .line 135
    invoke-static {v14, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_39
    add-int/2addr v7, v12

    if-eqz v13, :cond_3a

    neg-int v4, v7

    move v7, v4

    .line 136
    :cond_3a
    invoke-virtual {v1, v7}, Lnet/sf/saxon/value/CalendarValue;->setTimezoneInMinutes(I)V

    move v12, v7

    const/16 v4, 0x9

    goto :goto_2

    :cond_3b
    const-string v1, "Timezone format is incorrect"

    .line 137
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_3c
    :goto_3
    const/16 v7, 0x3b

    if-le v4, v3, :cond_3d

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot occur here"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 139
    :cond_3d
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_3e

    const-string v1, "Missing timezone"

    .line 140
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 141
    :cond_3e
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-eq v12, v9, :cond_3f

    const-string v1, "Timezone hour must be two digits"

    .line 143
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 144
    :cond_3f
    invoke-static {v4}, Lnet/sf/saxon/value/DurationValue;->simpleInteger(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_40

    const-string v1, "Non-numeric timezone hour component"

    .line 145
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_40
    const/16 v12, 0xe

    if-le v4, v12, :cond_41

    .line 146
    invoke-static {v14, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_41
    mul-int/lit8 v4, v4, 0x3c

    .line 147
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_42

    move v13, v3

    :cond_42
    move v12, v4

    move v4, v9

    :goto_4
    move/from16 v18, v12

    move v12, v7

    move/from16 v7, v18

    goto/16 :goto_1

    :cond_43
    if-eq v4, v9, :cond_48

    const/4 v2, 0x3

    if-ne v4, v2, :cond_44

    goto :goto_6

    .line 148
    :cond_44
    iget-byte v2, v1, Lnet/sf/saxon/value/DateTimeValue;->i:B

    if-ne v2, v8, :cond_45

    .line 149
    iput-byte v10, v1, Lnet/sf/saxon/value/DateTimeValue;->i:B

    goto :goto_5

    :cond_45
    move v3, v10

    .line 150
    :goto_5
    iget v2, v1, Lnet/sf/saxon/value/DateTimeValue;->f:I

    iget-byte v4, v1, Lnet/sf/saxon/value/DateTimeValue;->g:B

    iget-byte v5, v1, Lnet/sf/saxon/value/DateTimeValue;->h:B

    invoke-static {v2, v4, v5}, Lnet/sf/saxon/value/GDateValue;->isValidDate(III)Z

    move-result v2

    if-nez v2, :cond_46

    const-string v1, "Non-existent date"

    .line 151
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_46
    if-eqz v3, :cond_47

    .line 152
    iget v0, v1, Lnet/sf/saxon/value/DateTimeValue;->f:I

    iget-byte v2, v1, Lnet/sf/saxon/value/DateTimeValue;->g:B

    iget-byte v3, v1, Lnet/sf/saxon/value/DateTimeValue;->h:B

    invoke-static {v0, v2, v3}, Lnet/sf/saxon/value/DateValue;->tomorrow(IBB)Lnet/sf/saxon/value/DateValue;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lnet/sf/saxon/value/GDateValue;->getYear()I

    move-result v2

    iput v2, v1, Lnet/sf/saxon/value/DateTimeValue;->f:I

    .line 154
    invoke-virtual {v0}, Lnet/sf/saxon/value/GDateValue;->getMonth()B

    move-result v2

    iput-byte v2, v1, Lnet/sf/saxon/value/DateTimeValue;->g:B

    .line 155
    invoke-virtual {v0}, Lnet/sf/saxon/value/GDateValue;->getDay()B

    move-result v0

    iput-byte v0, v1, Lnet/sf/saxon/value/DateTimeValue;->h:B

    .line 156
    :cond_47
    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object v0, v1, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-object v1

    :cond_48
    :goto_6
    const-string v1, "Timezone incomplete"

    .line 157
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_49
    :goto_7
    const-string v1, "Day is out of range"

    .line 158
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_4a
    :goto_8
    const-string v1, "Month is out of range"

    .line 159
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DateTimeValue;->j(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0
.end method

.method public static makeDateTimeValue(Lnet/sf/saxon/value/DateValue;Lnet/sf/saxon/value/TimeValue;)Lnet/sf/saxon/value/DateTimeValue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_2

    if-eq v1, v2, :cond_2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Supplied date and time are in different timezones"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "FORG0008"

    .line 4
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 5
    throw p0

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/GDateValue;->toDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lnet/sf/saxon/value/TimeValue;->getHour()B

    move-result v3

    iput-byte v3, v2, Lnet/sf/saxon/value/DateTimeValue;->i:B

    .line 8
    invoke-virtual {p1}, Lnet/sf/saxon/value/TimeValue;->getMinute()B

    move-result v3

    iput-byte v3, v2, Lnet/sf/saxon/value/DateTimeValue;->j:B

    .line 9
    invoke-virtual {p1}, Lnet/sf/saxon/value/TimeValue;->getSecond()B

    move-result v3

    iput-byte v3, v2, Lnet/sf/saxon/value/DateTimeValue;->k:B

    .line 10
    invoke-virtual {p1}, Lnet/sf/saxon/value/TimeValue;->getNanosecond()I

    move-result p1

    iput p1, v2, Lnet/sf/saxon/value/DateTimeValue;->l:I

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v2, p1}, Lnet/sf/saxon/value/CalendarValue;->setTimezoneInMinutes(I)V

    .line 12
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, v2, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    .line 13
    iget-boolean p0, p0, Lnet/sf/saxon/value/GDateValue;->hasNoYearZero:Z

    iput-boolean p0, v2, Lnet/sf/saxon/value/DateTimeValue;->m:Z

    return-object v2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static now()Lnet/sf/saxon/value/DateTimeValue;
    .locals 1

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/DateTimeValue;->fromZonedDateTime(Ljava/time/ZonedDateTime;)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/DateTimeValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/time/format/DateTimeParseException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/lib/ConversionRules;->DEFAULT:Lnet/sf/saxon/lib/ConversionRules;

    invoke-static {p0, v0}, Lnet/sf/saxon/value/DateTimeValue;->makeDateTimeValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/type/ValidationFailure;

    if-nez v1, :cond_0

    check-cast v0, Lnet/sf/saxon/value/DateTimeValue;

    return-object v0

    :cond_0
    new-instance v1, Ljava/time/format/DateTimeParseException;

    check-cast v0, Lnet/sf/saxon/type/ValidationFailure;

    invoke-virtual {v0}, Lnet/sf/saxon/type/ValidationFailure;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1
.end method


# virtual methods
.method public bridge synthetic add(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/CalendarValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DateTimeValue;->add(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    return-object p0
.end method

.method public add(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/DateTimeValue;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    instance-of v0, p1, Lnet/sf/saxon/value/DayTimeDurationValue;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lnet/sf/saxon/value/DurationValue;->getTotalSeconds()Ljava/math/BigDecimal;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->toJulianInstant()Ljava/math/BigDecimal;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lnet/sf/saxon/value/DateTimeValue;->fromJulianInstant(Ljava/math/BigDecimal;)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/CalendarValue;->setTimezoneInMinutes(I)V

    .line 8
    iget-boolean p0, p0, Lnet/sf/saxon/value/DateTimeValue;->m:Z

    iput-boolean p0, p1, Lnet/sf/saxon/value/DateTimeValue;->m:Z

    return-object p1

    .line 9
    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/value/YearMonthDurationValue;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 10
    check-cast p1, Lnet/sf/saxon/value/YearMonthDurationValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/YearMonthDurationValue;->getLengthInMonths()I

    move-result p1

    .line 11
    iget-byte v0, p0, Lnet/sf/saxon/value/DateTimeValue;->g:B

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 12
    iget p1, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    div-int/lit8 v2, v0, 0xc

    add-int/2addr p1, v2

    .line 13
    rem-int/lit8 v0, v0, 0xc

    if-gez v0, :cond_1

    add-int/lit8 v0, v0, 0xc

    add-int/lit8 p1, p1, -0x1

    :cond_1
    move v3, p1

    add-int/2addr v0, v1

    .line 14
    iget-byte p1, p0, Lnet/sf/saxon/value/DateTimeValue;->h:B

    .line 15
    :goto_0
    invoke-static {v3, v0, p1}, Lnet/sf/saxon/value/GDateValue;->isValidDate(III)Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 16
    :cond_2
    new-instance v1, Lnet/sf/saxon/value/DateTimeValue;

    int-to-byte v4, v0

    int-to-byte v5, p1

    iget-byte v6, p0, Lnet/sf/saxon/value/DateTimeValue;->i:B

    iget-byte v7, p0, Lnet/sf/saxon/value/DateTimeValue;->j:B

    iget-byte v8, p0, Lnet/sf/saxon/value/DateTimeValue;->k:B

    iget v9, p0, Lnet/sf/saxon/value/DateTimeValue;->l:I

    .line 17
    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v10

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lnet/sf/saxon/value/DateTimeValue;-><init>(IBBBBBII)V

    .line 18
    iget-boolean p0, p0, Lnet/sf/saxon/value/DateTimeValue;->m:Z

    iput-boolean p0, v1, Lnet/sf/saxon/value/DateTimeValue;->m:Z

    return-object v1

    .line 19
    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "DateTime arithmetic is not supported on xs:duration, only on its subtypes"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "XPTY0004"

    .line 20
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    .line 22
    throw p0
.end method

.method public bridge synthetic adjustTimezone(I)Lnet/sf/saxon/value/CalendarValue;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DateTimeValue;->adjustTimezone(I)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    return-object p0
.end method

.method public adjustTimezone(I)Lnet/sf/saxon/value/DateTimeValue;
    .locals 13

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/value/DateTimeValue;->copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/CalendarValue;->setTimezoneInMinutes(I)V

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v0

    if-ne v0, p1, :cond_1

    return-object p0

    :cond_1
    sub-int v0, p1, v0

    .line 6
    iget-byte v1, p0, Lnet/sf/saxon/value/DateTimeValue;->i:B

    .line 7
    iget-byte v2, p0, Lnet/sf/saxon/value/DateTimeValue;->j:B

    add-int/2addr v2, v0

    if-ltz v2, :cond_2

    const/16 v0, 0x3b

    if-le v2, v0, :cond_3

    :cond_2
    int-to-double v3, v2

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    div-double/2addr v3, v5

    .line 8
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    add-int/2addr v1, v0

    add-int/lit16 v2, v2, 0x5a0

    .line 9
    rem-int/lit8 v2, v2, 0x3c

    :cond_3
    if-ltz v1, :cond_4

    const/16 v0, 0x18

    if-ge v1, v0, :cond_4

    .line 10
    new-instance v0, Lnet/sf/saxon/value/DateTimeValue;

    iget v4, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    iget-byte v5, p0, Lnet/sf/saxon/value/DateTimeValue;->g:B

    iget-byte v6, p0, Lnet/sf/saxon/value/DateTimeValue;->h:B

    int-to-byte v7, v1

    int-to-byte v8, v2

    iget-byte v9, p0, Lnet/sf/saxon/value/DateTimeValue;->k:B

    iget v10, p0, Lnet/sf/saxon/value/DateTimeValue;->l:I

    move-object v3, v0

    move v11, p1

    invoke-direct/range {v3 .. v11}, Lnet/sf/saxon/value/DateTimeValue;-><init>(IBBBBBII)V

    .line 11
    iget-boolean p0, p0, Lnet/sf/saxon/value/DateTimeValue;->m:Z

    iput-boolean p0, v0, Lnet/sf/saxon/value/DateTimeValue;->m:Z

    return-object v0

    :cond_4
    move-object v0, p0

    :goto_0
    if-gez v1, :cond_5

    add-int/lit8 v1, v1, 0x18

    .line 12
    invoke-virtual {v0}, Lnet/sf/saxon/value/DateTimeValue;->getYear()I

    move-result v3

    invoke-virtual {v0}, Lnet/sf/saxon/value/DateTimeValue;->getMonth()B

    move-result v4

    invoke-virtual {v0}, Lnet/sf/saxon/value/DateTimeValue;->getDay()B

    move-result v0

    invoke-static {v3, v4, v0}, Lnet/sf/saxon/value/DateValue;->yesterday(IBB)Lnet/sf/saxon/value/DateValue;

    move-result-object v0

    .line 13
    new-instance v12, Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/GDateValue;->getYear()I

    move-result v4

    invoke-virtual {v0}, Lnet/sf/saxon/value/GDateValue;->getMonth()B

    move-result v5

    invoke-virtual {v0}, Lnet/sf/saxon/value/GDateValue;->getDay()B

    move-result v6

    int-to-byte v7, v1

    int-to-byte v8, v2

    iget-byte v9, p0, Lnet/sf/saxon/value/DateTimeValue;->k:B

    iget v10, p0, Lnet/sf/saxon/value/DateTimeValue;->l:I

    move-object v3, v12

    move v11, p1

    invoke-direct/range {v3 .. v11}, Lnet/sf/saxon/value/DateTimeValue;-><init>(IBBBBBII)V

    .line 14
    iget-boolean v0, p0, Lnet/sf/saxon/value/DateTimeValue;->m:Z

    iput-boolean v0, v12, Lnet/sf/saxon/value/DateTimeValue;->m:Z

    move-object v0, v12

    goto :goto_0

    :cond_5
    const/16 v3, 0x17

    if-le v1, v3, :cond_6

    add-int/lit8 v1, v1, -0x18

    .line 15
    iget v0, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    iget-byte v3, p0, Lnet/sf/saxon/value/DateTimeValue;->g:B

    iget-byte v4, p0, Lnet/sf/saxon/value/DateTimeValue;->h:B

    invoke-static {v0, v3, v4}, Lnet/sf/saxon/value/DateValue;->tomorrow(IBB)Lnet/sf/saxon/value/DateValue;

    move-result-object v0

    .line 16
    new-instance v12, Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/GDateValue;->getYear()I

    move-result v4

    invoke-virtual {v0}, Lnet/sf/saxon/value/GDateValue;->getMonth()B

    move-result v5

    invoke-virtual {v0}, Lnet/sf/saxon/value/GDateValue;->getDay()B

    move-result v6

    int-to-byte v7, v1

    int-to-byte v8, v2

    iget-byte v9, p0, Lnet/sf/saxon/value/DateTimeValue;->k:B

    iget v10, p0, Lnet/sf/saxon/value/DateTimeValue;->l:I

    move-object v3, v12

    move v11, p1

    invoke-direct/range {v3 .. v11}, Lnet/sf/saxon/value/DateTimeValue;-><init>(IBBBBBII)V

    .line 17
    iget-boolean p0, p0, Lnet/sf/saxon/value/DateTimeValue;->m:Z

    iput-boolean p0, v12, Lnet/sf/saxon/value/DateTimeValue;->m:Z

    move-object v0, v12

    :cond_6
    return-object v0
.end method

.method public adjustToUTC(I)Lnet/sf/saxon/value/DateTimeValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/NoDynamicContextException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/value/DateTimeValue;->adjustTimezone(I)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7fffffff

    if-eq p1, v0, :cond_1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/value/DateTimeValue;->copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/CalendarValue;->setTimezoneInMinutes(I)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/value/DateTimeValue;->adjustTimezone(I)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/NoDynamicContextException;

    const-string p1, "DateTime operation needs access to implicit timezone"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/NoDynamicContextException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkValidInJavascript()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget p0, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    if-lez p0, :cond_0

    const/16 v0, 0x270f

    if-gt p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Year out of range for SaxonJS"

    const-string v1, "FODT0001"

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/expr/sort/XPathComparable;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DateTimeValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I
    .locals 2

    .line 21
    instance-of v0, p1, Lnet/sf/saxon/value/DateTimeValue;

    if-eqz v0, :cond_0

    .line 22
    :try_start_0
    check-cast p1, Lnet/sf/saxon/value/DateTimeValue;

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/value/DateTimeValue;->compareTo(Lnet/sf/saxon/value/CalendarValue;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 23
    :catch_0
    new-instance p0, Ljava/lang/ClassCastException;

    const-string p1, "DateTime comparison requires access to implicit timezone"

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot compare xs:dateTime with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public compareTo(Lnet/sf/saxon/value/CalendarValue;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/NoDynamicContextException;
        }
    .end annotation

    .line 2
    instance-of v0, p1, Lnet/sf/saxon/value/DateTimeValue;

    if-eqz v0, :cond_8

    .line 3
    check-cast p1, Lnet/sf/saxon/value/DateTimeValue;

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 5
    iget p2, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    iget v0, p1, Lnet/sf/saxon/value/DateTimeValue;->f:I

    if-eq p2, v0, :cond_0

    sub-int/2addr p2, v0

    .line 6
    invoke-static {p2}, Lnet/sf/saxon/value/IntegerValue;->signum(I)I

    move-result p0

    return p0

    .line 7
    :cond_0
    iget-byte p2, p0, Lnet/sf/saxon/value/DateTimeValue;->g:B

    iget-byte v0, p1, Lnet/sf/saxon/value/DateTimeValue;->g:B

    if-eq p2, v0, :cond_1

    sub-int/2addr p2, v0

    .line 8
    invoke-static {p2}, Lnet/sf/saxon/value/IntegerValue;->signum(I)I

    move-result p0

    return p0

    .line 9
    :cond_1
    iget-byte p2, p0, Lnet/sf/saxon/value/DateTimeValue;->h:B

    iget-byte v0, p1, Lnet/sf/saxon/value/DateTimeValue;->h:B

    if-eq p2, v0, :cond_2

    sub-int/2addr p2, v0

    .line 10
    invoke-static {p2}, Lnet/sf/saxon/value/IntegerValue;->signum(I)I

    move-result p0

    return p0

    .line 11
    :cond_2
    iget-byte p2, p0, Lnet/sf/saxon/value/DateTimeValue;->i:B

    iget-byte v0, p1, Lnet/sf/saxon/value/DateTimeValue;->i:B

    if-eq p2, v0, :cond_3

    sub-int/2addr p2, v0

    .line 12
    invoke-static {p2}, Lnet/sf/saxon/value/IntegerValue;->signum(I)I

    move-result p0

    return p0

    .line 13
    :cond_3
    iget-byte p2, p0, Lnet/sf/saxon/value/DateTimeValue;->j:B

    iget-byte v0, p1, Lnet/sf/saxon/value/DateTimeValue;->j:B

    if-eq p2, v0, :cond_4

    sub-int/2addr p2, v0

    .line 14
    invoke-static {p2}, Lnet/sf/saxon/value/IntegerValue;->signum(I)I

    move-result p0

    return p0

    .line 15
    :cond_4
    iget-byte p2, p0, Lnet/sf/saxon/value/DateTimeValue;->k:B

    iget-byte v0, p1, Lnet/sf/saxon/value/DateTimeValue;->k:B

    if-eq p2, v0, :cond_5

    sub-int/2addr p2, v0

    .line 16
    invoke-static {p2}, Lnet/sf/saxon/value/IntegerValue;->signum(I)I

    move-result p0

    return p0

    .line 17
    :cond_5
    iget p0, p0, Lnet/sf/saxon/value/DateTimeValue;->l:I

    iget p1, p1, Lnet/sf/saxon/value/DateTimeValue;->l:I

    if-eq p0, p1, :cond_6

    sub-int/2addr p0, p1

    .line 18
    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->signum(I)I

    move-result p0

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0

    .line 19
    :cond_7
    invoke-virtual {p0, p2}, Lnet/sf/saxon/value/DateTimeValue;->adjustToUTC(I)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    invoke-virtual {p1, p2}, Lnet/sf/saxon/value/DateTimeValue;->adjustToUTC(I)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/value/DateTimeValue;->compareTo(Lnet/sf/saxon/value/CalendarValue;I)I

    move-result p0

    return p0

    .line 20
    :cond_8
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DateTime values are not comparable to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DateTimeValue;->copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    return-object p0
.end method

.method public copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/DateTimeValue;
    .locals 10

    .line 2
    new-instance v9, Lnet/sf/saxon/value/DateTimeValue;

    iget v1, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    iget-byte v2, p0, Lnet/sf/saxon/value/DateTimeValue;->g:B

    iget-byte v3, p0, Lnet/sf/saxon/value/DateTimeValue;->h:B

    iget-byte v4, p0, Lnet/sf/saxon/value/DateTimeValue;->i:B

    iget-byte v5, p0, Lnet/sf/saxon/value/DateTimeValue;->j:B

    iget-byte v6, p0, Lnet/sf/saxon/value/DateTimeValue;->k:B

    iget v7, p0, Lnet/sf/saxon/value/DateTimeValue;->l:I

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lnet/sf/saxon/value/DateTimeValue;-><init>(IBBBBBII)V

    .line 4
    iget-boolean p0, p0, Lnet/sf/saxon/value/DateTimeValue;->m:Z

    iput-boolean p0, v9, Lnet/sf/saxon/value/DateTimeValue;->m:Z

    .line 5
    iput-object p1, v9, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-object v9
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/value/DateTimeValue;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DateTimeValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCalendar()Ljava/util/GregorianCalendar;
    .locals 11

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v0

    const v2, 0xea60

    mul-int/2addr v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Ljava/util/SimpleTimeZone;

    const-string v3, "LLL"

    invoke-direct {v2, v0, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/16 v2, 0xf

    invoke-virtual {v3, v2}, Ljava/util/GregorianCalendar;->getMinimum(I)I

    move-result v4

    if-lt v0, v4, :cond_4

    invoke-virtual {v3, v2}, Ljava/util/GregorianCalendar;->getMaximum(I)I

    move-result v4

    if-le v0, v4, :cond_1

    goto :goto_2

    :cond_1
    new-instance v4, Ljava/util/Date;

    const-wide/high16 v5, -0x8000000000000000L

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setLenient(Z)V

    iget v4, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    if-gtz v4, :cond_3

    iget-boolean v5, p0, Lnet/sf/saxon/value/DateTimeValue;->m:Z

    if-eqz v5, :cond_2

    rsub-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    rsub-int/lit8 v4, v4, 0x0

    :goto_1
    invoke-virtual {v3, v1, v1}, Ljava/util/Calendar;->set(II)V

    :cond_3
    move v5, v4

    iget-byte v4, p0, Lnet/sf/saxon/value/DateTimeValue;->g:B

    add-int/lit8 v6, v4, -0x1

    iget-byte v7, p0, Lnet/sf/saxon/value/DateTimeValue;->h:B

    iget-byte v8, p0, Lnet/sf/saxon/value/DateTimeValue;->i:B

    iget-byte v9, p0, Lnet/sf/saxon/value/DateTimeValue;->j:B

    iget-byte v10, p0, Lnet/sf/saxon/value/DateTimeValue;->k:B

    move-object v4, v3

    invoke-virtual/range {v4 .. v10}, Ljava/util/Calendar;->set(IIIIII)V

    iget p0, p0, Lnet/sf/saxon/value/DateTimeValue;->l:I

    const v4, 0xf4240

    div-int/2addr p0, v4

    const/16 v4, 0xe

    invoke-virtual {v3, v4, p0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v3, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0x10

    invoke-virtual {v3, p0, v1}, Ljava/util/Calendar;->set(II)V

    return-object v3

    :cond_4
    :goto_2
    invoke-virtual {p0, v1}, Lnet/sf/saxon/value/DateTimeValue;->adjustTimezone(I)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object p0

    return-object p0
.end method

.method public getCanonicalLexicalRepresentation()Lnet/sf/saxon/str/UnicodeString;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/value/DateTimeValue;->adjustTimezone(I)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/value/DateTimeValue$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown component for dateTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result p0

    int-to-long p0, p0

    const-wide/32 v0, 0xea60

    mul-long/2addr p0, v0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/DayTimeDurationValue;->fromMilliseconds(J)Lnet/sf/saxon/value/DayTimeDurationValue;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    new-instance p1, Lnet/sf/saxon/value/Int64Value;

    iget p0, p0, Lnet/sf/saxon/value/DateTimeValue;->l:I

    int-to-long v0, p0

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    return-object p1

    :pswitch_2
    new-instance p1, Lnet/sf/saxon/value/Int64Value;

    iget p0, p0, Lnet/sf/saxon/value/DateTimeValue;->l:I

    div-int/lit16 p0, p0, 0x3e8

    int-to-long v0, p0

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    return-object p1

    :pswitch_3
    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->k:B

    int-to-long p0, p0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget p1, p0, Lnet/sf/saxon/value/DateTimeValue;->l:I

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/value/BigDecimalValue;->BIG_DECIMAL_ONE_BILLION:Ljava/math/BigDecimal;

    const/4 v1, 0x6

    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p1, v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->k:B

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/value/BigDecimalValue;

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    return-object p1

    :pswitch_5
    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->j:B

    int-to-long p0, p0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :pswitch_6
    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->i:B

    int-to-long p0, p0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :pswitch_7
    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->h:B

    int-to-long p0, p0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :pswitch_8
    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->g:B

    int-to-long p0, p0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :pswitch_9
    iget p1, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    if-gtz p1, :cond_2

    iget-boolean p0, p0, Lnet/sf/saxon/value/DateTimeValue;->m:Z

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    :cond_2
    :goto_0
    int-to-long p0, p1

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :pswitch_a
    iget p0, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    int-to-long p0, p0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDay()B
    .locals 0

    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->h:B

    return p0
.end method

.method public getHour()B
    .locals 0

    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->i:B

    return p0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 7

    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_4

    sget-object v0, Lnet/sf/saxon/value/DateTimeValue$a;->b:[I

    move-object v1, p1

    check-cast v1, Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    const v4, 0xf4240

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result p0

    const/high16 p1, -0x80000000

    if-eq p0, p1, :cond_0

    mul-int/lit8 p0, p0, 0x3c

    int-to-long p0, p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string p1, "xs:dateTime value has no timezone"

    invoke-direct {p0, p1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->secondsSinceEpoch()Ljava/math/BigDecimal;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, v3, p1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide p0

    return-wide p0

    :pswitch_2
    iget p0, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    if-gez p0, :cond_1

    const-wide/16 v1, 0x0

    :cond_1
    return-wide v1

    :pswitch_3
    iget p0, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    int-to-long p0, p0

    return-wide p0

    :pswitch_4
    iget p1, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p0, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    if-gez p0, :cond_2

    move v3, v5

    :cond_2
    add-int/2addr p1, v3

    int-to-long p0, p1

    return-wide p0

    :pswitch_5
    iget p1, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    mul-int/lit8 p1, p1, 0xc

    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->g:B

    add-int/2addr p1, p0

    sub-int/2addr p1, v5

    int-to-long p0, p1

    return-wide p0

    :pswitch_6
    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->g:B

    int-to-long p0, p0

    return-wide p0

    :pswitch_7
    iget p1, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    iget-byte v0, p0, Lnet/sf/saxon/value/DateTimeValue;->g:B

    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->h:B

    invoke-static {p1, v0, p0}, Lnet/sf/saxon/value/DateValue;->getDayWithinYear(III)I

    move-result p0

    sub-int/2addr p0, v5

    div-int/lit8 p0, p0, 0x7

    add-int/2addr p0, v5

    int-to-long p0, p0

    return-wide p0

    :pswitch_8
    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->h:B

    sub-int/2addr p0, v5

    div-int/lit8 p0, p0, 0x7

    add-int/2addr p0, v5

    int-to-long p0, p0

    return-wide p0

    :pswitch_9
    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->secondsSinceEpoch()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->secondsSinceEpoch()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0x15180

    div-long/2addr v3, v5

    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result p0

    if-gez p0, :cond_3

    sub-long/2addr v3, v1

    :cond_3
    return-wide v3

    :pswitch_a
    iget p1, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    iget-byte v0, p0, Lnet/sf/saxon/value/DateTimeValue;->g:B

    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->h:B

    invoke-static {p1, v0, p0}, Lnet/sf/saxon/value/DateValue;->getDayWithinYear(III)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :pswitch_b
    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->h:B

    int-to-long p0, p0

    return-wide p0

    :pswitch_c
    iget p1, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    iget-byte v0, p0, Lnet/sf/saxon/value/DateTimeValue;->g:B

    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->h:B

    invoke-static {p1, v0, p0}, Lnet/sf/saxon/value/DateValue;->getDayWithinYear(III)I

    move-result p0

    sub-int/2addr p0, v5

    rem-int/lit8 p0, p0, 0x7

    add-int/2addr p0, v5

    int-to-long p0, p0

    return-wide p0

    :pswitch_d
    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->h:B

    sub-int/2addr p0, v5

    rem-int/lit8 p0, p0, 0x7

    add-int/2addr p0, v5

    int-to-long p0, p0

    return-wide p0

    :pswitch_e
    iget p1, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    iget-byte v0, p0, Lnet/sf/saxon/value/DateTimeValue;->g:B

    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->h:B

    invoke-static {p1, v0, p0}, Lnet/sf/saxon/value/DateValue;->getDayOfWeek(III)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :pswitch_f
    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->i:B

    div-int/lit8 p0, p0, 0xc

    int-to-long p0, p0

    return-wide p0

    :pswitch_10
    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->i:B

    add-int/lit8 p0, p0, 0x17

    rem-int/lit8 p0, p0, 0x18

    add-int/2addr p0, v5

    int-to-long p0, p0

    return-wide p0

    :pswitch_11
    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->i:B

    int-to-long p0, p0

    return-wide p0

    :pswitch_12
    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->i:B

    add-int/lit8 p0, p0, 0xb

    rem-int/lit8 p0, p0, 0xc

    add-int/2addr p0, v5

    int-to-long p0, p0

    return-wide p0

    :pswitch_13
    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->i:B

    rem-int/lit8 p0, p0, 0xc

    int-to-long p0, p0

    return-wide p0

    :pswitch_14
    iget-byte p1, p0, Lnet/sf/saxon/value/DateTimeValue;->i:B

    mul-int/lit8 p1, p1, 0x3c

    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->j:B

    add-int/2addr p1, p0

    int-to-long p0, p1

    return-wide p0

    :pswitch_15
    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->j:B

    int-to-long p0, p0

    return-wide p0

    :pswitch_16
    iget-byte p1, p0, Lnet/sf/saxon/value/DateTimeValue;->i:B

    mul-int/lit16 p1, p1, 0xe10

    iget-byte v0, p0, Lnet/sf/saxon/value/DateTimeValue;->j:B

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr p1, v0

    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->k:B

    add-int/2addr p1, p0

    int-to-long p0, p1

    return-wide p0

    :pswitch_17
    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->k:B

    int-to-long p0, p0

    return-wide p0

    :pswitch_18
    iget-byte p1, p0, Lnet/sf/saxon/value/DateTimeValue;->i:B

    mul-int/lit16 p1, p1, 0xe10

    iget-byte v0, p0, Lnet/sf/saxon/value/DateTimeValue;->j:B

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr p1, v0

    iget-byte v0, p0, Lnet/sf/saxon/value/DateTimeValue;->k:B

    add-int/2addr p1, v0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget p0, p0, Lnet/sf/saxon/value/DateTimeValue;->l:I

    div-int/2addr p0, v4

    :goto_0
    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0

    :pswitch_19
    iget p0, p0, Lnet/sf/saxon/value/DateTimeValue;->l:I

    div-int/2addr p0, v4

    int-to-long p0, p0

    return-wide p0

    :pswitch_1a
    iget-byte p1, p0, Lnet/sf/saxon/value/DateTimeValue;->i:B

    mul-int/lit16 p1, p1, 0xe10

    iget-byte v0, p0, Lnet/sf/saxon/value/DateTimeValue;->j:B

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr p1, v0

    iget-byte v0, p0, Lnet/sf/saxon/value/DateTimeValue;->k:B

    add-int/2addr p1, v0

    int-to-long v0, p1

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget p0, p0, Lnet/sf/saxon/value/DateTimeValue;->l:I

    div-int/lit16 p0, p0, 0x3e8

    goto :goto_0

    :pswitch_1b
    iget p0, p0, Lnet/sf/saxon/value/DateTimeValue;->l:I

    div-int/lit16 p0, p0, 0x3e8

    int-to-long p0, p0

    return-wide p0

    :pswitch_1c
    iget-byte p1, p0, Lnet/sf/saxon/value/DateTimeValue;->i:B

    mul-int/lit16 p1, p1, 0xe10

    iget-byte v0, p0, Lnet/sf/saxon/value/DateTimeValue;->j:B

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr p1, v0

    iget-byte v0, p0, Lnet/sf/saxon/value/DateTimeValue;->k:B

    add-int/2addr p1, v0

    int-to-long v0, p1

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    iget p0, p0, Lnet/sf/saxon/value/DateTimeValue;->l:I

    goto :goto_0

    :pswitch_1d
    iget p0, p0, Lnet/sf/saxon/value/DateTimeValue;->l:I

    int-to-long p0, p0

    return-wide p0

    :cond_4
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide p0

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMicrosecond()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/value/DateTimeValue;->l:I

    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public getMinute()B
    .locals 0

    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->j:B

    return p0
.end method

.method public getMonth()B
    .locals 0

    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->g:B

    return p0
.end method

.method public getNanosecond()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/value/DateTimeValue;->l:I

    return p0
.end method

.method public getPrimitiveStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 5

    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    iget v1, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    const/16 v2, 0x2d

    if-gtz v1, :cond_0

    neg-int v1, v1

    iget-boolean v3, p0, Lnet/sf/saxon/value/DateTimeValue;->m:Z

    add-int/2addr v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_0
    const/16 v3, 0x270f

    if-le v1, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    :goto_0
    invoke-static {v0, v1, v3}, Lnet/sf/saxon/value/CalendarValue;->appendString(Lnet/sf/saxon/str/UnicodeBuilder;II)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    iget-byte v1, p0, Lnet/sf/saxon/value/DateTimeValue;->g:B

    invoke-static {v0, v1}, Lnet/sf/saxon/value/CalendarValue;->appendTwoDigits(Lnet/sf/saxon/str/UnicodeBuilder;I)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    iget-byte v1, p0, Lnet/sf/saxon/value/DateTimeValue;->h:B

    invoke-static {v0, v1}, Lnet/sf/saxon/value/CalendarValue;->appendTwoDigits(Lnet/sf/saxon/str/UnicodeBuilder;I)V

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    iget-byte v1, p0, Lnet/sf/saxon/value/DateTimeValue;->i:B

    invoke-static {v0, v1}, Lnet/sf/saxon/value/CalendarValue;->appendTwoDigits(Lnet/sf/saxon/str/UnicodeBuilder;I)V

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    iget-byte v2, p0, Lnet/sf/saxon/value/DateTimeValue;->j:B

    invoke-static {v0, v2}, Lnet/sf/saxon/value/CalendarValue;->appendTwoDigits(Lnet/sf/saxon/str/UnicodeBuilder;I)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    iget-byte v1, p0, Lnet/sf/saxon/value/DateTimeValue;->k:B

    invoke-static {v0, v1}, Lnet/sf/saxon/value/CalendarValue;->appendTwoDigits(Lnet/sf/saxon/str/UnicodeBuilder;I)V

    iget v1, p0, Lnet/sf/saxon/value/DateTimeValue;->l:I

    if-eqz v1, :cond_2

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    iget v1, p0, Lnet/sf/saxon/value/DateTimeValue;->l:I

    const v2, 0x5f5e100

    :goto_1
    if-lez v1, :cond_2

    div-int v3, v1, v2

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr v1, v2

    div-int/lit8 v2, v2, 0xa

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lnet/sf/saxon/value/CalendarValue;->appendTimezone(Lnet/sf/saxon/str/UnicodeBuilder;)V

    :cond_3
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public getSchemaComparable()Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;-><init>(Lnet/sf/saxon/value/DateTimeValue;)V

    return-object v0
.end method

.method public getSecond()B
    .locals 0

    iget-byte p0, p0, Lnet/sf/saxon/value/DateTimeValue;->k:B

    return p0
.end method

.method public getXPathComparable(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/XPathComparable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/NoDynamicContextException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const p1, 0x7fffffff

    if-eq p2, p1, :cond_1

    invoke-virtual {p0, p2}, Lnet/sf/saxon/value/DateTimeValue;->adjustTimezone(I)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/NoDynamicContextException;

    const-string p1, "Unknown implicit timezone"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/NoDynamicContextException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getYear()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    return p0
.end method

.method public hashCode()I
    .locals 8

    iget v0, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    iget-byte v1, p0, Lnet/sf/saxon/value/DateTimeValue;->g:B

    iget-byte v2, p0, Lnet/sf/saxon/value/DateTimeValue;->h:B

    iget-byte v3, p0, Lnet/sf/saxon/value/DateTimeValue;->i:B

    iget-byte v4, p0, Lnet/sf/saxon/value/DateTimeValue;->j:B

    iget-byte v5, p0, Lnet/sf/saxon/value/DateTimeValue;->k:B

    iget v6, p0, Lnet/sf/saxon/value/DateTimeValue;->l:I

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v7

    invoke-static/range {v0 .. v7}, Lnet/sf/saxon/value/DateTimeValue;->computeHashCode(IBBBBBII)I

    move-result p0

    return p0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 2

    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result p0

    const/high16 p1, -0x80000000

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result p0

    return p0
.end method

.method public isXsd10Rules()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/value/DateTimeValue;->m:Z

    return p0
.end method

.method public final l(J)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p1, p2}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public randomSeed()J
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public secondsSinceEpoch()Ljava/math/BigDecimal;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/value/DateTimeValue;->adjustToUTC(I)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->toJulianInstant()Ljava/math/BigDecimal;

    move-result-object p0

    sget-object v0, Lnet/sf/saxon/value/DateTimeValue;->EPOCH:Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/DateTimeValue;->toJulianInstant()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/NoDynamicContextException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public subtract(Lnet/sf/saxon/value/CalendarValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/DayTimeDurationValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/value/DateTimeValue;

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/value/CalendarValue;->subtract(Lnet/sf/saxon/value/CalendarValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/DayTimeDurationValue;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "First operand of \'-\' is a dateTime, but the second is not"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "XPTY0004"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw p0
.end method

.method public toDateTime()Lnet/sf/saxon/value/DateTimeValue;
    .locals 0

    return-object p0
.end method

.method public toDateValue()Lnet/sf/saxon/value/DateValue;
    .locals 7

    new-instance v6, Lnet/sf/saxon/value/DateValue;

    iget v1, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    iget-byte v2, p0, Lnet/sf/saxon/value/DateTimeValue;->g:B

    iget-byte v3, p0, Lnet/sf/saxon/value/DateTimeValue;->h:B

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v4

    iget-boolean v5, p0, Lnet/sf/saxon/value/DateTimeValue;->m:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/sf/saxon/value/DateValue;-><init>(IBBIZ)V

    return-object v6
.end method

.method public toJavaInstant()Ljava/time/Instant;
    .locals 0

    invoke-static {p0}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public toJulianInstant()Ljava/math/BigDecimal;
    .locals 8

    iget v0, p0, Lnet/sf/saxon/value/DateTimeValue;->f:I

    iget-byte v1, p0, Lnet/sf/saxon/value/DateTimeValue;->g:B

    iget-byte v2, p0, Lnet/sf/saxon/value/DateTimeValue;->h:B

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/value/DateValue;->getJulianDayNumber(III)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x18

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    iget-byte v4, p0, Lnet/sf/saxon/value/DateTimeValue;->i:B

    int-to-long v4, v4

    mul-long/2addr v4, v2

    iget-byte v6, p0, Lnet/sf/saxon/value/DateTimeValue;->j:B

    int-to-long v6, v6

    add-long/2addr v4, v6

    mul-long/2addr v4, v2

    iget-byte v2, p0, Lnet/sf/saxon/value/DateTimeValue;->k:B

    int-to-long v2, v2

    add-long/2addr v4, v2

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iget p0, p0, Lnet/sf/saxon/value/DateTimeValue;->l:I

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    sget-object v1, Lnet/sf/saxon/value/BigDecimalValue;->BIG_DECIMAL_ONE_BILLION:Ljava/math/BigDecimal;

    const/16 v2, 0x9

    sget-object v3, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {p0, v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public toLocalDateTime()Ljava/time/LocalDateTime;
    .locals 0

    invoke-static {p0}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public toOffsetDateTime()Ljava/time/OffsetDateTime;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/time/OffsetDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetDateTime;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/value/DateTimeValue;->adjustToUTC(I)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    invoke-static {p0}, Ljava/time/OffsetDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetDateTime;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/NoDynamicContextException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public toTimeValue()Lnet/sf/saxon/value/TimeValue;
    .locals 8

    new-instance v7, Lnet/sf/saxon/value/TimeValue;

    iget-byte v1, p0, Lnet/sf/saxon/value/DateTimeValue;->i:B

    iget-byte v2, p0, Lnet/sf/saxon/value/DateTimeValue;->j:B

    iget-byte v3, p0, Lnet/sf/saxon/value/DateTimeValue;->k:B

    iget v4, p0, Lnet/sf/saxon/value/DateTimeValue;->l:I

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v5

    const-string v6, ""

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/sf/saxon/value/TimeValue;-><init>(BBBIILjava/lang/String;)V

    return-object v7
.end method

.method public toZonedDateTime()Ljava/time/ZonedDateTime;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/time/ZonedDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/value/DateTimeValue;->adjustToUTC(I)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    invoke-static {p0}, Ljava/time/ZonedDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/NoDynamicContextException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
