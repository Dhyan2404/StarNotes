.class public Lnet/sf/saxon/type/StringToDouble;
.super Lnet/sf/saxon/type/StringConverter;
.source "SourceFile"


# static fields
.field public static final b:Lnet/sf/saxon/type/StringToDouble;

.field public static final c:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/StringToDouble;

    invoke-direct {v0}, Lnet/sf/saxon/type/StringToDouble;-><init>()V

    sput-object v0, Lnet/sf/saxon/type/StringToDouble;->b:Lnet/sf/saxon/type/StringToDouble;

    const/16 v0, 0x9

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lnet/sf/saxon/type/StringToDouble;->c:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x408f400000000000L    # 1000.0
        0x40c3880000000000L    # 10000.0
        0x40f86a0000000000L    # 100000.0
        0x412e848000000000L    # 1000000.0
        0x416312d000000000L    # 1.0E7
        0x4197d78400000000L    # 1.0E8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/type/StringConverter;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/type/StringToDouble;
    .locals 1

    sget-object v0, Lnet/sf/saxon/type/StringToDouble;->b:Lnet/sf/saxon/type/StringToDouble;

    return-object v0
.end method


# virtual methods
.method public convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/StringToDouble;->stringToNumber(Lnet/sf/saxon/str/UnicodeString;)D

    move-result-wide v0

    new-instance p0, Lnet/sf/saxon/value/DoubleValue;

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot convert string "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lnet/sf/saxon/trans/Err;->wrap(Lnet/sf/saxon/str/UnicodeString;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to double"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public signedPositiveInfinity()D
    .locals 1

    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "the float/double value \'+INF\' is not allowed under XSD 1.0"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stringToNumber(Lnet/sf/saxon/str/UnicodeString;)D
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x9

    if-ge v1, v5, :cond_a

    const-wide/16 v7, 0x0

    move v9, v4

    move v10, v9

    move v11, v10

    move-wide v12, v7

    const/4 v14, -0x1

    const/4 v15, -0x1

    move v7, v11

    move v8, v7

    :goto_0
    if-ge v4, v1, :cond_6

    move/from16 v16, v7

    int-to-long v6, v4

    invoke-virtual {v0, v6, v7}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v6

    if-eq v6, v5, :cond_3

    if-eq v6, v2, :cond_3

    const-string v7, "Numeric value contains embedded whitespace"

    sparse-switch v6, :sswitch_data_0

    packed-switch v6, :pswitch_data_0

    move v9, v3

    goto :goto_1

    :pswitch_0
    if-nez v16, :cond_0

    const-wide/16 v17, 0xa

    mul-long v12, v12, v17

    add-int/lit8 v6, v6, -0x30

    int-to-long v6, v6

    add-long/2addr v12, v6

    move v14, v4

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    move v9, v3

    move v10, v9

    move v11, v10

    :goto_1
    move/from16 v7, v16

    const/4 v6, -0x1

    goto :goto_3

    :sswitch_1
    if-nez v16, :cond_2

    const/4 v6, -0x1

    if-ne v15, v6, :cond_1

    move v15, v4

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Only one decimal point allowed"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :sswitch_2
    const/4 v6, -0x1

    if-eq v14, v6, :cond_4

    move v7, v3

    move v8, v7

    goto :goto_3

    :cond_4
    move v8, v3

    :goto_2
    move/from16 v7, v16

    :goto_3
    if-eqz v10, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    const/4 v6, -0x1

    :goto_4
    if-nez v9, :cond_f

    if-eq v14, v6, :cond_9

    if-eq v15, v6, :cond_8

    if-le v15, v14, :cond_7

    goto :goto_5

    :cond_7
    sub-int/2addr v14, v15

    long-to-double v0, v12

    sget-object v2, Lnet/sf/saxon/type/StringToDouble;->c:[D

    aget-wide v2, v2, v14

    div-double/2addr v0, v2

    return-wide v0

    :cond_8
    :goto_5
    long-to-double v0, v12

    return-wide v0

    :cond_9
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "String to double conversion: no digits found"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move v6, v4

    move v7, v6

    move v8, v7

    :goto_6
    if-ge v4, v1, :cond_e

    int-to-long v9, v4

    invoke-virtual {v0, v9, v10}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v9

    if-eq v9, v5, :cond_b

    if-eq v9, v2, :cond_b

    const/16 v10, 0xd

    if-eq v9, v10, :cond_b

    const/16 v10, 0x20

    if-eq v9, v10, :cond_b

    const/16 v10, 0x2b

    if-eq v9, v10, :cond_c

    const/16 v10, 0x45

    if-eq v9, v10, :cond_c

    const/16 v10, 0x65

    if-eq v9, v10, :cond_c

    const/16 v10, 0x2d

    if-eq v9, v10, :cond_c

    const/16 v10, 0x2e

    if-eq v9, v10, :cond_c

    packed-switch v9, :pswitch_data_1

    move v6, v3

    move v8, v6

    goto :goto_7

    :cond_b
    move v7, v3

    :cond_c
    :goto_7
    :pswitch_1
    if-eqz v6, :cond_d

    goto :goto_8

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_e
    :goto_8
    move v11, v8

    move v8, v7

    :cond_f
    if-eqz v8, :cond_10

    invoke-static/range {p1 .. p1}, Lnet/sf/saxon/value/Whitespace;->trim(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_9
    const-string v2, "INF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    :cond_11
    const-string v2, "+INF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/type/StringToDouble;->signedPositiveInfinity()D

    move-result-wide v0

    return-wide v0

    :cond_12
    const-string v2, "-INF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0

    :cond_13
    const-string v2, "NaN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_14
    if-nez v11, :cond_15

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_15
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid floating point value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_2
        0x20 -> :sswitch_2
        0x2e -> :sswitch_1
        0x44 -> :sswitch_0
        0x46 -> :sswitch_0
        0x4e -> :sswitch_0
        0x58 -> :sswitch_0
        0x64 -> :sswitch_0
        0x66 -> :sswitch_0
        0x6e -> :sswitch_0
        0x78 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
