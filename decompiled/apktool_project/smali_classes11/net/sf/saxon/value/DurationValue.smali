.class public Lnet/sf/saxon/value/DurationValue;
.super Lnet/sf/saxon/value/AtomicValue;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/AtomicMatchKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/value/DurationValue$DurationComparable;
    }
.end annotation


# instance fields
.field protected _months:I

.field protected _nanoseconds:I

.field protected _negative:Z

.field protected _seconds:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/value/AtomicValue;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    .line 3
    iput v0, p0, Lnet/sf/saxon/value/DurationValue;->_months:I

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    .line 5
    iput v0, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    return-void
.end method

.method public constructor <init>(IIIIIJILnet/sf/saxon/type/AtomicType;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    .line 20
    invoke-direct/range {p0 .. p0}, Lnet/sf/saxon/value/AtomicValue;-><init>()V

    const/4 v9, 0x0

    .line 21
    iput-boolean v9, v0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    .line 22
    iput v9, v0, Lnet/sf/saxon/value/DurationValue;->_months:I

    const-wide/16 v10, 0x0

    .line 23
    iput-wide v10, v0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    .line 24
    iput v9, v0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    const/4 v12, 0x1

    if-gtz v1, :cond_1

    if-gtz v2, :cond_1

    if-gtz v3, :cond_1

    if-gtz v4, :cond_1

    if-gtz v5, :cond_1

    cmp-long v13, v6, v10

    if-gtz v13, :cond_1

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    move v13, v9

    goto :goto_1

    :cond_1
    :goto_0
    move v13, v12

    :goto_1
    if-ltz v1, :cond_2

    if-ltz v2, :cond_2

    if-ltz v3, :cond_2

    if-ltz v4, :cond_2

    if-ltz v5, :cond_2

    cmp-long v10, v6, v10

    if-ltz v10, :cond_2

    if-gez v8, :cond_3

    :cond_2
    move v9, v12

    :cond_3
    if-eqz v13, :cond_5

    if-nez v9, :cond_4

    goto :goto_2

    .line 25
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Some component values are positive and some negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    if-eqz v9, :cond_6

    neg-int v1, v1

    neg-int v2, v2

    neg-int v3, v3

    neg-int v4, v4

    neg-int v5, v5

    neg-long v6, v6

    neg-int v8, v8

    :cond_6
    int-to-double v10, v1

    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    mul-double/2addr v10, v12

    int-to-double v12, v2

    add-double/2addr v10, v12

    const-wide v12, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v10, v10, v12

    if-gtz v10, :cond_8

    int-to-double v10, v3

    const-wide v12, 0x40f5180000000000L    # 86400.0

    mul-double/2addr v10, v12

    int-to-double v12, v4

    const-wide v14, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    int-to-double v12, v5

    const-wide/high16 v14, 0x404e000000000000L    # 60.0

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    long-to-double v12, v6

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v10, v10, v12

    if-gtz v10, :cond_7

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v1, v2

    .line 26
    iput v1, v0, Lnet/sf/saxon/value/DurationValue;->_months:I

    int-to-long v1, v3

    const-wide/16 v10, 0x18

    mul-long/2addr v1, v10

    int-to-long v3, v4

    add-long/2addr v1, v3

    const-wide/16 v3, 0x3c

    mul-long/2addr v1, v3

    int-to-long v10, v5

    add-long/2addr v1, v10

    mul-long/2addr v1, v3

    add-long/2addr v1, v6

    .line 27
    iput-wide v1, v0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    .line 28
    iput v8, v0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    .line 29
    iput-boolean v9, v0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    .line 30
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/value/DurationValue;->normalizeZeroDuration()V

    move-object/from16 v1, p9

    .line 31
    iput-object v1, v0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void

    .line 32
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duration seconds limit exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duration months limit exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(ZIIIIIJI)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 6
    sget-object v10, Lnet/sf/saxon/type/BuiltInAtomicType;->DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lnet/sf/saxon/value/DurationValue;-><init>(ZIIIIIJILnet/sf/saxon/type/AtomicType;)V

    return-void
.end method

.method public constructor <init>(ZIIIIIJILnet/sf/saxon/type/AtomicType;)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move/from16 v8, p9

    .line 7
    invoke-direct {p0}, Lnet/sf/saxon/value/AtomicValue;-><init>()V

    const/4 v9, 0x0

    .line 8
    iput v9, v0, Lnet/sf/saxon/value/DurationValue;->_months:I

    const-wide/16 v10, 0x0

    .line 9
    iput-wide v10, v0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    .line 10
    iput v9, v0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    xor-int/lit8 v9, p1, 0x1

    .line 11
    iput-boolean v9, v0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    if-ltz v1, :cond_2

    if-ltz v2, :cond_2

    if-ltz v3, :cond_2

    if-ltz v4, :cond_2

    if-ltz v5, :cond_2

    cmp-long v9, v6, v10

    if-ltz v9, :cond_2

    if-ltz v8, :cond_2

    int-to-double v9, v1

    const-wide/high16 v11, 0x4028000000000000L    # 12.0

    mul-double/2addr v9, v11

    int-to-double v11, v2

    add-double/2addr v9, v11

    const-wide v11, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v9, v9, v11

    if-gtz v9, :cond_1

    int-to-double v9, v3

    const-wide v11, 0x40f5180000000000L    # 86400.0

    mul-double/2addr v9, v11

    int-to-double v11, v4

    const-wide v13, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    int-to-double v11, v5

    const-wide/high16 v13, 0x404e000000000000L    # 60.0

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    long-to-double v11, v6

    add-double/2addr v9, v11

    const-wide/high16 v11, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v9, v9, v11

    if-gtz v9, :cond_0

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v1, v2

    .line 12
    iput v1, v0, Lnet/sf/saxon/value/DurationValue;->_months:I

    int-to-long v1, v3

    const-wide/16 v9, 0x18

    mul-long/2addr v1, v9

    int-to-long v3, v4

    add-long/2addr v1, v3

    const-wide/16 v3, 0x3c

    mul-long/2addr v1, v3

    int-to-long v9, v5

    add-long/2addr v1, v9

    mul-long/2addr v1, v3

    add-long/2addr v1, v6

    .line 13
    iput-wide v1, v0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    mul-int/lit16 v1, v8, 0x3e8

    .line 14
    iput v1, v0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    .line 15
    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->normalizeZeroDuration()V

    move-object/from16 v1, p10

    .line 16
    iput-object v1, v0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duration seconds limit exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duration months limit exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative component value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static badDuration(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 3

    .line 1
    new-instance v0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid duration value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    const-string p0, "FORG0001"

    .line 2
    invoke-virtual {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    return-object v0
.end method

.method public static badDuration(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 3

    .line 3
    new-instance v0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid duration value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    return-object v0
.end method

.method public static formatFractionalSeconds(Lnet/sf/saxon/str/UnicodeBuilder;IJ)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "0000000000"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0xa

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x9

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v0, 0x30

    if-ne p3, v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x9

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    const/16 p1, 0x53

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    return-void
.end method

.method public static makeDuration(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0, v0}, Lnet/sf/saxon/value/DurationValue;->makeDuration(Lnet/sf/saxon/str/UnicodeString;ZZ)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    return-object p0
.end method

.method public static makeDuration(Lnet/sf/saxon/str/UnicodeString;ZZ)Lnet/sf/saxon/type/ConversionResult;
    .locals 24

    move-object/from16 v0, p0

    .line 2
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-static/range {p0 .. p0}, Lnet/sf/saxon/value/Whitespace;->trim(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-+.PYMDTHS"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "empty string"

    .line 4
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DurationValue;->badDuration(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    .line 6
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "+ sign not allowed in a duration"

    .line 7
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DurationValue;->badDuration(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v3, "-"

    .line 8
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v5

    :goto_0
    const-string v6, "P"

    .line 10
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "missing \'P\'"

    .line 11
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DurationValue;->badDuration(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_3
    move v2, v5

    move v6, v2

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    .line 12
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_24

    .line 13
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    const-string v15, "T"

    .line 14
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 15
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-nez v13, :cond_4

    const-string v1, "T must be followed by time components"

    .line 16
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DurationValue;->badDuration(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 17
    :cond_4
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    const/4 v13, 0x4

    .line 18
    :cond_5
    invoke-static {v14}, Lnet/sf/saxon/value/DurationValue;->simpleInteger(Ljava/lang/String;)I

    move-result v15

    if-gez v15, :cond_7

    const/4 v1, -0x2

    if-ne v15, v1, :cond_6

    const-string v1, "component of duration exceeds Saxon limits"

    const-string v2, "FODT0002"

    .line 19
    invoke-static {v1, v0, v2}, Lnet/sf/saxon/value/DurationValue;->badDuration(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_6
    const-string v1, "invalid or non-numeric component"

    .line 20
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DurationValue;->badDuration(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 21
    :cond_7
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v17

    if-nez v17, :cond_8

    const-string v1, "missing unit letter at end"

    .line 22
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DurationValue;->badDuration(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    .line 23
    :cond_8
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    move-object/from16 v19, v1

    if-eq v4, v5, :cond_21

    const/16 v5, 0x44

    if-eq v4, v5, :cond_1e

    const/16 v5, 0x48

    const/4 v1, 0x5

    if-eq v4, v5, :cond_1b

    const/16 v5, 0x4d

    if-eq v4, v5, :cond_14

    const/16 v1, 0x53

    if-eq v4, v1, :cond_c

    const/16 v1, 0x59

    if-eq v4, v1, :cond_9

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "misplaced "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lnet/sf/saxon/value/DurationValue;->badDuration(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_9
    if-lez v13, :cond_a

    const-string v1, "Y is out of sequence"

    .line 25
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DurationValue;->badDuration(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_a
    if-nez p1, :cond_b

    const-string v1, "Year component is not allowed in dayTimeDuration"

    .line 26
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DurationValue;->badDuration(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_b
    add-int/lit8 v2, v2, 0x1

    move v6, v15

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v13, 0x1

    goto/16 :goto_8

    :cond_c
    const/4 v1, 0x4

    if-lt v13, v1, :cond_13

    const/4 v1, 0x7

    if-le v13, v1, :cond_d

    goto :goto_5

    :cond_d
    if-nez p2, :cond_e

    const-string v1, "Seconds component is not allowed in yearMonthDuration"

    .line 27
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DurationValue;->badDuration(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_e
    if-ne v13, v1, :cond_12

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v5, 0x9

    if-ge v4, v5, :cond_f

    const-string v4, "0"

    .line 30
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 31
    :cond_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_10

    const/4 v4, 0x0

    .line 33
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_10
    const/4 v4, 0x0

    .line 34
    :goto_3
    invoke-static {v1}, Lnet/sf/saxon/value/DurationValue;->simpleInteger(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_11

    const-string v1, "non-numeric fractional seconds"

    .line 35
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DurationValue;->badDuration(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_11
    move v12, v1

    goto :goto_4

    :cond_12
    const/4 v4, 0x0

    move v11, v15

    :goto_4
    add-int/lit8 v2, v2, 0x1

    const/16 v1, 0x8

    move v13, v1

    const/4 v5, 0x1

    goto/16 :goto_8

    :cond_13
    :goto_5
    const-string v1, "S is out of sequence"

    .line 36
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DurationValue;->badDuration(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_14
    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eq v13, v5, :cond_19

    if-ne v13, v1, :cond_15

    goto :goto_7

    :cond_15
    const/4 v5, 0x1

    if-eqz v13, :cond_17

    if-ne v13, v5, :cond_16

    goto :goto_6

    :cond_16
    const-string v1, "M is out of sequence"

    .line 37
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DurationValue;->badDuration(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_17
    :goto_6
    if-nez p1, :cond_18

    const-string v1, "Month component is not allowed in dayTimeDuration"

    .line 38
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DurationValue;->badDuration(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_18
    add-int/lit8 v2, v2, 0x1

    move v7, v15

    const/4 v13, 0x2

    goto :goto_8

    :cond_19
    :goto_7
    const/4 v5, 0x1

    if-nez p2, :cond_1a

    const-string v1, "Minute component is not allowed in yearMonthDuration"

    .line 39
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DurationValue;->badDuration(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    move v10, v15

    const/4 v13, 0x6

    goto :goto_8

    :cond_1b
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x4

    if-eq v13, v9, :cond_1c

    const-string v1, "H is out of sequence"

    .line 40
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DurationValue;->badDuration(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_1c
    if-nez p2, :cond_1d

    const-string v1, "Hour component is not allowed in yearMonthDuration"

    .line 41
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DurationValue;->badDuration(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    move v13, v1

    move v9, v15

    goto :goto_8

    :cond_1e
    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v13, v1, :cond_1f

    const-string v1, "D is out of sequence"

    .line 42
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DurationValue;->badDuration(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_1f
    if-nez p2, :cond_20

    const-string v1, "Day component is not allowed in yearMonthDuration"

    .line 43
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DurationValue;->badDuration(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_20
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x3

    move v13, v1

    move v8, v15

    goto :goto_8

    :cond_21
    const/4 v1, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v11, 0x4

    if-lt v13, v11, :cond_23

    const/4 v11, 0x6

    if-le v13, v11, :cond_22

    goto :goto_9

    :cond_22
    move v13, v1

    move v11, v15

    :goto_8
    move-object/from16 v1, v19

    move/from16 v23, v5

    move v5, v4

    move/from16 v4, v23

    goto/16 :goto_1

    :cond_23
    :goto_9
    const-string v1, "misplaced decimal point"

    .line 44
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DurationValue;->badDuration(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_24
    if-nez v2, :cond_25

    const-string v1, "Duration specifies no components"

    .line 45
    invoke-static {v1, v0}, Lnet/sf/saxon/value/DurationValue;->badDuration(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    return-object v0

    :cond_25
    if-eqz v3, :cond_26

    neg-int v6, v6

    neg-int v7, v7

    neg-int v8, v8

    neg-int v9, v9

    neg-int v10, v10

    neg-int v11, v11

    neg-int v12, v12

    :cond_26
    move v14, v6

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v21, v12

    .line 46
    :try_start_0
    new-instance v0, Lnet/sf/saxon/value/DurationValue;

    int-to-long v1, v11

    sget-object v22, Lnet/sf/saxon/type/BuiltInAtomicType;->DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    move-object v13, v0

    move-wide/from16 v19, v1

    invoke-direct/range {v13 .. v22}, Lnet/sf/saxon/value/DurationValue;-><init>(IIIIIJILnet/sf/saxon/type/AtomicType;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Lnet/sf/saxon/type/ValidationFailure;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static simpleInteger(Ljava/lang/String;)I
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_2

    const/16 v6, 0x39

    if-gt v5, v6, :cond_2

    const-wide/16 v6, 0xa

    mul-long/2addr v2, v6

    add-int/lit8 v5, v5, -0x30

    int-to-long v5, v5

    add-long/2addr v2, v5

    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v2, v5

    if-lez v5, :cond_1

    const/4 p0, -0x2

    return p0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    long-to-int p0, v2

    return p0
.end method


# virtual methods
.method public add(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/DurationValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Only subtypes of xs:duration can be added"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "XPTY0004"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw p0
.end method

.method public copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/AtomicValue;
    .locals 21

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    if-eqz v1, :cond_0

    new-instance v1, Lnet/sf/saxon/value/DurationValue;

    const/4 v3, 0x0

    iget v2, v0, Lnet/sf/saxon/value/DurationValue;->_months:I

    neg-int v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-wide v8, v0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    neg-long v8, v8

    iget v0, v0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    neg-int v10, v0

    move-object v2, v1

    move-object/from16 v11, p1

    invoke-direct/range {v2 .. v11}, Lnet/sf/saxon/value/DurationValue;-><init>(IIIIIJILnet/sf/saxon/type/AtomicType;)V

    return-object v1

    :cond_0
    new-instance v1, Lnet/sf/saxon/value/DurationValue;

    const/4 v12, 0x0

    iget v13, v0, Lnet/sf/saxon/value/DurationValue;->_months:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-wide v2, v0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    iget v0, v0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    move-object v11, v1

    move-wide/from16 v17, v2

    move/from16 v19, v0

    move-object/from16 v20, p1

    invoke-direct/range {v11 .. v20}, Lnet/sf/saxon/value/DurationValue;-><init>(IIIIIJILnet/sf/saxon/type/AtomicType;)V

    return-object v1
.end method

.method public divide(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/BigDecimalValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 5
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Only subtypes of xs:duration can be divided by another duration"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "XPTY0004"

    .line 6
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    .line 8
    throw p0
.end method

.method public divide(D)Lnet/sf/saxon/value/DurationValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Only subtypes of xs:duration can be divided by a number"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "XPTY0004"

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    .line 4
    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lnet/sf/saxon/value/DurationValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/value/DurationValue;

    iget-boolean v0, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    iget-boolean v2, p1, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Lnet/sf/saxon/value/DurationValue;->_months:I

    iget v2, p1, Lnet/sf/saxon/value/DurationValue;->_months:I

    if-ne v0, v2, :cond_0

    iget-wide v2, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    iget-wide v4, p1, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget p0, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    iget p1, p1, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;
    .locals 3

    sget-object v0, Lnet/sf/saxon/value/DurationValue$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown component for duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p1, Lnet/sf/saxon/value/Int64Value;

    iget-boolean v0, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    iget p0, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    if-eqz v0, :cond_0

    neg-int p0, p0

    :cond_0
    int-to-long v0, p0

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    return-object p1

    :pswitch_1
    new-instance p1, Lnet/sf/saxon/value/Int64Value;

    iget-boolean v0, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    iget p0, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    if-eqz v0, :cond_1

    neg-int p0, p0

    :cond_1
    div-int/lit16 p0, p0, 0x3e8

    int-to-long v0, p0

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    return-object p1

    :pswitch_2
    iget-boolean p1, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    if-eqz p1, :cond_2

    iget-wide p0, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    neg-long p0, p0

    goto :goto_0

    :cond_2
    iget-wide p0, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    :goto_0
    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "000000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x9

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    if-eqz v2, :cond_3

    const-string v2, "-"

    goto :goto_1

    :cond_3
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getSeconds()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/BigDecimalValue;->parse(Ljava/lang/CharSequence;)Lnet/sf/saxon/value/BigDecimalValue;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-boolean p1, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getMinutes()I

    move-result p0

    if-eqz p1, :cond_4

    neg-int p0, p0

    :cond_4
    int-to-long p0, p0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :pswitch_5
    iget-boolean p1, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getHours()I

    move-result p0

    if-eqz p1, :cond_5

    neg-int p0, p0

    :cond_5
    int-to-long p0, p0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :pswitch_6
    iget-boolean p1, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getDays()I

    move-result p0

    if-eqz p1, :cond_6

    neg-int p0, p0

    :cond_6
    int-to-long p0, p0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :pswitch_7
    iget-boolean p1, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getMonths()I

    move-result p0

    if-eqz p1, :cond_7

    neg-int p0, p0

    :cond_7
    int-to-long p0, p0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :pswitch_8
    iget-boolean p1, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getYears()I

    move-result p0

    if-eqz p1, :cond_8

    neg-int p0, p0

    :cond_8
    int-to-long p0, p0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDays()I
    .locals 4

    iget-wide v0, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    const-wide/32 v2, 0x15180

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public getHours()I
    .locals 4

    iget-wide v0, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    const-wide/32 v2, 0x15180

    rem-long/2addr v0, v2

    const-wide/16 v2, 0xe10

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public getLengthInSeconds()D
    .locals 6

    iget v0, p0, Lnet/sf/saxon/value/DurationValue;->_months:I

    int-to-double v0, v0

    const-wide v2, 0x403e6fd5656957fbL    # 30.43684991666667

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    long-to-double v2, v2

    add-double/2addr v0, v2

    iget v2, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    int-to-double v2, v2

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-boolean p0, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    if-eqz p0, :cond_0

    neg-double v0, v0

    :cond_0
    return-wide v0
.end method

.method public getMicroseconds()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public getMinutes()I
    .locals 4

    iget-wide v0, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    const-wide/16 v2, 0xe10

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public getMonths()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/value/DurationValue;->_months:I

    rem-int/lit8 p0, p0, 0xc

    return p0
.end method

.method public getNanoseconds()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    return p0
.end method

.method public getPrimitiveStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 8

    iget v0, p0, Lnet/sf/saxon/value/DurationValue;->_months:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    if-nez v0, :cond_0

    const-string p0, "PT0S"

    invoke-static {p0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    iget-boolean v1, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getYears()I

    move-result v1

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getMonths()I

    move-result v2

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getDays()I

    move-result v3

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getHours()I

    move-result v4

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getMinutes()I

    move-result v5

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getSeconds()I

    move-result v6

    const-string v7, "P"

    invoke-virtual {v0, v7}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    if-eqz v1, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Y"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_2
    const-string v1, "M"

    if-eqz v2, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_3
    if-eqz v3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "D"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_4
    if-nez v4, :cond_5

    if-nez v5, :cond_5

    if-nez v6, :cond_5

    iget v2, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    if-eqz v2, :cond_6

    :cond_5
    const-string v2, "T"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_6
    if-eqz v4, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "H"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_7
    if-eqz v5, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_8
    if-nez v6, :cond_9

    iget v1, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    if-eqz v1, :cond_b

    :cond_9
    if-eqz v6, :cond_a

    iget v1, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    if-nez v1, :cond_a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "S"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_a
    int-to-long v1, v6

    const-wide/32 v3, 0x3b9aca00

    mul-long/2addr v1, v3

    iget p0, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    int-to-long v3, p0

    add-long/2addr v1, v3

    invoke-static {v0, v6, v1, v2}, Lnet/sf/saxon/value/DurationValue;->formatFractionalSeconds(Lnet/sf/saxon/str/UnicodeBuilder;IJ)V

    :cond_b
    :goto_0
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public getSchemaComparable()Lnet/sf/saxon/value/DurationValue$DurationComparable;
    .locals 4

    iget v0, p0, Lnet/sf/saxon/value/DurationValue;->_months:I

    iget-wide v1, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    iget v3, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    iget-boolean p0, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    if-eqz p0, :cond_0

    neg-long v1, v1

    neg-int v0, v0

    neg-int v3, v3

    :cond_0
    new-instance p0, Lnet/sf/saxon/value/DurationValue$DurationComparable;

    invoke-direct {p0, v0, v1, v2, v3}, Lnet/sf/saxon/value/DurationValue$DurationComparable;-><init>(IJI)V

    return-object p0
.end method

.method public getSeconds()I
    .locals 4

    iget-wide v0, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public getTotalMonths()I
    .locals 1

    iget-boolean v0, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    iget p0, p0, Lnet/sf/saxon/value/DurationValue;->_months:I

    if-eqz v0, :cond_0

    neg-int p0, p0

    :cond_0
    return p0
.end method

.method public getTotalSeconds()Ljava/math/BigDecimal;
    .locals 4

    iget-boolean v0, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    neg-long v0, v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    :goto_0
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iget v1, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    if-eqz v1, :cond_2

    new-instance v1, Ljava/math/BigDecimal;

    iget-boolean v2, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    iget p0, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    if-eqz v2, :cond_1

    neg-int p0, p0

    :cond_1
    int-to-long v2, p0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    :cond_2
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

.method public getXPathMatchKey(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/AtomicMatchKey;
    .locals 0

    return-object p0
.end method

.method public getYears()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/value/DurationValue;->_months:I

    div-int/lit8 p0, p0, 0xc

    return p0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getLengthInSeconds()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->hashCode()I

    move-result p0

    return p0
.end method

.method public multiply(D)Lnet/sf/saxon/value/DurationValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Only subtypes of xs:duration can be multiplied by a number"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "XPTY0004"

    .line 3
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    .line 5
    throw p0
.end method

.method public multiply(J)Lnet/sf/saxon/value/DurationValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    long-to-double p1, p1

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/value/DurationValue;->multiply(D)Lnet/sf/saxon/value/DurationValue;

    move-result-object p0

    return-object p0
.end method

.method public multiply(Ljava/math/BigDecimal;)Lnet/sf/saxon/value/DurationValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 6
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Only subtypes of xs:duration can be multiplied by a number"

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

.method public negate()Lnet/sf/saxon/value/DurationValue;
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    if-eqz v1, :cond_0

    new-instance v1, Lnet/sf/saxon/value/DurationValue;

    const/4 v3, 0x0

    iget v4, v0, Lnet/sf/saxon/value/DurationValue;->_months:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-wide v8, v0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    iget v10, v0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    iget-object v11, v0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    move-object v2, v1

    invoke-direct/range {v2 .. v11}, Lnet/sf/saxon/value/DurationValue;-><init>(IIIIIJILnet/sf/saxon/type/AtomicType;)V

    return-object v1

    :cond_0
    new-instance v1, Lnet/sf/saxon/value/DurationValue;

    const/4 v13, 0x0

    iget v2, v0, Lnet/sf/saxon/value/DurationValue;->_months:I

    neg-int v14, v2

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-wide v2, v0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    neg-long v2, v2

    iget v4, v0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    neg-int v4, v4

    iget-object v0, v0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    move-object v12, v1

    move-wide/from16 v18, v2

    move/from16 v20, v4

    move-object/from16 v21, v0

    invoke-direct/range {v12 .. v21}, Lnet/sf/saxon/value/DurationValue;-><init>(IIIIIJILnet/sf/saxon/type/AtomicType;)V

    return-object v1
.end method

.method public normalizeZeroDuration()V
    .locals 4

    iget v0, p0, Lnet/sf/saxon/value/DurationValue;->_months:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    :cond_0
    return-void
.end method

.method public signum()I
    .locals 4

    iget-boolean v0, p0, Lnet/sf/saxon/value/DurationValue;->_negative:Z

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget v0, p0, Lnet/sf/saxon/value/DurationValue;->_months:I

    if-nez v0, :cond_1

    iget-wide v0, p0, Lnet/sf/saxon/value/DurationValue;->_seconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget p0, p0, Lnet/sf/saxon/value/DurationValue;->_nanoseconds:I

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public subtract(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/DurationValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Only subtypes of xs:duration can be subtracted"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "XPTY0004"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw p0
.end method
