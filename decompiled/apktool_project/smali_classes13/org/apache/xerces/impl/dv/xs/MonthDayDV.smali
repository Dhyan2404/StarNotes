.class public Lorg/apache/xerces/impl/dv/xs/MonthDayDV;
.super Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;
.source "SourceFile"


# static fields
.field public static final c:I = 0x7


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

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v2, p1, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->b:I

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->append(Ljava/lang/StringBuffer;II)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p1, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->c:I

    invoke-virtual {p0, v0, v1, v3}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->append(Ljava/lang/StringBuffer;II)V

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
    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dv/xs/MonthDayDV;->parse(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string p2, "gMonthDay"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-datatype-valid.1.2.1"

    invoke-direct {p0, p2, p1}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public getXMLGregorianCalendar(Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 9

    sget-object v0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->datatypeFactory:Ljavax/xml/datatype/DatatypeFactory;

    const/high16 v1, -0x80000000

    iget v2, p1, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->m:I

    iget v3, p1, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->n:I

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    const/high16 v6, -0x80000000

    const/high16 v7, -0x80000000

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->hasTimeZone()Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p1, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->h:I

    mul-int/lit8 p0, p0, 0x3c

    iget p1, p1, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->i:I

    add-int/2addr p0, p1

    goto :goto_0

    :cond_0
    const/high16 p0, -0x80000000

    :goto_0
    move v8, p0

    invoke-virtual/range {v0 .. v8}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(IIIIIIII)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object p0

    return-object p0
.end method

.method public parse(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;
    .locals 7
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

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v3, "Invalid format for gMonthDay: "

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_4

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_4

    const/4 v5, 0x2

    const/4 v6, 0x4

    invoke-virtual {p0, p1, v5, v6}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->parseInt(Ljava/lang/String;II)I

    move-result v5

    iput v5, v0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->b:I

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_3

    const/4 v3, 0x5

    const/4 v4, 0x7

    invoke-virtual {p0, p1, v3, v4}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->parseInt(Ljava/lang/String;II)I

    move-result v3

    iput v3, v0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->c:I

    if-ge v4, v1, :cond_1

    invoke-virtual {p0, p1, v4, v1}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->isNextCharUTCSign(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1, v0, v4, v1}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->getTimeZone(Ljava/lang/String;Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;II)V

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Error in month parsing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->validateDateTime(Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;)V

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->saveUnnormalized(Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;)V

    iget p1, v0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->f:I

    if-eqz p1, :cond_2

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->normalize(Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;)V

    :cond_2
    iput v2, v0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->r:I

    return-object v0

    :cond_3
    new-instance p0, Lorg/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lorg/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
