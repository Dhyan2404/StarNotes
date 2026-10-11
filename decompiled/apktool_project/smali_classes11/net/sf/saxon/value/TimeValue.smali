.class public final Lnet/sf/saxon/value/TimeValue;
.super Lnet/sf/saxon/value/CalendarValue;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/XPathComparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/value/TimeValue$TimeComparable;
    }
.end annotation


# instance fields
.field public f:B

.field public g:B

.field public h:B

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/value/CalendarValue;-><init>()V

    return-void
.end method

.method public constructor <init>(BBBII)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0}, Lnet/sf/saxon/value/CalendarValue;-><init>()V

    .line 3
    iput-byte p1, p0, Lnet/sf/saxon/value/TimeValue;->f:B

    .line 4
    iput-byte p2, p0, Lnet/sf/saxon/value/TimeValue;->g:B

    .line 5
    iput-byte p3, p0, Lnet/sf/saxon/value/TimeValue;->h:B

    mul-int/lit16 p4, p4, 0x3e8

    .line 6
    iput p4, p0, Lnet/sf/saxon/value/TimeValue;->i:I

    .line 7
    invoke-virtual {p0, p5}, Lnet/sf/saxon/value/CalendarValue;->setTimezoneInMinutes(I)V

    .line 8
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public constructor <init>(BBBIILjava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lnet/sf/saxon/value/CalendarValue;-><init>()V

    .line 10
    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_0

    .line 11
    iput-byte p1, p0, Lnet/sf/saxon/value/TimeValue;->f:B

    .line 12
    iput-byte p2, p0, Lnet/sf/saxon/value/TimeValue;->g:B

    .line 13
    iput-byte p3, p0, Lnet/sf/saxon/value/TimeValue;->h:B

    .line 14
    iput p4, p0, Lnet/sf/saxon/value/TimeValue;->i:I

    .line 15
    invoke-virtual {p0, p5}, Lnet/sf/saxon/value/CalendarValue;->setTimezoneInMinutes(I)V

    .line 16
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public constructor <init>(Ljava/util/GregorianCalendar;I)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lnet/sf/saxon/value/CalendarValue;-><init>()V

    const/16 v0, 0xb

    .line 19
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lnet/sf/saxon/value/TimeValue;->f:B

    const/16 v0, 0xc

    .line 20
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lnet/sf/saxon/value/TimeValue;->g:B

    const/16 v0, 0xd

    .line 21
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lnet/sf/saxon/value/TimeValue;->h:B

    const/16 v0, 0xe

    .line 22
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const v0, 0xf4240

    mul-int/2addr p1, v0

    iput p1, p0, Lnet/sf/saxon/value/TimeValue;->i:I

    .line 23
    invoke-virtual {p0, p2}, Lnet/sf/saxon/value/CalendarValue;->setTimezoneInMinutes(I)V

    .line 24
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public static b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 3

    new-instance v0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-static {p1, v2}, Lnet/sf/saxon/trans/Err;->wrap(Lnet/sf/saxon/str/UnicodeString;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    const-string p0, "FORG0001"

    invoke-virtual {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    return-object v0
.end method

.method public static makeTimeValue(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;
    .locals 15

    .line 2
    new-instance v0, Lnet/sf/saxon/value/TimeValue;

    invoke-direct {v0}, Lnet/sf/saxon/value/TimeValue;-><init>()V

    .line 3
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->trim(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-:.+Z"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    const-string v3, "too short"

    if-nez v2, :cond_0

    .line 5
    invoke-static {v3, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const-string v0, "hour must be two digits"

    .line 8
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    invoke-static {v2}, Lnet/sf/saxon/value/DurationValue;->simpleInteger(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    const-string v0, "Non-numeric hour component"

    .line 10
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_2
    int-to-byte v2, v2

    .line 11
    iput-byte v2, v0, Lnet/sf/saxon/value/TimeValue;->f:B

    const/16 v5, 0x18

    if-le v2, v5, :cond_3

    const-string v0, "hour is out of range"

    .line 12
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    .line 13
    :cond_3
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_4

    .line 14
    invoke-static {v3, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    .line 15
    :cond_4
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string v7, ":"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v0, "wrong delimiter after hour"

    .line 16
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    .line 17
    :cond_5
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_6

    .line 18
    invoke-static {v3, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    .line 19
    :cond_6
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v8, v6, :cond_7

    const-string v0, "minute must be two digits"

    .line 21
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    .line 22
    :cond_7
    invoke-static {v2}, Lnet/sf/saxon/value/DurationValue;->simpleInteger(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_8

    const-string v0, "Non-numeric minute component"

    .line 23
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_8
    int-to-byte v2, v2

    .line 24
    iput-byte v2, v0, Lnet/sf/saxon/value/TimeValue;->g:B

    const/16 v8, 0x3b

    if-le v2, v8, :cond_9

    const-string v0, "minute is out of range"

    .line 25
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    .line 26
    :cond_9
    iget-byte v9, v0, Lnet/sf/saxon/value/TimeValue;->f:B

    if-ne v9, v5, :cond_a

    if-eqz v2, :cond_a

    const-string v0, "If hour is 24, minute must be 00"

    .line 27
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    .line 28
    :cond_a
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_b

    .line 29
    invoke-static {v3, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    .line 30
    :cond_b
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v0, "wrong delimiter after minute"

    .line 31
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    .line 32
    :cond_c
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_d

    .line 33
    invoke-static {v3, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    .line 34
    :cond_d
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v6, :cond_e

    const-string v0, "second must be two digits"

    .line 36
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    .line 37
    :cond_e
    invoke-static {v2}, Lnet/sf/saxon/value/DurationValue;->simpleInteger(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_f

    const-string v0, "Non-numeric second component"

    .line 38
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_f
    int-to-byte v2, v2

    .line 39
    iput-byte v2, v0, Lnet/sf/saxon/value/TimeValue;->h:B

    if-le v2, v8, :cond_10

    const-string v0, "second is out of range"

    .line 40
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    .line 41
    :cond_10
    iget-byte v3, v0, Lnet/sf/saxon/value/TimeValue;->f:B

    if-ne v3, v5, :cond_11

    if-eqz v2, :cond_11

    const-string v0, "If hour is 24, second must be 00"

    .line 42
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 v2, 0x0

    move v3, v2

    move v9, v3

    move v10, v9

    .line 43
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_29

    const/16 v11, 0x9

    if-ne v3, v11, :cond_12

    const-string v0, "characters after the end"

    .line 44
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    .line 45
    :cond_12
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    const-string v13, "."

    .line 46
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    if-eqz v3, :cond_13

    const-string v0, "decimal separator occurs twice"

    .line 47
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    .line 48
    :cond_13
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_14

    const-string v0, "decimal point must be followed by digits"

    .line 49
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    .line 50
    :cond_14
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v11, :cond_15

    const-string v12, "^[0-9]+$"

    invoke-virtual {v3, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 52
    invoke-virtual {v3, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 53
    :cond_15
    invoke-static {v3}, Lnet/sf/saxon/value/DurationValue;->simpleInteger(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_16

    const-string v0, "Non-numeric fractional seconds component"

    .line 54
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    .line 55
    :cond_16
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x2e

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    const-wide v13, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v11, v13

    .line 56
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-int v3, v11

    iput v3, v0, Lnet/sf/saxon/value/TimeValue;->i:I

    .line 57
    iget-byte v11, v0, Lnet/sf/saxon/value/TimeValue;->f:B

    if-ne v11, v5, :cond_17

    if-eqz v3, :cond_17

    const-string v0, "If hour is 24, fractional seconds must be 0"

    .line 58
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_17
    move v3, v4

    goto/16 :goto_0

    :cond_18
    const-string v13, "Z"

    .line 59
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    if-le v3, v4, :cond_19

    const-string v0, "Z cannot occur here"

    .line 60
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    .line 61
    :cond_19
    invoke-virtual {v0, v2}, Lnet/sf/saxon/value/CalendarValue;->setTimezoneInMinutes(I)V

    move v9, v2

    :goto_1
    move v3, v11

    goto/16 :goto_0

    :cond_1a
    const-string v13, "+"

    .line 62
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, "-"

    if-nez v13, :cond_22

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    goto :goto_2

    .line 63
    :cond_1b
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    if-eq v3, v6, :cond_1c

    const-string v0, "colon cannot occur here"

    .line 64
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    .line 65
    :cond_1c
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-static {v3}, Lnet/sf/saxon/value/DurationValue;->simpleInteger(Ljava/lang/String;)I

    move-result v12

    if-gez v12, :cond_1d

    const-string v0, "Non-numeric timezone minute component"

    .line 67
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    .line 68
    :cond_1d
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v6, :cond_1e

    const-string v0, "timezone minute must be two digits"

    .line 69
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_1e
    if-le v12, v8, :cond_1f

    const-string v0, "timezone minute is out of range"

    .line 70
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_1f
    add-int/2addr v9, v12

    if-eqz v10, :cond_20

    neg-int v3, v9

    move v9, v3

    .line 71
    :cond_20
    invoke-virtual {v0, v9}, Lnet/sf/saxon/value/CalendarValue;->setTimezoneInMinutes(I)V

    goto :goto_1

    :cond_21
    const-string v0, "timezone format is incorrect"

    .line 72
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_22
    :goto_2
    if-le v3, v4, :cond_23

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cannot occur here"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    .line 74
    :cond_23
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_24

    const-string v0, "missing timezone"

    .line 75
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    .line 76
    :cond_24
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v9, v6, :cond_25

    const-string v0, "timezone hour must be two digits"

    .line 78
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    .line 79
    :cond_25
    invoke-static {v3}, Lnet/sf/saxon/value/DurationValue;->simpleInteger(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_26

    const-string v0, "Non-numeric timezone hour component"

    .line 80
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_26
    mul-int/lit8 v9, v3, 0x3c

    const/16 v3, 0x348

    if-le v9, v3, :cond_27

    const-string v0, "timezone hour is out of range"

    .line 81
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    .line 82
    :cond_27
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    move v10, v4

    :cond_28
    move v3, v6

    goto/16 :goto_0

    :cond_29
    if-eq v3, v6, :cond_2c

    const/4 v1, 0x3

    if-ne v3, v1, :cond_2a

    goto :goto_3

    .line 83
    :cond_2a
    iget-byte p0, v0, Lnet/sf/saxon/value/TimeValue;->f:B

    if-ne p0, v5, :cond_2b

    .line 84
    iput-byte v2, v0, Lnet/sf/saxon/value/TimeValue;->f:B

    .line 85
    :cond_2b
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p0, v0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-object v0

    :cond_2c
    :goto_3
    const-string v0, "timezone incomplete"

    .line 86
    invoke-static {v0, p0}, Lnet/sf/saxon/value/TimeValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic add(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/CalendarValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/TimeValue;->add(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/TimeValue;

    move-result-object p0

    return-object p0
.end method

.method public add(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/TimeValue;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    instance-of v0, p1, Lnet/sf/saxon/value/DayTimeDurationValue;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/value/TimeValue;->toDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/value/DateTimeValue;->add(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p1

    .line 4
    new-instance v7, Lnet/sf/saxon/value/TimeValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/DateTimeValue;->getHour()B

    move-result v1

    invoke-virtual {p1}, Lnet/sf/saxon/value/DateTimeValue;->getMinute()B

    move-result v2

    invoke-virtual {p1}, Lnet/sf/saxon/value/DateTimeValue;->getSecond()B

    move-result v3

    .line 5
    invoke-virtual {p1}, Lnet/sf/saxon/value/DateTimeValue;->getNanosecond()I

    move-result v4

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v5

    const-string v6, ""

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/sf/saxon/value/TimeValue;-><init>(BBBIILjava/lang/String;)V

    return-object v7

    .line 6
    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Time+Duration arithmetic is supported only for xs:dayTimeDuration"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "XPTY0004"

    .line 7
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    .line 9
    throw p0
.end method

.method public bridge synthetic adjustTimezone(I)Lnet/sf/saxon/value/CalendarValue;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/TimeValue;->adjustTimezone(I)Lnet/sf/saxon/value/TimeValue;

    move-result-object p0

    return-object p0
.end method

.method public adjustTimezone(I)Lnet/sf/saxon/value/TimeValue;
    .locals 7

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/value/TimeValue;->toDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DateTimeValue;->adjustTimezone(I)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    .line 3
    new-instance p1, Lnet/sf/saxon/value/TimeValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->getHour()B

    move-result v1

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->getMinute()B

    move-result v2

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->getSecond()B

    move-result v3

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->getNanosecond()I

    move-result v4

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v5

    const-string v6, ""

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lnet/sf/saxon/value/TimeValue;-><init>(BBBIILjava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/expr/sort/XPathComparable;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/TimeValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I
    .locals 2

    .line 2
    instance-of v0, p1, Lnet/sf/saxon/value/TimeValue;

    if-eqz v0, :cond_5

    .line 3
    check-cast p1, Lnet/sf/saxon/value/TimeValue;

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 5
    iget-byte v0, p0, Lnet/sf/saxon/value/TimeValue;->f:B

    iget-byte v1, p1, Lnet/sf/saxon/value/TimeValue;->f:B

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    .line 6
    invoke-static {v0}, Lnet/sf/saxon/value/IntegerValue;->signum(I)I

    move-result p0

    return p0

    .line 7
    :cond_0
    iget-byte v0, p0, Lnet/sf/saxon/value/TimeValue;->g:B

    iget-byte v1, p1, Lnet/sf/saxon/value/TimeValue;->g:B

    if-eq v0, v1, :cond_1

    sub-int/2addr v0, v1

    .line 8
    invoke-static {v0}, Lnet/sf/saxon/value/IntegerValue;->signum(I)I

    move-result p0

    return p0

    .line 9
    :cond_1
    iget-byte v0, p0, Lnet/sf/saxon/value/TimeValue;->h:B

    iget-byte v1, p1, Lnet/sf/saxon/value/TimeValue;->h:B

    if-eq v0, v1, :cond_2

    sub-int/2addr v0, v1

    .line 10
    invoke-static {v0}, Lnet/sf/saxon/value/IntegerValue;->signum(I)I

    move-result p0

    return p0

    .line 11
    :cond_2
    iget p0, p0, Lnet/sf/saxon/value/TimeValue;->i:I

    iget p1, p1, Lnet/sf/saxon/value/TimeValue;->i:I

    if-eq p0, p1, :cond_3

    sub-int/2addr p0, p1

    .line 12
    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->signum(I)I

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0

    .line 13
    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/value/TimeValue;->toDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/value/TimeValue;->toDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DateTimeValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    return p0

    .line 14
    :cond_5
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot compare xs:time to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public compareTo(Lnet/sf/saxon/value/CalendarValue;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/NoDynamicContextException;
        }
    .end annotation

    .line 15
    instance-of v0, p1, Lnet/sf/saxon/value/TimeValue;

    if-eqz v0, :cond_1

    .line 16
    check-cast p1, Lnet/sf/saxon/value/TimeValue;

    .line 17
    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 18
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/TimeValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    return p0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/TimeValue;->toDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/value/TimeValue;->toDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/value/DateTimeValue;->compareTo(Lnet/sf/saxon/value/CalendarValue;I)I

    move-result p0

    return p0

    .line 20
    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Time values are not comparable to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/AtomicValue;
    .locals 8

    new-instance v7, Lnet/sf/saxon/value/TimeValue;

    iget-byte v1, p0, Lnet/sf/saxon/value/TimeValue;->f:B

    iget-byte v2, p0, Lnet/sf/saxon/value/TimeValue;->g:B

    iget-byte v3, p0, Lnet/sf/saxon/value/TimeValue;->h:B

    iget v4, p0, Lnet/sf/saxon/value/TimeValue;->i:I

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v5

    const-string v6, ""

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/sf/saxon/value/TimeValue;-><init>(BBBIILjava/lang/String;)V

    iput-object p1, v7, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-object v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/value/TimeValue;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/value/TimeValue;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/TimeValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCalendar()Ljava/util/GregorianCalendar;
    .locals 11

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v0

    const v2, 0xea60

    mul-int/2addr v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Ljava/util/SimpleTimeZone;

    const-string v3, "LLL"

    invoke-direct {v2, v0, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setLenient(Z)V

    const/16 v2, 0xf

    invoke-virtual {v3, v2}, Ljava/util/GregorianCalendar;->getMinimum(I)I

    move-result v4

    if-lt v0, v4, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/GregorianCalendar;->getMaximum(I)I

    move-result v4

    if-le v0, v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v5, 0x7b4

    const/16 v6, 0xb

    const/16 v7, 0x1f

    iget-byte v8, p0, Lnet/sf/saxon/value/TimeValue;->f:B

    iget-byte v9, p0, Lnet/sf/saxon/value/TimeValue;->g:B

    iget-byte v10, p0, Lnet/sf/saxon/value/TimeValue;->h:B

    move-object v4, v3

    invoke-virtual/range {v4 .. v10}, Ljava/util/Calendar;->set(IIIIII)V

    iget p0, p0, Lnet/sf/saxon/value/TimeValue;->i:I

    const v4, 0xf4240

    div-int/2addr p0, v4

    const/16 v4, 0xe

    invoke-virtual {v3, v4, p0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v3, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0x10

    invoke-virtual {v3, p0, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    return-object v3

    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lnet/sf/saxon/value/TimeValue;->adjustTimezone(I)Lnet/sf/saxon/value/TimeValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/TimeValue;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object p0

    return-object p0
.end method

.method public getCanonicalLexicalRepresentation()Lnet/sf/saxon/str/UnicodeString;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/value/TimeValue;->adjustTimezone(I)Lnet/sf/saxon/value/TimeValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/value/TimeValue$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown component for time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result p0

    int-to-long p0, p0

    const-wide/32 v0, 0xea60

    mul-long/2addr p0, v0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/DayTimeDurationValue;->fromMilliseconds(J)Lnet/sf/saxon/value/DayTimeDurationValue;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    new-instance p1, Lnet/sf/saxon/value/Int64Value;

    iget p0, p0, Lnet/sf/saxon/value/TimeValue;->i:I

    int-to-long v0, p0

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    return-object p1

    :pswitch_2
    new-instance p1, Lnet/sf/saxon/value/Int64Value;

    iget p0, p0, Lnet/sf/saxon/value/TimeValue;->i:I

    div-int/lit16 p0, p0, 0x3e8

    int-to-long v0, p0

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    return-object p1

    :pswitch_3
    iget-byte p0, p0, Lnet/sf/saxon/value/TimeValue;->h:B

    int-to-long p0, p0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget p1, p0, Lnet/sf/saxon/value/TimeValue;->i:I

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/value/BigDecimalValue;->BIG_DECIMAL_ONE_BILLION:Ljava/math/BigDecimal;

    const/4 v1, 0x6

    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p1, v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    iget-byte p0, p0, Lnet/sf/saxon/value/TimeValue;->h:B

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/value/BigDecimalValue;

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    return-object p1

    :pswitch_5
    iget-byte p0, p0, Lnet/sf/saxon/value/TimeValue;->g:B

    int-to-long p0, p0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :pswitch_6
    iget-byte p0, p0, Lnet/sf/saxon/value/TimeValue;->f:B

    int-to-long p0, p0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getHour()B
    .locals 0

    iget-byte p0, p0, Lnet/sf/saxon/value/TimeValue;->f:B

    return p0
.end method

.method public getMicrosecond()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/value/TimeValue;->i:I

    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public getMinute()B
    .locals 0

    iget-byte p0, p0, Lnet/sf/saxon/value/TimeValue;->g:B

    return p0
.end method

.method public getNanosecond()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/value/TimeValue;->i:I

    return p0
.end method

.method public getPrimitiveStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 4

    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    iget-byte v1, p0, Lnet/sf/saxon/value/TimeValue;->f:B

    invoke-static {v0, v1}, Lnet/sf/saxon/value/CalendarValue;->appendTwoDigits(Lnet/sf/saxon/str/UnicodeBuilder;I)V

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    iget-byte v2, p0, Lnet/sf/saxon/value/TimeValue;->g:B

    invoke-static {v0, v2}, Lnet/sf/saxon/value/CalendarValue;->appendTwoDigits(Lnet/sf/saxon/str/UnicodeBuilder;I)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    iget-byte v1, p0, Lnet/sf/saxon/value/TimeValue;->h:B

    invoke-static {v0, v1}, Lnet/sf/saxon/value/CalendarValue;->appendTwoDigits(Lnet/sf/saxon/str/UnicodeBuilder;I)V

    iget v1, p0, Lnet/sf/saxon/value/TimeValue;->i:I

    if-eqz v1, :cond_0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    iget v1, p0, Lnet/sf/saxon/value/TimeValue;->i:I

    const v2, 0x5f5e100

    :goto_0
    if-lez v1, :cond_0

    div-int v3, v1, v2

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr v1, v2

    div-int/lit8 v2, v2, 0xa

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/value/CalendarValue;->appendTimezone(Lnet/sf/saxon/str/UnicodeBuilder;)V

    :cond_1
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public getSchemaComparable()Lnet/sf/saxon/value/TimeValue$TimeComparable;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/TimeValue$TimeComparable;

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/TimeValue$TimeComparable;-><init>(Lnet/sf/saxon/value/TimeValue;)V

    return-object v0
.end method

.method public getSecond()B
    .locals 0

    iget-byte p0, p0, Lnet/sf/saxon/value/TimeValue;->h:B

    return p0
.end method

.method public getXPathComparable(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/XPathComparable;
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

    if-eq p2, p1, :cond_1

    invoke-virtual {p0, p2}, Lnet/sf/saxon/value/TimeValue;->adjustTimezone(I)Lnet/sf/saxon/value/TimeValue;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/NoDynamicContextException;

    const-string p1, "Unknown implicit timezone"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/NoDynamicContextException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hashCode()I
    .locals 8

    const/16 v0, 0x79f

    const/16 v1, 0xa

    const/16 v2, 0xb

    iget-byte v3, p0, Lnet/sf/saxon/value/TimeValue;->f:B

    iget-byte v4, p0, Lnet/sf/saxon/value/TimeValue;->g:B

    iget-byte v5, p0, Lnet/sf/saxon/value/TimeValue;->h:B

    iget v6, p0, Lnet/sf/saxon/value/TimeValue;->i:I

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v7

    invoke-static/range {v0 .. v7}, Lnet/sf/saxon/value/DateTimeValue;->computeHashCode(IBBBBBII)I

    move-result p0

    return p0
.end method

.method public makeTimeValue(BBBII)Lnet/sf/saxon/value/TimeValue;
    .locals 7

    .line 1
    new-instance p0, Lnet/sf/saxon/value/TimeValue;

    const-string v6, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lnet/sf/saxon/value/TimeValue;-><init>(BBBIILjava/lang/String;)V

    return-object p0
.end method

.method public subtract(Lnet/sf/saxon/value/CalendarValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/DayTimeDurationValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/value/TimeValue;

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/value/CalendarValue;->subtract(Lnet/sf/saxon/value/CalendarValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/DayTimeDurationValue;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "First operand of \'-\' is a time, but the second is not"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw p0
.end method

.method public toDateTime()Lnet/sf/saxon/value/DateTimeValue;
    .locals 10

    new-instance v9, Lnet/sf/saxon/value/DateTimeValue;

    const/16 v1, 0x7b4

    const/16 v2, 0xc

    const/16 v3, 0x1f

    iget-byte v4, p0, Lnet/sf/saxon/value/TimeValue;->f:B

    iget-byte v5, p0, Lnet/sf/saxon/value/TimeValue;->g:B

    iget-byte v6, p0, Lnet/sf/saxon/value/TimeValue;->h:B

    iget v7, p0, Lnet/sf/saxon/value/TimeValue;->i:I

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lnet/sf/saxon/value/DateTimeValue;-><init>(IBBBBBII)V

    return-object v9
.end method
