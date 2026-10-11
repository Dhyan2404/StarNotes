.class public Lnet/sf/saxon/value/SaxonDuration;
.super Ljavax/xml/datatype/Duration;
.source "SourceFile"


# instance fields
.field public final e:Lnet/sf/saxon/value/DurationValue;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/value/DurationValue;)V
    .locals 0

    invoke-direct {p0}, Ljavax/xml/datatype/Duration;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/value/SaxonDuration;->e:Lnet/sf/saxon/value/DurationValue;

    return-void
.end method


# virtual methods
.method public add(Ljavax/xml/datatype/Duration;)Ljavax/xml/datatype/Duration;
    .locals 1

    :try_start_0
    new-instance v0, Lnet/sf/saxon/value/SaxonDuration;

    iget-object p0, p0, Lnet/sf/saxon/value/SaxonDuration;->e:Lnet/sf/saxon/value/DurationValue;

    check-cast p1, Lnet/sf/saxon/value/SaxonDuration;

    iget-object p1, p1, Lnet/sf/saxon/value/SaxonDuration;->e:Lnet/sf/saxon/value/DurationValue;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DurationValue;->add(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/DurationValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/SaxonDuration;-><init>(Lnet/sf/saxon/value/DurationValue;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTo(Ljava/util/Calendar;)V
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/value/SaxonDuration;->getSign()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljavax/xml/datatype/Duration;->getYears()I

    move-result v1

    mul-int/2addr v1, v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0}, Ljavax/xml/datatype/Duration;->getMonths()I

    move-result v1

    mul-int/2addr v1, v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0}, Ljavax/xml/datatype/Duration;->getDays()I

    move-result v1

    mul-int/2addr v1, v0

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0}, Ljavax/xml/datatype/Duration;->getHours()I

    move-result v1

    mul-int/2addr v1, v0

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0}, Ljavax/xml/datatype/Duration;->getMinutes()I

    move-result v1

    mul-int/2addr v1, v0

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->add(II)V

    iget-object v1, p0, Lnet/sf/saxon/value/SaxonDuration;->e:Lnet/sf/saxon/value/DurationValue;

    sget-object v2, Lnet/sf/saxon/functions/AccessorFn$Component;->WHOLE_SECONDS:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/value/DurationValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {v1}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    mul-int/2addr v1, v0

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->add(II)V

    iget-object p0, p0, Lnet/sf/saxon/value/SaxonDuration;->e:Lnet/sf/saxon/value/DurationValue;

    sget-object v1, Lnet/sf/saxon/functions/AccessorFn$Component;->MICROSECONDS:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/value/DurationValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p0}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v1

    long-to-int p0, v1

    mul-int/2addr p0, v0

    div-int/lit16 p0, p0, 0x3e8

    const/16 v0, 0xe

    invoke-virtual {p1, v0, p0}, Ljava/util/Calendar;->add(II)V

    return-void
.end method

