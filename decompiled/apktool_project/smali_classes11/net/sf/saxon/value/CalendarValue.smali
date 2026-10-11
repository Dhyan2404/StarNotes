.class public abstract Lnet/sf/saxon/value/CalendarValue;
.super Lnet/sf/saxon/value/AtomicValue;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/AtomicMatchKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/value/CalendarValue$a;
    }
.end annotation


# static fields
.field public static final MISSING_TIMEZONE:I = 0x7fffffff

.field public static final NO_TIMEZONE:I = -0x80000000


# instance fields
.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/value/AtomicValue;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lnet/sf/saxon/value/CalendarValue;->e:I

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/value/CalendarValue;)I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/value/CalendarValue;->e:I

    return p0
.end method

.method public static appendString(Lnet/sf/saxon/str/UnicodeBuilder;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "000000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    return-void
.end method

.method public static appendTimezone(ILnet/sf/saxon/str/UnicodeBuilder;)V
    .locals 1

    if-nez p0, :cond_0

    const/16 p0, 0x5a

    .line 3
    invoke-virtual {p1, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_1

    :cond_0
    if-lez p0, :cond_1

    const-string v0, "+"

    goto :goto_0

    :cond_1
    const-string v0, "-"

    .line 4
    :goto_0
    invoke-virtual {p1, v0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    .line 5
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 6
    div-int/lit8 v0, p0, 0x3c

    invoke-static {p1, v0}, Lnet/sf/saxon/value/CalendarValue;->appendTwoDigits(Lnet/sf/saxon/str/UnicodeBuilder;I)V

    const/16 v0, 0x3a

    .line 7
    invoke-virtual {p1, v0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    .line 8
    rem-int/lit8 p0, p0, 0x3c

    invoke-static {p1, p0}, Lnet/sf/saxon/value/CalendarValue;->appendTwoDigits(Lnet/sf/saxon/str/UnicodeBuilder;I)V

    :goto_1
    return-void
.end method

.method public static appendTwoDigits(Lnet/sf/saxon/str/UnicodeBuilder;I)V
    .locals 1

    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    return-void
.end method

.method public static makeCalendarValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ConversionResult;
    .locals 3

    invoke-static {p0, p1}, Lnet/sf/saxon/value/DateTimeValue;->makeDateTimeValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/type/ValidationFailure;

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/DateValue;->makeDateValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    instance-of v2, v1, Lnet/sf/saxon/type/ValidationFailure;

    if-eqz v2, :cond_1

    invoke-static {p0}, Lnet/sf/saxon/value/TimeValue;->makeTimeValue(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v1

    :cond_1
    instance-of v2, v1, Lnet/sf/saxon/type/ValidationFailure;

    if-eqz v2, :cond_2

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GYearValue;->makeGYearValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v1

    :cond_2
    instance-of v2, v1, Lnet/sf/saxon/type/ValidationFailure;

    if-eqz v2, :cond_3

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GYearMonthValue;->makeGYearMonthValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v1

    :cond_3
    instance-of p1, v1, Lnet/sf/saxon/type/ValidationFailure;

    if-eqz p1, :cond_4

    invoke-static {p0}, Lnet/sf/saxon/value/GMonthValue;->makeGMonthValue(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v1

    :cond_4
    instance-of p1, v1, Lnet/sf/saxon/type/ValidationFailure;

    if-eqz p1, :cond_5

    invoke-static {p0}, Lnet/sf/saxon/value/GMonthDayValue;->makeGMonthDayValue(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v1

    :cond_5
    instance-of p1, v1, Lnet/sf/saxon/type/ValidationFailure;

    if-eqz p1, :cond_6

    invoke-static {p0}, Lnet/sf/saxon/value/GDayValue;->makeGDayValue(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v1

    :cond_6
    instance-of p0, v1, Lnet/sf/saxon/type/ValidationFailure;

    if-eqz p0, :cond_7

    return-object v0

    :cond_7
    return-object v1
.end method


# virtual methods
.method public abstract add(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/CalendarValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract adjustTimezone(I)Lnet/sf/saxon/value/CalendarValue;
.end method

.method public final adjustTimezone(Lnet/sf/saxon/value/DayTimeDurationValue;)Lnet/sf/saxon/value/CalendarValue;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lnet/sf/saxon/value/DayTimeDurationValue;->getLengthInMicroseconds()J

    move-result-wide v0

    const-wide/32 v2, 0x3938700

    .line 2
    rem-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    const-string v4, "FODT0003"

    if-nez p1, :cond_1

    .line 3
    div-long/2addr v0, v2

    long-to-int p1, v0

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x348

    if-gt v0, v1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/CalendarValue;->adjustTimezone(I)Lnet/sf/saxon/value/CalendarValue;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Timezone out of range (-14:00 to +14:00)"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v4}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 8
    throw p0

    .line 9
    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Timezone is not an integral number of minutes"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v4}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 11
    throw p0
.end method

.method public final appendTimezone(Lnet/sf/saxon/str/UnicodeBuilder;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result p0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/CalendarValue;->appendTimezone(ILnet/sf/saxon/str/UnicodeBuilder;)V

    :cond_0
    return-void
.end method

.method public asMapKey()Lnet/sf/saxon/expr/sort/AtomicMatchKey;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/CalendarValue$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/CalendarValue$a;-><init>(Lnet/sf/saxon/value/CalendarValue;)V

    return-object v0
.end method

.method public abstract compareTo(Lnet/sf/saxon/value/CalendarValue;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/NoDynamicContextException;
        }
    .end annotation
.end method

.method public abstract getCalendar()Ljava/util/GregorianCalendar;
.end method

.method public final getTimezoneInMinutes()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/value/CalendarValue;->e:I

    return p0
.end method

.method public getXMLGregorianCalendar()Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;-><init>(Lnet/sf/saxon/value/CalendarValue;)V

    return-object v0
.end method

.method public getXPathComparable(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/XPathComparable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/NoDynamicContextException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getXPathMatchKey(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/AtomicMatchKey;
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

    if-eq p2, p1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lnet/sf/saxon/value/CalendarValue;->adjustTimezone(I)Lnet/sf/saxon/value/CalendarValue;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/NoDynamicContextException;

    const-string p1, "Unknown implicit timezone"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/NoDynamicContextException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasTimezone()Z
    .locals 1

    iget p0, p0, Lnet/sf/saxon/value/CalendarValue;->e:I

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public identityHashCode()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->hashCode()I

    move-result v0

    iget p0, p0, Lnet/sf/saxon/value/CalendarValue;->e:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public isIdentical(Lnet/sf/saxon/value/AtomicValue;)Z
    .locals 1

    invoke-super {p0, p1}, Lnet/sf/saxon/value/AtomicValue;->isIdentical(Lnet/sf/saxon/value/AtomicValue;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lnet/sf/saxon/value/CalendarValue;->e:I

    check-cast p1, Lnet/sf/saxon/value/CalendarValue;

    iget p1, p1, Lnet/sf/saxon/value/CalendarValue;->e:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final removeTimezone()Lnet/sf/saxon/value/CalendarValue;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/value/AtomicValue;->copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/CalendarValue;

    const/high16 v0, -0x80000000

    iput v0, p0, Lnet/sf/saxon/value/CalendarValue;->e:I

    return-object p0
.end method

.method public final setTimezoneInMinutes(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/value/CalendarValue;->e:I

    return-void
.end method

.method public subtract(Lnet/sf/saxon/value/CalendarValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/DayTimeDurationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->toDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/value/CalendarValue;->toDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v1

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getImplicitTimezone()I

    move-result p2

    const v0, 0x7fffffff

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/value/DateTimeValue;->adjustToUTC(I)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    invoke-virtual {p1, p2}, Lnet/sf/saxon/value/DateTimeValue;->adjustToUTC(I)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/NoDynamicContextException;

    const-string p1, "Implicit timezone required"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/NoDynamicContextException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->toJulianInstant()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/value/DateTimeValue;->toJulianInstant()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/DayTimeDurationValue;->fromSeconds(Ljava/math/BigDecimal;)Lnet/sf/saxon/value/DayTimeDurationValue;

    move-result-object p0

    return-object p0
.end method

.method public abstract toDateTime()Lnet/sf/saxon/value/DateTimeValue;
.end method
