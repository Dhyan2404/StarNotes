.class public final Lorg/apache/xmlbeans/GDate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/GDateSpecification;
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final GMTZONE:Ljava/util/TimeZone;

.field static final MAX_YEAR:I = 0x116bcc11

.field private static final MINUSZONE:[Ljava/util/TimeZone;

.field static final MIN_YEAR:I = -0x116bc45f

.field private static final PLUSZONE:[Ljava/util/TimeZone;

.field static final _one:Ljava/math/BigDecimal;

.field private static final _onesDigit:[C

.field private static final _tensDigit:[C

.field static final _zero:Ljava/math/BigDecimal;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _CY:I

.field private _D:I

.field private _M:I

.field private _bits:I

.field private transient _canonicalString:Ljava/lang/String;

.field private _fs:Ljava/math/BigDecimal;

.field private _h:I

.field private _m:I

.field private _s:I

.field private transient _string:Ljava/lang/String;

.field private _tzh:I

.field private _tzm:I

.field private _tzsign:I


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    sput-object v0, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    sput-object v0, Lorg/apache/xmlbeans/GDate;->_one:Ljava/math/BigDecimal;

    const/16 v0, 0x64

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/xmlbeans/GDate;->_tensDigit:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/xmlbeans/GDate;->_onesDigit:[C

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/GDate;->GMTZONE:Ljava/util/TimeZone;

    const/16 v0, 0xf

    new-array v1, v0, [Ljava/util/TimeZone;

    const-string v2, "GMT-00:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "GMT-01:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "GMT-02:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "GMT-03:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "GMT-04:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "GMT-05:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "GMT-06:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "GMT-07:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "GMT-08:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "GMT-09:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "GMT-10:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v2, "GMT-11:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/16 v14, 0xb

    aput-object v2, v1, v14

    const-string v2, "GMT-12:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/16 v15, 0xc

    aput-object v2, v1, v15

    const-string v2, "GMT-13:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/16 v16, 0xd

    aput-object v2, v1, v16

    const-string v2, "GMT-14:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/16 v17, 0xe

    aput-object v2, v1, v17

    sput-object v1, Lorg/apache/xmlbeans/GDate;->MINUSZONE:[Ljava/util/TimeZone;

    new-array v0, v0, [Ljava/util/TimeZone;

    const-string v1, "GMT+00:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "GMT+01:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "GMT+02:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "GMT+03:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "GMT+04:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "GMT+05:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "GMT+06:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "GMT+07:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v10

    const-string v1, "GMT+08:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v11

    const-string v1, "GMT+09:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v12

    const-string v1, "GMT+10:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v13

    const-string v1, "GMT+11:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v14

    const-string v1, "GMT+12:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v15

    const-string v1, "GMT+13:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v16

    const-string v1, "GMT+14:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v17

    sput-object v0, Lorg/apache/xmlbeans/GDate;->PLUSZONE:[Ljava/util/TimeZone;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(IIIIIILjava/math/BigDecimal;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 86
    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    .line 87
    iput p1, p0, Lorg/apache/xmlbeans/GDate;->_CY:I

    .line 88
    iput p2, p0, Lorg/apache/xmlbeans/GDate;->_M:I

    .line 89
    iput p3, p0, Lorg/apache/xmlbeans/GDate;->_D:I

    .line 90
    iput p4, p0, Lorg/apache/xmlbeans/GDate;->_h:I

    .line 91
    iput p5, p0, Lorg/apache/xmlbeans/GDate;->_m:I

    .line 92
    iput p6, p0, Lorg/apache/xmlbeans/GDate;->_s:I

    if-nez p7, :cond_0

    .line 93
    sget-object p7, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    :cond_0
    iput-object p7, p0, Lorg/apache/xmlbeans/GDate;->_fs:Ljava/math/BigDecimal;

    .line 94
    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDate;->isValid()Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 95
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public constructor <init>(IIIIIILjava/math/BigDecimal;III)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f

    .line 97
    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    .line 98
    iput p1, p0, Lorg/apache/xmlbeans/GDate;->_CY:I

    .line 99
    iput p2, p0, Lorg/apache/xmlbeans/GDate;->_M:I

    .line 100
    iput p3, p0, Lorg/apache/xmlbeans/GDate;->_D:I

    .line 101
    iput p4, p0, Lorg/apache/xmlbeans/GDate;->_h:I

    .line 102
    iput p5, p0, Lorg/apache/xmlbeans/GDate;->_m:I

    .line 103
    iput p6, p0, Lorg/apache/xmlbeans/GDate;->_s:I

    if-nez p7, :cond_0

    .line 104
    sget-object p7, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    :cond_0
    iput-object p7, p0, Lorg/apache/xmlbeans/GDate;->_fs:Ljava/math/BigDecimal;

    .line 105
    iput p8, p0, Lorg/apache/xmlbeans/GDate;->_tzsign:I

    .line 106
    iput p9, p0, Lorg/apache/xmlbeans/GDate;->_tzh:I

    .line 107
    iput p10, p0, Lorg/apache/xmlbeans/GDate;->_tzm:I

    .line 108
    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDate;->isValid()Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 109
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :goto_0
    if-lez v2, :cond_0

    add-int/lit8 v3, v2, -0x1

    .line 3
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xmlbeans/GDate;->isSpace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    .line 4
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/xmlbeans/GDate;->isSpace(C)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    sub-int v5, v2, v4

    const/4 v6, 0x6

    const/16 v7, 0x3a

    const/16 v8, 0x2d

    const/4 v9, 0x1

    if-lt v5, v9, :cond_2

    add-int/lit8 v10, v2, -0x1

    .line 5
    invoke-interface {v1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0x5a

    if-ne v10, v11, :cond_2

    .line 6
    iget v5, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/2addr v5, v9

    iput v5, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_2
    if-lt v5, v6, :cond_8

    add-int/lit8 v5, v2, -0x3

    .line 7
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v2, -0x6

    .line 8
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v10, 0x2b

    if-eq v5, v10, :cond_5

    if-eq v5, v8, :cond_4

    goto :goto_3

    :cond_4
    const/4 v5, -0x1

    goto :goto_2

    :cond_5
    move v5, v9

    :goto_2
    add-int/lit8 v10, v2, -0x5

    .line 9
    invoke-static {v1, v10}, Lorg/apache/xmlbeans/GDate;->twoDigit(Ljava/lang/CharSequence;I)I

    move-result v10

    add-int/lit8 v11, v2, -0x2

    .line 10
    invoke-static {v1, v11}, Lorg/apache/xmlbeans/GDate;->twoDigit(Ljava/lang/CharSequence;I)I

    move-result v11

    const/16 v12, 0xe

    if-gt v10, v12, :cond_7

    const/16 v12, 0x3b

    if-gt v11, v12, :cond_6

    .line 11
    iget v12, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/2addr v12, v9

    iput v12, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    .line 12
    iput v5, v0, Lorg/apache/xmlbeans/GDate;->_tzsign:I

    .line 13
    iput v10, v0, Lorg/apache/xmlbeans/GDate;->_tzh:I

    .line 14
    iput v11, v0, Lorg/apache/xmlbeans/GDate;->_tzm:I

    add-int/lit8 v2, v2, -0x6

    goto :goto_3

    .line 15
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "time zone minute must be two digits between 00 and 59"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "time zone hour must be two digits between -14 and +14"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_3
    if-ge v4, v2, :cond_20

    add-int/lit8 v5, v4, 0x2

    if-ge v5, v2, :cond_9

    .line 17
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_20

    .line 18
    :cond_9
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_a

    add-int/lit8 v4, v4, 0x1

    move v5, v9

    goto :goto_4

    :cond_a
    move v5, v3

    :goto_4
    neg-int v10, v4

    if-ge v4, v2, :cond_b

    .line 19
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lorg/apache/xmlbeans/GDate;->digitVal(C)I

    move-result v11

    if-nez v11, :cond_b

    move v11, v9

    goto :goto_5

    :cond_b
    move v11, v3

    :goto_5
    move v12, v3

    :goto_6
    if-ge v4, v2, :cond_c

    .line 20
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    goto :goto_7

    :cond_c
    move v13, v3

    .line 21
    :goto_7
    invoke-static {v13}, Lorg/apache/xmlbeans/GDate;->isDigit(C)Z

    move-result v14

    const/4 v15, 0x4

    if-nez v14, :cond_1d

    add-int/2addr v10, v4

    const/16 v11, 0x9

    if-gt v10, v11, :cond_1c

    const/4 v11, 0x2

    if-lt v10, v15, :cond_f

    .line 22
    iget v10, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/2addr v10, v11

    iput v10, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    if-eqz v5, :cond_d

    neg-int v12, v12

    .line 23
    :cond_d
    iput v12, v0, Lorg/apache/xmlbeans/GDate;->_CY:I

    if-eqz v12, :cond_e

    goto :goto_8

    .line 24
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "year must not be zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    if-gtz v10, :cond_1b

    .line 25
    :goto_8
    iget v10, v0, Lorg/apache/xmlbeans/GDate;->_CY:I

    const v12, 0x116bcc11

    if-gt v10, v12, :cond_1a

    const v12, -0x116bc45f

    if-lt v10, v12, :cond_19

    if-eq v13, v8, :cond_11

    if-eqz v5, :cond_20

    .line 26
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/GDate;->hasYear()Z

    move-result v5

    if-eqz v5, :cond_10

    goto/16 :goto_c

    .line 27
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_11
    add-int/lit8 v4, v4, 0x1

    sub-int v5, v2, v4

    if-lt v5, v11, :cond_12

    .line 28
    invoke-static {v1, v4}, Lorg/apache/xmlbeans/GDate;->twoDigit(Ljava/lang/CharSequence;I)I

    move-result v5

    if-lt v5, v9, :cond_12

    const/16 v10, 0xc

    if-gt v5, v10, :cond_12

    .line 29
    iget v10, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/2addr v10, v15

    iput v10, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    .line 30
    iput v5, v0, Lorg/apache/xmlbeans/GDate;->_M:I

    add-int/lit8 v4, v4, 0x2

    :cond_12
    if-ge v4, v2, :cond_13

    .line 31
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    goto :goto_9

    :cond_13
    move v5, v3

    :goto_9
    if-eq v5, v8, :cond_15

    .line 32
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/GDate;->hasMonth()Z

    move-result v5

    if-eqz v5, :cond_14

    goto/16 :goto_c

    .line 33
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_15
    add-int/lit8 v4, v4, 0x1

    sub-int v5, v2, v4

    if-lt v5, v11, :cond_16

    .line 34
    invoke-static {v1, v4}, Lorg/apache/xmlbeans/GDate;->twoDigit(Ljava/lang/CharSequence;I)I

    move-result v5

    if-lt v5, v9, :cond_16

    const/16 v10, 0x1f

    if-gt v5, v10, :cond_16

    .line 35
    iget v10, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/lit8 v10, v10, 0x8

    iput v10, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    .line 36
    iput v5, v0, Lorg/apache/xmlbeans/GDate;->_D:I

    add-int/lit8 v4, v4, 0x2

    .line 37
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/GDate;->hasDay()Z

    move-result v5

    if-nez v5, :cond_20

    .line 38
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/GDate;->hasMonth()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/GDate;->hasYear()Z

    move-result v5

    if-nez v5, :cond_18

    if-ge v4, v2, :cond_17

    .line 39
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    goto :goto_a

    :cond_17
    move v5, v3

    :goto_a
    if-ne v5, v8, :cond_18

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 40
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 41
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "year values not supported: too small, must be bigger than -292275295"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "year value not supported: too big, must be less than 292277265"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "year must be four digits (may pad with zeroes, e.g., 0560)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "year too long (up to 9 digits)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    if-eqz v11, :cond_1f

    add-int v14, v4, v10

    if-ge v14, v15, :cond_1e

    goto :goto_b

    .line 45
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "year value starting with zero must be 4 or less digits: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :goto_b
    mul-int/lit8 v12, v12, 0xa

    .line 46
    invoke-static {v13}, Lorg/apache/xmlbeans/GDate;->digitVal(C)I

    move-result v13

    add-int/2addr v12, v13

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    :cond_20
    :goto_c
    const/16 v5, 0x18

    if-ge v4, v2, :cond_2c

    .line 47
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/GDate;->hasYear()Z

    move-result v8

    if-nez v8, :cond_21

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/GDate;->hasMonth()Z

    move-result v8

    if-nez v8, :cond_21

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/GDate;->hasDay()Z

    move-result v8

    if-eqz v8, :cond_22

    .line 48
    :cond_21
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v10, 0x54

    if-ne v8, v10, :cond_2b

    add-int/lit8 v4, v4, 0x1

    :cond_22
    add-int/lit8 v8, v4, 0x8

    if-lt v2, v8, :cond_2a

    add-int/lit8 v10, v4, 0x2

    .line 49
    invoke-interface {v1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v10, v7, :cond_2a

    add-int/lit8 v10, v4, 0x5

    invoke-interface {v1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v10, v7, :cond_2a

    .line 50
    invoke-static {v1, v4}, Lorg/apache/xmlbeans/GDate;->twoDigit(Ljava/lang/CharSequence;I)I

    move-result v7

    if-gt v7, v5, :cond_29

    add-int/lit8 v10, v4, 0x3

    .line 51
    invoke-static {v1, v10}, Lorg/apache/xmlbeans/GDate;->twoDigit(Ljava/lang/CharSequence;I)I

    move-result v10

    const/16 v11, 0x3c

    if-ge v10, v11, :cond_28

    add-int/2addr v4, v6

    .line 52
    invoke-static {v1, v4}, Lorg/apache/xmlbeans/GDate;->twoDigit(Ljava/lang/CharSequence;I)I

    move-result v4

    if-ge v4, v11, :cond_27

    .line 53
    sget-object v6, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    if-ge v8, v2, :cond_26

    .line 54
    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const/16 v12, 0x2e

    if-ne v11, v12, :cond_25

    add-int/lit8 v11, v8, 0x1

    if-ge v11, v2, :cond_26

    :goto_d
    if-ge v11, v2, :cond_24

    .line 55
    invoke-interface {v1, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/xmlbeans/GDate;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_23

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 56
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 57
    :cond_24
    :try_start_0
    new-instance v6, Ljava/math/BigDecimal;

    invoke-interface {v1, v8, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_e

    .line 58
    :catchall_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 59
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 60
    :cond_26
    :goto_e
    iget v1, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    .line 61
    iput v7, v0, Lorg/apache/xmlbeans/GDate;->_h:I

    .line 62
    iput v10, v0, Lorg/apache/xmlbeans/GDate;->_m:I

    .line 63
    iput v4, v0, Lorg/apache/xmlbeans/GDate;->_s:I

    .line 64
    iput-object v6, v0, Lorg/apache/xmlbeans/GDate;->_fs:Ljava/math/BigDecimal;

    goto :goto_f

    .line 65
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "second must be between 00 and 59"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minute must be between 00 and 59"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hour must be between 00 and 23"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 69
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "date and time must be separated by \'T\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_2c
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/GDate;->hasTime()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget v1, v0, Lorg/apache/xmlbeans/GDate;->_h:I

    if-ne v1, v5, :cond_2f

    .line 71
    iget v1, v0, Lorg/apache/xmlbeans/GDate;->_m:I

    if-nez v1, :cond_2e

    iget v1, v0, Lorg/apache/xmlbeans/GDate;->_s:I

    if-nez v1, :cond_2e

    iget-object v1, v0, Lorg/apache/xmlbeans/GDate;->_fs:Ljava/math/BigDecimal;

    sget-object v2, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-nez v1, :cond_2e

    .line 72
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/GDate;->hasDate()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 73
    new-instance v1, Lorg/apache/xmlbeans/GDateBuilder;

    iget v11, v0, Lorg/apache/xmlbeans/GDate;->_CY:I

    iget v12, v0, Lorg/apache/xmlbeans/GDate;->_M:I

    iget v13, v0, Lorg/apache/xmlbeans/GDate;->_D:I

    iget v14, v0, Lorg/apache/xmlbeans/GDate;->_h:I

    iget v15, v0, Lorg/apache/xmlbeans/GDate;->_m:I

    iget v2, v0, Lorg/apache/xmlbeans/GDate;->_s:I

    iget-object v4, v0, Lorg/apache/xmlbeans/GDate;->_fs:Ljava/math/BigDecimal;

    iget v5, v0, Lorg/apache/xmlbeans/GDate;->_tzsign:I

    iget v6, v0, Lorg/apache/xmlbeans/GDate;->_tzh:I

    iget v7, v0, Lorg/apache/xmlbeans/GDate;->_tzm:I

    move-object v10, v1

    move/from16 v16, v2

    move-object/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    invoke-direct/range {v10 .. v20}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(IIIIIILjava/math/BigDecimal;III)V

    .line 74
    invoke-virtual {v1}, Lorg/apache/xmlbeans/GDateBuilder;->normalize24h()V

    .line 75
    invoke-virtual {v1}, Lorg/apache/xmlbeans/GDateBuilder;->getDay()I

    move-result v2

    iput v2, v0, Lorg/apache/xmlbeans/GDate;->_D:I

    .line 76
    invoke-virtual {v1}, Lorg/apache/xmlbeans/GDateBuilder;->getMonth()I

    move-result v2

    iput v2, v0, Lorg/apache/xmlbeans/GDate;->_M:I

    .line 77
    invoke-virtual {v1}, Lorg/apache/xmlbeans/GDateBuilder;->getYear()I

    move-result v1

    iput v1, v0, Lorg/apache/xmlbeans/GDate;->_CY:I

    .line 78
    iput v3, v0, Lorg/apache/xmlbeans/GDate;->_h:I

    goto :goto_10

    .line 79
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/GDate;->hasDay()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 80
    iget v1, v0, Lorg/apache/xmlbeans/GDate;->_D:I

    add-int/2addr v1, v9

    iput v1, v0, Lorg/apache/xmlbeans/GDate;->_D:I

    .line 81
    iput v3, v0, Lorg/apache/xmlbeans/GDate;->_h:I

    goto :goto_10

    .line 82
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "if hour is 24, minutes, seconds and fraction must be 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_2f
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/GDate;->isValid()Z

    move-result v0

    if-eqz v0, :cond_30

    return-void

    .line 84
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid date"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 111
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    .line 112
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->isSet(I)Z

    move-result v3

    const/4 v4, 0x0

    .line 113
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->isSet(I)Z

    move-result v5

    const/4 v6, 0x2

    .line 114
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->isSet(I)Z

    move-result v7

    const/4 v8, 0x5

    .line 115
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->isSet(I)Z

    move-result v9

    const/16 v10, 0xb

    .line 116
    invoke-virtual {v1, v10}, Ljava/util/Calendar;->isSet(I)Z

    move-result v11

    const/16 v12, 0xa

    .line 117
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->isSet(I)Z

    move-result v13

    const/16 v14, 0x9

    .line 118
    invoke-virtual {v1, v14}, Ljava/util/Calendar;->isSet(I)Z

    move-result v15

    const/16 v14, 0xc

    .line 119
    invoke-virtual {v1, v14}, Ljava/util/Calendar;->isSet(I)Z

    move-result v16

    const/16 v14, 0xd

    .line 120
    invoke-virtual {v1, v14}, Ljava/util/Calendar;->isSet(I)Z

    move-result v17

    const/16 v14, 0xe

    .line 121
    invoke-virtual {v1, v14}, Ljava/util/Calendar;->isSet(I)Z

    move-result v18

    const/16 v14, 0xf

    .line 122
    invoke-virtual {v1, v14}, Ljava/util/Calendar;->isSet(I)Z

    move-result v19

    const/16 v14, 0x10

    .line 123
    invoke-virtual {v1, v14}, Ljava/util/Calendar;->isSet(I)Z

    move-result v20

    if-eqz v3, :cond_1

    .line 124
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eqz v5, :cond_0

    .line 125
    instance-of v5, v1, Ljava/util/GregorianCalendar;

    if-eqz v5, :cond_0

    .line 126
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-nez v5, :cond_0

    neg-int v3, v3

    .line 127
    :cond_0
    iget v5, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/2addr v5, v6

    iput v5, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    .line 128
    iput v3, v0, Lorg/apache/xmlbeans/GDate;->_CY:I

    :cond_1
    if-eqz v7, :cond_2

    .line 129
    iget v3, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    .line 130
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v0, Lorg/apache/xmlbeans/GDate;->_M:I

    :cond_2
    if-eqz v9, :cond_3

    .line 131
    iget v3, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    .line 132
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Lorg/apache/xmlbeans/GDate;->_D:I

    .line 133
    :cond_3
    sget-object v3, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    if-eqz v11, :cond_4

    .line 134
    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move v6, v2

    const/16 v7, 0xc

    goto :goto_0

    :cond_4
    if-eqz v13, :cond_5

    if-eqz v15, :cond_5

    .line 135
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0x9

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xc

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    move v6, v2

    goto :goto_0

    :cond_5
    const/16 v7, 0xc

    move v5, v4

    move v6, v5

    :goto_0
    if-eqz v16, :cond_6

    .line 136
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move v7, v6

    move v6, v2

    goto :goto_1

    :cond_6
    move v7, v4

    :goto_1
    if-eqz v17, :cond_7

    const/16 v8, 0xd

    .line 137
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move v8, v6

    move v6, v2

    goto :goto_2

    :cond_7
    move v8, v4

    :goto_2
    const/4 v9, 0x3

    if-eqz v18, :cond_8

    const/16 v10, 0xe

    .line 138
    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v10, v3

    invoke-static {v10, v11, v9}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v3

    move v6, v2

    :cond_8
    if-eqz v6, :cond_9

    .line 139
    iget v6, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/2addr v6, v14

    iput v6, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    .line 140
    iput v5, v0, Lorg/apache/xmlbeans/GDate;->_h:I

    .line 141
    iput v7, v0, Lorg/apache/xmlbeans/GDate;->_m:I

    .line 142
    iput v8, v0, Lorg/apache/xmlbeans/GDate;->_s:I

    .line 143
    iput-object v3, v0, Lorg/apache/xmlbeans/GDate;->_fs:Ljava/math/BigDecimal;

    :cond_9
    if-eqz v19, :cond_f

    const/16 v3, 0xf

    .line 144
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eqz v20, :cond_a

    .line 145
    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 146
    :cond_a
    iget v5, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/2addr v5, v2

    iput v5, v0, Lorg/apache/xmlbeans/GDate;->_bits:I

    const/4 v5, -0x1

    if-nez v3, :cond_d

    .line 147
    iput v4, v0, Lorg/apache/xmlbeans/GDate;->_tzsign:I

    .line 148
    iput v4, v0, Lorg/apache/xmlbeans/GDate;->_tzh:I

    .line 149
    iput v4, v0, Lorg/apache/xmlbeans/GDate;->_tzm:I

    .line 150
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 152
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v9, :cond_f

    .line 153
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2b

    if-eq v1, v3, :cond_c

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_b

    goto :goto_3

    .line 154
    :cond_b
    iput v5, v0, Lorg/apache/xmlbeans/GDate;->_tzsign:I

    goto :goto_3

    .line 155
    :cond_c
    iput v2, v0, Lorg/apache/xmlbeans/GDate;->_tzsign:I

    goto :goto_3

    :cond_d
    if-gez v3, :cond_e

    move v2, v5

    .line 156
    :cond_e
    iput v2, v0, Lorg/apache/xmlbeans/GDate;->_tzsign:I

    mul-int/2addr v3, v2

    const v1, 0x36ee80

    .line 157
    div-int v2, v3, v1

    iput v2, v0, Lorg/apache/xmlbeans/GDate;->_tzh:I

    mul-int/2addr v2, v1

    sub-int/2addr v3, v2

    const v1, 0xea60

    .line 158
    div-int/2addr v3, v1

    iput v3, v0, Lorg/apache/xmlbeans/GDate;->_tzm:I

    :cond_f
    :goto_3
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1

    .line 110
    new-instance v0, Lorg/apache/xmlbeans/GDateBuilder;

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Ljava/util/Date;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/GDate;-><init>(Lorg/apache/xmlbeans/GDateSpecification;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/GDateSpecification;)V
    .locals 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->hasTimeZone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    .line 162
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneSign()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_tzsign:I

    .line 163
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneHour()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_tzh:I

    .line 164
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneMinute()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_tzm:I

    .line 165
    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    .line 167
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getHour()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_h:I

    .line 168
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getMinute()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_m:I

    .line 169
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getSecond()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_s:I

    .line 170
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getFraction()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/GDate;->_fs:Ljava/math/BigDecimal;

    .line 171
    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->hasDay()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    iget v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    .line 173
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getDay()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_D:I

    .line 174
    :cond_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->hasMonth()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    iget v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    .line 176
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getMonth()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_M:I

    .line 177
    :cond_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->hasYear()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 178
    iget v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    .line 179
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getYear()I

    move-result p1

    iput p1, p0, Lorg/apache/xmlbeans/GDate;->_CY:I

    :cond_4
    return-void
.end method

.method private static _padFourAppend([CI)I
    .locals 5

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/16 v1, 0x2d

    aput-char v1, p0, v0

    neg-int p1, p1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/16 v2, 0x2710

    if-lt p1, v2, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2, p0, v1}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr v1, p0

    return v1

    :cond_1
    div-int/lit8 v0, p1, 0x64

    mul-int/lit8 v2, v0, 0x64

    sub-int/2addr p1, v2

    sget-object v2, Lorg/apache/xmlbeans/GDate;->_tensDigit:[C

    aget-char v3, v2, v0

    aput-char v3, p0, v1

    add-int/lit8 v3, v1, 0x1

    sget-object v4, Lorg/apache/xmlbeans/GDate;->_onesDigit:[C

    aget-char v0, v4, v0

    aput-char v0, p0, v3

    add-int/lit8 v0, v1, 0x2

    aget-char v2, v2, p1

    aput-char v2, p0, v0

    add-int/lit8 v0, v1, 0x3

    aget-char p1, v4, p1

    aput-char p1, p0, v0

    add-int/lit8 v1, v1, 0x4

    return v1
.end method

.method private static _padTwoAppend([CII)I
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/GDate;->_tensDigit:[C

    aget-char v0, v0, p2

    aput-char v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    sget-object v1, Lorg/apache/xmlbeans/GDate;->_onesDigit:[C

    aget-char p2, v1, p2

    aput-char p2, p0, v0

    add-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public static digitVal(C)I
    .locals 0

    add-int/lit8 p0, p0, -0x30

    return p0
.end method

.method private ensureCanonicalString()V
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/GDate;->_canonicalString:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDate;->hasTimeZone()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDate;->getTimeZoneSign()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDate;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDate;->hasDay()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDate;->hasMonth()Z

    move-result v3

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDate;->hasDay()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDate;->hasYear()Z

    move-result v3

    if-ne v0, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDate;->getFraction()Ljava/math/BigDecimal;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDate;->getFraction()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDate;->getFraction()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v3, Lorg/apache/xmlbeans/GDateBuilder;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    move v0, v1

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDate;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/GDate;->_canonicalString:Ljava/lang/String;

    goto :goto_2

    :cond_4
    new-instance v0, Lorg/apache/xmlbeans/GDateBuilder;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Lorg/apache/xmlbeans/GDateSpecification;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDateBuilder;->normalize()V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDateBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/GDate;->_canonicalString:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method public static formatGDate(Lorg/apache/xmlbeans/GDateSpecification;)Ljava/lang/String;
    .locals 8

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getFraction()Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    :goto_0
    add-int/lit8 v2, v2, 0x21

    new-array v2, v2, [C

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasYear()Z

    move-result v3

    const/16 v4, 0x2d

    if-nez v3, :cond_2

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasMonth()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasDay()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    goto :goto_5

    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasYear()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getYear()I

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/xmlbeans/GDate;->_padFourAppend([CI)I

    move-result v3

    goto :goto_2

    :cond_3
    aput-char v4, v2, v1

    const/4 v3, 0x1

    :goto_2
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasMonth()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasDay()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v3, 0x1

    aput-char v4, v2, v3

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasMonth()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getMonth()I

    move-result v3

    invoke-static {v2, v5, v3}, Lorg/apache/xmlbeans/GDate;->_padTwoAppend([CII)I

    move-result v3

    goto :goto_3

    :cond_5
    move v3, v5

    :goto_3
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasDay()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v3, 0x1

    aput-char v4, v2, v3

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getDay()I

    move-result v3

    invoke-static {v2, v5, v3}, Lorg/apache/xmlbeans/GDate;->_padTwoAppend([CII)I

    move-result v3

    :goto_4
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasTime()Z

    move-result v5

    if-eqz v5, :cond_7

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x54

    aput-char v6, v2, v3

    move v3, v5

    :cond_7
    :goto_5
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasTime()Z

    move-result v5

    const/16 v6, 0x3a

    if-eqz v5, :cond_8

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getHour()I

    move-result v5

    invoke-static {v2, v3, v5}, Lorg/apache/xmlbeans/GDate;->_padTwoAppend([CII)I

    move-result v3

    add-int/lit8 v5, v3, 0x1

    aput-char v6, v2, v3

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getMinute()I

    move-result v3

    invoke-static {v2, v5, v3}, Lorg/apache/xmlbeans/GDate;->_padTwoAppend([CII)I

    move-result v3

    add-int/lit8 v5, v3, 0x1

    aput-char v6, v2, v3

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getSecond()I

    move-result v3

    invoke-static {v2, v5, v3}, Lorg/apache/xmlbeans/GDate;->_padTwoAppend([CII)I

    move-result v3

    if-eqz v0, :cond_8

    sget-object v5, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    invoke-virtual {v5, v0}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v5, v7, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    add-int/2addr v3, v0

    :cond_8
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasTimeZone()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneSign()I

    move-result v0

    if-nez v0, :cond_9

    add-int/lit8 p0, v3, 0x1

    const/16 v0, 0x5a

    aput-char v0, v2, v3

    move v3, p0

    goto :goto_6

    :cond_9
    add-int/lit8 v0, v3, 0x1

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneSign()I

    move-result v5

    if-lez v5, :cond_a

    const/16 v4, 0x2b

    :cond_a
    aput-char v4, v2, v3

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneHour()I

    move-result v3

    invoke-static {v2, v0, v3}, Lorg/apache/xmlbeans/GDate;->_padTwoAppend([CII)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    aput-char v6, v2, v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneMinute()I

    move-result p0

    invoke-static {v2, v3, p0}, Lorg/apache/xmlbeans/GDate;->_padTwoAppend([CII)I

    move-result v3

    :cond_b
    :goto_6
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public static isDigit(C)Z
    .locals 1

    add-int/lit8 p0, p0, -0x30

    int-to-char p0, p0

    const/16 v0, 0x9

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSpace(C)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static timeZoneForGDate(Lorg/apache/xmlbeans/GDateSpecification;)Ljava/util/TimeZone;
    .locals 3

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasTimeZone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneSign()I

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lorg/apache/xmlbeans/GDate;->GMTZONE:Ljava/util/TimeZone;

    return-object p0

    :cond_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneMinute()I

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneHour()I

    move-result v0

    const/16 v1, 0xe

    if-gt v0, v1, :cond_3

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneHour()I

    move-result v0

    if-ltz v0, :cond_3

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneSign()I

    move-result v0

    if-gez v0, :cond_2

    sget-object v0, Lorg/apache/xmlbeans/GDate;->MINUSZONE:[Ljava/util/TimeZone;

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneHour()I

    move-result p0

    aget-object p0, v0, p0

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/xmlbeans/GDate;->PLUSZONE:[Ljava/util/TimeZone;

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneHour()I

    move-result p0

    aget-object p0, v0, p0

    :goto_0
    return-object p0

    :cond_3
    const/16 v0, 0x9

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x47

    aput-char v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x4d

    aput-char v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x54

    aput-char v2, v0, v1

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneSign()I

    move-result v1

    if-gez v1, :cond_4

    const/16 v1, 0x2d

    goto :goto_1

    :cond_4
    const/16 v1, 0x2b

    :goto_1
    const/4 v2, 0x3

    aput-char v1, v0, v2

    const/4 v1, 0x4

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneHour()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/xmlbeans/GDate;->_padTwoAppend([CII)I

    const/4 v1, 0x6

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/4 v1, 0x7

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneMinute()I

    move-result p0

    invoke-static {v0, v1, p0}, Lorg/apache/xmlbeans/GDate;->_padTwoAppend([CII)I

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method private static twoDigit(Ljava/lang/CharSequence;I)I
    .locals 1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {v0}, Lorg/apache/xmlbeans/GDate;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lorg/apache/xmlbeans/GDate;->isDigit(C)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/apache/xmlbeans/GDate;->digitVal(C)I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    invoke-static {p0}, Lorg/apache/xmlbeans/GDate;->digitVal(C)I

    move-result p0

    add-int/2addr p1, p0

    return p1

    :cond_1
    :goto_0
    const/16 p0, 0x64

    return p0
.end method


# virtual methods
.method public add(Lorg/apache/xmlbeans/GDurationSpecification;)Lorg/apache/xmlbeans/GDate;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/GDateBuilder;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Lorg/apache/xmlbeans/GDateSpecification;)V

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/GDateBuilder;->addGDuration(Lorg/apache/xmlbeans/GDurationSpecification;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDateBuilder;->toGDate()Lorg/apache/xmlbeans/GDate;

    move-result-object p0

    return-object p0
.end method

.method public canonicalString()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/GDate;->ensureCanonicalString()V

    iget-object p0, p0, Lorg/apache/xmlbeans/GDate;->_canonicalString:Ljava/lang/String;

    return-object p0
.end method

.method public compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/GDateBuilder;->compareGDate(Lorg/apache/xmlbeans/GDateSpecification;Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/apache/xmlbeans/GDate;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-direct {p0}, Lorg/apache/xmlbeans/GDate;->ensureCanonicalString()V

    iget-object p0, p0, Lorg/apache/xmlbeans/GDate;->_canonicalString:Ljava/lang/String;

    check-cast p1, Lorg/apache/xmlbeans/GDate;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDate;->canonicalString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getBuiltinTypeCode()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    invoke-static {p0}, Lorg/apache/xmlbeans/GDateBuilder;->btcForFlags(I)I

    move-result p0

    return p0
.end method

.method public getCalendar()Lorg/apache/xmlbeans/XmlCalendar;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/XmlCalendar;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/XmlCalendar;-><init>(Lorg/apache/xmlbeans/GDateSpecification;)V

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/GDateBuilder;->dateForGDate(Lorg/apache/xmlbeans/GDateSpecification;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public final getDay()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/GDate;->_D:I

    return p0
.end method

.method public getFlags()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    return p0
.end method

.method public final getFraction()Ljava/math/BigDecimal;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/GDate;->_fs:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getHour()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/GDate;->_h:I

    return p0
.end method

.method public getJulianDate()I
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/GDateBuilder;->julianDateForGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result p0

    return p0
.end method

.method public getMillisecond()I
    .locals 2

    iget-object p0, p0, Lorg/apache/xmlbeans/GDate;->_fs:Ljava/math/BigDecimal;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x3

    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {p0, v0, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0
.end method

.method public final getMinute()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/GDate;->_m:I

    return p0
.end method

.method public final getMonth()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/GDate;->_M:I

    return p0
.end method

.method public final getSecond()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/GDate;->_s:I

    return p0
.end method

.method public final getTimeZoneHour()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/GDate;->_tzh:I

    return p0
.end method

.method public final getTimeZoneMinute()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/GDate;->_tzm:I

    return p0
.end method

.method public final getTimeZoneSign()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/GDate;->_tzsign:I

    return p0
.end method

.method public final getYear()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/GDate;->_CY:I

    return p0
.end method

.method public final hasDate()Z
    .locals 1

    iget p0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    const/16 v0, 0xe

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasDay()Z
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasMonth()Z
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasTime()Z
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasTimeZone()Z
    .locals 1

    iget p0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasYear()Z
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/GDate;->_bits:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/GDate;->ensureCanonicalString()V

    iget-object p0, p0, Lorg/apache/xmlbeans/GDate;->_canonicalString:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final isImmutable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isValid()Z
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/GDateBuilder;->isValidGDate(Lorg/apache/xmlbeans/GDateSpecification;)Z

    move-result p0

    return p0
.end method

.method public subtract(Lorg/apache/xmlbeans/GDurationSpecification;)Lorg/apache/xmlbeans/GDate;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/GDateBuilder;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Lorg/apache/xmlbeans/GDateSpecification;)V

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/GDateBuilder;->subtractGDuration(Lorg/apache/xmlbeans/GDurationSpecification;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDateBuilder;->toGDate()Lorg/apache/xmlbeans/GDate;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/GDate;->_string:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xmlbeans/GDate;->formatGDate(Lorg/apache/xmlbeans/GDateSpecification;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/GDate;->_string:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/GDate;->_string:Ljava/lang/String;

    return-object p0
.end method
