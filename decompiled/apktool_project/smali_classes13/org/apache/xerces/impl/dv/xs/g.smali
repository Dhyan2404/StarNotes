.class public Lorg/apache/xerces/impl/dv/xs/g;
.super Lorg/apache/xerces/impl/dv/xs/DurationDV;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/impl/dv/xs/DurationDV;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualValue(Ljava/lang/String;Lorg/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    const/4 p2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/dv/xs/DurationDV;->parse(Ljava/lang/String;I)Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string p2, "yearMonthDuration"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-datatype-valid.1.2.1"

    invoke-direct {p0, p2, p1}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public getDuration(Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;)Ljavax/xml/datatype/Duration;
    .locals 10

    iget p0, p1, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->a:I

    const/4 v0, 0x1

    if-ltz p0, :cond_1

    iget v1, p1, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->b:I

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    sget-object v2, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->datatypeFactory:Ljavax/xml/datatype/DatatypeFactory;

    if-ne v1, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move v3, v0

    const/4 v0, 0x0

    const/high16 v4, -0x80000000

    if-eq p0, v4, :cond_3

    mul-int/2addr p0, v1

    int-to-long v5, p0

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_3

    :cond_3
    move-object p0, v0

    :goto_3
    iget p1, p1, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->b:I

    if-eq p1, v4, :cond_4

    mul-int/2addr v1, p1

    int-to-long v0, v1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    move-object v5, p1

    goto :goto_4

    :cond_4
    move-object v5, v0

    :goto_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v2 .. v9}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    move-result-object p0

    return-object p0
.end method
