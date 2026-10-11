.class public Lcom/sun/org/apache/xerces/internal/jaxp/datatype/DatatypeFactoryImpl;
.super Ljavax/xml/datatype/DatatypeFactory;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/xml/datatype/DatatypeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newDuration(J)Ljavax/xml/datatype/Duration;
    .locals 0

    .line 2
    new-instance p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/DurationImpl;

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/DurationImpl;-><init>(J)V

    return-object p0
.end method

.method public newDuration(Ljava/lang/String;)Ljavax/xml/datatype/Duration;
    .locals 0

    .line 1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/DurationImpl;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/DurationImpl;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;
    .locals 8

    .line 3
    new-instance p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/DurationImpl;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    return-object p0
.end method

.method public newXMLGregorianCalendar()Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 0

    .line 1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;-><init>()V

    return-object p0
.end method

.method public newXMLGregorianCalendar(Ljava/lang/String;)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 0

    .line 2
    new-instance p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public newXMLGregorianCalendar(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 10

    .line 4
    new-instance v9, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)V

    return-object v9
.end method

.method public newXMLGregorianCalendar(Ljava/util/GregorianCalendar;)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 0

    .line 3
    new-instance p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(Ljava/util/GregorianCalendar;)V

    return-object p0
.end method
