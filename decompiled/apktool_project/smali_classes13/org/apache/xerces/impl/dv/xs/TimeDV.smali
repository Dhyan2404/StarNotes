.class public Lorg/apache/xerces/impl/dv/xs/TimeDV;
.super Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;-><init>()V

    return-void
.end method


# virtual methods
.method public dateToString(Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget v1, p1, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->d:I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->append(Ljava/lang/StringBuffer;II)V

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v3, p1, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->e:I

    invoke-virtual {p0, v0, v3, v2}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->append(Ljava/lang/StringBuffer;II)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-wide v1, p1, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->g:D

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->append(Ljava/lang/StringBuffer;D)V

    iget p1, p1, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->f:I

    int-to-char p1, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->append(Ljava/lang/StringBuffer;II)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getActualValue(Ljava/lang/String;Lorg/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dv/xs/TimeDV;->parse(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string p2, "time"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-datatype-valid.1.2.1"

    invoke-direct {p0, p2, p1}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public getXMLGregorianCalendar(Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 11

    sget-object v0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->datatypeFactory:Ljavax/xml/datatype/DatatypeFactory;

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    const/high16 v3, -0x80000000

    iget v4, p1, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->o:I

    iget v5, p1, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->p:I

    iget-wide v6, p1, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->q:D

    double-to-int v8, v6

    const-wide/16 v9, 0x0

    cmpl-double v6, v6, v9

    if-eqz v6, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->getFractionalSecondsAsBigDecimal(Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move-object v7, p0

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->hasTimeZone()Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, p1, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->h:I

    mul-int/lit8 p0, p0, 0x3c

    iget p1, p1, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->i:I

    add-int/2addr p0, p1

    goto :goto_1

    :cond_1
    const/high16 p0, -0x80000000

    :goto_1
    move v6, v8

    move v8, p0

    invoke-virtual/range {v0 .. v8}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object p0

    return-object p0
.end method

.method public parse(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/dv/xs/SchemaDateTimeException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;

    invoke-direct {v0, p1, p0}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;-><init>(Ljava/lang/String;Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x7d0

    iput v2, v0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->a:I

    const/4 v2, 0x1

    iput v2, v0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->b:I

    const/16 v2, 0xf

    iput v2, v0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->c:I

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v1, v0}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->getTime(Ljava/lang/String;IILorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;)V

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->validateDateTime(Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;)V

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->saveUnnormalized(Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;)V

    iget p1, v0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->f:I

    if-eqz p1, :cond_0

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->normalize(Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;)V

    iput v2, v0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->c:I

    :cond_0
    const/4 p0, 0x2

    iput p0, v0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->r:I

    return-object v0
.end method
