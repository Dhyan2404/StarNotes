.class public Lnet/sf/saxon/value/DateValue;
.super Lnet/sf/saxon/value/GDateValue;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/XPathComparable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/value/GDateValue;-><init>()V

    return-void
.end method

.method public constructor <init>(IBB)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lnet/sf/saxon/value/GDateValue;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lnet/sf/saxon/value/GDateValue;->hasNoYearZero:Z

    .line 4
    iput p1, p0, Lnet/sf/saxon/value/GDateValue;->year:I

    .line 5
    iput-byte p2, p0, Lnet/sf/saxon/value/GDateValue;->month:B

    .line 6
    iput-byte p3, p0, Lnet/sf/saxon/value/GDateValue;->day:B

    .line 7
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public constructor <init>(IBBILnet/sf/saxon/type/AtomicType;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lnet/sf/saxon/value/GDateValue;-><init>()V

    .line 22
    iput p1, p0, Lnet/sf/saxon/value/GDateValue;->year:I

    .line 23
    iput-byte p2, p0, Lnet/sf/saxon/value/GDateValue;->month:B

    .line 24
    iput-byte p3, p0, Lnet/sf/saxon/value/GDateValue;->day:B

    .line 25
    invoke-virtual {p0, p4}, Lnet/sf/saxon/value/CalendarValue;->setTimezoneInMinutes(I)V

    .line 26
    iput-object p5, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public constructor <init>(IBBIZ)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lnet/sf/saxon/value/GDateValue;-><init>()V

    .line 15
    iput-boolean p5, p0, Lnet/sf/saxon/value/GDateValue;->hasNoYearZero:Z

    .line 16
    iput p1, p0, Lnet/sf/saxon/value/GDateValue;->year:I

    .line 17
    iput-byte p2, p0, Lnet/sf/saxon/value/GDateValue;->month:B

    .line 18
    iput-byte p3, p0, Lnet/sf/saxon/value/GDateValue;->day:B

    .line 19
    invoke-virtual {p0, p4}, Lnet/sf/saxon/value/CalendarValue;->setTimezoneInMinutes(I)V

    .line 20
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public constructor <init>(IBBZ)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lnet/sf/saxon/value/GDateValue;-><init>()V

    .line 9
    iput-boolean p4, p0, Lnet/sf/saxon/value/GDateValue;->hasNoYearZero:Z

    .line 10
    iput p1, p0, Lnet/sf/saxon/value/GDateValue;->year:I

    .line 11
    iput-byte p2, p0, Lnet/sf/saxon/value/GDateValue;->month:B

    .line 12
    iput-byte p3, p0, Lnet/sf/saxon/value/GDateValue;->day:B

    .line 13
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public constructor <init>(Ljava/time/LocalDate;)V
    .locals 2

    .line 31
    invoke-virtual {p1}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result p1

    int-to-byte p1, p1

    invoke-direct {p0, v0, v1, p1}, Lnet/sf/saxon/value/DateValue;-><init>(IBB)V

    return-void
.end method

.method public constructor <init>(Ljava/util/GregorianCalendar;I)V
    .locals 3

    .line 32
    invoke-direct {p0}, Lnet/sf/saxon/value/GDateValue;-><init>()V

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    .line 34
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lnet/sf/saxon/value/GDateValue;->year:I

    if-nez v0, :cond_0

    rsub-int/lit8 v0, v2, 0x1

    .line 35
    iput v0, p0, Lnet/sf/saxon/value/GDateValue;->year:I

    :cond_0
    const/4 v0, 0x2

    .line 36
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lnet/sf/saxon/value/GDateValue;->month:B

    const/4 v0, 0x5

    .line 37
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lnet/sf/saxon/value/GDateValue;->day:B

    .line 38
    invoke-virtual {p0, p2}, Lnet/sf/saxon/value/CalendarValue;->setTimezoneInMinutes(I)V

    .line 39
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/ValidationException;
        }
    .end annotation

    .line 27
    sget-object v0, Lnet/sf/saxon/lib/ConversionRules;->DEFAULT:Lnet/sf/saxon/lib/ConversionRules;

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/value/DateValue;-><init>(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/ConversionRules;)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/ConversionRules;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/ValidationException;
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lnet/sf/saxon/value/GDateValue;-><init>()V

    .line 29
    invoke-virtual {p2}, Lnet/sf/saxon/lib/ConversionRules;->isAllowYearZero()Z

    move-result p2

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/value/GDateValue;->setLexicalValue(Lnet/sf/saxon/value/GDateValue;Lnet/sf/saxon/str/UnicodeString;Z)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    .line 30
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public static dateFromJulianDayNumber(I)Lnet/sf/saxon/value/DateValue;
    .locals 6

    if-ltz p0, :cond_0

    const v0, 0x10bd9

    add-int/2addr p0, v0

    const/4 v0, 0x1

    add-int/2addr p0, v0

    mul-int/lit8 v1, p0, 0x4

    const v2, 0x23ab1

    div-int/2addr v1, v2

    mul-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr p0, v2

    add-int/lit8 v2, p0, 0x1

    mul-int/lit16 v2, v2, 0xfa0

    const v3, 0x164b09

    div-int/2addr v2, v3

    mul-int/lit16 v3, v2, 0x5b5

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr p0, v3

    add-int/lit8 p0, p0, 0x1f

    mul-int/lit8 v3, p0, 0x50

    div-int/lit16 v3, v3, 0x98f

    mul-int/lit16 v4, v3, 0x98f

    div-int/lit8 v4, v4, 0x50

    sub-int/2addr p0, v4

    div-int/lit8 v4, v3, 0xb

    add-int/lit8 v3, v3, 0x2

    mul-int/lit8 v5, v4, 0xc

    sub-int/2addr v3, v5

    add-int/lit8 v1, v1, -0x31

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v1, v2

    add-int/2addr v1, v4

    new-instance v2, Lnet/sf/saxon/value/DateValue;

    int-to-byte v3, v3

    int-to-byte p0, p0

    invoke-direct {v2, v1, v3, p0, v0}, Lnet/sf/saxon/value/DateValue;-><init>(IBBZ)V

    return-object v2

    :cond_0
    const v0, 0x42d560

    add-int/2addr p0, v0

    add-int/lit16 p0, p0, 0xbb8

    add-int/lit8 p0, p0, -0x78

    add-int/lit8 p0, p0, 0x1e

    invoke-static {p0}, Lnet/sf/saxon/value/DateValue;->dateFromJulianDayNumber(I)Lnet/sf/saxon/value/DateValue;

    move-result-object p0

    iget v0, p0, Lnet/sf/saxon/value/GDateValue;->year:I

    add-int/lit16 v0, v0, -0x2ee0

    iput v0, p0, Lnet/sf/saxon/value/GDateValue;->year:I

    return-object p0
