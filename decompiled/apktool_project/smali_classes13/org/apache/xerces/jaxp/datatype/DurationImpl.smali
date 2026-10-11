.class Lorg/apache/xerces/jaxp/datatype/DurationImpl;
.super Ljavax/xml/datatype/Duration;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final FACTORS:[Ljava/math/BigDecimal;

.field private static final FIELDS:[Ljavax/xml/datatype/DatatypeConstants$Field;

.field private static final TEST_POINTS:[Ljavax/xml/datatype/XMLGregorianCalendar;

.field private static final ZERO:Ljava/math/BigDecimal;

.field private static final serialVersionUID:J = -0x24c6c86e5ffadfb3L


# instance fields
.field private final days:Ljava/math/BigInteger;

.field private final hours:Ljava/math/BigInteger;

.field private final minutes:Ljava/math/BigInteger;

.field private final months:Ljava/math/BigInteger;

.field private final seconds:Ljava/math/BigDecimal;

.field private final signum:I

.field private final years:Ljava/math/BigInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    sget-object v1, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    sget-object v2, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    sget-object v5, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    filled-new-array/range {v0 .. v5}, [Ljavax/xml/datatype/DatatypeConstants$Field;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->FIELDS:[Ljavax/xml/datatype/DatatypeConstants$Field;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    const/4 v0, 0x4

    new-array v1, v0, [Ljavax/xml/datatype/XMLGregorianCalendar;

    const-string v2, "1696-09-01T00:00:00Z"

    invoke-static {v2}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->parse(Ljava/lang/String;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "1697-02-01T00:00:00Z"

    invoke-static {v2}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->parse(Ljava/lang/String;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "1903-03-01T00:00:00Z"

    invoke-static {v2}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->parse(Ljava/lang/String;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "1903-07-01T00:00:00Z"

    invoke-static {v2}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->parse(Ljava/lang/String;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sput-object v1, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Ljavax/xml/datatype/XMLGregorianCalendar;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/math/BigDecimal;

    const-wide/16 v7, 0xc

    invoke-static {v7, v8}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x0

    aput-object v2, v1, v4

    const-wide/16 v2, 0x18

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    aput-object v2, v1, v5

    const-wide/16 v2, 0x3c

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v4

    aput-object v4, v1, v6

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    aput-object v2, v1, v0

    sput-object v1, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->FACTORS:[Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljavax/xml/datatype/Duration;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_0

    iput v5, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    goto :goto_1

    :cond_0
    if-gez v2, :cond_2

    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v2, p1, v7

    if-nez v2, :cond_1

    add-long/2addr p1, v3

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    const-wide/16 v6, -0x1

    mul-long/2addr p1, v6

    move v6, v5

    goto :goto_1

    :cond_2
    iput v6, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    iput-object v2, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    const-wide/32 v7, 0xea60

    rem-long v9, p1, v7

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move-wide v3, v0

    :goto_2
    add-long/2addr v9, v3

    const/4 v3, 0x3

    invoke-static {v9, v10, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    div-long/2addr p1, v7

    cmp-long v3, p1, v0

    const-wide/16 v4, 0x3c

    if-nez v3, :cond_4

    move-object v3, v2

    goto :goto_3

    :cond_4
    rem-long v6, p1, v4

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    :goto_3
    iput-object v3, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    div-long/2addr p1, v4

    cmp-long v3, p1, v0

    const-wide/16 v4, 0x18

    if-nez v3, :cond_5

    move-object v3, v2

    goto :goto_4

    :cond_5
    rem-long v6, p1, v4

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    :goto_4
    iput-object v3, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    div-long/2addr p1, v4

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    :goto_5
    iput-object v2, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljavax/xml/datatype/Duration;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    aput v5, v3, v5

    if-eqz v4, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_0

    aget v6, v3, v5

    add-int/2addr v6, v2

    aput v6, v3, v5

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    aget v7, v3, v5

    if-eq v4, v7, :cond_2

    add-int/lit8 v8, v7, 0x1

    aput v8, v3, v5

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x50

    if-ne v7, v8, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/String;

    new-array v9, v7, [I

    move v10, v5

    :goto_2
    aget v11, v3, v5

    if-eq v4, v11, :cond_4

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->isDigit(C)Z

    move-result v11

    if-eqz v11, :cond_4

    if-lt v10, v7, :cond_3

    goto :goto_3

    :cond_3
    aget v11, v3, v5

    aput v11, v9, v10

    add-int/lit8 v11, v10, 0x1

    invoke-static {v1, v3}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->parsePiece(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v10

    move v10, v11

    goto :goto_2

    :cond_4
    :goto_3
    aget v11, v3, v5

    if-eq v4, v11, :cond_6

    add-int/lit8 v12, v11, 0x1

    aput v12, v3, v5

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x54

    if-ne v11, v12, :cond_5

    move v11, v2

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v11, v5

    :goto_4
    new-array v12, v7, [Ljava/lang/String;

    new-array v13, v7, [I

    move v14, v5

    :goto_5
    aget v15, v3, v5

    if-eq v4, v15, :cond_8

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->isDigitOrPeriod(C)Z

    move-result v15

    if-eqz v15, :cond_8

    if-lt v14, v7, :cond_7

    goto :goto_6

    :cond_7
    aget v15, v3, v5

    aput v15, v13, v14

    add-int/lit8 v15, v14, 0x1

    invoke-static {v1, v3}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->parsePiece(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v12, v14

    move v14, v15

    goto :goto_5

    :cond_8
    :goto_6
    if-eqz v11, :cond_a

    if-eqz v14, :cond_9

    goto :goto_7

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_7
    aget v3, v3, v5

    if-ne v4, v3, :cond_d

    if-nez v10, :cond_c

    if-eqz v14, :cond_b

    goto :goto_8

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_8
    const-string v3, "YMD"

    invoke-static {v1, v8, v9, v10, v3}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->organizeParts(Ljava/lang/String;[Ljava/lang/String;[IILjava/lang/String;)V

    const-string v3, "HMS"

    invoke-static {v1, v12, v13, v14, v3}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->organizeParts(Ljava/lang/String;[Ljava/lang/String;[IILjava/lang/String;)V

    aget-object v3, v8, v5

    aget v4, v9, v5

    invoke-static {v1, v3, v4}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    aget-object v3, v8, v2

    aget v4, v9, v2

    invoke-static {v1, v3, v4}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    const/4 v3, 0x2

    aget-object v4, v8, v3

    aget v7, v9, v3

    invoke-static {v1, v4, v7}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    aget-object v4, v12, v5

    aget v5, v13, v5

    invoke-static {v1, v4, v5}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    aget-object v4, v12, v2

    aget v2, v13, v2

    invoke-static {v1, v4, v2}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    aget-object v2, v12, v3

    aget v3, v13, v3

    invoke-static {v1, v2, v3}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->parseBigDecimal(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-direct {v0, v6}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->calcSignum(Z)I

    move-result v1

    iput v1, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(ZIIIIII)V
    .locals 8

    .line 3
    invoke-static {p2}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {p3}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {p4}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {p5}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {p6}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v6

    if-eqz p7, :cond_0

    int-to-long p2, p7

    invoke-static {p2, p3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move-object v7, p2

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    return-void
.end method

.method public constructor <init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljavax/xml/datatype/Duration;-><init>()V

    iput-object p2, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    iput-object p3, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    iput-object p4, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    iput-object p5, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    iput-object p6, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    iput-object p7, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-direct {p0, p1}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->calcSignum(Z)I

    move-result p1

    iput p1, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    if-nez p5, :cond_1

    if-nez p6, :cond_1

    if-eqz p7, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AllFieldsNull"

    const/4 p2, 0x0

    invoke-static {p2, p1, p2}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p2, p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Ljavax/xml/datatype/DatatypeConstants$Field;)V

    sget-object p0, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p3, p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Ljavax/xml/datatype/DatatypeConstants$Field;)V

    sget-object p0, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p4, p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Ljavax/xml/datatype/DatatypeConstants$Field;)V

    sget-object p0, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p5, p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Ljavax/xml/datatype/DatatypeConstants$Field;)V

    sget-object p0, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p6, p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Ljavax/xml/datatype/DatatypeConstants$Field;)V

    sget-object p0, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p7, p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigDecimal;Ljavax/xml/datatype/DatatypeConstants$Field;)V

    return-void
.end method

.method private static alignSigns([Ljava/math/BigDecimal;II)V
    .locals 7

    :cond_0
    const/4 v0, 0x0

    move v1, p1

    move v2, v0

    move v3, v2

    :goto_0
    if-lt v1, p2, :cond_1

    if-nez v3, :cond_0

    return-void

    :cond_1
    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/math/BigDecimal;->signum()I

    move-result v4

    mul-int/2addr v4, v2

    if-gez v4, :cond_3

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v3

    sget-object v4, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->FACTORS:[Ljava/math/BigDecimal;

    add-int/lit8 v5, v1, -0x1

    aget-object v6, v4, v5

    invoke-virtual {v3, v6, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v3

    aget-object v6, p0, v1

    invoke-virtual {v6}, Ljava/math/BigDecimal;->signum()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v3}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v3

    :cond_2
    aget-object v6, p0, v5

    invoke-virtual {v6, v3}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v6

    aput-object v6, p0, v5

    aget-object v6, p0, v1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    aput-object v3, p0, v1

    const/4 v3, 0x1

    :cond_3
    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/math/BigDecimal;->signum()I

    move-result v4

    if-eqz v4, :cond_4

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/math/BigDecimal;->signum()I

    move-result v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private calcSignum(Z)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    iget-object v0, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, -0x1

    return p0

    :cond_7
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private compareDates(Ljavax/xml/datatype/Duration;Ljavax/xml/datatype/Duration;)I
    .locals 5

    sget-object v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Ljavax/xml/datatype/XMLGregorianCalendar;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljavax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/datatype/XMLGregorianCalendar;

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljavax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {v2, p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->add(Ljavax/xml/datatype/Duration;)V

    invoke-virtual {v1, p2}, Ljavax/xml/datatype/XMLGregorianCalendar;->add(Ljavax/xml/datatype/Duration;)V

    invoke-virtual {v2, v1}, Ljavax/xml/datatype/XMLGregorianCalendar;->compare(Ljavax/xml/datatype/XMLGregorianCalendar;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljavax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/xml/datatype/XMLGregorianCalendar;

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljavax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {v4, p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->add(Ljavax/xml/datatype/Duration;)V

    invoke-virtual {v3, p2}, Ljavax/xml/datatype/XMLGregorianCalendar;->add(Ljavax/xml/datatype/Duration;)V

    invoke-virtual {v4, v3}, Ljavax/xml/datatype/XMLGregorianCalendar;->compare(Ljavax/xml/datatype/XMLGregorianCalendar;)I

    move-result v3

    invoke-direct {p0, v1, v3}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->compareResults(II)I

    move-result v1

    if-ne v1, v2, :cond_1

    return v2

    :cond_1
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljavax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/xml/datatype/XMLGregorianCalendar;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljavax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {v3, p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->add(Ljavax/xml/datatype/Duration;)V

    invoke-virtual {v4, p2}, Ljavax/xml/datatype/XMLGregorianCalendar;->add(Ljavax/xml/datatype/Duration;)V

    invoke-virtual {v3, v4}, Ljavax/xml/datatype/XMLGregorianCalendar;->compare(Ljavax/xml/datatype/XMLGregorianCalendar;)I

    move-result v3

    invoke-direct {p0, v1, v3}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->compareResults(II)I

    move-result v1

    if-ne v1, v2, :cond_2

    return v2

    :cond_2
    const/4 v2, 0x3

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljavax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/xml/datatype/XMLGregorianCalendar;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljavax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {v3, p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->add(Ljavax/xml/datatype/Duration;)V

    invoke-virtual {v0, p2}, Ljavax/xml/datatype/XMLGregorianCalendar;->add(Ljavax/xml/datatype/Duration;)V

    invoke-virtual {v3, v0}, Ljavax/xml/datatype/XMLGregorianCalendar;->compare(Ljavax/xml/datatype/XMLGregorianCalendar;)I

    move-result p1

    invoke-direct {p0, v1, p1}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->compareResults(II)I

    move-result p0

    return p0
.end method

.method private compareResults(II)I
    .locals 0

    const/4 p0, 0x2

    if-ne p2, p0, :cond_0

    return p0

    :cond_0
    if-eq p1, p2, :cond_1

    return p0

    :cond_1
    return p1
.end method

.method private static getCalendarTimeInMillis(Ljava/util/Calendar;)J
    .locals 2

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private getFieldAsBigDecimal(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/math/BigDecimal;
    .locals 1

    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object p0

    check-cast p0, Ljava/math/BigInteger;

    if-nez p0, :cond_2

    sget-object p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    return-object p0

    :cond_2
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object p1
.end method

.method private getInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private static isDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isDigitOrPeriod(C)Z
    .locals 1

    invoke-static {p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static organizeParts(Ljava/lang/String;[Ljava/lang/String;[IILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 p3, p3, -0x1

    :goto_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-gez p3, :cond_1

    add-int/2addr v0, v2

    :goto_1
    if-gez v0, :cond_0

    return-void

    :cond_0
    aput-object v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    aget-object v3, p1, p3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p4, v3, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    if-eq v3, v2, :cond_3

    add-int/lit8 v2, v3, 0x1

    :goto_2
    if-lt v2, v0, :cond_2

    aget-object v0, p1, p3

    aput-object v0, p1, v3

    aget v0, p2, p3

    aput v0, p2, v3

    add-int/lit8 p3, p3, -0x1

    move v0, v3

    goto :goto_0

    :cond_2
    aput-object v1, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static parseBigDecimal(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigDecimal;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private static parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private static parsePiece(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p1, v0

    :goto_0
    aget v2, p1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    aget v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->isDigitOrPeriod(C)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    aget v2, p1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, p1, v0

    goto :goto_0

    :cond_1
    :goto_1
    aget v2, p1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_2

    aget v2, p1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, p1, v0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;
    .locals 0

    .line 1
    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    return-object p0
.end method

.method private static sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;
    .locals 0

    .line 2
    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object p1

    :cond_2
    :goto_0
    sget-object p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    return-object p0
.end method

.method private static testNonNegative(Ljava/math/BigDecimal;Ljavax/xml/datatype/DatatypeConstants$Field;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "NegativeField"

    invoke-static {v0, v1, p1}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static testNonNegative(Ljava/math/BigInteger;Ljavax/xml/datatype/DatatypeConstants$Field;)V
    .locals 2

    .line 2
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "NegativeField"

    invoke-static {v0, v1, p1}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private toString(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 4

    .line 2
    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    const-string p1, "0."

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-lez v0, :cond_2

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x2e

    invoke-virtual {p1, v0, p0}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    rsub-int/lit8 v2, v0, 0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    :goto_0
    neg-int v2, v0

    if-lt p1, v2, :cond_3

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object p1, v1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static wrap(I)Ljava/math/BigInteger;
    .locals 2

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xerces/jaxp/datatype/SerializedDuration;

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xerces/jaxp/datatype/SerializedDuration;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljavax/xml/datatype/Duration;)Ljavax/xml/datatype/Duration;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x6

    new-array v3, v2, [Ljava/math/BigDecimal;

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v0, v4}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v5

    check-cast v5, Ljava/math/BigInteger;

    invoke-virtual/range {p0 .. p0}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v6

    invoke-static {v5, v6}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v1, v4}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v4

    check-cast v4, Ljava/math/BigInteger;

    invoke-virtual/range {p1 .. p1}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v6

    invoke-static {v4, v6}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v0, v4}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v6

    check-cast v6, Ljava/math/BigInteger;

    invoke-virtual/range {p0 .. p0}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v7

    invoke-static {v6, v7}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v1, v4}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v4

    check-cast v4, Ljava/math/BigInteger;

    invoke-virtual/range {p1 .. p1}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v7

    invoke-static {v4, v7}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v0, v4}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v7

    check-cast v7, Ljava/math/BigInteger;

    invoke-virtual/range {p0 .. p0}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v8

    invoke-static {v7, v8}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v1, v4}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v4

    check-cast v4, Ljava/math/BigInteger;

    invoke-virtual/range {p1 .. p1}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v8

    invoke-static {v4, v8}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v0, v4}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v8

    check-cast v8, Ljava/math/BigInteger;

    invoke-virtual/range {p0 .. p0}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v9

    invoke-static {v8, v9}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v1, v4}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v4

    check-cast v4, Ljava/math/BigInteger;

    invoke-virtual/range {p1 .. p1}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v9

    invoke-static {v4, v9}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v0, v4}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v9

    check-cast v9, Ljava/math/BigInteger;

    invoke-virtual/range {p0 .. p0}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v10

    invoke-static {v9, v10}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v1, v4}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v4

    check-cast v4, Ljava/math/BigInteger;

    invoke-virtual/range {p1 .. p1}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v10

    invoke-static {v4, v10}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    const/4 v9, 0x4

    aput-object v4, v3, v9

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v0, v4}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v10

    check-cast v10, Ljava/math/BigDecimal;

    invoke-virtual/range {p0 .. p0}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v11

    invoke-static {v10, v11}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v1, v4}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v4

    check-cast v4, Ljava/math/BigDecimal;

    invoke-virtual/range {p1 .. p1}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v11

    invoke-static {v4, v11}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    const/4 v10, 0x5

    aput-object v4, v3, v10

    invoke-static {v3, v5, v7}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->alignSigns([Ljava/math/BigDecimal;II)V

    invoke-static {v3, v7, v2}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->alignSigns([Ljava/math/BigDecimal;II)V

    move v4, v5

    move v11, v4

    :goto_0
    if-lt v4, v2, :cond_7

    new-instance v2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;

    if-ltz v11, :cond_0

    move v13, v6

    goto :goto_1

    :cond_0
    move v13, v5

    :goto_1
    aget-object v4, v3, v5

    invoke-static {v4, v11}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v4

    sget-object v12, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v0, v12}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v14

    if-nez v14, :cond_1

    invoke-virtual {v1, v12}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v12

    if-nez v12, :cond_1

    move v12, v6

    goto :goto_2

    :cond_1
    move v12, v5

    :goto_2
    invoke-static {v4, v12}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v14

    aget-object v4, v3, v6

    invoke-static {v4, v11}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v4

    sget-object v12, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v0, v12}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v15

    if-nez v15, :cond_2

    invoke-virtual {v1, v12}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v12

    if-nez v12, :cond_2

    move v12, v6

    goto :goto_3

    :cond_2
    move v12, v5

    :goto_3
    invoke-static {v4, v12}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v15

    aget-object v4, v3, v7

    invoke-static {v4, v11}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v4

    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v12

    if-nez v12, :cond_3

    invoke-virtual {v1, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v7

    if-nez v7, :cond_3

    move v7, v6

    goto :goto_4

    :cond_3
    move v7, v5

    :goto_4
    invoke-static {v4, v7}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v16

    aget-object v4, v3, v8

    invoke-static {v4, v11}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v4

    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v8

    if-nez v8, :cond_4

    invoke-virtual {v1, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v7

    if-nez v7, :cond_4

    move v7, v6

    goto :goto_5

    :cond_4
    move v7, v5

    :goto_5
    invoke-static {v4, v7}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v17

    aget-object v4, v3, v9

    invoke-static {v4, v11}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v4

    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v8

    if-nez v8, :cond_5

    invoke-virtual {v1, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v7

    if-nez v7, :cond_5

    move v5, v6

    :cond_5
    invoke-static {v4, v5}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v18

    aget-object v4, v3, v10

    invoke-virtual {v4}, Ljava/math/BigDecimal;->signum()I

    move-result v4

    if-nez v4, :cond_6

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v0, v4}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {v1, v4}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_6

    :cond_6
    aget-object v0, v3, v10

    invoke-static {v0, v11}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v0

    :goto_6
    move-object/from16 v19, v0

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    return-object v2

    :cond_7
    aget-object v12, v3, v4

    invoke-virtual {v12}, Ljava/math/BigDecimal;->signum()I

    move-result v12

    mul-int/2addr v12, v11

    if-ltz v12, :cond_9

    if-nez v11, :cond_8

    aget-object v11, v3, v4

    invoke-virtual {v11}, Ljava/math/BigDecimal;->signum()I

    move-result v11

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public addTo(Ljava/util/Calendar;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getYears()I

    move-result v0

    iget v1, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getMonths()I

    move-result v0

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v0, v2

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getDays()I

    move-result v0

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v0, v2

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getHours()I

    move-result v0

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v0, v2

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getMinutes()I

    move-result v0

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v0, v2

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getSeconds()I

    move-result v0

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v0, v2

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Ljava/util/Calendar;->add(II)V

    iget-object v0, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    iget p0, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v0, p0

    const/16 p0, 0xe

    invoke-virtual {p1, p0, v0}, Ljava/util/Calendar;->add(II)V

    :cond_0
    return-void
.end method

.method public addTo(Ljava/util/Date;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p0, v0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->addTo(Ljava/util/Calendar;)V

    invoke-static {v0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Date;->setTime(J)V

    return-void
.end method

.method public compare(Ljavax/xml/datatype/Duration;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    const-string v4, "#compare(Duration duration)"

    const-string v5, "TooLarge"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-eq v3, v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v3}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v5, v0}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v3, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-eq v3, v7, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v3}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v5, v0}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    iget-object v3, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-eq v3, v7, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v3}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v5, v0}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    iget-object v3, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-eq v3, v7, :cond_6

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v3}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v5, v0}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_3
    iget-object v3, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-eqz v3, :cond_9

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-eq v3, v7, :cond_8

    goto :goto_4

    :cond_8
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v3}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v5, v0}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_4
    iget-object v3, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-eq v3, v7, :cond_a

    goto :goto_5

    :cond_a
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v3}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-direct {v0, v3}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->toString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v5, v0}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    :goto_5
    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v1, v3}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v8

    check-cast v8, Ljava/math/BigInteger;

    if-eqz v8, :cond_d

    invoke-virtual {v8, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    if-eq v9, v7, :cond_c

    goto :goto_6

    :cond_c
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v5, v0}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    :goto_6
    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v1, v3}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v8

    check-cast v8, Ljava/math/BigInteger;

    if-eqz v8, :cond_f

    invoke-virtual {v8, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    if-eq v9, v7, :cond_e

    goto :goto_7

    :cond_e
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v5, v0}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    :goto_7
    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v1, v3}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v8

    check-cast v8, Ljava/math/BigInteger;

    if-eqz v8, :cond_11

    invoke-virtual {v8, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    if-eq v9, v7, :cond_10

    goto :goto_8

    :cond_10
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v5, v0}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    :goto_8
    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v1, v3}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v8

    check-cast v8, Ljava/math/BigInteger;

    if-eqz v8, :cond_13

    invoke-virtual {v8, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    if-eq v9, v7, :cond_12

    goto :goto_9

    :cond_12
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v5, v0}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    :goto_9
    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v1, v3}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v8

    check-cast v8, Ljava/math/BigInteger;

    if-eqz v8, :cond_15

    invoke-virtual {v8, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    if-eq v9, v7, :cond_14

    goto :goto_a

    :cond_14
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v5, v0}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    :goto_a
    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v1, v3}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v8

    check-cast v8, Ljava/math/BigDecimal;

    if-eqz v8, :cond_16

    invoke-virtual {v8}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v8

    goto :goto_b

    :cond_16
    move-object v8, v6

    :goto_b
    if-eqz v8, :cond_18

    invoke-virtual {v8, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-eq v2, v7, :cond_17

    goto :goto_c

    :cond_17
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v5, v0}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    :goto_c
    new-instance v2, Ljava/util/GregorianCalendar;

    const/16 v9, 0x7b2

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getYears()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {v2, v7, v3}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getMonths()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v4

    mul-int/2addr v3, v4

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getDays()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v5

    mul-int/2addr v3, v5

    const/4 v5, 0x6

    invoke-virtual {v2, v5, v3}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getHours()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v6

    mul-int/2addr v3, v6

    const/16 v6, 0xb

    invoke-virtual {v2, v6, v3}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getMinutes()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v8

    mul-int/2addr v3, v8

    const/16 v8, 0xc

    invoke-virtual {v2, v8, v3}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getSeconds()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v9

    mul-int/2addr v3, v9

    const/16 v9, 0xd

    invoke-virtual {v2, v9, v3}, Ljava/util/GregorianCalendar;->add(II)V

    new-instance v3, Ljava/util/GregorianCalendar;

    const/16 v11, 0x7b2

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    invoke-virtual/range {p1 .. p1}, Ljavax/xml/datatype/Duration;->getYears()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v11

    mul-int/2addr v10, v11

    invoke-virtual {v3, v7, v10}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual/range {p1 .. p1}, Ljavax/xml/datatype/Duration;->getMonths()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v10

    mul-int/2addr v7, v10

    invoke-virtual {v3, v4, v7}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual/range {p1 .. p1}, Ljavax/xml/datatype/Duration;->getDays()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v7

    mul-int/2addr v4, v7

    invoke-virtual {v3, v5, v4}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual/range {p1 .. p1}, Ljavax/xml/datatype/Duration;->getHours()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-virtual {v3, v6, v4}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual/range {p1 .. p1}, Ljavax/xml/datatype/Duration;->getMinutes()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-virtual {v3, v8, v4}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual/range {p1 .. p1}, Ljavax/xml/datatype/Duration;->getSeconds()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-virtual {v3, v9, v4}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v0, 0x0

    return v0

    :cond_19
    invoke-direct {v0, v0, v1}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->compareDates(Ljavax/xml/datatype/Duration;Ljavax/xml/datatype/Duration;)I

    move-result v0

    return v0
.end method

.method public getDays()I
    .locals 1

    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result p0

    return p0
.end method

.method public getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    sget-object v1, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v1, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    return-object p0

    :cond_0
    sget-object v1, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    return-object p0

    :cond_1
    sget-object v1, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v1, :cond_2

    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    return-object p0

    :cond_2
    sget-object v1, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v1, :cond_3

    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    return-object p0

    :cond_3
    sget-object v1, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v1, :cond_4

    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    return-object p0

    :cond_4
    sget-object v1, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v1, :cond_5

    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "javax.xml.datatype.Duration#(getSet(DatatypeConstants.Field field)"

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "UnknownField"

    invoke-static {v0, v1, p1}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "FieldCannotBeNull"

    const-string v1, "javax.xml.datatype.Duration#isSet(DatatypeConstants.Field field) "

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getHours()I
    .locals 1

    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result p0

    return p0
.end method

.method public getMinutes()I
    .locals 1

    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result p0

    return p0
.end method

.method public getMonths()I
    .locals 1

    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result p0

    return p0
.end method

.method public getSeconds()I
    .locals 1

    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result p0

    return p0
.end method

.method public getSign()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    return p0
.end method

.method public getTimeInMillis(Ljava/util/Calendar;)J
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->addTo(Ljava/util/Calendar;)V

    invoke-static {v0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide p0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public getTimeInMillis(Ljava/util/Date;)J
    .locals 2

    .line 2
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p0, v0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->addTo(Ljava/util/Calendar;)V

    invoke-static {v0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public getYears()I
    .locals 1

    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 2

    sget-object v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Ljavax/xml/datatype/XMLGregorianCalendar;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljavax/xml/datatype/XMLGregorianCalendar;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->addTo(Ljava/util/Calendar;)V

    invoke-static {v0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "javax.xml.datatype.Duration#isSet(DatatypeConstants.Field field)"

    if-eqz p1, :cond_c

    sget-object v2, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v2, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    return v3

    :cond_1
    sget-object v2, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v2, :cond_3

    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    return v3

    :cond_3
    sget-object v2, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v2, :cond_5

    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    return v3

    :cond_5
    sget-object v2, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v2, :cond_7

    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_3
    return v3

    :cond_7
    sget-object v2, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v2, :cond_9

    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-eqz p0, :cond_8

    goto :goto_4

    :cond_8
    move v3, v4

    :goto_4
    return v3

    :cond_9
    sget-object v2, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v2, :cond_b

    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz p0, :cond_a

    goto :goto_5

    :cond_a
    move v3, v4

    :goto_5
    return v3

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "UnknownField"

    invoke-static {v0, v1, p1}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "FieldCannotBeNull"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public multiply(I)Ljavax/xml/datatype/Duration;
    .locals 2

    .line 1
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->multiply(Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    move-result-object p0

    return-object p0
.end method

.method public multiply(Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;
    .locals 17

    .line 2
    move-object/from16 v0, p0

    sget-object v1, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigDecimal;->signum()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v3

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/math/BigDecimal;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x5

    const/4 v8, 0x1

    if-lt v6, v7, :cond_8

    iget-object v6, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz v6, :cond_0

    invoke-virtual {v6, v3}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v4, v7

    goto :goto_1

    :cond_0
    aput-object v1, v4, v7

    :goto_1
    new-instance v1, Lorg/apache/xerces/jaxp/datatype/DurationImpl;

    iget v3, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v3, v2

    if-ltz v3, :cond_1

    move v10, v8

    goto :goto_2

    :cond_1
    move v10, v5

    :goto_2
    aget-object v2, v4, v5

    iget-object v3, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-nez v3, :cond_2

    move v3, v8

    goto :goto_3

    :cond_2
    move v3, v5

    :goto_3
    invoke-static {v2, v3}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v11

    aget-object v2, v4, v8

    iget-object v3, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-nez v3, :cond_3

    move v3, v8

    goto :goto_4

    :cond_3
    move v3, v5

    :goto_4
    invoke-static {v2, v3}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v12

    const/4 v2, 0x2

    aget-object v2, v4, v2

    iget-object v3, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-nez v3, :cond_4

    move v3, v8

    goto :goto_5

    :cond_4
    move v3, v5

    :goto_5
    invoke-static {v2, v3}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v13

    const/4 v2, 0x3

    aget-object v2, v4, v2

    iget-object v3, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-nez v3, :cond_5

    move v3, v8

    goto :goto_6

    :cond_5
    move v3, v5

    :goto_6
    invoke-static {v2, v3}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v14

    const/4 v2, 0x4

    aget-object v2, v4, v2

    iget-object v3, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-nez v3, :cond_6

    move v5, v8

    :cond_6
    invoke-static {v2, v5}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v15

    aget-object v2, v4, v7

    invoke-virtual {v2}, Ljava/math/BigDecimal;->signum()I

    move-result v2

    if-nez v2, :cond_7

    iget-object v0, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_7

    :cond_7
    aget-object v0, v4, v7

    :goto_7
    move-object/from16 v16, v0

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    return-object v1

    :cond_8
    sget-object v7, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->FIELDS:[Ljavax/xml/datatype/DatatypeConstants$Field;

    aget-object v7, v7, v6

    invoke-direct {v0, v7}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getFieldAsBigDecimal(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1, v5, v8}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v1, v7}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    if-ne v6, v8, :cond_a

    invoke-virtual {v1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    goto :goto_8

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    sget-object v7, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->FACTORS:[Ljava/math/BigDecimal;

    aget-object v7, v7, v6

    invoke-virtual {v1, v7}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method public negate()Ljavax/xml/datatype/Duration;
    .locals 9

    new-instance v8, Lorg/apache/xerces/jaxp/datatype/DurationImpl;

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    iget-object v2, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    iget-object v6, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    iget-object v7, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    return-object v8
.end method

.method public normalizeWith(Ljava/util/Calendar;)Ljavax/xml/datatype/Duration;
    .locals 11

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getYears()I

    move-result v1

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getMonths()I

    move-result v1

    iget v3, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v1, v3

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getDays()I

    move-result v1

    iget v3, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v1, v3

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    invoke-static {v0}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v3

    sub-long/2addr v0, v3

    const-wide/32 v3, 0x5265c00

    div-long/2addr v0, v3

    long-to-int p1, v0

    new-instance v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p1}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v7

    sget-object p1, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Ljava/math/BigInteger;

    sget-object p1, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Ljava/math/BigInteger;

    sget-object p1, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Ljava/math/BigDecimal;

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public signum()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    return p0
.end method

.method public subtract(Ljavax/xml/datatype/Duration;)Ljavax/xml/datatype/Duration;
    .locals 0

    invoke-virtual {p1}, Ljavax/xml/datatype/Duration;->negate()Ljavax/xml/datatype/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->add(Ljavax/xml/datatype/Duration;)Ljavax/xml/datatype/Duration;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    if-gez v1, :cond_0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    const/16 v2, 0x4d

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v1, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz v1, :cond_7

    :cond_4
    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v1, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    iget-object v1, p0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz v1, :cond_7

    invoke-direct {p0, v1}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->toString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p0, 0x53

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
