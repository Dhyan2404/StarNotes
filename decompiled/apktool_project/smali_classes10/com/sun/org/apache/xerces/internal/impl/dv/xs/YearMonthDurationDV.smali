.class Lcom/sun/org/apache/xerces/internal/impl/dv/xs/YearMonthDurationDV;
.super Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DurationDV;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DurationDV;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualValue(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    const/4 p2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DurationDV;->parse(Ljava/lang/String;I)Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;

    const-string p2, "yearMonthDuration"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-datatype-valid.1.2.1"

    invoke-direct {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public getDuration(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Ljavax/xml/datatype/Duration;
    .locals 11

    iget v0, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    iget v2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, -0x1

    :goto_1
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->factory:Ljavax/xml/datatype/DatatypeFactory;

    if-ne v2, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    move v4, v1

    const/4 p0, 0x0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_3

    mul-int/2addr v0, v2

    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    move-object v5, v0

    goto :goto_3

    :cond_3
    move-object v5, p0

    :goto_3
    iget p1, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    if-eq p1, v1, :cond_4

    mul-int/2addr v2, p1

    int-to-long p0, v2

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    :cond_4
    move-object v6, p0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    move-result-object p0

    return-object p0
.end method