.end method

.method public static getDayOfWeek(III)I
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/value/DateValue;->getJulianDayNumber(III)I

    move-result p0

    const p1, 0x244b04

    sub-int/2addr p0, p1

    :goto_0
    if-gtz p0, :cond_0

    const p1, 0x42c1d80

    add-int/2addr p0, p1

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    rem-int/lit8 p0, p0, 0x7

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static getDayWithinYear(III)I
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/value/DateValue;->getJulianDayNumber(III)I

    move-result p1

    const/4 p2, 0x1

    invoke-static {p0, p2, p2}, Lnet/sf/saxon/value/DateValue;->getJulianDayNumber(III)I

    move-result p0

    sub-int/2addr p1, p0

    add-int/2addr p1, p2

    return p1
.end method

.method public static getJulianDayNumber(III)I
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sub-int/2addr p0, v0

    .line 1
    sget-object v0, Lnet/sf/saxon/value/GDateValue;->monthData:[S

    sub-int/2addr p1, v1

    aget-short p1, v0, p1

    const v0, 0x1a431e

    if-ltz p0, :cond_1

    add-int/2addr p2, p1

    mul-int/lit16 p1, p0, 0x16d

    add-int/2addr p2, p1

    .line 2
    div-int/lit8 p1, p0, 0x4

    add-int/2addr p2, p1

    div-int/lit8 p1, p0, 0x64

    sub-int/2addr p2, p1

    div-int/lit16 p0, p0, 0x190

    add-int/2addr p2, p0

    add-int/2addr p2, v0

    return p2

    :cond_1
    add-int/lit16 p0, p0, 0x2ee0

    add-int/2addr p2, p1

    mul-int/lit16 p1, p0, 0x16d

    add-int/2addr p2, p1

    .line 3
    div-int/lit8 p1, p0, 0x4

    add-int/2addr p2, p1

    div-int/lit8 p1, p0, 0x64

    sub-int/2addr p2, p1

    div-int/lit16 p0, p0, 0x190

    add-int/2addr p2, p0

    add-int/2addr p2, v0

    const p0, 0x42e0be

    sub-int/2addr p2, p0

    return p2
.end method

.method public static getWeekNumber(III)I
    .locals 0

    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p0

    sget-object p1, Ljava/time/temporal/WeekFields;->ISO:Ljava/time/temporal/WeekFields;

    invoke-virtual {p1}, Ljava/time/temporal/WeekFields;->weekOfWeekBasedYear()Ljava/time/temporal/TemporalField;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result p0

    return p0
.end method

.method public static getWeekNumberWithinMonth(III)I
    .locals 4

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lnet/sf/saxon/value/DateValue;->getDayOfWeek(III)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    add-int v2, v1, p2

    const/16 v3, 0x8

    if-gt v2, v3, :cond_0

    int-to-byte p1, p1

    invoke-static {p0, p1, v0}, Lnet/sf/saxon/value/DateValue;->yesterday(IBB)Lnet/sf/saxon/value/DateValue;

    move-result-object p0

    iget p1, p0, Lnet/sf/saxon/value/GDateValue;->year:I

    iget-byte p2, p0, Lnet/sf/saxon/value/GDateValue;->month:B

    iget-byte p0, p0, Lnet/sf/saxon/value/GDateValue;->day:B

    invoke-static {p1, p2, p0}, Lnet/sf/saxon/value/DateValue;->getWeekNumberWithinMonth(III)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x5

    if-ge v1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p2, v1

    add-int/lit8 p2, p2, -0x2

    div-int/lit8 p2, p2, 0x7

    add-int/2addr p2, v0

    return p2
.end method

.method public static makeDateValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ConversionResult;
    .locals 2

    new-instance v0, Lnet/sf/saxon/value/DateValue;

    invoke-direct {v0}, Lnet/sf/saxon/value/DateValue;-><init>()V

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object v1, v0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {p1}, Lnet/sf/saxon/lib/ConversionRules;->isAllowYearZero()Z

    move-result p1

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/value/GDateValue;->setLexicalValue(Lnet/sf/saxon/value/GDateValue;Lnet/sf/saxon/str/UnicodeString;Z)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    return-object p0
.end method

.method public static tomorrow(IBB)Lnet/sf/saxon/value/DateValue;
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p2, v0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/value/GDateValue;->isValidDate(III)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lnet/sf/saxon/value/DateValue;

    int-to-byte p2, p2

    invoke-direct {v1, p0, p1, p2, v0}, Lnet/sf/saxon/value/DateValue;-><init>(IBBZ)V

    return-object v1

    :cond_0
    const/16 p2, 0xc

    if-ge p1, p2, :cond_1

    new-instance p2, Lnet/sf/saxon/value/DateValue;

    add-int/2addr p1, v0

    int-to-byte p1, p1

    invoke-direct {p2, p0, p1, v0, v0}, Lnet/sf/saxon/value/DateValue;-><init>(IBBZ)V

    return-object p2

    :cond_1
    new-instance p1, Lnet/sf/saxon/value/DateValue;

    add-int/2addr p0, v0

    invoke-direct {p1, p0, v0, v0, v0}, Lnet/sf/saxon/value/DateValue;-><init>(IBBZ)V

    return-object p1
.end method

.method public static yesterday(IBB)Lnet/sf/saxon/value/DateValue;
    .locals 4

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    new-instance v1, Lnet/sf/saxon/value/DateValue;

    sub-int/2addr p2, v0

    int-to-byte p2, p2

    invoke-direct {v1, p0, p1, p2, v0}, Lnet/sf/saxon/value/DateValue;-><init>(IBBZ)V

    return-object v1

    :cond_0
    if-le p1, v0, :cond_2

    const/4 p2, 0x3

    const/4 v1, 0x2

    if-ne p1, p2, :cond_1

    invoke-static {p0}, Lnet/sf/saxon/value/GDateValue;->isLeapYear(I)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p1, Lnet/sf/saxon/value/DateValue;

    const/16 p2, 0x1d

    invoke-direct {p1, p0, v1, p2, v0}, Lnet/sf/saxon/value/DateValue;-><init>(IBBZ)V

    return-object p1

    :cond_1
    new-instance p2, Lnet/sf/saxon/value/DateValue;

    add-int/lit8 v2, p1, -0x1

    int-to-byte v2, v2

    sget-object v3, Lnet/sf/saxon/value/GDateValue;->daysPerMonth:[B

    sub-int/2addr p1, v1

    aget-byte p1, v3, p1

    invoke-direct {p2, p0, v2, p1, v0}, Lnet/sf/saxon/value/DateValue;-><init>(IBBZ)V

    return-object p2

    :cond_2
    new-instance p1, Lnet/sf/saxon/value/DateValue;

    sub-int/2addr p0, v0

    const/16 p2, 0xc

    const/16 v1, 0x1f

    invoke-direct {p1, p0, p2, v1, v0}, Lnet/sf/saxon/value/DateValue;-><init>(IBBZ)V

    return-object p1
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
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DateValue;->add(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/DateValue;

    move-result-object p0

    return-object p0
.end method

.method public add(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/DateValue;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    instance-of v0, p1, Lnet/sf/saxon/value/DayTimeDurationValue;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 3
    check-cast p1, Lnet/sf/saxon/value/DayTimeDurationValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/DayTimeDurationValue;->getLengthInMicroseconds()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    const/4 v0, 0x0

    if-gez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 4
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    long-to-double v6, v2

    const-wide v8, 0x42341dd760000000L    # 8.64E10

    div-double/2addr v6, v8

    .line 5
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    const-wide v7, 0x141dd76000L

    .line 6
    rem-long/2addr v2, v7

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 7
    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/value/DateValue;->getJulianDayNumber()I

    move-result v0

    if-eqz p1, :cond_2

    neg-int v6, v6

    :cond_2
    add-int/2addr v0, v6

    .line 8
    invoke-static {v0}, Lnet/sf/saxon/value/DateValue;->dateFromJulianDayNumber(I)Lnet/sf/saxon/value/DateValue;

    move-result-object v0

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 9
    iget p1, v0, Lnet/sf/saxon/value/GDateValue;->year:I

    iget-byte v1, v0, Lnet/sf/saxon/value/GDateValue;->month:B

    iget-byte v0, v0, Lnet/sf/saxon/value/GDateValue;->day:B

    invoke-static {p1, v1, v0}, Lnet/sf/saxon/value/DateValue;->yesterday(IBB)Lnet/sf/saxon/value/DateValue;

    move-result-object v0

    .line 10
    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/value/CalendarValue;->setTimezoneInMinutes(I)V

    .line 11
    iget-boolean p0, p0, Lnet/sf/saxon/value/GDateValue;->hasNoYearZero:Z

    iput-boolean p0, v0, Lnet/sf/saxon/value/GDateValue;->hasNoYearZero:Z

    return-object v0

    .line 12
    :cond_4
    instance-of v0, p1, Lnet/sf/saxon/value/YearMonthDurationValue;

    if-eqz v0, :cond_7

    .line 13
    check-cast p1, Lnet/sf/saxon/value/YearMonthDurationValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/YearMonthDurationValue;->getLengthInMonths()I

    move-result p1

    .line 14
    iget-byte v0, p0, Lnet/sf/saxon/value/GDateValue;->month:B

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 15
    iget p1, p0, Lnet/sf/saxon/value/GDateValue;->year:I

    div-int/lit8 v2, v0, 0xc

    add-int/2addr p1, v2

    .line 16
    rem-int/lit8 v0, v0, 0xc

    if-gez v0, :cond_5

    add-int/lit8 v0, v0, 0xc

    add-int/lit8 p1, p1, -0x1

    :cond_5
    move v3, p1

    add-int/2addr v0, v1

    .line 17
    iget-byte p1, p0, Lnet/sf/saxon/value/GDateValue;->day:B

    .line 18
    :goto_2
    invoke-static {v3, v0, p1}, Lnet/sf/saxon/value/GDateValue;->isValidDate(III)Z

    move-result v1

    if-nez v1, :cond_6

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 19
    :cond_6
    new-instance v1, Lnet/sf/saxon/value/DateValue;

    int-to-byte v4, v0

    int-to-byte v5, p1

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v6

    iget-boolean v7, p0, Lnet/sf/saxon/value/GDateValue;->hasNoYearZero:Z

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lnet/sf/saxon/value/DateValue;-><init>(IBBIZ)V

    return-object v1

    .line 20
    :cond_7
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Date arithmetic is not available for xs:duration, only for its subtypes"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    const-string p1, "XPTY0004"

    .line 22
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 23
    throw p0
.end method

.method public bridge synthetic adjustTimezone(I)Lnet/sf/saxon/value/CalendarValue;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DateValue;->adjustTimezone(I)Lnet/sf/saxon/value/DateValue;

    move-result-object p0

    return-object p0
.end method

.method public adjustTimezone(I)Lnet/sf/saxon/value/DateValue;
    .locals 7

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/value/GDateValue;->toDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/value/DateTimeValue;->adjustTimezone(I)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p1

    .line 3
    new-instance v6, Lnet/sf/saxon/value/DateValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/DateTimeValue;->getYear()I

    move-result v1

    invoke-virtual {p1}, Lnet/sf/saxon/value/DateTimeValue;->getMonth()B

    move-result v2

    invoke-virtual {p1}, Lnet/sf/saxon/value/DateTimeValue;->getDay()B

    move-result v3

    invoke-virtual {p1}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v4

    iget-boolean v5, p0, Lnet/sf/saxon/value/GDateValue;->hasNoYearZero:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/sf/saxon/value/DateValue;-><init>(IBBIZ)V

    return-object v6
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/expr/sort/XPathComparable;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DateValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I
    .locals 2

    .line 2
    instance-of v0, p1, Lnet/sf/saxon/value/DateValue;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    check-cast p1, Lnet/sf/saxon/value/DateValue;

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/value/GDateValue;->compareTo(Lnet/sf/saxon/value/CalendarValue;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 4
    :catch_0
    new-instance p0, Ljava/lang/ClassCastException;

    const-string p1, "Date comparison requires access to implicit timezone"

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot compare xs:date to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/AtomicValue;
    .locals 7

    new-instance v6, Lnet/sf/saxon/value/DateValue;

    iget v1, p0, Lnet/sf/saxon/value/GDateValue;->year:I

    iget-byte v2, p0, Lnet/sf/saxon/value/GDateValue;->month:B

    iget-byte v3, p0, Lnet/sf/saxon/value/GDateValue;->day:B

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v4

    iget-boolean v5, p0, Lnet/sf/saxon/value/GDateValue;->hasNoYearZero:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/sf/saxon/value/DateValue;-><init>(IBBIZ)V

    iput-object p1, v6, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-object v6
.end method

.method public getCanonicalLexicalRepresentation()Lnet/sf/saxon/str/UnicodeString;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v0

    const/16 v1, 0x2d0

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v0

    add-int/lit16 v0, v0, -0x5a0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/value/DateValue;->adjustTimezone(I)Lnet/sf/saxon/value/DateValue;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v0

    const/16 v1, -0x2d0

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v0

    add-int/lit16 v0, v0, 0x5a0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/value/DateValue;->adjustTimezone(I)Lnet/sf/saxon/value/DateValue;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public getJulianDayNumber()I
    .locals 2

    .line 4
    iget v0, p0, Lnet/sf/saxon/value/GDateValue;->year:I

    iget-byte v1, p0, Lnet/sf/saxon/value/GDateValue;->month:B

    iget-byte p0, p0, Lnet/sf/saxon/value/GDateValue;->day:B

    invoke-static {v0, v1, p0}, Lnet/sf/saxon/value/DateValue;->getJulianDayNumber(III)I

    move-result p0

    return p0
.end method

.method public getPrimitiveStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 5

    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    iget v1, p0, Lnet/sf/saxon/value/GDateValue;->year:I

    const/16 v2, 0x2d

    if-gtz v1, :cond_0

    neg-int v1, v1

    iget-boolean v3, p0, Lnet/sf/saxon/value/GDateValue;->hasNoYearZero:Z

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

    iget-byte v1, p0, Lnet/sf/saxon/value/GDateValue;->month:B

    invoke-static {v0, v1}, Lnet/sf/saxon/value/CalendarValue;->appendTwoDigits(Lnet/sf/saxon/str/UnicodeBuilder;I)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    iget-byte v1, p0, Lnet/sf/saxon/value/GDateValue;->day:B

    invoke-static {v0, v1}, Lnet/sf/saxon/value/CalendarValue;->appendTwoDigits(Lnet/sf/saxon/str/UnicodeBuilder;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lnet/sf/saxon/value/CalendarValue;->appendTimezone(Lnet/sf/saxon/str/UnicodeBuilder;)V

    :cond_2
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
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

    invoke-virtual {p0, p2}, Lnet/sf/saxon/value/DateValue;->adjustTimezone(I)Lnet/sf/saxon/value/DateValue;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/NoDynamicContextException;

    const-string p1, "Unknown implicit timezone"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/NoDynamicContextException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public subtract(Lnet/sf/saxon/value/CalendarValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/DayTimeDurationValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/value/DateValue;

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/value/CalendarValue;->subtract(Lnet/sf/saxon/value/CalendarValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/DayTimeDurationValue;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "First operand of \'-\' is a date, but the second is not"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    const-string p1, "XPTY0004"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0
.end method

.method public toLocalDate()Ljava/time/LocalDate;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/value/GDateValue;->getYear()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/value/GDateValue;->getMonth()B

    move-result v1

    invoke-virtual {p0}, Lnet/sf/saxon/value/GDateValue;->getDay()B

    move-result p0

    invoke-static {v0, v1, p0}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method
