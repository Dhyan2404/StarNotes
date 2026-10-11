.class public abstract Lnet/sf/saxon/value/GDateValue;
.super Lnet/sf/saxon/value/CalendarValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/value/GDateValue$GDateComparable;
    }
.end annotation


# static fields
.field protected static daysPerMonth:[B

.field protected static final monthData:[S


# instance fields
.field protected day:B

.field protected hasNoYearZero:Z

.field protected month:B

.field protected year:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xc

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lnet/sf/saxon/value/GDateValue;->daysPerMonth:[B

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Lnet/sf/saxon/value/GDateValue;->monthData:[S

    return-void

    nop

    :array_0
    .array-data 1
        0x1ft
        0x1ct
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
    .end array-data

    :array_1
    .array-data 2
        0x132s
        0x151s
        0x0s
        0x1fs
        0x3ds
        0x5cs
        0x7as
        0x99s
        0xb8s
        0xd6s
        0xf5s
        0x113s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/value/CalendarValue;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 3

    new-instance v0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid date "

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

.method public static c(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 3

    new-instance v0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid date "

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

    invoke-virtual {v0, p2}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isLeapYear(I)Z
    .locals 1

    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidDate(III)Z
    .locals 2

    if-lez p1, :cond_0

    const/16 v0, 0xc

    if-gt p1, v0, :cond_0

    if-lez p2, :cond_0

    sget-object v0, Lnet/sf/saxon/value/GDateValue;->daysPerMonth:[B

    add-int/lit8 v1, p1, -0x1

    aget-byte v0, v0, v1

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/16 p1, 0x1d

    if-ne p2, p1, :cond_2

    invoke-static {p0}, Lnet/sf/saxon/value/GDateValue;->isLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setLexicalValue(Lnet/sf/saxon/value/GDateValue;Lnet/sf/saxon/str/UnicodeString;Z)Lnet/sf/saxon/type/ConversionResult;
    .locals 11

    const-string v0, "+"

    const-string v1, "-"

    xor-int/lit8 v2, p2, 0x1

    iput-boolean v2, p0, Lnet/sf/saxon/value/GDateValue;->hasNoYearZero:Z

    new-instance v2, Ljava/util/StringTokenizer;

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->trim(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-:+TZ"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "Too short"

    if-nez v3, :cond_0

    :try_start_1
    invoke-static {v4, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string p0, "Date must not start with \'+\' sign"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_2

    const-string p0, "No year after \'-\'"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    move v6, v7

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-ge v8, v9, :cond_4

    const-string p0, "Year is less than four digits"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x0

    if-le v8, v9, :cond_5

    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-ne v8, v9, :cond_5

    const-string p0, "When year exceeds 4 digits, leading zeroes are not allowed"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {v3}, Lnet/sf/saxon/value/DurationValue;->simpleInteger(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_7

    if-ne v3, v7, :cond_6

    const-string p0, "Non-numeric year component"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p0, "Year is outside the range that Saxon can handle"

    const-string p2, "FODT0001"

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/value/GDateValue;->c(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_7
    mul-int/2addr v3, v6

    iput v3, p0, Lnet/sf/saxon/value/GDateValue;->year:I

    if-nez v3, :cond_8

    if-nez p2, :cond_8

    const-string p0, "Year zero is not allowed"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_8
    if-gez v6, :cond_9

    if-nez p2, :cond_9

    add-int/2addr v3, v5

    iput v3, p0, Lnet/sf/saxon/value/GDateValue;->year:I

    :cond_9
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-nez p2, :cond_a

    invoke-static {v4, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    const-string p0, "Wrong delimiter after year"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-nez p2, :cond_c

    invoke-static {v4, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_c
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_d

    const-string p0, "Month must be two digits"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-static {p2}, Lnet/sf/saxon/value/DurationValue;->simpleInteger(Ljava/lang/String;)I

    move-result p2

    if-gez p2, :cond_e

    const-string p0, "Non-numeric month component"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_e
    int-to-byte p2, p2

    iput-byte p2, p0, Lnet/sf/saxon/value/GDateValue;->month:B

    if-lt p2, v5, :cond_2a

    const/16 v3, 0xc

    if-le p2, v3, :cond_f

    goto/16 :goto_4

    :cond_f
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-nez p2, :cond_10

    invoke-static {v4, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    const-string p0, "Wrong delimiter after month"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-nez p2, :cond_12

    invoke-static {v4, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_12
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v6, :cond_13

    const-string p0, "Day must be two digits"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_13
    invoke-static {p2}, Lnet/sf/saxon/value/DurationValue;->simpleInteger(Ljava/lang/String;)I

    move-result p2

    if-gez p2, :cond_14

    const-string p0, "Non-numeric day component"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_14
    int-to-byte p2, p2

    iput-byte p2, p0, Lnet/sf/saxon/value/GDateValue;->day:B

    if-lt p2, v5, :cond_29

    const/16 v3, 0x1f

    if-le p2, v3, :cond_15

    goto/16 :goto_3

    :cond_15
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_27

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    const-string v3, "T"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string p0, "Value includes time"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_16
    const-string v3, "Z"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_17

    const-string p0, "Continues after \'Z\'"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_17
    invoke-virtual {p0, v10}, Lnet/sf/saxon/value/CalendarValue;->setTimezoneInMinutes(I)V

    goto/16 :goto_2

    :cond_18
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1

    :cond_19
    const-string p0, "Timezone format is incorrect"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_1a
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_1b

    const-string p0, "Missing timezone"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_1b
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/DurationValue;->simpleInteger(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1c

    const-string p0, "Non-numeric timezone hour component"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v6, :cond_1d

    const-string p0, "Timezone hour must be two digits"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_1d
    const/16 v0, 0xe

    if-le v3, v0, :cond_1e

    const-string p0, "Timezone hour is out of range"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_1e
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "No minutes in timezone"

    if-nez v0, :cond_1f

    :try_start_2
    invoke-static {v4, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_1f
    const-string v0, ":"

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string p0, "Wrong delimiter after timezone hour"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_20
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {v4, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_21
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/DurationValue;->simpleInteger(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_22

    const-string p0, "Non-numeric timezone minute component"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v6, :cond_23

    const-string p0, "Timezone minute must be two digits"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_23
    const/16 v0, 0x3b

    if-le v4, v0, :cond_24

    const-string p0, "Timezone minute is out of range"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_24
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string p0, "Continues after timezone"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_25
    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v3, v4

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_26

    neg-int v3, v3

    :cond_26
    invoke-virtual {p0, v3}, Lnet/sf/saxon/value/CalendarValue;->setTimezoneInMinutes(I)V

    :cond_27
    :goto_2
    iget p2, p0, Lnet/sf/saxon/value/GDateValue;->year:I

    iget-byte v0, p0, Lnet/sf/saxon/value/GDateValue;->month:B

    iget-byte v1, p0, Lnet/sf/saxon/value/GDateValue;->day:B

    invoke-static {p2, v0, v1}, Lnet/sf/saxon/value/GDateValue;->isValidDate(III)Z

    move-result p2

    if-nez p2, :cond_28

    const-string p0, "Non-existent date"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    :cond_28
    return-object p0

    :cond_29
    :goto_3
    const-string p0, "Day is out of range"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_2a
    :goto_4
    const-string p0, "Month is out of range"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    const-string p0, "Non-numeric component"

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GDateValue;->b(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkValidInJavascript()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget p0, p0, Lnet/sf/saxon/value/GDateValue;->year:I

    if-lez p0, :cond_0

    const/16 v0, 0x270f

    if-gt p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Year out of range for SaxonJS"

    const-string v1, "FODT0001"

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public compareTo(Lnet/sf/saxon/value/CalendarValue;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/NoDynamicContextException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v1

    if-ne v0, v1, :cond_4

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/value/GDateValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v1

    invoke-virtual {p1}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget p1, p0, Lnet/sf/saxon/value/GDateValue;->year:I

    iget p2, v0, Lnet/sf/saxon/value/GDateValue;->year:I

    if-eq p1, p2, :cond_0

    sub-int/2addr p1, p2

    invoke-static {p1}, Lnet/sf/saxon/value/IntegerValue;->signum(I)I

    move-result p0

    return p0

    :cond_0
    iget-byte p1, p0, Lnet/sf/saxon/value/GDateValue;->month:B

    iget-byte p2, v0, Lnet/sf/saxon/value/GDateValue;->month:B

    if-eq p1, p2, :cond_1

    sub-int/2addr p1, p2

    invoke-static {p1}, Lnet/sf/saxon/value/IntegerValue;->signum(I)I

    move-result p0

    return p0

    :cond_1
    iget-byte p0, p0, Lnet/sf/saxon/value/GDateValue;->day:B

    iget-byte p1, v0, Lnet/sf/saxon/value/GDateValue;->day:B

    if-eq p0, p1, :cond_2

    sub-int/2addr p0, p1

    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->signum(I)I

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/value/GDateValue;->toDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/value/CalendarValue;->toDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/value/DateTimeValue;->compareTo(Lnet/sf/saxon/value/CalendarValue;I)I

    move-result p0

    return p0

    :cond_4
    new-instance p0, Ljava/lang/ClassCastException;

    const-string p1, "Cannot compare dates of different types"

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/value/GDateValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/value/GDateValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/value/GDateValue;->toDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/value/GDateValue;->toDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DateTimeValue;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getCalendar()Ljava/util/GregorianCalendar;
    .locals 6

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

    new-instance v2, Ljava/util/Date;

    const-wide/high16 v4, -0x8000000000000000L

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v2}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    const/16 v2, 0xf

    invoke-virtual {v3, v2}, Ljava/util/GregorianCalendar;->getMinimum(I)I

    move-result v4

    if-lt v0, v4, :cond_4

    invoke-virtual {v3, v2}, Ljava/util/GregorianCalendar;->getMaximum(I)I

    move-result v4

    if-le v0, v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setLenient(Z)V

    iget v4, p0, Lnet/sf/saxon/value/GDateValue;->year:I

    if-gtz v4, :cond_3

    iget-boolean v5, p0, Lnet/sf/saxon/value/GDateValue;->hasNoYearZero:Z

    if-eqz v5, :cond_2

    rsub-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    rsub-int/lit8 v4, v4, 0x0

    :goto_1
    invoke-virtual {v3, v1, v1}, Ljava/util/Calendar;->set(II)V

    :cond_3
    iget-byte v5, p0, Lnet/sf/saxon/value/GDateValue;->month:B

    add-int/lit8 v5, v5, -0x1

    iget-byte p0, p0, Lnet/sf/saxon/value/GDateValue;->day:B

    invoke-virtual {v3, v4, v5, p0}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v3, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0x10

    invoke-virtual {v3, p0, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    return-object v3

    :cond_4
    :goto_2
    invoke-virtual {p0, v1}, Lnet/sf/saxon/value/CalendarValue;->adjustTimezone(I)Lnet/sf/saxon/value/CalendarValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getCalendar()Ljava/util/GregorianCalendar;

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

    sget-object v0, Lnet/sf/saxon/value/GDateValue$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

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

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown component for date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-byte p0, p0, Lnet/sf/saxon/value/GDateValue;->day:B

    int-to-long p0, p0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :cond_3
    iget-byte p0, p0, Lnet/sf/saxon/value/GDateValue;->month:B

    int-to-long p0, p0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :cond_4
    iget p1, p0, Lnet/sf/saxon/value/GDateValue;->year:I

    if-gtz p1, :cond_6

    iget-boolean p0, p0, Lnet/sf/saxon/value/GDateValue;->hasNoYearZero:Z

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    sub-int/2addr p1, v1

    :cond_6
    :goto_0
    int-to-long p0, p1

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :cond_7
    iget p0, p0, Lnet/sf/saxon/value/GDateValue;->year:I

    int-to-long p0, p0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0
.end method

.method public getDay()B
    .locals 0

    iget-byte p0, p0, Lnet/sf/saxon/value/GDateValue;->day:B

    return p0
.end method

.method public getMonth()B
    .locals 0

    iget-byte p0, p0, Lnet/sf/saxon/value/GDateValue;->month:B

    return p0
.end method

.method public getSchemaComparable()Lnet/sf/saxon/value/GDateValue$GDateComparable;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/GDateValue$GDateComparable;

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/GDateValue$GDateComparable;-><init>(Lnet/sf/saxon/value/GDateValue;)V

    return-object v0
.end method

.method public getXPathComparable(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/XPathComparable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/NoDynamicContextException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getYear()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/value/GDateValue;->year:I

    return p0
.end method

.method public hashCode()I
    .locals 8

    iget v0, p0, Lnet/sf/saxon/value/GDateValue;->year:I

    iget-byte v1, p0, Lnet/sf/saxon/value/GDateValue;->month:B

    iget-byte v2, p0, Lnet/sf/saxon/value/GDateValue;->day:B

    const/16 v3, 0xc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v7

    invoke-static/range {v0 .. v7}, Lnet/sf/saxon/value/DateTimeValue;->computeHashCode(IBBBBBII)I

    move-result p0

    return p0
.end method

.method public toDateTime()Lnet/sf/saxon/value/DateTimeValue;
    .locals 11

    new-instance v10, Lnet/sf/saxon/value/DateTimeValue;

    iget v1, p0, Lnet/sf/saxon/value/GDateValue;->year:I

    iget-byte v2, p0, Lnet/sf/saxon/value/GDateValue;->month:B

    iget-byte v3, p0, Lnet/sf/saxon/value/GDateValue;->day:B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v8

    iget-boolean v9, p0, Lnet/sf/saxon/value/GDateValue;->hasNoYearZero:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lnet/sf/saxon/value/DateTimeValue;-><init>(IBBBBBIIZ)V

    return-object v10
.end method
