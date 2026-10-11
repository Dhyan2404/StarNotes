.class public Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;
.super Ljavax/xml/datatype/XMLGregorianCalendar;
.source "SourceFile"


# instance fields
.field public e:Lnet/sf/saxon/value/CalendarValue;

.field public f:Ljava/math/BigInteger;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;-><init>()V

    const/high16 v0, -0x80000000

    .line 12
    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->g:I

    .line 13
    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->h:I

    .line 14
    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->i:I

    .line 15
    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->j:I

    .line 16
    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->k:I

    .line 17
    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->l:I

    .line 18
    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->m:I

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/value/CalendarValue;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;-><init>()V

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->g:I

    .line 3
    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->h:I

    .line 4
    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->i:I

    .line 5
    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->j:I

    .line 6
    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->k:I

    .line 7
    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->l:I

    .line 8
    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->m:I

    .line 9
    invoke-virtual {p0}, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->clear()V

    .line 10
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->setCalendarValue(Lnet/sf/saxon/value/CalendarValue;)V

    return-void
.end method


# virtual methods
.method public add(Ljavax/xml/datatype/Duration;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->toCalendarValue()Lnet/sf/saxon/value/CalendarValue;

    move-result-object v0

    check-cast p1, Lnet/sf/saxon/value/SaxonDuration;

    invoke-virtual {p1}, Lnet/sf/saxon/value/SaxonDuration;->getDurationValue()Lnet/sf/saxon/value/DurationValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/value/CalendarValue;->add(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/CalendarValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->setCalendarValue(Lnet/sf/saxon/value/CalendarValue;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->f:Ljava/math/BigInteger;

    const/high16 v0, -0x80000000

    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->g:I

    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->h:I

    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->i:I

    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->j:I

    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->k:I

    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->l:I

    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->m:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;

    invoke-direct {v0}, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->f:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->setYear(Ljava/math/BigInteger;)V

    iget v1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->g:I

    invoke-virtual {v0, v1}, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->setMonth(I)V

    iget v1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->h:I

    invoke-virtual {v0, v1}, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->setDay(I)V

    iget v1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->i:I

    invoke-virtual {v0, v1}, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->setHour(I)V

    iget v1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->j:I

    invoke-virtual {v0, v1}, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->setMinute(I)V

    iget v1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->k:I

    invoke-virtual {v0, v1}, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->setSecond(I)V

    iget v1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->l:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->setMillisecond(I)V

    iget p0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->m:I

    invoke-virtual {v0, p0}, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->setTimezone(I)V

    return-object v0
.end method

.method public compare(Ljavax/xml/datatype/XMLGregorianCalendar;)I
    .locals 1

    invoke-static {}, Lnet/sf/saxon/expr/sort/SimpleTypeComparison;->getInstance()Lnet/sf/saxon/expr/sort/SimpleTypeComparison;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->toCalendarValue()Lnet/sf/saxon/value/CalendarValue;

    move-result-object p0

    check-cast p1, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;

    invoke-virtual {p1}, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->toCalendarValue()Lnet/sf/saxon/value/CalendarValue;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/expr/sort/SimpleTypeComparison;->compareItems(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I

    move-result p0

    return p0
.end method

.method public getDay()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->h:I

    return p0
.end method

.method public getEon()Ljava/math/BigInteger;
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->f:Ljava/math/BigInteger;

    const-wide/32 v0, 0x3b9aca00

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getEonAndYear()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->f:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getFractionalSecond()Ljava/math/BigDecimal;
    .locals 2

    iget v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->k:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget p0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->l:I

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public getHour()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->i:I

    return p0
.end method

.method public getMicrosecond()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 p0, -0x80000000

    return p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object p0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    return p0
.end method

.method public getMinute()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->j:I

    return p0
.end method

.method public getMonth()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->g:I

    return p0
.end method

.method public getSecond()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->k:I

    return p0
.end method

.method public getTimeZone(I)Ljava/util/TimeZone;
    .locals 4

    iget v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->m:I

    const-string v1, "XXX"

    const v2, 0xea60

    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_1

    if-ne p1, v3, :cond_0

    new-instance p0, Ljava/util/GregorianCalendar;

    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/SimpleTimeZone;

    mul-int/2addr p1, v2

    invoke-direct {p0, p1, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p1, Ljava/util/SimpleTimeZone;

    iget p0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->m:I

    mul-int/2addr p0, v2

    invoke-direct {p1, p0, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method public getTimezone()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->m:I

    return p0
.end method

.method public getXMLSchemaType()Ljavax/xml/namespace/QName;
    .locals 2

    iget v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->k:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->f:Ljava/math/BigInteger;

    if-nez v0, :cond_2

    iget v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->g:I

    if-ne v0, v1, :cond_0

    sget-object p0, Ljavax/xml/datatype/DatatypeConstants;->GDAY:Ljavax/xml/namespace/QName;

    return-object p0

    :cond_0
    iget p0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->h:I

    if-ne p0, v1, :cond_1

    sget-object p0, Ljavax/xml/datatype/DatatypeConstants;->GMONTH:Ljavax/xml/namespace/QName;

    return-object p0

    :cond_1
    sget-object p0, Ljavax/xml/datatype/DatatypeConstants;->GMONTHDAY:Ljavax/xml/namespace/QName;

    return-object p0

    :cond_2
    iget v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->h:I

    if-ne v0, v1, :cond_4

    iget p0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->g:I

    if-ne p0, v1, :cond_3

    sget-object p0, Ljavax/xml/datatype/DatatypeConstants;->GYEAR:Ljavax/xml/namespace/QName;

    return-object p0

    :cond_3
    sget-object p0, Ljavax/xml/datatype/DatatypeConstants;->GYEARMONTH:Ljavax/xml/namespace/QName;

    return-object p0

    :cond_4
    sget-object p0, Ljavax/xml/datatype/DatatypeConstants;->DATE:Ljavax/xml/namespace/QName;

    return-object p0

    :cond_5
    iget-object p0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->f:Ljava/math/BigInteger;

    if-nez p0, :cond_6

    sget-object p0, Ljavax/xml/datatype/DatatypeConstants;->TIME:Ljavax/xml/namespace/QName;

    return-object p0

    :cond_6
    sget-object p0, Ljavax/xml/datatype/DatatypeConstants;->DATETIME:Ljavax/xml/namespace/QName;

    return-object p0
.end method

.method public getYear()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->f:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0
.end method

.method public isValid()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public normalize()Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 2

    new-instance v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;

    invoke-virtual {p0}, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->toCalendarValue()Lnet/sf/saxon/value/CalendarValue;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/value/CalendarValue;->adjustTimezone(I)Lnet/sf/saxon/value/CalendarValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;-><init>(Lnet/sf/saxon/value/CalendarValue;)V

    return-object v0
.end method

.method public reset()V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->clear()V

    return-void
.end method

.method public setCalendarValue(Lnet/sf/saxon/value/CalendarValue;)V
    .locals 2

    iput-object p1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->e:Lnet/sf/saxon/value/CalendarValue;

    :try_start_0
    instance-of v0, p1, Lnet/sf/saxon/value/GYearValue;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->YEAR:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p1}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->f:Ljava/math/BigInteger;

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/value/GYearMonthValue;

    if-eqz v0, :cond_1

    sget-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->YEAR:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {v0}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->f:Ljava/math/BigInteger;

    sget-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->MONTH:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p1}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->g:I

    goto/16 :goto_0

    :cond_1
    instance-of v0, p1, Lnet/sf/saxon/value/GMonthValue;

    if-eqz v0, :cond_2

    sget-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->MONTH:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p1}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->g:I

    goto/16 :goto_0

    :cond_2
    instance-of v0, p1, Lnet/sf/saxon/value/GMonthDayValue;

    if-eqz v0, :cond_3

    sget-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->MONTH:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {v0}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->g:I

    sget-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->DAY:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p1}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->h:I

    goto/16 :goto_0

    :cond_3
    instance-of v0, p1, Lnet/sf/saxon/value/GDayValue;

    if-eqz v0, :cond_4

    sget-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->DAY:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p1}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->h:I

    goto/16 :goto_0

    :cond_4
    instance-of v0, p1, Lnet/sf/saxon/value/DateValue;

    if-eqz v0, :cond_5

    sget-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->YEAR:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {v0}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->f:Ljava/math/BigInteger;

    sget-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->MONTH:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {v0}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->g:I

    sget-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->DAY:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p1}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->h:I

    goto/16 :goto_0

    :cond_5
    instance-of v0, p1, Lnet/sf/saxon/value/TimeValue;

    if-eqz v0, :cond_6

    sget-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->HOURS:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {v0}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->i:I

    sget-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->MINUTES:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {v0}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->j:I

    sget-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->WHOLE_SECONDS:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {v0}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->k:I

    sget-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->MICROSECONDS:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p1}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->l:I

    goto :goto_0

    :cond_6
    sget-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->YEAR:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {v0}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->f:Ljava/math/BigInteger;

    sget-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->MONTH:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {v0}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->g:I

    sget-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->DAY:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {v0}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->h:I

    sget-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->HOURS:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {v0}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->i:I

    sget-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->MINUTES:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {v0}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->j:I

    sget-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->WHOLE_SECONDS:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {v0}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->k:I

    sget-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->MICROSECONDS:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p1}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->l:I
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDay(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->e:Lnet/sf/saxon/value/CalendarValue;

    iput p1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->h:I

    return-void
.end method

.method public setFractionalSecond(Ljava/math/BigDecimal;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->e:Lnet/sf/saxon/value/CalendarValue;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->k:I

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    const-wide/32 v0, 0xf4240

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    iput p1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->l:I

    return-void
.end method

.method public setHour(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->e:Lnet/sf/saxon/value/CalendarValue;

    iput p1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->i:I

    return-void
.end method

.method public setMillisecond(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->e:Lnet/sf/saxon/value/CalendarValue;

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->l:I

    return-void
.end method

.method public setMinute(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->e:Lnet/sf/saxon/value/CalendarValue;

    iput p1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->j:I

    return-void
.end method

.method public setMonth(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->e:Lnet/sf/saxon/value/CalendarValue;

    iput p1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->g:I

    return-void
.end method

.method public setSecond(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->e:Lnet/sf/saxon/value/CalendarValue;

    iput p1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->k:I

    return-void
.end method

.method public setTimezone(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->e:Lnet/sf/saxon/value/CalendarValue;

    iput p1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->m:I

    return-void
.end method

.method public setYear(I)V
    .locals 2

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->e:Lnet/sf/saxon/value/CalendarValue;

    int-to-long v0, p1

    .line 4
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->f:Ljava/math/BigInteger;

    return-void
.end method

.method public setYear(Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->e:Lnet/sf/saxon/value/CalendarValue;

    .line 2
    iput-object p1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->f:Ljava/math/BigInteger;

    return-void
.end method

.method public toCalendarValue()Lnet/sf/saxon/value/CalendarValue;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->e:Lnet/sf/saxon/value/CalendarValue;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget v1, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->k:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_6

    iget-object v1, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->f:Ljava/math/BigInteger;

    if-nez v1, :cond_3

    iget v1, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->g:I

    if-ne v1, v2, :cond_1

    new-instance v1, Lnet/sf/saxon/value/GDayValue;

    iget v2, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->h:I

    int-to-byte v2, v2

    iget v0, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->m:I

    invoke-direct {v1, v2, v0}, Lnet/sf/saxon/value/GDayValue;-><init>(BI)V

    return-object v1

    :cond_1
    iget v1, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->h:I

    if-ne v1, v2, :cond_2

    new-instance v1, Lnet/sf/saxon/value/GMonthValue;

    iget v2, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->g:I

    int-to-byte v2, v2

    iget v0, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->m:I

    invoke-direct {v1, v2, v0}, Lnet/sf/saxon/value/GMonthValue;-><init>(BI)V

    return-object v1

    :cond_2
    new-instance v1, Lnet/sf/saxon/value/GMonthDayValue;

    iget v2, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->g:I

    int-to-byte v2, v2

    iget v3, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->h:I

    int-to-byte v3, v3

    iget v0, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->m:I

    invoke-direct {v1, v2, v3, v0}, Lnet/sf/saxon/value/GMonthDayValue;-><init>(BBI)V

    return-object v1

    :cond_3
    iget v1, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->h:I

    if-ne v1, v2, :cond_5

    iget v1, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->g:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    new-instance v1, Lnet/sf/saxon/value/GYearValue;

    iget-object v2, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->f:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    iget v0, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->m:I

    invoke-direct {v1, v2, v0, v3}, Lnet/sf/saxon/value/GYearValue;-><init>(IIZ)V

    return-object v1

    :cond_4
    new-instance v1, Lnet/sf/saxon/value/GYearMonthValue;

    iget-object v2, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->f:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    iget v4, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->g:I

    int-to-byte v4, v4

    iget v0, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->m:I

    invoke-direct {v1, v2, v4, v0, v3}, Lnet/sf/saxon/value/GYearMonthValue;-><init>(IBIZ)V

    return-object v1

    :cond_5
    new-instance v1, Lnet/sf/saxon/value/DateValue;

    iget-object v2, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->f:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    iget v2, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->g:I

    int-to-byte v7, v2

    iget v2, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->h:I

    int-to-byte v8, v2

    iget v9, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->m:I

    const/4 v10, 0x1

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lnet/sf/saxon/value/DateValue;-><init>(IBBIZ)V

    return-object v1

    :cond_6
    iget-object v2, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->f:Ljava/math/BigInteger;

    if-nez v2, :cond_7

    new-instance v2, Lnet/sf/saxon/value/TimeValue;

    iget v3, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->i:I

    int-to-byte v4, v3

    iget v3, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->j:I

    int-to-byte v5, v3

    int-to-byte v6, v1

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->getMicrosecond()I

    move-result v1

    mul-int/lit16 v7, v1, 0x3e8

    iget v8, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->m:I

    const-string v9, ""

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lnet/sf/saxon/value/TimeValue;-><init>(BBBIILjava/lang/String;)V

    return-object v2

    :cond_7
    new-instance v1, Lnet/sf/saxon/value/DateTimeValue;

    iget-object v2, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->f:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    iget v2, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->g:I

    int-to-byte v12, v2

    iget v2, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->h:I

    int-to-byte v13, v2

    iget v2, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->i:I

    int-to-byte v14, v2

    iget v2, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->j:I

    int-to-byte v15, v2

    iget v2, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->k:I

    int-to-byte v2, v2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->getMicrosecond()I

    move-result v17

    iget v0, v0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->m:I

    const/16 v19, 0x1

    move-object v10, v1

    move/from16 v16, v2

    move/from16 v18, v0

    invoke-direct/range {v10 .. v19}, Lnet/sf/saxon/value/DateTimeValue;-><init>(IBBBBBIIZ)V

    return-object v1
.end method

.method public toGregorianCalendar()Ljava/util/GregorianCalendar;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->toCalendarValue()Lnet/sf/saxon/value/CalendarValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object p0

    return-object p0
.end method

.method public toGregorianCalendar(Ljava/util/TimeZone;Ljava/util/Locale;Ljavax/xml/datatype/XMLGregorianCalendar;)Ljava/util/GregorianCalendar;
    .locals 3

    .line 2
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p1, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 3
    new-instance p1, Ljava/util/Date;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 4
    iget-object p1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->f:Ljava/math/BigInteger;

    const/4 p2, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getYear()I

    move-result p1

    if-lez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result p1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 5
    iget-object p1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->f:Ljava/math/BigInteger;

    if-nez p1, :cond_2

    invoke-virtual {p3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getYear()I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    :goto_1
    invoke-virtual {v0, p2, p1}, Ljava/util/Calendar;->set(II)V

    .line 6
    iget p1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->g:I

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_3

    invoke-virtual {p3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMonth()I

    move-result p1

    :cond_3
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 7
    iget p1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->h:I

    if-ne p1, p2, :cond_4

    invoke-virtual {p3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getDay()I

    move-result p1

    :cond_4
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 8
    iget p1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->i:I

    if-ne p1, p2, :cond_5

    invoke-virtual {p3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getHour()I

    move-result p1

    :cond_5
    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 9
    iget p1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->j:I

    if-ne p1, p2, :cond_6

    invoke-virtual {p3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMinute()I

    move-result p1

    :cond_6
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 10
    iget p1, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->k:I

    if-ne p1, p2, :cond_7

    invoke-virtual {p3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getSecond()I

    move-result p1

    :cond_7
    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 11
    iget p0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->l:I

    if-ne p0, p2, :cond_8

    .line 12
    invoke-virtual {p3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMillisecond()I

    move-result p0

    goto :goto_2

    :cond_8
    div-int/lit16 p0, p0, 0x3e8

    :goto_2
    const/16 p1, 0xe

    .line 13
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method public toXMLFormat()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->toCalendarValue()Lnet/sf/saxon/value/CalendarValue;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