.method public compare(Ljavax/xml/datatype/Duration;)I
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/value/SaxonDuration;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/value/SaxonDuration;->e:Lnet/sf/saxon/value/DurationValue;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/value/DurationValue;->getXPathComparable(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/XPathComparable;

    move-result-object p0

    check-cast p1, Lnet/sf/saxon/value/SaxonDuration;

    iget-object p1, p1, Lnet/sf/saxon/value/SaxonDuration;->e:Lnet/sf/saxon/value/DurationValue;

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/value/DurationValue;->getXPathComparable(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/XPathComparable;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/NoDynamicContextException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Supplied duration is not a SaxonDuration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDurationValue()Lnet/sf/saxon/value/DurationValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/SaxonDuration;->e:Lnet/sf/saxon/value/DurationValue;

    return-object p0
.end method

.method public getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;
    .locals 1

    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/value/SaxonDuration;->e:Lnet/sf/saxon/value/DurationValue;

    sget-object p1, Lnet/sf/saxon/functions/AccessorFn$Component;->YEAR:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DurationValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p0}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/value/SaxonDuration;->e:Lnet/sf/saxon/value/DurationValue;

    sget-object p1, Lnet/sf/saxon/functions/AccessorFn$Component;->MONTH:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DurationValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p0}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/value/SaxonDuration;->e:Lnet/sf/saxon/value/DurationValue;

    sget-object p1, Lnet/sf/saxon/functions/AccessorFn$Component;->DAY:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DurationValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p0}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lnet/sf/saxon/value/SaxonDuration;->e:Lnet/sf/saxon/value/DurationValue;

    sget-object p1, Lnet/sf/saxon/functions/AccessorFn$Component;->HOURS:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DurationValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p0}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lnet/sf/saxon/value/SaxonDuration;->e:Lnet/sf/saxon/value/DurationValue;

    sget-object p1, Lnet/sf/saxon/functions/AccessorFn$Component;->MINUTES:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DurationValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p0}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v0, :cond_5

    iget-object p0, p0, Lnet/sf/saxon/value/SaxonDuration;->e:Lnet/sf/saxon/value/DurationValue;

    sget-object p1, Lnet/sf/saxon/functions/AccessorFn$Component;->SECONDS:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DurationValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/BigDecimalValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/BigDecimalValue;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid field"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSign()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/SaxonDuration;->e:Lnet/sf/saxon/value/DurationValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->signum()I

    move-result p0

    return p0
.end method

.method public getXMLSchemaType()Ljavax/xml/namespace/QName;
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/value/SaxonDuration;->e:Lnet/sf/saxon/value/DurationValue;

    instance-of v0, p0, Lnet/sf/saxon/value/DayTimeDurationValue;

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    if-eqz v0, :cond_0

    new-instance p0, Ljavax/xml/namespace/QName;

    const-string v0, "dayTimeDuration"

    invoke-direct {p0, v1, v0}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    instance-of p0, p0, Lnet/sf/saxon/value/YearMonthDurationValue;

    if-eqz p0, :cond_1

    new-instance p0, Ljavax/xml/namespace/QName;

    const-string v0, "yearMonthDuration"

    invoke-direct {p0, v1, v0}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, Ljavax/xml/namespace/QName;

    const-string v0, "duration"

    invoke-direct {p0, v1, v0}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/SaxonDuration;->e:Lnet/sf/saxon/value/DurationValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->hashCode()I

    move-result p0

    return p0
.end method

.method public isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public multiply(Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;
    .locals 3

    :try_start_0
    new-instance v0, Lnet/sf/saxon/value/SaxonDuration;

    iget-object p0, p0, Lnet/sf/saxon/value/SaxonDuration;->e:Lnet/sf/saxon/value/DurationValue;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/value/DurationValue;->multiply(D)Lnet/sf/saxon/value/DurationValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/SaxonDuration;-><init>(Lnet/sf/saxon/value/DurationValue;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public negate()Ljavax/xml/datatype/Duration;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/SaxonDuration;

    iget-object p0, p0, Lnet/sf/saxon/value/SaxonDuration;->e:Lnet/sf/saxon/value/DurationValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->negate()Lnet/sf/saxon/value/DurationValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/SaxonDuration;-><init>(Lnet/sf/saxon/value/DurationValue;)V

    return-object v0
.end method

.method public normalizeWith(Ljava/util/Calendar;)Ljavax/xml/datatype/Duration;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public subtract(Ljavax/xml/datatype/Duration;)Ljavax/xml/datatype/Duration;
    .locals 1

    :try_start_0
    new-instance v0, Lnet/sf/saxon/value/SaxonDuration;

    iget-object p0, p0, Lnet/sf/saxon/value/SaxonDuration;->e:Lnet/sf/saxon/value/DurationValue;

    check-cast p1, Lnet/sf/saxon/value/SaxonDuration;

    iget-object p1, p1, Lnet/sf/saxon/value/SaxonDuration;->e:Lnet/sf/saxon/value/DurationValue;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DurationValue;->subtract(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/DurationValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/SaxonDuration;-><init>(Lnet/sf/saxon/value/DurationValue;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
