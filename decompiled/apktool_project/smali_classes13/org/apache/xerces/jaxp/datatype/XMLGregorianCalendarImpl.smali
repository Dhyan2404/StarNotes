.class Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;
.super Ljavax/xml/datatype/XMLGregorianCalendar;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;,
        Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$a;
    }
.end annotation


# static fields
.field private static final BILLION_B:Ljava/math/BigInteger;

.field private static final BILLION_I:I = 0x3b9aca00

.field private static final DAY:I = 0x2

.field private static final DECIMAL_ONE:Ljava/math/BigDecimal;

.field private static final DECIMAL_SIXTY:Ljava/math/BigDecimal;

.field private static final DECIMAL_ZERO:Ljava/math/BigDecimal;

.field private static final FIELD_NAME:[Ljava/lang/String;

.field private static final FOUR:Ljava/math/BigInteger;

.field private static final FOUR_HUNDRED:Ljava/math/BigInteger;

.field private static final HOUR:I = 0x3

.field private static final HUNDRED:Ljava/math/BigInteger;

.field public static final LEAP_YEAR_DEFAULT:Ljavax/xml/datatype/XMLGregorianCalendar;

.field private static final MAX_FIELD_VALUE:[I

.field private static final MILLISECOND:I = 0x6

.field private static final MINUTE:I = 0x4

.field private static final MIN_FIELD_VALUE:[I

.field private static final MONTH:I = 0x1

.field private static final PURE_GREGORIAN_CHANGE:Ljava/util/Date;

.field private static final SECOND:I = 0x5

.field private static final SIXTY:Ljava/math/BigInteger;

.field private static final TIMEZONE:I = 0x7

.field private static final TWELVE:Ljava/math/BigInteger;

.field private static final TWENTY_FOUR:Ljava/math/BigInteger;

.field private static final YEAR:I = 0x0

.field private static final serialVersionUID:J = 0x3632c76f616c9fe2L


# instance fields
.field private day:I

.field private eon:Ljava/math/BigInteger;

.field private fractionalSecond:Ljava/math/BigDecimal;

.field private hour:I

.field private minute:I

.field private month:I

.field private orig_day:I

.field private orig_eon:Ljava/math/BigInteger;

.field private orig_fracSeconds:Ljava/math/BigDecimal;

.field private orig_hour:I

.field private orig_minute:I

.field private orig_month:I

.field private orig_second:I

.field private orig_timezone:I

.field private orig_year:I

.field private second:I

.field private timezone:I

.field private year:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-wide/32 v0, 0x3b9aca00

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->BILLION_B:Ljava/math/BigInteger;

    new-instance v0, Ljava/util/Date;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->PURE_GREGORIAN_CHANGE:Ljava/util/Date;

    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MIN_FIELD_VALUE:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MAX_FIELD_VALUE:[I

    const-string v1, "Year"

    const-string v2, "Month"

    const-string v3, "Day"

    const-string v4, "Hour"

    const-string v5, "Minute"

    const-string v6, "Second"

    const-string v7, "Millisecond"

    const-string v8, "Timezone"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->FIELD_NAME:[Ljava/lang/String;

    const/16 v1, 0x190

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    const/high16 v8, -0x80000000

    invoke-static/range {v1 .. v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->createDateTime(IIIIIIII)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->LEAP_YEAR_DEFAULT:Ljavax/xml/datatype/XMLGregorianCalendar;

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->FOUR:Ljava/math/BigInteger;

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->HUNDRED:Ljava/math/BigInteger;

    const-wide/16 v0, 0x190

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->FOUR_HUNDRED:Ljava/math/BigInteger;

    const-wide/16 v0, 0x3c

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->SIXTY:Ljava/math/BigInteger;

    const-wide/16 v2, 0x18

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->TWENTY_FOUR:Ljava/math/BigInteger;

    const-wide/16 v2, 0xc

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->TWELVE:Ljava/math/BigInteger;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    sput-object v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    sput-object v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ONE:Ljava/math/BigDecimal;

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_SIXTY:Ljava/math/BigDecimal;

    return-void

    :array_0
    .array-data 4
        -0x80000000
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        -0x348
    .end array-data

    :array_1
    .array-data 4
        0x7fffffff
        0xc
        0x1f
        0x18
        0x3b
        0x3c
        0x3e7
        0x348
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    iput-object v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    return-void
.end method

.method private constructor <init>(IIIIIIII)V
    .locals 12

    .line 2
    move-object v0, p0

    move v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;-><init>()V

    const/high16 v8, -0x80000000

    iput v8, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    iput v8, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    iput v8, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    iput v8, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    iput v8, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    iput v8, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    iput v8, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    const/4 v9, 0x0

    iput-object v9, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    iput v8, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    iput v8, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    iput v8, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    iput v8, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    iput v8, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    iput v8, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    iput v8, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    iput-object v9, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(I)V

    invoke-virtual {p0, p2}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    invoke-virtual {p0, p3}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setDay(I)V

    invoke-virtual {p0, v3, v4, v5}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTime(III)V

    invoke-virtual {p0, v7}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTimezone(I)V

    if-eq v6, v8, :cond_0

    int-to-long v10, v6

    const/4 v8, 0x3

    invoke-static {v10, v11, v8}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object v8, v9

    :goto_0
    invoke-virtual {p0, v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setFractionalSecond(Ljava/math/BigDecimal;)V

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->isValid()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->save()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/Integer;

    move v10, p1

    invoke-direct {v8, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    move-object p0, v8

    move-object p1, v10

    move-object p2, v1

    move-object p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    filled-new-array/range {p0 .. p7}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "InvalidXGCValue-milli"

    invoke-static {v9, v2, v1}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    iput-object v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x54

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const-string v3, "InvalidXGCRepresentation"

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    const-string v0, "%Y-%M-%DT%h:%m:%s%z"

    goto/16 :goto_2

    :cond_0
    const/16 v2, 0x3a

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-lt v0, v6, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v2, :cond_1

    const-string v0, "%h:%m:%s%z"

    goto/16 :goto_2

    :cond_1
    const-string v7, "--"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const/16 v8, 0x2d

    if-eqz v7, :cond_6

    if-lt v0, v6, :cond_2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_2

    const-string v0, "---%D%z"

    goto :goto_2

    :cond_2
    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 v4, 0x6

    if-lt v0, v4, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_3

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v8, :cond_4

    const/16 v2, 0xa

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "--%M-%D%z"

    goto :goto_2

    :cond_4
    :goto_0
    new-instance v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;

    const-string v2, "--%M--%z"

    invoke-direct {v0, p0, v2, p1, v1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;-><init>(Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/jaxp/datatype/a;)V

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->a()V

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->save()V

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "--%M%z"

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_7

    add-int/lit8 v0, v0, -0x6

    :cond_7
    const/4 v2, 0x1

    const/4 v4, 0x0

    move v5, v2

    :goto_1
    if-lt v5, v0, :cond_b

    if-nez v4, :cond_8

    const-string v0, "%Y%z"

    goto :goto_2

    :cond_8
    if-ne v4, v2, :cond_9

    const-string v0, "%Y-%M%z"

    goto :goto_2

    :cond_9
    const-string v0, "%Y-%M-%D%z"

    :goto_2
    new-instance v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;

    invoke-direct {v2, p0, v0, p1, v1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;-><init>(Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/jaxp/datatype/a;)V

    invoke-virtual {v2}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$b;->a()V

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->save()V

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v3, p1}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_c

    add-int/lit8 v4, v4, 0x1

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)V
    .locals 17

    .line 4
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p8

    invoke-direct/range {p0 .. p0}, Ljavax/xml/datatype/XMLGregorianCalendar;-><init>()V

    const/high16 v7, -0x80000000

    iput v7, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    iput v7, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    iput v7, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    iput v7, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    iput v7, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    iput v7, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    iput v7, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    const/4 v8, 0x0

    iput-object v8, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    iput v7, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    iput v7, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    iput v7, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    iput v7, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    iput v7, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    iput v7, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    iput v7, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    iput-object v8, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    invoke-virtual/range {p0 .. p1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    invoke-virtual {v0, v2}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setDay(I)V

    move-object/from16 v7, p7

    invoke-virtual {v0, v3, v4, v5, v7}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTime(IIILjava/math/BigDecimal;)V

    invoke-virtual {v0, v6}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTimezone(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->isValid()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->save()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v5}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v9, p1

    move-object/from16 v15, p7

    move-object/from16 v16, v1

    filled-new-array/range {v9 .. v16}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "InvalidXGCValue-fractional"

    invoke-static {v8, v2, v1}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/GregorianCalendar;)V
    .locals 4

    .line 5
    invoke-direct {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    iput-object v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    neg-int v1, v1

    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(I)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setDay(I)V

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xd

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xe

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTime(IIII)V

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr v0, p1

    const p1, 0xea60

    div-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTimezone(I)V

    invoke-direct {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->save()V

    return-void
.end method

.method public static synthetic access$200(C)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->isDigit(C)Z

    move-result p0

    return p0
.end method

.method private checkFieldValueConstraint(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MIN_FIELD_VALUE:[I

    aget p0, p0, p1

    if-ge p2, p0, :cond_0

    const/high16 p0, -0x80000000

    if-ne p2, p0, :cond_1

    :cond_0
    sget-object p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MAX_FIELD_VALUE:[I

    aget p0, p0, p1

    if-gt p2, p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    sget-object p2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->FIELD_NAME:[Ljava/lang/String;

    aget-object p1, p2, p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "InvalidFieldValue"

    invoke-static {p2, v0, p1}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static compareField(II)I
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_3

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    if-ge p0, p1, :cond_2

    const/4 p0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x2

    return p0
.end method

.method private static compareField(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)I
    .locals 0

    .line 2
    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    :cond_1
    if-nez p1, :cond_2

    sget-object p1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    :cond_2
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    return p0
.end method

.method private static compareField(Ljava/math/BigInteger;Ljava/math/BigInteger;)I
    .locals 1

    .line 3
    const/4 v0, 0x2

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    return p0
.end method

.method public static createDate(IIII)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 10

    new-instance v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    const/high16 v6, -0x80000000

    const/high16 v7, -0x80000000

    move-object v0, v9

    move v1, p0

    move v2, p1

    move v3, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(IIIIIIII)V

    return-object v9
.end method

.method public static createDateTime(IIIIII)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 10

    .line 1
    new-instance v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    const/high16 v7, -0x80000000

    const/high16 v8, -0x80000000

    move-object v0, v9

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(IIIIIIII)V

    return-object v9
.end method

.method public static createDateTime(IIIIIIII)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 10

    .line 2
    new-instance v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v0, v9

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(IIIIIIII)V

    return-object v9
.end method

.method public static createDateTime(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 10

    .line 3
    new-instance v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)V

    return-object v9
.end method

.method public static createTime(IIII)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 10

    .line 1
    new-instance v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    const/high16 v1, -0x80000000

    const/high16 v2, -0x80000000

    const/high16 v3, -0x80000000

    const/high16 v7, -0x80000000

    move-object v0, v9

    move v4, p0

    move v5, p1

    move v6, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(IIIIIIII)V

    return-object v9
.end method

.method public static createTime(IIIII)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 10

    .line 2
    new-instance v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    const/high16 v1, -0x80000000

    const/high16 v2, -0x80000000

    const/high16 v3, -0x80000000

    move-object v0, v9

    move v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(IIIIIIII)V

    return-object v9
.end method

.method public static createTime(IIILjava/math/BigDecimal;I)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 10

    .line 3
    new-instance v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    const/high16 v3, -0x80000000

    move-object v0, v9

    move v4, p0

    move v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)V

    return-object v9
.end method

.method private format(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-lt v2, v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x25

    if-eq v2, v4, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x44

    const/4 v5, 0x2

    if-eq v3, v4, :cond_d

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_c

    const/16 v4, 0x59

    const/16 v6, 0x2d

    if-eq v3, v4, :cond_9

    const/16 v4, 0x68

    if-eq v3, v4, :cond_8

    const/16 v4, 0x6d

    if-eq v3, v4, :cond_7

    const/16 v4, 0x73

    if-eq v3, v4, :cond_6

    const/16 v4, 0x7a

    if-ne v3, v4, :cond_5

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimezone()I

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x5a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_0

    if-gez v3, :cond_4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    mul-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    const/16 v4, 0x2b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    div-int/lit8 v4, v3, 0x3c

    invoke-direct {p0, v0, v4, v5}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    rem-int/lit8 v3, v3, 0x3c

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/InternalError;

    invoke-direct {p0}, Ljava/lang/InternalError;-><init>()V

    throw p0

    :cond_6
    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getSecond()I

    move-result v3

    invoke-direct {p0, v0, v3, v5}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->toString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMinute()I

    move-result v3

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getHour()I

    move-result v3

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    const/4 v4, 0x4

    if-nez v3, :cond_b

    iget v3, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-gez v3, :cond_a

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v3, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    neg-int v3, v3

    :cond_a
    invoke-direct {p0, v0, v3, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {p0, v0, v3, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;Ljava/math/BigInteger;I)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v3

    goto :goto_2

    :cond_d
    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getDay()I

    move-result v3

    :goto_2
    invoke-direct {p0, v0, v3, v5}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_0
.end method

.method private getSeconds()Ljava/math/BigDecimal;
    .locals 2

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    sget-object p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    return-object p0

    :cond_0
    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private static internalCompare(Ljavax/xml/datatype/XMLGregorianCalendar;Ljavax/xml/datatype/XMLGregorianCalendar;)I
    .locals 2

    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getEon()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->getEon()Ljava/math/BigInteger;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->getYear()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(II)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_0
    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMonth()I

    move-result v0

    invoke-virtual {p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMonth()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(II)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getDay()I

    move-result v0

    invoke-virtual {p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->getDay()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(II)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getHour()I

    move-result v0

    invoke-virtual {p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->getHour()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(II)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMinute()I

    move-result v0

    invoke-virtual {p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMinute()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(II)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    :cond_5
    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getSecond()I

    move-result v0

    invoke-virtual {p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->getSecond()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(II)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    :cond_6
    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)I

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

.method private static maximumDayInMonthFor(II)I
    .locals 1

    .line 1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-static {}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$a;->a()[I

    move-result-object p0

    aget p0, p0, p1

    return p0

    :cond_0
    rem-int/lit16 p1, p0, 0x190

    if-eqz p1, :cond_2

    rem-int/lit8 p1, p0, 0x64

    if-eqz p1, :cond_1

    rem-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$a;->a()[I

    move-result-object p0

    aget p0, p0, v0

    return p0

    :cond_2
    :goto_0
    const/16 p0, 0x1d

    return p0
.end method

.method private static maximumDayInMonthFor(Ljava/math/BigInteger;I)I
    .locals 2

    .line 2
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-static {}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$a;->a()[I

    move-result-object p0

    aget p0, p0, p1

    return p0

    :cond_0
    sget-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->FOUR_HUNDRED:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->HUNDRED:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$a;->a()[I

    move-result-object p0

    aget p0, p0, p1

    return p0

    :cond_2
    :goto_0
    const/16 p0, 0x1d

    return p0
.end method

.method private normalizeToTimezone(Ljavax/xml/datatype/XMLGregorianCalendar;I)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 9

    invoke-virtual {p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/xml/datatype/XMLGregorianCalendar;

    neg-int p1, p2

    new-instance p2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;

    const/4 v8, 0x0

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v8

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-gez p1, :cond_1

    neg-int p1, p1

    :cond_1
    move v6, p1

    const/4 v7, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZIIIIII)V

    invoke-virtual {p0, p2}, Ljavax/xml/datatype/XMLGregorianCalendar;->add(Ljavax/xml/datatype/Duration;)V

    invoke-virtual {p0, v8}, Ljavax/xml/datatype/XMLGregorianCalendar;->setTimezone(I)V

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 1

    new-instance v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {v0, p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private printNumber(Ljava/lang/StringBuffer;II)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :goto_0
    if-lt p2, p3, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method private printNumber(Ljava/lang/StringBuffer;Ljava/math/BigInteger;I)V
    .locals 1

    .line 2
    invoke-virtual {p2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :goto_0
    if-lt p2, p3, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static sanitize(Ljava/lang/Number;I)Ljava/math/BigInteger;
    .locals 0

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Ljava/math/BigInteger;

    if-gez p1, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object p0
.end method

.method private save()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_eon:Ljava/math/BigInteger;

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    iget-object v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    iput-object v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_fracSeconds:Ljava/math/BigDecimal;

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    return-void
.end method

.method private setEon(Ljava/math/BigInteger;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    return-void
.end method

.method private toString(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 4

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

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xerces/jaxp/datatype/SerializedXMLGregorianCalendar;

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->toXMLFormat()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xerces/jaxp/datatype/SerializedXMLGregorianCalendar;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljavax/xml/datatype/Duration;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x6

    new-array v2, v2, [Z

    fill-array-data v2, :array_0

    invoke-virtual/range {p1 .. p1}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v4

    const/4 v5, 0x1

    const/high16 v6, -0x80000000

    if-ne v4, v6, :cond_0

    sget-object v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MIN_FIELD_VALUE:[I

    aget v4, v4, v5

    aput-boolean v5, v2, v5

    :cond_0
    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v1, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v7

    invoke-static {v7, v3}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->sanitize(Ljava/lang/Number;I)Ljava/math/BigInteger;

    move-result-object v7

    int-to-long v8, v4

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v7, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    sget-object v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->TWELVE:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v0, v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    new-instance v8, Ljava/math/BigDecimal;

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v9}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    const/4 v9, 0x3

    invoke-virtual {v8, v4, v9}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v8

    const/4 v10, 0x0

    if-nez v8, :cond_1

    aput-boolean v5, v2, v10

    sget-object v8, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    :cond_1
    sget-object v11, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v1, v11}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v11

    invoke-static {v11, v3}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->sanitize(Ljava/lang/Number;I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(Ljava/math/BigInteger;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getSecond()I

    move-result v4

    const/4 v8, 0x5

    if-ne v4, v6, :cond_2

    aput-boolean v5, v2, v8

    sget-object v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getSeconds()Ljava/math/BigDecimal;

    move-result-object v4

    :goto_0
    sget-object v11, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v1, v11}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v11

    check-cast v11, Ljava/math/BigDecimal;

    invoke-static {v11, v3}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    new-instance v11, Ljava/math/BigDecimal;

    new-instance v12, Ljava/math/BigDecimal;

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sget-object v13, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_SIXTY:Ljava/math/BigDecimal;

    invoke-virtual {v12, v13, v9}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v11, v13}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v11}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v4}, Ljava/math/BigDecimal;->intValue()I

    move-result v12

    invoke-virtual {v0, v12}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    new-instance v12, Ljava/math/BigDecimal;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getSecond()I

    move-result v14

    int-to-long v14, v14

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v4, v12}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    sget-object v12, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v4, v12}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v12

    if-gez v12, :cond_4

    sget-object v12, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ONE:Ljava/math/BigDecimal;

    invoke-virtual {v12, v4}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setFractionalSecond(Ljava/math/BigDecimal;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getSecond()I

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x3b

    invoke-virtual {v0, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    invoke-virtual {v11, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getSecond()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setFractionalSecond(Ljava/math/BigDecimal;)V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMinute()I

    move-result v4

    const/4 v12, 0x4

    if-ne v4, v6, :cond_5

    aput-boolean v5, v2, v12

    sget-object v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MIN_FIELD_VALUE:[I

    aget v4, v4, v12

    :cond_5
    sget-object v14, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v1, v14}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v14

    invoke-static {v14, v3}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->sanitize(Ljava/lang/Number;I)Ljava/math/BigInteger;

    move-result-object v14

    int-to-long v5, v4

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->SIXTY:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMinute(I)V

    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v5, v13, v9}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getHour()I

    move-result v5

    const/high16 v6, -0x80000000

    if-ne v5, v6, :cond_6

    const/4 v6, 0x1

    aput-boolean v6, v2, v9

    sget-object v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MIN_FIELD_VALUE:[I

    aget v5, v5, v9

    :cond_6
    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v1, v6}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v6

    invoke-static {v6, v3}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->sanitize(Ljava/lang/Number;I)Ljava/math/BigInteger;

    move-result-object v6

    int-to-long v13, v5

    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->TWENTY_FOUR:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setHour(I)V

    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v6, v4, v9}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getDay()I

    move-result v5

    const/4 v6, 0x2

    const/high16 v11, -0x80000000

    if-ne v5, v11, :cond_7

    const/4 v11, 0x1

    aput-boolean v11, v2, v6

    sget-object v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MIN_FIELD_VALUE:[I

    aget v5, v5, v6

    :cond_7
    sget-object v11, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v1, v11}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v1

    invoke-static {v1, v3}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->sanitize(Ljava/lang/Number;I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v11

    invoke-static {v3, v11}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(Ljava/math/BigInteger;I)I

    move-result v3

    if-le v5, v3, :cond_8

    int-to-long v13, v3

    :goto_2
    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    goto :goto_3

    :cond_8
    const/4 v3, 0x1

    if-ge v5, v3, :cond_9

    goto :goto_3

    :cond_9
    int-to-long v13, v5

    goto :goto_2

    :goto_3
    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    :cond_a
    :goto_4
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_c

    iget v3, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-lt v3, v6, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    goto :goto_5

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    const/16 v4, 0xc

    :goto_5
    invoke-static {v3, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(Ljava/math/BigInteger;I)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v3, -0x1

    goto :goto_6

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v4

    invoke-static {v3, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(Ljava/math/BigInteger;I)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-lez v3, :cond_e

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v4

    invoke-static {v3, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(Ljava/math/BigInteger;I)I

    move-result v3

    neg-int v3, v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v3, 0x1

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v4

    add-int/2addr v4, v3

    const/4 v3, 0x1

    sub-int/2addr v4, v3

    rem-int/lit8 v5, v4, 0xc

    if-gez v5, :cond_d

    add-int/lit8 v5, v5, 0xc

    add-int/2addr v5, v3

    int-to-long v3, v4

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v3

    new-instance v4, Ljava/math/BigDecimal;

    sget-object v7, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->TWELVE:Ljava/math/BigInteger;

    invoke-direct {v4, v7}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v3, v4, v10}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->intValue()I

    move-result v3

    goto :goto_7

    :cond_d
    div-int/lit8 v3, v4, 0xc

    add-int/lit8 v5, v5, 0x1

    :goto_7
    invoke-virtual {v0, v5}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    if-eqz v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v4

    int-to-long v13, v3

    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(Ljava/math/BigInteger;)V

    goto/16 :goto_4

    :cond_e
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setDay(I)V

    :goto_8
    if-le v10, v8, :cond_f

    return-void

    :cond_f
    aget-boolean v1, v2, v10

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    if-eqz v10, :cond_15

    if-eq v10, v1, :cond_14

    if-eq v10, v6, :cond_13

    if-eq v10, v9, :cond_12

    const/high16 v3, -0x80000000

    if-eq v10, v12, :cond_11

    if-eq v10, v8, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual {v0, v3}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setFractionalSecond(Ljava/math/BigDecimal;)V

    goto :goto_9

    :cond_11
    invoke-virtual {v0, v3}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMinute(I)V

    goto :goto_9

    :cond_12
    const/high16 v3, -0x80000000

    invoke-virtual {v0, v3}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setHour(I)V

    goto :goto_9

    :cond_13
    const/high16 v3, -0x80000000

    invoke-virtual {v0, v3}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setDay(I)V

    goto :goto_9

    :cond_14
    const/high16 v3, -0x80000000

    invoke-virtual {v0, v3}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    goto :goto_9

    :cond_15
    const/high16 v3, -0x80000000

    invoke-virtual {v0, v3}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(I)V

    goto :goto_9

    :cond_16
    const/4 v1, 0x1

    const/high16 v3, -0x80000000

    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    const/high16 v1, -0x80000000

    iput v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    iput v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    iput v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    iput v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    iput v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    iput v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    iput v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    iput-object v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 10

    new-instance v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    iget v3, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    iget v4, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    iget v5, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    iget v6, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    iget-object v7, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    iget v8, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)V

    return-object v9
.end method

.method public compare(Ljavax/xml/datatype/XMLGregorianCalendar;)I
    .locals 7

    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v0

    invoke-virtual {p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->internalCompare(Ljavax/xml/datatype/XMLGregorianCalendar;Ljavax/xml/datatype/XMLGregorianCalendar;)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->normalize()Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-virtual {p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->normalize()Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-static {p0, p1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->internalCompare(Ljavax/xml/datatype/XMLGregorianCalendar;Ljavax/xml/datatype/XMLGregorianCalendar;)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x348

    const/4 v5, -0x1

    const/16 v6, -0x348

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->normalize()Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    goto :goto_0

    :cond_2
    move-object v0, p0

    :goto_0
    invoke-direct {p0, p1, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Ljavax/xml/datatype/XMLGregorianCalendar;I)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->internalCompare(Ljavax/xml/datatype/XMLGregorianCalendar;Ljavax/xml/datatype/XMLGregorianCalendar;)I

    move-result v1

    if-ne v1, v5, :cond_3

    return v1

    :cond_3
    invoke-direct {p0, p1, v6}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Ljavax/xml/datatype/XMLGregorianCalendar;I)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->internalCompare(Ljavax/xml/datatype/XMLGregorianCalendar;Ljavax/xml/datatype/XMLGregorianCalendar;)I

    move-result p0

    if-ne p0, v3, :cond_4

    return p0

    :cond_4
    return v2

    :cond_5
    invoke-virtual {p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Ljavax/xml/datatype/XMLGregorianCalendar;I)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    :cond_6
    invoke-direct {p0, p0, v6}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Ljavax/xml/datatype/XMLGregorianCalendar;I)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->internalCompare(Ljavax/xml/datatype/XMLGregorianCalendar;Ljavax/xml/datatype/XMLGregorianCalendar;)I

    move-result v0

    if-ne v0, v5, :cond_7

    return v0

    :cond_7
    invoke-direct {p0, p0, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Ljavax/xml/datatype/XMLGregorianCalendar;I)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->internalCompare(Ljavax/xml/datatype/XMLGregorianCalendar;Ljavax/xml/datatype/XMLGregorianCalendar;)I

    move-result p0

    if-ne p0, v3, :cond_8

    return p0

    :cond_8
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljavax/xml/datatype/XMLGregorianCalendar;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compare(Ljavax/xml/datatype/XMLGregorianCalendar;)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getDay()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    return p0
.end method

.method public getEon()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getEonAndYear()Ljava/math/BigInteger;
    .locals 3

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    if-eqz v2, :cond_0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    if-nez p0, :cond_1

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFractionalSecond()Ljava/math/BigDecimal;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public getHour()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    return p0
.end method

.method public getMillisecond()I
    .locals 1

    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    if-nez p0, :cond_0

    const/high16 p0, -0x80000000

    return p0

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    return p0
.end method

.method public getMinute()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    return p0
.end method

.method public getMonth()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    return p0
.end method

.method public getSecond()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    return p0
.end method

.method public getTimeZone(I)Ljava/util/TimeZone;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimezone()I

    move-result p0

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p0

    :goto_0
    if-ne p1, v0, :cond_1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    goto :goto_2

    :cond_1
    const/16 p0, 0x2d

    if-gez p1, :cond_2

    move v0, p0

    goto :goto_1

    :cond_2
    const/16 v0, 0x2b

    :goto_1
    if-ne v0, p0, :cond_3

    neg-int p1, p1

    :cond_3
    div-int/lit8 p0, p1, 0x3c

    mul-int/lit8 v1, p0, 0x3c

    sub-int/2addr p1, v1

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v2, "GMT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_5

    const/16 p0, 0xa

    if-ge p1, p0, :cond_4

    const/16 p0, 0x30

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public getTimezone()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    return p0
.end method

.method public getXMLSchemaType()Ljavax/xml/namespace/QName;
    .locals 3

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-eq v2, v1, :cond_0

    sget-object p0, Ljavax/xml/datatype/DatatypeConstants;->DATETIME:Ljavax/xml/namespace/QName;

    return-object p0

    :cond_0
    if-eq v0, v1, :cond_1

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-eq v2, v1, :cond_1

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-eq v2, v1, :cond_1

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    if-ne v2, v1, :cond_1

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-ne v2, v1, :cond_1

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-ne v2, v1, :cond_1

    sget-object p0, Ljavax/xml/datatype/DatatypeConstants;->DATE:Ljavax/xml/namespace/QName;

    return-object p0

    :cond_1
    if-ne v0, v1, :cond_2

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-ne v2, v1, :cond_2

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-ne v2, v1, :cond_2

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    if-eq v2, v1, :cond_2

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-eq v2, v1, :cond_2

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-eq v2, v1, :cond_2

    sget-object p0, Ljavax/xml/datatype/DatatypeConstants;->TIME:Ljavax/xml/namespace/QName;

    return-object p0

    :cond_2
    if-eq v0, v1, :cond_3

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-eq v2, v1, :cond_3

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-ne v2, v1, :cond_3

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    if-ne v2, v1, :cond_3

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-ne v2, v1, :cond_3

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-ne v2, v1, :cond_3

    sget-object p0, Ljavax/xml/datatype/DatatypeConstants;->GYEARMONTH:Ljavax/xml/namespace/QName;

    return-object p0

    :cond_3
    if-ne v0, v1, :cond_4

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-eq v2, v1, :cond_4

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-eq v2, v1, :cond_4

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    if-ne v2, v1, :cond_4

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-ne v2, v1, :cond_4

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-ne v2, v1, :cond_4

    sget-object p0, Ljavax/xml/datatype/DatatypeConstants;->GMONTHDAY:Ljavax/xml/namespace/QName;

    return-object p0

    :cond_4
    if-eq v0, v1, :cond_5

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-ne v2, v1, :cond_5

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-ne v2, v1, :cond_5

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    if-ne v2, v1, :cond_5

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-ne v2, v1, :cond_5

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-ne v2, v1, :cond_5

    sget-object p0, Ljavax/xml/datatype/DatatypeConstants;->GYEAR:Ljavax/xml/namespace/QName;

    return-object p0

    :cond_5
    if-ne v0, v1, :cond_6

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-eq v2, v1, :cond_6

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-ne v2, v1, :cond_6

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    if-ne v2, v1, :cond_6

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-ne v2, v1, :cond_6

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-ne v2, v1, :cond_6

    sget-object p0, Ljavax/xml/datatype/DatatypeConstants;->GMONTH:Ljavax/xml/namespace/QName;

    return-object p0

    :cond_6
    if-ne v0, v1, :cond_7

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-ne v0, v1, :cond_7

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-eq v0, v1, :cond_7

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    if-ne v0, v1, :cond_7

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-ne v0, v1, :cond_7

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-ne v0, v1, :cond_7

    sget-object p0, Ljavax/xml/datatype/DatatypeConstants;->GDAY:Ljavax/xml/namespace/QName;

    return-object p0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "#getXMLSchemaType() :"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "InvalidXGCFields"

    const/4 v2, 0x0

    invoke-static {v2, p0, v2}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getYear()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimezone()I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimezone()I

    move-result v0

    invoke-direct {p0, p0, v0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Ljavax/xml/datatype/XMLGregorianCalendar;I)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object p0

    :cond_1
    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getYear()I

    move-result v0

    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMonth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getDay()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getHour()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMinute()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getSecond()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isValid()Z
    .locals 5

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_2

    iget v3, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-eq v3, v2, :cond_2

    iget v4, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-eq v4, v2, :cond_1

    iget-object v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    if-nez v2, :cond_0

    invoke-static {v4, v0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(II)I

    move-result v0

    if-le v3, v0, :cond_2

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v0

    iget v2, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    invoke-static {v0, v2}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(Ljava/math/BigInteger;I)I

    move-result v0

    if-le v3, v0, :cond_2

    return v1

    :cond_1
    const/16 v2, 0x7d0

    invoke-static {v2, v0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(II)I

    move-result v0

    if-le v3, v0, :cond_2

    return v1

    :cond_2
    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    const/16 v2, 0x18

    if-ne v0, v2, :cond_4

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-nez v0, :cond_3

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    if-eqz v0, :cond_4

    sget-object v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    return v1

    :cond_4
    iget-object v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    if-nez v0, :cond_5

    iget p0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-nez p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public normalize()Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 3

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    invoke-direct {p0, p0, v0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Ljavax/xml/datatype/XMLGregorianCalendar;I)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimezone()I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v2}, Ljavax/xml/datatype/XMLGregorianCalendar;->setTimezone(I)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMillisecond()I

    move-result p0

    if-ne p0, v2, :cond_1

    invoke-virtual {v0, v2}, Ljavax/xml/datatype/XMLGregorianCalendar;->setMillisecond(I)V

    :cond_1
    return-object v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_eon:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    iget-object v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_fracSeconds:Ljava/math/BigDecimal;

    iput-object v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    iget v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    iput v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    return-void
.end method

.method public setDay(I)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    iput p1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    return-void
.end method

.method public setFractionalSecond(Ljava/math/BigDecimal;)V
    .locals 2

    if-eqz p1, :cond_1

    sget-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ONE:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "InvalidFractional"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1, v0, p1}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    return-void
.end method

.method public setHour(I)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    iput p1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    return-void
.end method

.method public setMillisecond(I)V
    .locals 2

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    int-to-long v0, p1

    const/4 p1, 0x3

    invoke-static {v0, v1, p1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    return-void
.end method

.method public setMinute(I)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    iput p1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    return-void
.end method

.method public setMonth(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    iput p1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    return-void
.end method

.method public setSecond(I)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    iput p1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    return-void
.end method

.method public setTime(III)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTime(IIILjava/math/BigDecimal;)V

    return-void
.end method

.method public setTime(IIII)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setHour(I)V

    invoke-virtual {p0, p2}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMinute(I)V

    invoke-virtual {p0, p3}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    invoke-virtual {p0, p4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMillisecond(I)V

    return-void
.end method

.method public setTime(IIILjava/math/BigDecimal;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setHour(I)V

    invoke-virtual {p0, p2}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMinute(I)V

    invoke-virtual {p0, p3}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    invoke-virtual {p0, p4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setFractionalSecond(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public setTimezone(I)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    iput p1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    return-void
.end method

.method public setYear(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    iput v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    :goto_0
    iput-object v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    goto :goto_1

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const v2, 0x3b9aca00

    if-ge v1, v2, :cond_1

    iput p1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    goto :goto_0

    :cond_1
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    sget-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->BILLION_B:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    iput v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setEon(Ljava/math/BigInteger;)V

    :goto_1
    return-void
.end method

.method public setYear(Ljava/math/BigInteger;)V
    .locals 2

    .line 2
    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    const/high16 p1, -0x80000000

    iput p1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->BILLION_B:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    iput v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setEon(Ljava/math/BigInteger;)V

    :goto_0
    return-void
.end method

.method public toGregorianCalendar()Ljava/util/GregorianCalendar;
    .locals 7

    .line 1
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimeZone(I)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3, v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    sget-object v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->PURE_GREGORIAN_CHANGE:Ljava/util/Date;

    invoke-virtual {v3, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    iget v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    const/4 v2, 0x1

    if-eq v1, v0, :cond_3

    iget-object v4, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    if-gez v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v3, v5, v1}, Ljava/util/Calendar;->set(II)V

    iget v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    :goto_2
    invoke-virtual {v3, v2, v1}, Ljava/util/Calendar;->set(II)V

    :cond_3
    iget v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-eq v1, v0, :cond_4

    const/4 v4, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    :cond_4
    iget v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-eq v1, v0, :cond_5

    const/4 v2, 0x5

    invoke-virtual {v3, v2, v1}, Ljava/util/Calendar;->set(II)V

    :cond_5
    iget v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    if-eq v1, v0, :cond_6

    const/16 v2, 0xb

    invoke-virtual {v3, v2, v1}, Ljava/util/Calendar;->set(II)V

    :cond_6
    iget v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-eq v1, v0, :cond_7

    const/16 v2, 0xc

    invoke-virtual {v3, v2, v1}, Ljava/util/Calendar;->set(II)V

    :cond_7
    iget v1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-eq v1, v0, :cond_8

    const/16 v0, 0xd

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->set(II)V

    :cond_8
    iget-object v0, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    if-eqz v0, :cond_9

    const/16 v0, 0xe

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMillisecond()I

    move-result p0

    invoke-virtual {v3, v0, p0}, Ljava/util/Calendar;->set(II)V

    :cond_9
    return-object v3
.end method

.method public toGregorianCalendar(Ljava/util/TimeZone;Ljava/util/Locale;Ljavax/xml/datatype/XMLGregorianCalendar;)Ljava/util/GregorianCalendar;
    .locals 5

    .line 2
    const/high16 v0, -0x80000000

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimeZone(I)Ljava/util/TimeZone;

    move-result-object p1

    :cond_1
    if-nez p2, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    :cond_2
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1, p1, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    sget-object p1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->PURE_GREGORIAN_CHANGE:Ljava/util/Date;

    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    iget p1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    const/4 p2, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_6

    iget-object v4, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    if-nez v4, :cond_4

    if-gez p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_3
    move p1, v3

    :goto_1
    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    iget p1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    :goto_2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    goto :goto_5

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-ne v4, p2, :cond_5

    :goto_3
    move p2, v2

    goto :goto_4

    :cond_5
    move p2, v3

    :goto_4
    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    :goto_5
    invoke-virtual {v1, v3, p1}, Ljava/util/Calendar;->set(II)V

    goto :goto_7

    :cond_6
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getYear()I

    move-result p1

    if-eq p1, v0, :cond_9

    invoke-virtual {p3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getEon()Ljava/math/BigInteger;

    move-result-object v4

    if-nez v4, :cond_8

    if-gez p1, :cond_7

    move p2, v2

    goto :goto_6

    :cond_7
    move p2, v3

    :goto_6
    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    goto :goto_2

    :cond_8
    invoke-virtual {p3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-ne v4, p2, :cond_5

    goto :goto_3

    :cond_9
    :goto_7
    iget p1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    const/4 p2, 0x2

    if-eq p1, v0, :cond_a

    :goto_8
    sub-int/2addr p1, v3

    invoke-virtual {v1, p2, p1}, Ljava/util/Calendar;->set(II)V

    goto :goto_a

    :cond_a
    if-eqz p3, :cond_b

    invoke-virtual {p3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMonth()I

    move-result p1

    goto :goto_9

    :cond_b
    move p1, v0

    :goto_9
    if-eq p1, v0, :cond_c

    goto :goto_8

    :cond_c
    :goto_a
    iget p1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    const/4 p2, 0x5

    if-eq p1, v0, :cond_d

    :goto_b
    invoke-virtual {v1, p2, p1}, Ljava/util/Calendar;->set(II)V

    goto :goto_d

    :cond_d
    if-eqz p3, :cond_e

    invoke-virtual {p3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getDay()I

    move-result p1

    goto :goto_c

    :cond_e
    move p1, v0

    :goto_c
    if-eq p1, v0, :cond_f

    goto :goto_b

    :cond_f
    :goto_d
    iget p1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    const/16 p2, 0xb

    if-eq p1, v0, :cond_10

    :goto_e
    invoke-virtual {v1, p2, p1}, Ljava/util/Calendar;->set(II)V

    goto :goto_10

    :cond_10
    if-eqz p3, :cond_11

    invoke-virtual {p3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getHour()I

    move-result p1

    goto :goto_f

    :cond_11
    move p1, v0

    :goto_f
    if-eq p1, v0, :cond_12

    goto :goto_e

    :cond_12
    :goto_10
    iget p1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    const/16 p2, 0xc

    if-eq p1, v0, :cond_13

    :goto_11
    invoke-virtual {v1, p2, p1}, Ljava/util/Calendar;->set(II)V

    goto :goto_13

    :cond_13
    if-eqz p3, :cond_14

    invoke-virtual {p3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMinute()I

    move-result p1

    goto :goto_12

    :cond_14
    move p1, v0

    :goto_12
    if-eq p1, v0, :cond_15

    goto :goto_11

    :cond_15
    :goto_13
    iget p1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    const/16 p2, 0xd

    if-eq p1, v0, :cond_16

    :goto_14
    invoke-virtual {v1, p2, p1}, Ljava/util/Calendar;->set(II)V

    goto :goto_16

    :cond_16
    if-eqz p3, :cond_17

    invoke-virtual {p3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getSecond()I

    move-result p1

    goto :goto_15

    :cond_17
    move p1, v0

    :goto_15
    if-eq p1, v0, :cond_18

    goto :goto_14

    :cond_18
    :goto_16
    iget-object p1, p0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    const/16 p2, 0xe

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMillisecond()I

    move-result p0

    :goto_17
    invoke-virtual {v1, p2, p0}, Ljava/util/Calendar;->set(II)V

    goto :goto_19

    :cond_19
    if-eqz p3, :cond_1a

    invoke-virtual {p3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_18

    :cond_1a
    const/4 p0, 0x0

    :goto_18
    if-eqz p0, :cond_1b

    invoke-virtual {p3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMillisecond()I

    move-result p0

    goto :goto_17

    :cond_1b
    :goto_19
    return-object v1
.end method

.method public toXMLFormat()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getXMLSchemaType()Ljavax/xml/namespace/QName;

    move-result-object v0

    sget-object v1, Ljavax/xml/datatype/DatatypeConstants;->DATETIME:Ljavax/xml/namespace/QName;

    if-ne v0, v1, :cond_0

    const-string v0, "%Y-%M-%DT%h:%m:%s%z"

    goto :goto_0

    :cond_0
    sget-object v1, Ljavax/xml/datatype/DatatypeConstants;->DATE:Ljavax/xml/namespace/QName;

    if-ne v0, v1, :cond_1

    const-string v0, "%Y-%M-%D%z"

    goto :goto_0

    :cond_1
    sget-object v1, Ljavax/xml/datatype/DatatypeConstants;->TIME:Ljavax/xml/namespace/QName;

    if-ne v0, v1, :cond_2

    const-string v0, "%h:%m:%s%z"

    goto :goto_0

    :cond_2
    sget-object v1, Ljavax/xml/datatype/DatatypeConstants;->GMONTH:Ljavax/xml/namespace/QName;

    if-ne v0, v1, :cond_3

    const-string v0, "--%M--%z"

    goto :goto_0

    :cond_3
    sget-object v1, Ljavax/xml/datatype/DatatypeConstants;->GDAY:Ljavax/xml/namespace/QName;

    if-ne v0, v1, :cond_4

    const-string v0, "---%D%z"

    goto :goto_0

    :cond_4
    sget-object v1, Ljavax/xml/datatype/DatatypeConstants;->GYEAR:Ljavax/xml/namespace/QName;

    if-ne v0, v1, :cond_5

    const-string v0, "%Y%z"

    goto :goto_0

    :cond_5
    sget-object v1, Ljavax/xml/datatype/DatatypeConstants;->GYEARMONTH:Ljavax/xml/namespace/QName;

    if-ne v0, v1, :cond_6

    const-string v0, "%Y-%M%z"

    goto :goto_0

    :cond_6
    sget-object v1, Ljavax/xml/datatype/DatatypeConstants;->GMONTHDAY:Ljavax/xml/namespace/QName;

    if-ne v0, v1, :cond_7

    const-string v0, "--%M-%D%z"

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
