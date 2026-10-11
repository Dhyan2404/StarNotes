.class public Lcom/alibaba/fastjson2/util/DateUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;,
        Lcom/alibaba/fastjson2/util/DateUtils$c;,
        Lcom/alibaba/fastjson2/util/DateUtils$b;
    }
.end annotation


# static fields
.field public static final DEFAULT_ZONE_ID:Ljava/time/ZoneId;

.field public static final LOCAL_DATE_19700101:Ljava/time/LocalDate;

.field public static final OFFSET_8_ZONE_ID:Ljava/time/ZoneId;

.field public static final OFFSET_8_ZONE_ID_NAME:Ljava/lang/String; = "+08:00"

.field public static final SHANGHAI_ZONE_ID:Ljava/time/ZoneId;

.field public static final SHANGHAI_ZONE_ID_NAME:Ljava/lang/String; = "Asia/Shanghai"

.field public static final SHANGHAI_ZONE_RULES:Ljava/time/zone/ZoneRules;

.field public static a:Ljava/time/format/DateTimeFormatter;

.field public static b:Ljava/time/format/DateTimeFormatter;

.field public static c:Ljava/time/format/DateTimeFormatter;

.field public static d:Ljava/time/format/DateTimeFormatter;

.field public static final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Asia/Shanghai"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v1

    :goto_0
    sput-object v1, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_ID:Ljava/time/ZoneId;

    invoke-virtual {v1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_RULES:Ljava/time/zone/ZoneRules;

    const-string v3, "+08:00"

    invoke-static {v3}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v3

    sput-object v3, Lcom/alibaba/fastjson2/util/DateUtils;->OFFSET_8_ZONE_ID:Ljava/time/ZoneId;

    const/16 v3, 0x7b2

    const/4 v4, 0x1

    invoke-static {v3, v4, v4}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v3

    sput-object v3, Lcom/alibaba/fastjson2/util/DateUtils;->LOCAL_DATE_19700101:Ljava/time/LocalDate;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v5

    if-eq v0, v1, :cond_2

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v3, v4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->getShanghaiZoneOffsetTotalSeconds(J)I

    move-result v0

    :goto_2
    int-to-long v0, v0

    add-long/2addr v5, v0

    const-wide/32 v0, 0x15180

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/alibaba/fastjson2/util/DateUtils;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IIIIIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;
    .locals 15

    move-object/from16 v0, p6

    div-int/lit8 v1, p0, 0x64

    mul-int/lit8 v2, v1, 0x64

    sub-int v2, p0, v2

    const/16 v3, 0x13

    new-array v3, v3, [C

    sget-object v4, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    const/16 v5, 0x20

    const/16 v6, 0xa

    const-wide/16 v7, 0x10

    if-ne v0, v4, :cond_0

    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v9, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    sget-object v4, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget v11, v4, p2

    invoke-virtual {v0, v3, v9, v10, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const/4 v11, 0x2

    const/16 v12, 0x2e

    aput-char v12, v3, v11

    const-wide/16 v13, 0x6

    add-long/2addr v13, v9

    aget v11, v4, p1

    invoke-virtual {v0, v3, v13, v14, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const/4 v11, 0x5

    aput-char v12, v3, v11

    const-wide/16 v11, 0xc

    add-long/2addr v11, v9

    aget v1, v4, v1

    invoke-virtual {v0, v3, v11, v12, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-long/2addr v9, v7

    aget v1, v4, v2

    invoke-virtual {v0, v3, v9, v10, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    aput-char v5, v3, v6

    goto :goto_2

    :cond_0
    sget-object v4, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    if-ne v0, v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v5, 0x54

    :goto_0
    sget-object v4, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_SLASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    if-ne v0, v4, :cond_2

    const/16 v0, 0x2f

    goto :goto_1

    :cond_2
    const/16 v0, 0x2d

    :goto_1
    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v9, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    sget-object v11, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget v1, v11, v1

    invoke-virtual {v4, v3, v9, v10, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const-wide/16 v12, 0x4

    add-long/2addr v12, v9

    aget v1, v11, v2

    invoke-virtual {v4, v3, v12, v13, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const/4 v1, 0x4

    aput-char v0, v3, v1

    const-wide/16 v1, 0xa

    add-long/2addr v1, v9

    aget v12, v11, p1

    invoke-virtual {v4, v3, v1, v2, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const/4 v1, 0x7

    aput-char v0, v3, v1

    add-long/2addr v9, v7

    aget v0, v11, p2

    invoke-virtual {v4, v3, v9, v10, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    aput-char v5, v3, v6

    :goto_2
    const/16 v0, 0xb

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v4, p5

    invoke-static {v3, v0, v1, v2, v4}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([CIIII)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/time/ZoneId;Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)J
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_1c

    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_8

    :cond_0
    move-object/from16 v2, p2

    iget v3, v2, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->length:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1b

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1a

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, 0x3

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/4 v11, 0x4

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/4 v13, 0x5

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/4 v15, 0x6

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v11, 0x7

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sget-object v16, Lcom/alibaba/fastjson2/util/DateUtils$a;->a:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v16, v2

    const-string v4, "illegal input"

    if-eq v2, v13, :cond_3

    if-ne v2, v15, :cond_2

    const/16 v2, 0x2f

    if-ne v12, v2, :cond_1

    if-ne v11, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/time/format/DateTimeParseException;

    const/4 v2, 0x0

    invoke-direct {v1, v4, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_2
    const/4 v2, 0x0

    new-instance v1, Ljava/time/format/DateTimeParseException;

    invoke-direct {v1, v4, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_3
    const/16 v2, 0x2d

    if-ne v12, v2, :cond_19

    if-ne v11, v2, :cond_19

    :goto_0
    const/16 v2, 0x30

    if-lt v3, v2, :cond_18

    const/16 v11, 0x39

    if-gt v3, v11, :cond_18

    if-lt v7, v2, :cond_18

    if-gt v7, v11, :cond_18

    if-lt v9, v2, :cond_18

    if-gt v9, v11, :cond_18

    if-lt v10, v2, :cond_18

    if-gt v10, v11, :cond_18

    sub-int/2addr v3, v2

    mul-int/lit16 v3, v3, 0x3e8

    sub-int/2addr v7, v2

    mul-int/lit8 v7, v7, 0x64

    add-int/2addr v3, v7

    sub-int/2addr v9, v2

    const/16 v7, 0xa

    mul-int/2addr v9, v7

    add-int/2addr v3, v9

    sub-int/2addr v10, v2

    add-int/2addr v3, v10

    if-lt v14, v2, :cond_17

    if-gt v14, v11, :cond_17

    if-lt v6, v2, :cond_17

    if-gt v6, v11, :cond_17

    sub-int/2addr v14, v2

    mul-int/2addr v14, v7

    sub-int/2addr v6, v2

    add-int/2addr v14, v6

    if-nez v14, :cond_4

    if-nez v3, :cond_16

    :cond_4
    const/16 v6, 0xc

    if-gt v14, v6, :cond_16

    if-lt v8, v2, :cond_15

    if-gt v8, v11, :cond_15

    if-lt v5, v2, :cond_15

    if-gt v5, v11, :cond_15

    sub-int/2addr v8, v2

    const/16 v7, 0xa

    mul-int/2addr v8, v7

    sub-int/2addr v5, v2

    add-int/2addr v8, v5

    const/4 v2, 0x2

    if-eq v14, v2, :cond_6

    const/4 v2, 0x4

    if-eq v14, v2, :cond_5

    if-eq v14, v15, :cond_5

    const/16 v2, 0x9

    if-eq v14, v2, :cond_5

    const/16 v2, 0xb

    if-eq v14, v2, :cond_5

    const/16 v2, 0x1f

    goto :goto_2

    :cond_5
    const/16 v2, 0x1e

    goto :goto_2

    :cond_6
    and-int/lit8 v2, v3, 0x3

    if-nez v2, :cond_8

    rem-int/lit8 v2, v3, 0x64

    if-nez v2, :cond_7

    rem-int/lit16 v2, v3, 0x190

    if-nez v2, :cond_8

    :cond_7
    const/4 v2, 0x1

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_9

    const/16 v2, 0x1d

    goto :goto_2

    :cond_9
    const/16 v2, 0x1c

    :goto_2
    if-nez v8, :cond_a

    if-nez v3, :cond_14

    :cond_a
    if-gt v8, v2, :cond_14

    if-nez v3, :cond_b

    if-nez v14, :cond_b

    if-nez v8, :cond_b

    const/16 v3, 0x7b2

    const/4 v8, 0x1

    const/4 v14, 0x1

    :cond_b
    mul-int/lit16 v0, v3, 0x16d

    add-int/lit8 v2, v3, 0x3

    const/4 v4, 0x4

    div-int/2addr v2, v4

    add-int/lit8 v4, v3, 0x63

    div-int/lit8 v4, v4, 0x64

    sub-int/2addr v2, v4

    add-int/lit16 v4, v3, 0x18f

    div-int/lit16 v4, v4, 0x190

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    mul-int/lit16 v2, v14, 0x16f

    add-int/lit16 v2, v2, -0x16a

    div-int/2addr v2, v6

    add-int/2addr v0, v2

    add-int/lit8 v2, v8, -0x1

    add-int/2addr v0, v2

    int-to-long v4, v0

    const/4 v0, 0x2

    if-le v14, v0, :cond_e

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    and-int/lit8 v0, v3, 0x3

    if-nez v0, :cond_d

    rem-int/lit8 v0, v3, 0x64

    if-nez v0, :cond_c

    rem-int/lit16 v0, v3, 0x190

    if-nez v0, :cond_d

    :cond_c
    const/4 v2, 0x1

    goto :goto_3

    :cond_d
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_e

    sub-long/2addr v4, v6

    :cond_e
    const-wide/32 v6, 0xafaa8

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x15180

    mul-long/2addr v4, v6

    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_ID:Ljava/time/ZoneId;

    if-eq v1, v0, :cond_10

    invoke-virtual/range {p1 .. p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    sget-object v2, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_RULES:Ljava/time/zone/ZoneRules;

    if-ne v0, v2, :cond_f

    goto :goto_4

    :cond_f
    const/4 v6, 0x0

    goto :goto_5

    :cond_10
    :goto_4
    const/4 v6, 0x1

    :goto_5
    if-eqz v6, :cond_11

    const-wide/32 v6, 0x28d2bea0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_11

    const/16 v0, 0x7080

    goto :goto_7

    :cond_11
    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    if-eq v1, v0, :cond_13

    invoke-virtual/range {p1 .. p1}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_6

    :cond_12
    invoke-static {v3, v14, v8}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    sget-object v2, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v0, v2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    goto :goto_7

    :cond_13
    :goto_6
    const/4 v0, 0x0

    :goto_7
    int-to-long v0, v0

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v4, v0

    return-wide v4

    :cond_14
    new-instance v1, Ljava/time/format/DateTimeParseException;

    const/4 v2, 0x0

    invoke-direct {v1, v4, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_15
    const/4 v2, 0x0

    new-instance v1, Ljava/time/format/DateTimeParseException;

    invoke-direct {v1, v4, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_16
    const/4 v2, 0x0

    new-instance v1, Ljava/time/format/DateTimeParseException;

    invoke-direct {v1, v4, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_17
    const/4 v2, 0x0

    new-instance v1, Ljava/time/format/DateTimeParseException;

    invoke-direct {v1, v4, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_18
    const/4 v2, 0x0

    new-instance v1, Ljava/time/format/DateTimeParseException;

    invoke-direct {v1, v4, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_19
    const/4 v2, 0x0

    new-instance v1, Ljava/time/format/DateTimeParseException;

    invoke-direct {v1, v4, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_1a
    move v2, v5

    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal input "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_1b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_1c
    :goto_8
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static c(Ljava/lang/String;Ljava/time/ZoneId;Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)J
    .locals 25

    move-object/from16 v0, p0

    if-eqz v0, :cond_25

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_b

    :cond_0
    move-object/from16 v1, p2

    iget v2, v1, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->length:I

    const/16 v3, 0x13

    if-ne v2, v3, :cond_24

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_23

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/4 v13, 0x6

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/4 v15, 0x7

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v13, 0x8

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v18, v2

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v19, v5

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v20, v9

    const/16 v9, 0x12

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sget-object v21, Lcom/alibaba/fastjson2/util/DateUtils$a;->a:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v22

    move/from16 v23, v13

    aget v13, v21, v22

    move/from16 v21, v14

    const-string v14, "illegal input"

    move/from16 v24, v9

    const/4 v9, 0x1

    if-eq v13, v9, :cond_7

    const/4 v9, 0x2

    if-eq v13, v9, :cond_5

    const/4 v9, 0x3

    if-eq v13, v9, :cond_3

    const/4 v9, 0x4

    if-ne v13, v9, :cond_2

    const/16 v9, 0x2e

    if-ne v7, v9, :cond_1

    if-ne v12, v9, :cond_1

    const/16 v7, 0x20

    if-ne v10, v7, :cond_1

    const/16 v7, 0x3a

    if-ne v4, v7, :cond_1

    if-ne v2, v7, :cond_1

    move/from16 v10, v16

    move/from16 v4, v18

    move/from16 v7, v19

    move/from16 v12, v20

    move/from16 v2, v21

    move/from16 v9, v23

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/time/format/DateTimeParseException;

    const/4 v2, 0x0

    invoke-direct {v1, v14, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_2
    const/4 v2, 0x0

    new-instance v1, Ljava/time/format/DateTimeParseException;

    invoke-direct {v1, v14, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_3
    const/16 v9, 0x2f

    if-ne v11, v9, :cond_4

    if-ne v15, v9, :cond_4

    const/16 v9, 0x20

    if-ne v10, v9, :cond_4

    const/16 v9, 0x3a

    if-ne v4, v9, :cond_4

    if-ne v2, v9, :cond_4

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/time/format/DateTimeParseException;

    const/4 v2, 0x0

    invoke-direct {v1, v14, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_5
    const/16 v9, 0x2d

    if-ne v11, v9, :cond_6

    if-ne v15, v9, :cond_6

    const/16 v9, 0x54

    if-ne v10, v9, :cond_6

    const/16 v9, 0x3a

    if-ne v4, v9, :cond_6

    if-ne v2, v9, :cond_6

    goto :goto_0

    :cond_6
    new-instance v1, Ljava/time/format/DateTimeParseException;

    const/4 v2, 0x0

    invoke-direct {v1, v14, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_7
    const/16 v9, 0x2d

    if-ne v11, v9, :cond_22

    if-ne v15, v9, :cond_22

    const/16 v9, 0x20

    if-ne v10, v9, :cond_22

    const/16 v9, 0x3a

    if-ne v4, v9, :cond_22

    if-ne v2, v9, :cond_22

    :goto_0
    move v9, v7

    move/from16 v7, v16

    move/from16 v2, v18

    move/from16 v15, v19

    move/from16 v10, v20

    move/from16 v11, v21

    move/from16 v4, v23

    :goto_1
    const/16 v13, 0x30

    if-lt v2, v13, :cond_21

    const/16 v0, 0x39

    if-gt v2, v0, :cond_20

    if-lt v15, v13, :cond_20

    if-gt v15, v0, :cond_20

    if-lt v9, v13, :cond_20

    if-gt v9, v0, :cond_20

    if-lt v10, v13, :cond_20

    if-gt v10, v0, :cond_20

    sub-int/2addr v2, v13

    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v15, v13

    mul-int/lit8 v15, v15, 0x64

    add-int/2addr v2, v15

    sub-int/2addr v9, v13

    const/16 v15, 0xa

    mul-int/2addr v9, v15

    add-int/2addr v2, v9

    sub-int/2addr v10, v13

    add-int/2addr v2, v10

    if-lt v12, v13, :cond_1f

    if-gt v12, v0, :cond_1f

    if-lt v11, v13, :cond_1f

    if-gt v11, v0, :cond_1f

    sub-int/2addr v12, v13

    mul-int/2addr v12, v15

    sub-int/2addr v11, v13

    add-int/2addr v12, v11

    if-nez v12, :cond_8

    if-nez v2, :cond_1e

    :cond_8
    const/16 v9, 0xc

    if-gt v12, v9, :cond_1e

    if-lt v4, v13, :cond_1d

    if-gt v4, v0, :cond_1d

    if-lt v7, v13, :cond_1d

    if-gt v7, v0, :cond_1d

    sub-int/2addr v4, v13

    const/16 v9, 0xa

    mul-int/2addr v4, v9

    sub-int/2addr v7, v13

    add-int/2addr v4, v7

    const/4 v7, 0x2

    if-eq v12, v7, :cond_a

    const/4 v7, 0x4

    if-eq v12, v7, :cond_9

    const/4 v7, 0x6

    if-eq v12, v7, :cond_9

    const/16 v7, 0x9

    if-eq v12, v7, :cond_9

    const/16 v7, 0xb

    if-eq v12, v7, :cond_9

    const/16 v7, 0x1f

    goto :goto_3

    :cond_9
    const/16 v7, 0x1e

    goto :goto_3

    :cond_a
    and-int/lit8 v7, v2, 0x3

    if-nez v7, :cond_c

    rem-int/lit8 v7, v2, 0x64

    if-nez v7, :cond_b

    rem-int/lit16 v7, v2, 0x190

    if-nez v7, :cond_c

    :cond_b
    const/4 v7, 0x1

    goto :goto_2

    :cond_c
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_d

    const/16 v7, 0x1d

    goto :goto_3

    :cond_d
    const/16 v7, 0x1c

    :goto_3
    if-nez v4, :cond_e

    if-nez v2, :cond_1c

    :cond_e
    if-gt v4, v7, :cond_1c

    if-lt v8, v13, :cond_1b

    if-gt v8, v0, :cond_1b

    if-lt v6, v13, :cond_1b

    if-gt v6, v0, :cond_1b

    sub-int/2addr v8, v13

    const/16 v7, 0xa

    mul-int/2addr v8, v7

    sub-int/2addr v6, v13

    add-int/2addr v8, v6

    if-lt v3, v13, :cond_1a

    if-gt v3, v0, :cond_1a

    if-lt v1, v13, :cond_1a

    if-gt v1, v0, :cond_1a

    sub-int/2addr v3, v13

    mul-int/2addr v3, v7

    sub-int/2addr v1, v13

    add-int/2addr v3, v1

    if-lt v5, v13, :cond_19

    if-gt v5, v0, :cond_19

    move/from16 v1, v24

    if-lt v1, v13, :cond_19

    if-gt v1, v0, :cond_19

    sub-int/2addr v5, v13

    mul-int/2addr v5, v7

    add-int/lit8 v9, v1, -0x30

    add-int/2addr v5, v9

    if-nez v2, :cond_f

    if-nez v12, :cond_f

    if-nez v4, :cond_f

    const/16 v2, 0x7b2

    const/4 v4, 0x1

    const/4 v12, 0x1

    :cond_f
    mul-int/lit16 v0, v2, 0x16d

    add-int/lit8 v1, v2, 0x3

    const/4 v6, 0x4

    div-int/2addr v1, v6

    add-int/lit8 v6, v2, 0x63

    div-int/lit8 v6, v6, 0x64

    sub-int/2addr v1, v6

    add-int/lit16 v6, v2, 0x18f

    div-int/lit16 v6, v6, 0x190

    add-int/2addr v1, v6

    add-int/2addr v0, v1

    mul-int/lit16 v1, v12, 0x16f

    add-int/lit16 v1, v1, -0x16a

    const/16 v6, 0xc

    div-int/2addr v1, v6

    add-int/2addr v0, v1

    add-int/lit8 v1, v4, -0x1

    add-int/2addr v0, v1

    int-to-long v0, v0

    const/4 v6, 0x2

    if-le v12, v6, :cond_12

    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    and-int/lit8 v9, v2, 0x3

    if-nez v9, :cond_11

    rem-int/lit8 v9, v2, 0x64

    if-nez v9, :cond_10

    rem-int/lit16 v9, v2, 0x190

    if-nez v9, :cond_11

    :cond_10
    const/4 v9, 0x1

    goto :goto_4

    :cond_11
    const/4 v9, 0x0

    :goto_4
    if-nez v9, :cond_12

    sub-long/2addr v0, v6

    :cond_12
    const-wide/32 v6, 0xafaa8

    sub-long/2addr v0, v6

    const-wide/32 v6, 0x15180

    mul-long/2addr v0, v6

    mul-int/lit16 v6, v8, 0xe10

    int-to-long v6, v6

    add-long/2addr v0, v6

    mul-int/lit8 v6, v3, 0x3c

    int-to-long v6, v6

    add-long/2addr v0, v6

    int-to-long v6, v5

    add-long/2addr v0, v6

    if-nez p1, :cond_13

    sget-object v6, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    goto :goto_5

    :cond_13
    move-object/from16 v6, p1

    :goto_5
    sget-object v7, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_ID:Ljava/time/ZoneId;

    if-eq v6, v7, :cond_15

    invoke-virtual {v6}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v7

    sget-object v9, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_RULES:Ljava/time/zone/ZoneRules;

    if-ne v7, v9, :cond_14

    goto :goto_6

    :cond_14
    const/16 v17, 0x0

    goto :goto_7

    :cond_15
    :goto_6
    const/16 v17, 0x1

    :goto_7
    if-eqz v17, :cond_16

    const-wide/32 v9, 0x28d2bea0

    cmp-long v7, v0, v9

    if-ltz v7, :cond_16

    const/16 v4, 0x7080

    goto :goto_9

    :cond_16
    sget-object v7, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    if-eq v6, v7, :cond_18

    invoke-virtual {v6}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v9, "UTC"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    goto :goto_8

    :cond_17
    invoke-static {v2, v12, v4}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v8, v3, v5, v4}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v6}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    goto :goto_9

    :cond_18
    :goto_8
    const/4 v4, 0x0

    :goto_9
    int-to-long v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    :cond_19
    new-instance v0, Ljava/time/format/DateTimeParseException;

    const/4 v2, 0x0

    move-object/from16 v1, p0

    invoke-direct {v0, v14, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_1a
    const/4 v2, 0x0

    move-object/from16 v1, p0

    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v14, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_1b
    const/4 v2, 0x0

    move-object/from16 v1, p0

    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v14, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_1c
    const/4 v2, 0x0

    move-object/from16 v1, p0

    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v14, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_1d
    const/4 v2, 0x0

    move-object/from16 v1, p0

    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v14, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_1e
    const/4 v2, 0x0

    move-object/from16 v1, p0

    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v14, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_1f
    const/4 v2, 0x0

    move-object/from16 v1, p0

    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v14, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_20
    const/4 v2, 0x0

    move-object/from16 v1, p0

    goto :goto_a

    :cond_21
    move-object v1, v0

    const/4 v2, 0x0

    :goto_a
    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v14, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_22
    move-object v1, v0

    const/4 v2, 0x0

    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v14, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_23
    move-object v1, v0

    move v2, v4

    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal input "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_25
    :goto_b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static d([BILjava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    add-int/lit8 v2, v1, 0x10

    array-length v3, v0

    const-string v5, "illegal input "

    if-gt v2, v3, :cond_5

    aget-byte v2, v0, v1

    int-to-char v2, v2

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    int-to-char v3, v3

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, v0, v6

    int-to-char v6, v6

    add-int/lit8 v7, v1, 0x3

    aget-byte v7, v0, v7

    int-to-char v7, v7

    add-int/lit8 v8, v1, 0x4

    aget-byte v8, v0, v8

    int-to-char v8, v8

    add-int/lit8 v9, v1, 0x5

    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v10, v1, 0x6

    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, v1, 0x7

    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, v1, 0x8

    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, v1, 0x9

    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, v1, 0xa

    aget-byte v15, v0, v14

    int-to-char v15, v15

    add-int/lit8 v16, v1, 0xd

    aget-byte v4, v0, v16

    int-to-char v4, v4

    move-object/from16 v16, v5

    const/16 v5, 0x2d

    const/16 v1, 0x10

    if-ne v8, v5, :cond_4

    if-ne v11, v5, :cond_4

    const/16 v8, 0x2b

    if-eq v15, v8, :cond_0

    if-ne v15, v5, :cond_4

    :cond_0
    const/16 v5, 0x3a

    if-ne v4, v5, :cond_4

    const/16 v4, 0x30

    if-lt v2, v4, :cond_3

    const/16 v5, 0x39

    if-gt v2, v5, :cond_3

    if-lt v3, v4, :cond_3

    if-gt v3, v5, :cond_3

    if-lt v6, v4, :cond_3

    if-gt v6, v5, :cond_3

    if-lt v7, v4, :cond_3

    if-gt v7, v5, :cond_3

    sub-int/2addr v2, v4

    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    sub-int/2addr v6, v4

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v2, v6

    sub-int/2addr v7, v4

    add-int/2addr v2, v7

    if-lt v9, v4, :cond_2

    if-gt v9, v5, :cond_2

    if-lt v10, v4, :cond_2

    if-gt v10, v5, :cond_2

    sub-int/2addr v9, v4

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v4

    add-int/2addr v9, v10

    if-lt v12, v4, :cond_1

    if-gt v12, v5, :cond_1

    if-lt v13, v4, :cond_1

    if-gt v13, v5, :cond_1

    sub-int/2addr v12, v4

    mul-int/lit8 v12, v12, 0xa

    sub-int/2addr v13, v4

    add-int/2addr v12, v13

    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x6

    invoke-direct {v1, v0, v14, v3}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->getZoneId(Ljava/lang/String;Ljava/time/ZoneId;)Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {v2, v9, v12}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    sget-object v2, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v1, v2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/String;

    move v3, v1

    move/from16 v1, p1

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v16

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_2
    move v3, v1

    move-object/from16 v4, v16

    move/from16 v1, p1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_3
    move v3, v1

    move-object/from16 v4, v16

    move/from16 v1, p1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_4
    move v3, v1

    move-object/from16 v4, v16

    move/from16 v1, p1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_5
    move-object v4, v5

    new-instance v2, Ljava/lang/String;

    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0
.end method

.method public static e([CILjava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    add-int/lit8 v2, v1, 0x10

    array-length v3, v0

    const-string v5, "illegal input "

    if-gt v2, v3, :cond_5

    aget-char v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    aget-char v3, v0, v3

    add-int/lit8 v6, v1, 0x2

    aget-char v6, v0, v6

    add-int/lit8 v7, v1, 0x3

    aget-char v7, v0, v7

    add-int/lit8 v8, v1, 0x4

    aget-char v8, v0, v8

    add-int/lit8 v9, v1, 0x5

    aget-char v9, v0, v9

    add-int/lit8 v10, v1, 0x6

    aget-char v10, v0, v10

    add-int/lit8 v11, v1, 0x7

    aget-char v11, v0, v11

    add-int/lit8 v12, v1, 0x8

    aget-char v12, v0, v12

    add-int/lit8 v13, v1, 0x9

    aget-char v13, v0, v13

    add-int/lit8 v14, v1, 0xa

    aget-char v15, v0, v14

    add-int/lit8 v16, v1, 0xd

    aget-char v4, v0, v16

    move-object/from16 v16, v5

    const/16 v5, 0x2d

    const/16 v1, 0x10

    if-ne v8, v5, :cond_4

    if-ne v11, v5, :cond_4

    const/16 v8, 0x2b

    if-eq v15, v8, :cond_0

    if-ne v15, v5, :cond_4

    :cond_0
    const/16 v5, 0x3a

    if-ne v4, v5, :cond_4

    const/16 v4, 0x30

    if-lt v2, v4, :cond_3

    const/16 v5, 0x39

    if-gt v2, v5, :cond_3

    if-lt v3, v4, :cond_3

    if-gt v3, v5, :cond_3

    if-lt v6, v4, :cond_3

    if-gt v6, v5, :cond_3

    if-lt v7, v4, :cond_3

    if-gt v7, v5, :cond_3

    sub-int/2addr v2, v4

    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    sub-int/2addr v6, v4

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v2, v6

    sub-int/2addr v7, v4

    add-int/2addr v2, v7

    if-lt v9, v4, :cond_2

    if-gt v9, v5, :cond_2

    if-lt v10, v4, :cond_2

    if-gt v10, v5, :cond_2

    sub-int/2addr v9, v4

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v4

    add-int/2addr v9, v10

    if-lt v12, v4, :cond_1

    if-gt v12, v5, :cond_1

    if-lt v13, v4, :cond_1

    if-gt v13, v5, :cond_1

    sub-int/2addr v12, v4

    mul-int/lit8 v12, v12, 0xa

    sub-int/2addr v13, v4

    add-int/2addr v12, v13

    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x6

    invoke-direct {v1, v0, v14, v3}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->getZoneId(Ljava/lang/String;Ljava/time/ZoneId;)Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {v2, v9, v12}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    sget-object v2, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v1, v2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/String;

    move v3, v1

    move/from16 v1, p1

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v16

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_2
    move v3, v1

    move-object/from16 v4, v16

    move/from16 v1, p1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_3
    move v3, v1

    move-object/from16 v4, v16

    move/from16 v1, p1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_4
    move v3, v1

    move-object/from16 v4, v16

    move/from16 v1, p1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_5
    move-object v4, v5

    new-instance v2, Ljava/lang/String;

    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0
.end method

.method public static f(Ljava/lang/String;)Ljava/time/ZonedDateTime;
    .locals 3

    const-string v0, " CST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->c:Ljava/time/format/DateTimeFormatter;

    if-nez v0, :cond_0

    const-string v0, "EEEE, dd-MMM-yyyy HH:mm:ss"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->c:Ljava/time/format/DateTimeFormatter;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p0

    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p0, v0}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->b:Ljava/time/format/DateTimeFormatter;

    if-nez v0, :cond_2

    const-string v0, "EEEE, dd-MMM-yyyy HH:mm:ss zzz"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->b:Ljava/time/format/DateTimeFormatter;

    :cond_2
    invoke-static {p0, v0}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static format(III)Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(IIIIII)Ljava/lang/String;
    .locals 7

    .line 98
    sget-object v6, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/alibaba/fastjson2/util/DateUtils;->a(IIIIIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(IIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;
    .locals 10

    .line 61
    div-int/lit8 v0, p0, 0x64

    mul-int/lit8 v1, v0, 0x64

    sub-int/2addr p0, v1

    const/16 v1, 0xa

    new-array v1, v1, [C

    .line 62
    sget-object v2, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    const-wide/16 v3, 0x10

    if-ne p3, v2, :cond_0

    .line 63
    sget-object p3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    sget-object v2, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget p2, v2, p2

    invoke-virtual {p3, v1, v5, v6, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const/4 p2, 0x2

    const/16 v7, 0x2e

    aput-char v7, v1, p2

    const-wide/16 v8, 0x6

    add-long/2addr v8, v5

    .line 64
    aget p1, v2, p1

    invoke-virtual {p3, v1, v8, v9, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const/4 p1, 0x5

    aput-char v7, v1, p1

    const-wide/16 p1, 0xc

    add-long/2addr p1, v5

    .line 65
    aget v0, v2, v0

    invoke-virtual {p3, v1, p1, p2, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-long/2addr v5, v3

    .line 66
    aget p0, v2, p0

    invoke-virtual {p3, v1, v5, v6, p0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1

    .line 67
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    if-ne p3, v2, :cond_1

    const/16 p3, 0x2d

    goto :goto_0

    :cond_1
    const/16 p3, 0x2f

    .line 68
    :goto_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    sget-object v7, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget v0, v7, v0

    invoke-virtual {v2, v1, v5, v6, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const-wide/16 v8, 0x4

    add-long/2addr v8, v5

    .line 69
    aget p0, v7, p0

    invoke-virtual {v2, v1, v8, v9, p0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const/4 p0, 0x4

    aput-char p3, v1, p0

    const-wide/16 v8, 0xa

    add-long/2addr v8, v5

    .line 70
    aget p0, v7, p1

    invoke-virtual {v2, v1, v8, v9, p0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const/4 p0, 0x7

    aput-char p3, v1, p0

    add-long/2addr v5, v3

    .line 71
    aget p0, v7, p2

    invoke-virtual {v2, v1, v5, v6, p0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 72
    :goto_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static format(J)Ljava/lang/String;
    .locals 1

    .line 73
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(JLcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(JLcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;
    .locals 25

    move-object/from16 v6, p2

    .line 75
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    const-wide/16 v1, 0x3e8

    move-wide/from16 v3, p0

    .line 76
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v1

    .line 77
    sget-object v5, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_ID:Ljava/time/ZoneId;

    if-eq v0, v5, :cond_1

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v5

    sget-object v7, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_RULES:Ljava/time/zone/ZoneRules;

    if-ne v5, v7, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-static/range {p0 .. p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v3

    .line 79
    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    goto :goto_1

    .line 80
    :cond_1
    :goto_0
    invoke-static {v1, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->getShanghaiZoneOffsetTotalSeconds(J)I

    move-result v0

    :goto_1
    int-to-long v3, v0

    add-long/2addr v1, v3

    const-wide/32 v3, 0x15180

    .line 81
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v7

    .line 82
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    const-wide/32 v1, 0xafaa8

    add-long/2addr v7, v1

    const-wide/16 v1, 0x3c

    sub-long/2addr v7, v1

    const-wide/16 v3, 0x0

    cmp-long v5, v7, v3

    const-wide/16 v9, 0x1

    const-wide/32 v11, 0x23ab1

    const-wide/16 v13, 0x190

    if-gez v5, :cond_2

    add-long v15, v7, v9

    .line 83
    div-long/2addr v15, v11

    sub-long v1, v15, v9

    mul-long v15, v1, v13

    neg-long v1, v1

    mul-long/2addr v1, v11

    add-long/2addr v7, v1

    goto :goto_2

    :cond_2
    move-wide v15, v3

    :goto_2
    mul-long v1, v7, v13

    const-wide/16 v17, 0x24f

    add-long v1, v1, v17

    .line 84
    div-long/2addr v1, v11

    const-wide/16 v11, 0x16d

    mul-long v17, v1, v11

    const-wide/16 v19, 0x4

    .line 85
    div-long v21, v1, v19

    add-long v17, v17, v21

    const-wide/16 v21, 0x64

    div-long v23, v1, v21

    sub-long v17, v17, v23

    div-long v23, v1, v13

    add-long v17, v17, v23

    sub-long v17, v7, v17

    cmp-long v5, v17, v3

    if-gez v5, :cond_3

    sub-long/2addr v1, v9

    mul-long/2addr v11, v1

    .line 86
    div-long v9, v1, v19

    add-long/2addr v11, v9

    div-long v9, v1, v21

    sub-long/2addr v11, v9

    div-long v9, v1, v13

    add-long/2addr v11, v9

    sub-long v17, v7, v11

    :cond_3
    move-wide/from16 v7, v17

    add-long/2addr v1, v15

    long-to-int v5, v7

    mul-int/lit8 v7, v5, 0x5

    add-int/lit8 v7, v7, 0x2

    .line 87
    div-int/lit16 v7, v7, 0x99

    add-int/lit8 v8, v7, 0x2

    .line 88
    rem-int/lit8 v8, v8, 0xc

    add-int/lit8 v8, v8, 0x1

    mul-int/lit16 v9, v7, 0x132

    add-int/lit8 v9, v9, 0x5

    .line 89
    div-int/lit8 v9, v9, 0xa

    sub-int/2addr v5, v9

    add-int/lit8 v5, v5, 0x1

    .line 90
    div-int/lit8 v7, v7, 0xa

    int-to-long v9, v7

    add-long/2addr v1, v9

    const-wide/32 v9, -0x3b9ac9ff

    cmp-long v7, v1, v9

    if-ltz v7, :cond_7

    const-wide/32 v9, 0x3b9ac9ff

    cmp-long v7, v1, v9

    if-gtz v7, :cond_7

    long-to-int v1, v1

    .line 91
    sget-object v2, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    if-eq v6, v2, :cond_6

    sget-object v2, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_SLASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    if-eq v6, v2, :cond_6

    sget-object v2, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    if-ne v6, v2, :cond_4

    goto :goto_3

    :cond_4
    int-to-long v9, v0

    cmp-long v0, v9, v3

    if-ltz v0, :cond_5

    const-wide/32 v2, 0x1517f

    cmp-long v0, v9, v2

    if-gtz v0, :cond_5

    const-wide/16 v2, 0xe10

    .line 92
    div-long v2, v9, v2

    long-to-int v3, v2

    mul-int/lit16 v0, v3, 0xe10

    int-to-long v11, v0

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x3c

    .line 93
    div-long v11, v9, v11

    long-to-int v4, v11

    mul-int/lit8 v0, v4, 0x3c

    int-to-long v11, v0

    sub-long/2addr v9, v11

    long-to-int v7, v9

    move v0, v1

    move v1, v8

    move v2, v5

    move v5, v7

    move-object/from16 v6, p2

    .line 94
    invoke-static/range {v0 .. v6}, Lcom/alibaba/fastjson2/util/DateUtils;->a(IIIIIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 95
    :cond_5
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid secondOfDay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_6
    :goto_3
    invoke-static {v1, v8, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :cond_7
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid year "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static format(Ljava/time/LocalDate;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 49
    :cond_0
    invoke-virtual {p0}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    .line 50
    invoke-virtual {p0}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v1

    .line 51
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v2

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "dd.MM.yyyy"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_1
    const-string v3, "yyyy-MM-ddTHH:mm:ss"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_2
    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_3
    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_4
    const-string v3, "yyyy/MM/dd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_5
    const-string v3, "yyyy-MM-dd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 53
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    .line 54
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 55
    :pswitch_0
    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {v0, v1, v2, p0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 56
    sget-object v6, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH_T:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static/range {v0 .. v6}, Lcom/alibaba/fastjson2/util/DateUtils;->a(IIIIIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 57
    sget-object v6, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static/range {v0 .. v6}, Lcom/alibaba/fastjson2/util/DateUtils;->a(IIIIIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 58
    :pswitch_3
    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_SLASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {v0, v1, v2, p0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 59
    :pswitch_4
    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {v0, v1, v2, p0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x985fe00 -> :sswitch_5
        -0x61c4540 -> :sswitch_4
        0x4f76f1a0 -> :sswitch_3
        0x6b2ed43a -> :sswitch_2
        0x6d5d7dd4 -> :sswitch_1
        0x7147a660 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static format(Ljava/time/LocalDateTime;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 32
    :cond_0
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    .line 33
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v1

    .line 34
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "dd.MM.yyyy"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_1
    const-string v3, "yyyy-MM-ddTHH:mm:ss"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_2
    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_3
    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_4
    const-string v3, "yyyy/MM/dd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_5
    const-string v3, "yyyy-MM-dd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 36
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    .line 37
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 38
    :pswitch_0
    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {v0, v1, v2, p0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 39
    :pswitch_1
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v3

    .line 40
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v4

    .line 41
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v5

    .line 42
    sget-object v6, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH_T:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static/range {v0 .. v6}, Lcom/alibaba/fastjson2/util/DateUtils;->a(IIIIIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 43
    :pswitch_2
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v3

    .line 44
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v4

    .line 45
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v5

    .line 46
    sget-object v6, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static/range {v0 .. v6}, Lcom/alibaba/fastjson2/util/DateUtils;->a(IIIIIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 47
    :pswitch_3
    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_SLASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {v0, v1, v2, p0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 48
    :pswitch_4
    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->formatYMD10(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x985fe00 -> :sswitch_5
        -0x61c4540 -> :sswitch_4
        0x4f76f1a0 -> :sswitch_3
        0x6b2ed43a -> :sswitch_2
        0x6d5d7dd4 -> :sswitch_1
        0x7147a660 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static format(Ljava/time/ZonedDateTime;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getYear()I

    move-result v0

    .line 16
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getMonthValue()I

    move-result v1

    .line 17
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v2

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "dd.MM.yyyy"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_1
    const-string v3, "yyyy-MM-ddTHH:mm:ss"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_2
    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_3
    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_4
    const-string v3, "yyyy/MM/dd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_5
    const-string v3, "yyyy-MM-dd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 19
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    .line 20
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 21
    :pswitch_0
    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {v0, v1, v2, p0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 22
    :pswitch_1
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getHour()I

    move-result v3

    .line 23
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getMinute()I

    move-result v4

    .line 24
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getSecond()I

    move-result v5

    .line 25
    sget-object v6, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH_T:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static/range {v0 .. v6}, Lcom/alibaba/fastjson2/util/DateUtils;->a(IIIIIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 26
    :pswitch_2
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getHour()I

    move-result v3

    .line 27
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getMinute()I

    move-result v4

    .line 28
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getSecond()I

    move-result v5

    .line 29
    sget-object v6, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static/range {v0 .. v6}, Lcom/alibaba/fastjson2/util/DateUtils;->a(IIIIIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 30
    :pswitch_3
    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_SLASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {v0, v1, v2, p0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 31
    :pswitch_4
    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {v0, v1, v2, p0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(IIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x985fe00 -> :sswitch_5
        -0x61c4540 -> :sswitch_4
        0x4f76f1a0 -> :sswitch_3
        0x6b2ed43a -> :sswitch_2
        0x6d5d7dd4 -> :sswitch_1
        0x7147a660 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {v0, v1, p0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(JLcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "dd.MM.yyyy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "yyyy-MM-ddTHH:mm:ss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "dd.MM.yyyy HH:mm:ss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "yyyy/MM/dd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "yyyy-MM-dd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "yyyyMMdd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 3
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 4
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    .line 5
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-virtual {p0, v0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    .line 6
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(JLcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH_T:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(JLcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :pswitch_2
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(JLcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_3
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(JLcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :pswitch_4
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_SLASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->format(JLcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 13
    :pswitch_5
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->formatYMD10(JLjava/time/ZoneId;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 14
    :pswitch_6
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->formatYMD8(JLjava/time/ZoneId;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x10781ba0 -> :sswitch_7
        -0x985fe00 -> :sswitch_6
        -0x61c4540 -> :sswitch_5
        0x4f76f1a0 -> :sswitch_4
        0x534c3940 -> :sswitch_3
        0x6b2ed43a -> :sswitch_2
        0x6d5d7dd4 -> :sswitch_1
        0x7147a660 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static formatYMD10(III)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1, p0, p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([CIIII)I

    .line 2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static formatYMD10(JLjava/time/ZoneId;)Ljava/lang/String;
    .locals 25

    if-nez p2, :cond_0

    .line 5
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    goto :goto_0

    :cond_0
    move-object/from16 v0, p2

    :goto_0
    const-wide/16 v1, 0x3e8

    move-wide/from16 v3, p0

    .line 6
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v1

    .line 7
    sget-object v5, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_ID:Ljava/time/ZoneId;

    if-eq v0, v5, :cond_2

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v5

    sget-object v6, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_RULES:Ljava/time/zone/ZoneRules;

    if-ne v5, v6, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-static/range {p0 .. p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v3

    .line 9
    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    goto :goto_2

    .line 10
    :cond_2
    :goto_1
    invoke-static {v1, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->getShanghaiZoneOffsetTotalSeconds(J)I

    move-result v0

    :goto_2
    int-to-long v3, v0

    add-long/2addr v1, v3

    const-wide/32 v3, 0x15180

    .line 11
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    .line 12
    sget v2, Lcom/alibaba/fastjson2/util/DateUtils;->e:I

    int-to-long v2, v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x80

    add-long/2addr v2, v4

    long-to-int v2, v2

    .line 13
    sget-object v3, Lcom/alibaba/fastjson2/util/DateUtils$b;->a:[Ljava/lang/String;

    if-ltz v2, :cond_3

    .line 14
    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 15
    aget-object v4, v3, v2

    if-eqz v4, :cond_3

    return-object v4

    :cond_3
    const-wide/32 v4, 0xafaa8

    add-long/2addr v0, v4

    const-wide/16 v4, 0x3c

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    const-wide/16 v7, 0x1

    const-wide/32 v9, 0x23ab1

    const-wide/16 v11, 0x190

    if-gez v6, :cond_4

    add-long v13, v0, v7

    .line 16
    div-long/2addr v13, v9

    sub-long/2addr v13, v7

    mul-long v15, v13, v11

    neg-long v13, v13

    mul-long/2addr v13, v9

    add-long/2addr v0, v13

    goto :goto_3

    :cond_4
    move-wide v15, v4

    :goto_3
    mul-long v13, v0, v11

    const-wide/16 v17, 0x24f

    add-long v13, v13, v17

    .line 17
    div-long/2addr v13, v9

    const-wide/16 v9, 0x16d

    mul-long v17, v13, v9

    const-wide/16 v19, 0x4

    .line 18
    div-long v21, v13, v19

    add-long v17, v17, v21

    const-wide/16 v21, 0x64

    div-long v23, v13, v21

    sub-long v17, v17, v23

    div-long v23, v13, v11

    add-long v17, v17, v23

    sub-long v17, v0, v17

    cmp-long v4, v17, v4

    if-gez v4, :cond_5

    sub-long/2addr v13, v7

    mul-long/2addr v9, v13

    .line 19
    div-long v4, v13, v19

    add-long/2addr v9, v4

    div-long v4, v13, v21

    sub-long/2addr v9, v4

    div-long v4, v13, v11

    add-long/2addr v9, v4

    sub-long v17, v0, v9

    :cond_5
    move-wide/from16 v0, v17

    add-long/2addr v13, v15

    long-to-int v0, v0

    mul-int/lit8 v1, v0, 0x5

    add-int/lit8 v1, v1, 0x2

    .line 20
    div-int/lit16 v1, v1, 0x99

    add-int/lit8 v4, v1, 0x2

    .line 21
    rem-int/lit8 v4, v4, 0xc

    add-int/lit8 v4, v4, 0x1

    mul-int/lit16 v5, v1, 0x132

    add-int/lit8 v5, v5, 0x5

    const/16 v6, 0xa

    .line 22
    div-int/2addr v5, v6

    sub-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x1

    .line 23
    div-int/2addr v1, v6

    int-to-long v7, v1

    add-long/2addr v13, v7

    const-wide/32 v7, -0x3b9ac9ff

    cmp-long v1, v13, v7

    if-ltz v1, :cond_7

    const-wide/32 v7, 0x3b9ac9ff

    cmp-long v1, v13, v7

    if-gtz v1, :cond_7

    long-to-int v1, v13

    new-array v5, v6, [C

    const/4 v6, 0x0

    .line 24
    invoke-static {v5, v6, v1, v4, v0}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([CIIII)I

    .line 25
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    if-ltz v2, :cond_6

    .line 26
    array-length v1, v3

    if-ge v2, v1, :cond_6

    .line 27
    aput-object v0, v3, v2

    :cond_6
    return-object v0

    .line 28
    :cond_7
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid year "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static formatYMD10(Ljava/time/LocalDate;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v1

    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/alibaba/fastjson2/util/DateUtils;->formatYMD10(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMD10(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {v0, v1, p0}, Lcom/alibaba/fastjson2/util/DateUtils;->formatYMD10(JLjava/time/ZoneId;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMD8(JLjava/time/ZoneId;)Ljava/lang/String;
    .locals 25

    const-wide/16 v0, 0x3e8

    move-wide/from16 v2, p0

    .line 2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    if-nez p2, :cond_0

    .line 3
    sget-object v4, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    .line 4
    :goto_0
    sget-object v5, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_ID:Ljava/time/ZoneId;

    if-eq v4, v5, :cond_2

    invoke-virtual {v4}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v5

    sget-object v6, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_RULES:Ljava/time/zone/ZoneRules;

    if-ne v5, v6, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-static/range {p0 .. p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    .line 6
    invoke-virtual {v4}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    goto :goto_2

    .line 7
    :cond_2
    :goto_1
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->getShanghaiZoneOffsetTotalSeconds(J)I

    move-result v2

    :goto_2
    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x15180

    .line 8
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    .line 9
    sget v2, Lcom/alibaba/fastjson2/util/DateUtils;->e:I

    int-to-long v2, v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x80

    add-long/2addr v2, v4

    long-to-int v2, v2

    .line 10
    sget-object v3, Lcom/alibaba/fastjson2/util/DateUtils$c;->a:[Ljava/lang/String;

    if-ltz v2, :cond_3

    .line 11
    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 12
    aget-object v4, v3, v2

    if-eqz v4, :cond_3

    return-object v4

    :cond_3
    const-wide/32 v4, 0xafaa8

    add-long/2addr v0, v4

    const-wide/16 v4, 0x3c

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    const-wide/16 v7, 0x1

    const-wide/32 v9, 0x23ab1

    const-wide/16 v11, 0x190

    if-gez v6, :cond_4

    add-long v13, v0, v7

    .line 13
    div-long/2addr v13, v9

    sub-long/2addr v13, v7

    mul-long v15, v13, v11

    neg-long v13, v13

    mul-long/2addr v13, v9

    add-long/2addr v0, v13

    goto :goto_3

    :cond_4
    move-wide v15, v4

    :goto_3
    mul-long v13, v0, v11

    const-wide/16 v17, 0x24f

    add-long v13, v13, v17

    .line 14
    div-long/2addr v13, v9

    const-wide/16 v9, 0x16d

    mul-long v17, v13, v9

    const-wide/16 v19, 0x4

    .line 15
    div-long v21, v13, v19

    add-long v17, v17, v21

    const-wide/16 v21, 0x64

    div-long v23, v13, v21

    sub-long v17, v17, v23

    div-long v23, v13, v11

    add-long v17, v17, v23

    sub-long v17, v0, v17

    cmp-long v4, v17, v4

    if-gez v4, :cond_5

    sub-long/2addr v13, v7

    mul-long/2addr v9, v13

    .line 16
    div-long v4, v13, v19

    add-long/2addr v9, v4

    div-long v4, v13, v21

    sub-long/2addr v9, v4

    div-long v4, v13, v11

    add-long/2addr v9, v4

    sub-long v17, v0, v9

    :cond_5
    move-wide/from16 v0, v17

    add-long/2addr v13, v15

    long-to-int v0, v0

    mul-int/lit8 v1, v0, 0x5

    add-int/lit8 v1, v1, 0x2

    .line 17
    div-int/lit16 v1, v1, 0x99

    add-int/lit8 v4, v1, 0x2

    .line 18
    rem-int/lit8 v4, v4, 0xc

    add-int/lit8 v4, v4, 0x1

    mul-int/lit16 v5, v1, 0x132

    add-int/lit8 v5, v5, 0x5

    .line 19
    div-int/lit8 v5, v5, 0xa

    sub-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x1

    .line 20
    div-int/lit8 v1, v1, 0xa

    int-to-long v5, v1

    add-long/2addr v13, v5

    const-wide/32 v5, -0x3b9ac9ff

    cmp-long v1, v13, v5

    if-ltz v1, :cond_7

    const-wide/32 v5, 0x3b9ac9ff

    cmp-long v1, v13, v5

    if-gtz v1, :cond_7

    long-to-int v1, v13

    .line 21
    div-int/lit8 v5, v1, 0x64

    mul-int/lit8 v6, v5, 0x64

    sub-int/2addr v1, v6

    const/16 v6, 0x8

    new-array v6, v6, [C

    .line 22
    sget-object v7, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v8, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    sget-object v10, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget v5, v10, v5

    invoke-virtual {v7, v6, v8, v9, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-long v11, v8, v19

    .line 23
    aget v1, v10, v1

    invoke-virtual {v7, v6, v11, v12, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const-wide/16 v11, 0x8

    add-long/2addr v11, v8

    .line 24
    aget v1, v10, v4

    invoke-virtual {v7, v6, v11, v12, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const-wide/16 v4, 0xc

    add-long/2addr v8, v4

    .line 25
    aget v0, v10, v0

    invoke-virtual {v7, v6, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 26
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([C)V

    if-ltz v2, :cond_6

    .line 27
    array-length v1, v3

    if-ge v2, v1, :cond_6

    .line 28
    aput-object v0, v3, v2

    :cond_6
    return-object v0

    .line 29
    :cond_7
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid year "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static formatYMD8(Ljava/time/LocalDate;)Ljava/lang/String;
    .locals 10

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 30
    :cond_0
    invoke-virtual {p0}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    .line 31
    invoke-virtual {p0}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v1

    .line 32
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result p0

    .line 33
    div-int/lit8 v2, v0, 0x64

    mul-int/lit8 v3, v2, 0x64

    sub-int/2addr v0, v3

    const/16 v3, 0x8

    new-array v3, v3, [C

    .line 34
    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    sget-object v7, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget v2, v7, v2

    invoke-virtual {v4, v3, v5, v6, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const-wide/16 v8, 0x4

    add-long/2addr v8, v5

    .line 35
    aget v0, v7, v0

    invoke-virtual {v4, v3, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const-wide/16 v8, 0x8

    add-long/2addr v8, v5

    .line 36
    aget v0, v7, v1

    invoke-virtual {v4, v3, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const-wide/16 v0, 0xc

    add-long/2addr v5, v0

    .line 37
    aget p0, v7, p0

    invoke-virtual {v4, v3, v5, v6, p0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 38
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static formatYMD8(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {v0, v1, p0}, Lcom/alibaba/fastjson2/util/DateUtils;->formatYMD8(JLjava/time/ZoneId;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMDHMS19(Ljava/time/LocalDate;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 41
    :cond_0
    invoke-virtual {p0}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    .line 42
    invoke-virtual {p0}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v1

    .line 43
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result p0

    const/16 v2, 0x13

    new-array v2, v2, [C

    const/4 v3, 0x0

    .line 44
    invoke-static {v2, v3, v0, v1, p0}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([CIIII)I

    const/16 p0, 0xa

    const/16 v0, 0x20

    aput-char v0, v2, p0

    const/16 p0, 0xb

    .line 45
    invoke-static {v2, p0, v3, v3, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([CIIII)V

    .line 46
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static formatYMDHMS19(Ljava/time/LocalDateTime;)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 32
    :cond_0
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    .line 33
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v1

    .line 34
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    .line 35
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v3

    .line 36
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v4

    .line 37
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result p0

    const/16 v5, 0x13

    new-array v5, v5, [C

    const/4 v6, 0x0

    .line 38
    invoke-static {v5, v6, v0, v1, v2}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([CIIII)I

    const/16 v0, 0xa

    const/16 v1, 0x20

    aput-char v1, v5, v0

    const/16 v0, 0xb

    .line 39
    invoke-static {v5, v0, v3, v4, p0}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([CIIII)V

    .line 40
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v5}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static formatYMDHMS19(Ljava/time/ZonedDateTime;)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 25
    :cond_0
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getYear()I

    move-result v0

    .line 26
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getMonthValue()I

    move-result v1

    .line 27
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v2

    .line 28
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getHour()I

    move-result v3

    .line 29
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getMinute()I

    move-result v4

    .line 30
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getSecond()I

    move-result v5

    .line 31
    sget-object v6, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static/range {v0 .. v6}, Lcom/alibaba/fastjson2/util/DateUtils;->a(IIIIIILcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMDHMS19(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->formatYMDHMS19(Ljava/util/Date;Ljava/time/ZoneId;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMDHMS19(Ljava/util/Date;Ljava/time/ZoneId;)Ljava/lang/String;
    .locals 26

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    if-nez p1, :cond_1

    .line 3
    sget-object v2, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    goto :goto_0

    :cond_1
    move-object/from16 v2, p1

    :goto_0
    const-wide/16 v3, 0x3e8

    .line 4
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v3

    .line 5
    sget-object v5, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_ID:Ljava/time/ZoneId;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v5, :cond_3

    invoke-virtual {v2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v5

    sget-object v8, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_RULES:Ljava/time/zone/ZoneRules;

    if-ne v5, v8, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v7

    :goto_2
    if-eqz v5, :cond_4

    const-wide/32 v8, 0x28d2bea0

    cmp-long v5, v3, v8

    if-lez v5, :cond_4

    const/16 v0, 0x7080

    goto :goto_3

    .line 6
    :cond_4
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 7
    invoke-virtual {v2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    :goto_3
    int-to-long v0, v0

    add-long/2addr v3, v0

    const-wide/32 v0, 0x15180

    .line 8
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v8

    .line 9
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    const-wide/32 v1, 0xafaa8

    add-long/2addr v8, v1

    const-wide/16 v1, 0x3c

    sub-long/2addr v8, v1

    const-wide/16 v3, 0x0

    cmp-long v5, v8, v3

    const-wide/16 v10, 0x1

    const-wide/32 v12, 0x23ab1

    const-wide/16 v14, 0x190

    if-gez v5, :cond_5

    add-long v16, v8, v10

    .line 10
    div-long v16, v16, v12

    sub-long v1, v16, v10

    mul-long v16, v1, v14

    neg-long v1, v1

    mul-long/2addr v1, v12

    add-long/2addr v8, v1

    goto :goto_4

    :cond_5
    move-wide/from16 v16, v3

    :goto_4
    mul-long v1, v8, v14

    const-wide/16 v18, 0x24f

    add-long v1, v1, v18

    .line 11
    div-long/2addr v1, v12

    const-wide/16 v12, 0x16d

    mul-long v18, v1, v12

    const-wide/16 v20, 0x4

    .line 12
    div-long v22, v1, v20

    add-long v18, v18, v22

    const-wide/16 v22, 0x64

    div-long v24, v1, v22

    sub-long v18, v18, v24

    div-long v24, v1, v14

    add-long v18, v18, v24

    sub-long v18, v8, v18

    cmp-long v5, v18, v3

    if-gez v5, :cond_6

    sub-long/2addr v1, v10

    mul-long/2addr v12, v1

    .line 13
    div-long v10, v1, v20

    add-long/2addr v12, v10

    div-long v10, v1, v22

    sub-long/2addr v12, v10

    div-long v10, v1, v14

    add-long/2addr v12, v10

    sub-long v18, v8, v12

    :cond_6
    move-wide/from16 v8, v18

    add-long v1, v1, v16

    long-to-int v5, v8

    mul-int/lit8 v8, v5, 0x5

    add-int/lit8 v8, v8, 0x2

    .line 14
    div-int/lit16 v8, v8, 0x99

    add-int/lit8 v9, v8, 0x2

    .line 15
    rem-int/lit8 v9, v9, 0xc

    add-int/2addr v9, v7

    mul-int/lit16 v10, v8, 0x132

    add-int/lit8 v10, v10, 0x5

    const/16 v11, 0xa

    .line 16
    div-int/2addr v10, v11

    sub-int/2addr v5, v10

    add-int/2addr v5, v7

    .line 17
    div-int/2addr v8, v11

    int-to-long v7, v8

    add-long/2addr v1, v7

    const-wide/32 v7, -0x3b9ac9ff

    cmp-long v7, v1, v7

    if-ltz v7, :cond_8

    const-wide/32 v7, 0x3b9ac9ff

    cmp-long v7, v1, v7

    if-gtz v7, :cond_8

    long-to-int v1, v1

    int-to-long v7, v0

    cmp-long v0, v7, v3

    if-ltz v0, :cond_7

    const-wide/32 v2, 0x1517f

    cmp-long v0, v7, v2

    if-gtz v0, :cond_7

    const-wide/16 v2, 0xe10

    .line 18
    div-long v2, v7, v2

    long-to-int v0, v2

    mul-int/lit16 v2, v0, 0xe10

    int-to-long v2, v2

    sub-long/2addr v7, v2

    const-wide/16 v2, 0x3c

    .line 19
    div-long v2, v7, v2

    long-to-int v2, v2

    mul-int/lit8 v3, v2, 0x3c

    int-to-long v3, v3

    sub-long/2addr v7, v3

    long-to-int v3, v7

    const/16 v4, 0x13

    new-array v4, v4, [C

    .line 20
    invoke-static {v4, v6, v1, v9, v5}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([CIIII)I

    const/16 v1, 0x20

    aput-char v1, v4, v11

    const/16 v1, 0xb

    .line 21
    invoke-static {v4, v1, v0, v2, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([CIIII)V

    .line 22
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 23
    :cond_7
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid secondOfDay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_8
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid year "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getShanghaiZoneOffsetTotalSeconds(J)I
    .locals 5

    const-wide/32 v0, 0x28d2bea0

    cmp-long v0, p0, v0

    const/16 v1, 0x7080

    if-ltz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-wide/32 v2, 0x2807c5b0

    cmp-long v0, p0, v2

    const/16 v2, 0x7e90

    if-ltz v0, :cond_1

    :goto_0
    move v1, v2

    goto/16 :goto_1

    :cond_1
    const-wide/32 v3, 0x26f2dca0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    const-wide/32 v3, 0x2627e3b0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_3

    goto :goto_0

    :cond_3
    const-wide/32 v3, 0x2512faa0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_4

    goto/16 :goto_1

    :cond_4
    const-wide/32 v3, 0x244801b0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_5

    goto :goto_0

    :cond_5
    const-wide/32 v3, 0x2329de20

    cmp-long v0, p0, v3

    if-ltz v0, :cond_6

    goto/16 :goto_1

    :cond_6
    const-wide/32 v3, 0x22681fb0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_7

    goto :goto_0

    :cond_7
    const-wide/32 v3, 0x2149fc20

    cmp-long v0, p0, v3

    if-ltz v0, :cond_8

    goto/16 :goto_1

    :cond_8
    const-wide/32 v3, 0x207f0330

    cmp-long v0, p0, v3

    if-ltz v0, :cond_9

    goto :goto_0

    :cond_9
    const-wide/32 v3, 0x1f6a1a20

    cmp-long v0, p0, v3

    if-ltz v0, :cond_a

    goto/16 :goto_1

    :cond_a
    const-wide/32 v3, 0x1ebad0b0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_b

    goto :goto_0

    :cond_b
    const-wide/32 v3, -0x26be0480

    cmp-long v0, p0, v3

    if-ltz v0, :cond_c

    goto/16 :goto_1

    :cond_c
    const-wide/32 v3, -0x26e18ef0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_d

    goto :goto_0

    :cond_d
    const-wide/32 v3, -0x27f91b00

    cmp-long v0, p0, v3

    if-ltz v0, :cond_e

    goto/16 :goto_1

    :cond_e
    const-wide/32 v3, -0x28c2c270

    cmp-long v0, p0, v3

    if-ltz v0, :cond_f

    goto :goto_0

    :cond_f
    const-wide/32 v3, -0x29b2c180

    cmp-long v0, p0, v3

    if-ltz v0, :cond_10

    goto/16 :goto_1

    :cond_10
    const-wide/32 v3, -0x2aba5f70

    cmp-long v0, p0, v3

    if-ltz v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const-wide/32 v3, -0x2bbcd380

    cmp-long v0, p0, v3

    if-ltz v0, :cond_12

    goto :goto_1

    :cond_12
    const-wide/32 v3, -0x2c7405f0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const-wide/32 v3, -0x2dc44280

    cmp-long v0, p0, v3

    if-ltz v0, :cond_14

    goto :goto_1

    :cond_14
    const-wide/32 v3, -0x34834170

    cmp-long v0, p0, v3

    if-ltz v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const-wide/32 v3, -0x34f9f680

    cmp-long v0, p0, v3

    if-ltz v0, :cond_16

    goto :goto_1

    :cond_16
    const-wide/32 v3, -0x362bc470

    cmp-long v0, p0, v3

    if-ltz v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const-wide/32 v3, -0x36f58800

    cmp-long v0, p0, v3

    if-ltz v0, :cond_18

    goto :goto_1

    :cond_18
    const-wide/32 v3, -0x37a622f0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_19

    goto/16 :goto_0

    :cond_19
    const-wide/32 v3, -0x5e867c80

    cmp-long v0, p0, v3

    if-ltz v0, :cond_1a

    goto :goto_1

    :cond_1a
    const-wide/32 v3, -0x5f67def0

    cmp-long v0, p0, v3

    if-ltz v0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const-wide v2, -0x81c94b00L

    cmp-long p0, p0, v2

    if-ltz p0, :cond_1c

    goto :goto_1

    :cond_1c
    const/16 v1, 0x71d7

    :goto_1
    return v1
.end method

.method public static getZoneId(Ljava/lang/String;Ljava/time/ZoneId;)Ljava/time/ZoneId;
    .locals 3

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string p1, "+08:00"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string p1, "CST"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_1

    :sswitch_2
    const-string p1, "000"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v0

    :goto_1
    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0x5d

    if-lez p1, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_5

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_6

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v2, :cond_6

    invoke-static {p0}, Ljava/time/ZoneOffset;->of(Ljava/lang/String;)Ljava/time/ZoneOffset;

    move-result-object p0

    goto :goto_2

    :cond_6
    const/16 p1, 0x5b

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-lez p1, :cond_7

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lez v0, :cond_7

    add-int/2addr p1, v1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p0

    goto :goto_2

    :cond_7
    invoke-static {p0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p0

    goto :goto_2

    :pswitch_0
    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils;->OFFSET_8_ZONE_ID:Ljava/time/ZoneId;

    goto :goto_2

    :pswitch_1
    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_ID:Ljava/time/ZoneId;

    goto :goto_2

    :pswitch_2
    sget-object p0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    :goto_2
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0xba30 -> :sswitch_2
        0x105e4 -> :sswitch_1
        0x4c1f1f67 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hourAfterNoon(CC)I
    .locals 5

    const/16 v0, 0x34

    const/16 v1, 0x33

    const/16 v2, 0x32

    const/16 v3, 0x31

    const/16 v4, 0x30

    if-ne p0, v4, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    move p0, v2

    move p1, v3

    goto :goto_2

    :pswitch_1
    move p0, v2

    move p1, v4

    goto :goto_2

    :pswitch_2
    const/16 p1, 0x39

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x38

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x37

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x36

    goto :goto_0

    :pswitch_6
    const/16 p1, 0x35

    goto :goto_0

    :pswitch_7
    move p1, v0

    goto :goto_0

    :pswitch_8
    move p1, v1

    goto :goto_0

    :pswitch_9
    move p1, v2

    :goto_0
    move p0, v3

    goto :goto_2

    :cond_0
    if-ne p0, v3, :cond_1

    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :pswitch_a
    move p1, v0

    goto :goto_1

    :pswitch_b
    move p1, v1

    :goto_1
    move p0, v2

    goto :goto_2

    :pswitch_c
    move p0, v2

    move p1, p0

    :cond_1
    :goto_2
    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_9
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

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public static isDate(Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x13

    const/4 v4, 0x1

    if-ne v2, v3, :cond_e

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2d

    if-ne v3, v5, :cond_e

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_e

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_1

    const/16 v6, 0x54

    if-ne v5, v6, :cond_e

    :cond_1
    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_e

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_e

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/4 v11, 0x5

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/4 v12, 0x6

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x8

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x9

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v9, 0xb

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v9, 0xc

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0xf

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v9, 0x12

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v9, 0x30

    if-lt v5, v9, :cond_d

    const/16 v3, 0x39

    if-gt v5, v3, :cond_d

    if-lt v6, v9, :cond_d

    if-gt v6, v3, :cond_d

    if-lt v8, v9, :cond_d

    if-gt v8, v3, :cond_d

    if-lt v10, v9, :cond_d

    if-gt v10, v3, :cond_d

    if-lt v11, v9, :cond_d

    if-gt v11, v3, :cond_d

    if-lt v13, v9, :cond_d

    if-gt v13, v3, :cond_d

    if-lt v14, v9, :cond_d

    if-gt v14, v3, :cond_d

    if-lt v4, v9, :cond_d

    if-gt v4, v3, :cond_d

    if-lt v15, v9, :cond_d

    if-gt v15, v3, :cond_d

    if-lt v12, v9, :cond_d

    if-gt v12, v3, :cond_d

    if-lt v2, v9, :cond_d

    if-gt v2, v3, :cond_d

    if-lt v7, v9, :cond_d

    if-gt v7, v3, :cond_d

    if-lt v1, v9, :cond_d

    if-gt v1, v3, :cond_d

    if-lt v0, v9, :cond_d

    if-le v0, v3, :cond_2

    goto/16 :goto_4

    :cond_2
    sub-int/2addr v5, v9

    mul-int/lit16 v5, v5, 0x3e8

    sub-int/2addr v6, v9

    mul-int/lit8 v6, v6, 0x64

    add-int/2addr v5, v6

    sub-int/2addr v8, v9

    const/16 v3, 0xa

    mul-int/2addr v8, v3

    add-int/2addr v5, v8

    sub-int/2addr v10, v9

    add-int/2addr v5, v10

    sub-int/2addr v11, v9

    mul-int/2addr v11, v3

    sub-int/2addr v13, v9

    add-int/2addr v11, v13

    sub-int/2addr v14, v9

    mul-int/2addr v14, v3

    sub-int/2addr v4, v9

    add-int/2addr v14, v4

    sub-int/2addr v15, v9

    mul-int/2addr v15, v3

    sub-int/2addr v12, v9

    add-int/2addr v15, v12

    sub-int/2addr v2, v9

    mul-int/2addr v2, v3

    sub-int/2addr v7, v9

    add-int/2addr v2, v7

    sub-int/2addr v1, v9

    mul-int/2addr v1, v3

    sub-int/2addr v0, v9

    add-int/2addr v1, v0

    const/16 v0, 0xc

    if-le v11, v0, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    const/16 v0, 0x1c

    if-le v14, v0, :cond_9

    const/4 v3, 0x2

    if-eq v11, v3, :cond_5

    const/4 v3, 0x4

    if-eq v11, v3, :cond_4

    const/4 v0, 0x6

    if-eq v11, v0, :cond_4

    const/16 v0, 0x9

    if-eq v11, v0, :cond_4

    const/16 v0, 0xb

    if-eq v11, v0, :cond_4

    const/16 v0, 0x1f

    goto :goto_2

    :cond_4
    const/16 v0, 0x1e

    goto :goto_2

    :cond_5
    and-int/lit8 v3, v5, 0xf

    if-nez v3, :cond_6

    const/4 v3, 0x3

    and-int/2addr v3, v5

    if-nez v3, :cond_7

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    and-int/lit8 v3, v5, 0x3

    if-nez v3, :cond_7

    rem-int/lit8 v5, v5, 0x64

    if-eqz v5, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_8

    const/16 v0, 0x1d

    :cond_8
    :goto_2
    if-le v14, v0, :cond_9

    const/4 v0, 0x0

    return v0

    :cond_9
    const/4 v0, 0x0

    const/16 v3, 0x18

    if-le v15, v3, :cond_a

    return v0

    :cond_a
    const/16 v3, 0x3c

    if-le v2, v3, :cond_b

    return v0

    :cond_b
    const/16 v0, 0x3d

    if-gt v1, v0, :cond_c

    const/4 v1, 0x1

    goto :goto_3

    :cond_c
    const/4 v1, 0x0

    :goto_3
    return v1

    :cond_d
    :goto_4
    const/4 v0, 0x0

    return v0

    :cond_e
    :try_start_0
    sget-object v1, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis(Ljava/lang/String;Ljava/time/ZoneId;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    goto :goto_5

    :cond_f
    const/4 v1, 0x0

    :goto_5
    return v1

    :catch_0
    const/4 v0, 0x0

    return v0

    :cond_10
    :goto_6
    move v0, v1

    return v0
.end method

.method public static isLocalDate(Ljava/lang/String;)Z
    .locals 15

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-ne v1, v3, :cond_9

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_9

    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_9

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/4 v11, 0x5

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/4 v12, 0x6

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x8

    invoke-virtual {p0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    add-int/lit8 v5, v5, -0x30

    mul-int/lit16 v5, v5, 0x3e8

    add-int/lit8 v6, v6, -0x30

    mul-int/lit8 v6, v6, 0x64

    add-int/2addr v5, v6

    add-int/lit8 v8, v8, -0x30

    mul-int/2addr v8, v3

    add-int/2addr v5, v8

    add-int/lit8 v10, v10, -0x30

    add-int/2addr v5, v10

    add-int/lit8 v11, v11, -0x30

    mul-int/2addr v11, v3

    add-int/lit8 v13, v13, -0x30

    add-int/2addr v11, v13

    add-int/lit8 v14, v14, -0x30

    mul-int/2addr v14, v3

    add-int/lit8 p0, p0, -0x30

    add-int/2addr v14, p0

    const/16 p0, 0xc

    if-le v11, p0, :cond_1

    return v0

    :cond_1
    const/16 p0, 0x1c

    if-le v14, p0, :cond_8

    if-eq v11, v7, :cond_3

    if-eq v11, v1, :cond_2

    if-eq v11, v12, :cond_2

    if-eq v11, v2, :cond_2

    const/16 p0, 0xb

    if-eq v11, p0, :cond_2

    const/16 p0, 0x1f

    goto :goto_2

    :cond_2
    const/16 p0, 0x1e

    goto :goto_2

    :cond_3
    and-int/lit8 v1, v5, 0xf

    if-nez v1, :cond_4

    and-int/lit8 v1, v5, 0x3

    if-nez v1, :cond_5

    :goto_0
    move v1, v4

    goto :goto_1

    :cond_4
    and-int/lit8 v1, v5, 0x3

    if-nez v1, :cond_5

    rem-int/lit8 v5, v5, 0x64

    if-eqz v5, :cond_5

    goto :goto_0

    :cond_5
    move v1, v0

    :goto_1
    if-eqz v1, :cond_6

    const/16 p0, 0x1d

    :cond_6
    :goto_2
    if-gt v14, p0, :cond_7

    move v0, v4

    :cond_7
    return v0

    :cond_8
    return v4

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x28

    if-le v1, v2, :cond_a

    goto :goto_3

    :cond_a
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate(Ljava/lang/String;)Ljava/time/LocalDate;

    move-result-object p0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_b

    move v0, v4

    :catch_0
    :cond_b
    :goto_3
    return v0
.end method

.method public static isLocalTime(Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_4

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x6

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, 0x7

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v7, 0x30

    if-lt v1, v7, :cond_3

    const/16 v8, 0x32

    if-gt v1, v8, :cond_3

    if-lt v2, v7, :cond_3

    const/16 v8, 0x39

    if-gt v2, v8, :cond_3

    if-lt v4, v7, :cond_3

    const/16 v9, 0x36

    if-gt v4, v9, :cond_3

    if-lt v5, v7, :cond_3

    if-gt v5, v8, :cond_3

    if-lt v6, v7, :cond_3

    if-gt v6, v9, :cond_3

    if-lt p0, v7, :cond_3

    if-gt p0, v8, :cond_3

    sub-int/2addr v1, v7

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v2, v7

    add-int/2addr v1, v2

    const/16 v2, 0x18

    if-le v1, v2, :cond_1

    return v0

    :cond_1
    sub-int/2addr v4, v7

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v5, v7

    add-int/2addr v4, v5

    const/16 v1, 0x3c

    if-le v4, v1, :cond_2

    return v0

    :cond_2
    sub-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr p0, v7

    add-int/2addr v6, p0

    const/16 p0, 0x3d

    if-gt v6, p0, :cond_3

    move v0, v3

    :cond_3
    return v0

    :cond_4
    :try_start_0
    invoke-static {p0}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    :cond_5
    :goto_0
    return v0
.end method

.method public static localDateTime(CCCCCCCCCCCCCC)Ljava/time/LocalDateTime;
    .locals 16

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    const/16 v15, 0x30

    if-lt v0, v15, :cond_8

    const/16 v14, 0x39

    if-gt v0, v14, :cond_8

    if-lt v1, v15, :cond_8

    if-gt v1, v14, :cond_8

    if-lt v2, v15, :cond_8

    if-gt v2, v14, :cond_8

    if-lt v3, v15, :cond_8

    if-gt v3, v14, :cond_8

    sub-int/2addr v0, v15

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v15

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    add-int/lit8 v1, v3, -0x30

    add-int/2addr v0, v1

    if-lt v4, v15, :cond_7

    if-gt v4, v14, :cond_7

    if-lt v5, v15, :cond_7

    if-gt v5, v14, :cond_7

    add-int/lit8 v1, v4, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, v5, -0x30

    add-int/2addr v1, v2

    if-lt v6, v15, :cond_6

    if-gt v6, v14, :cond_6

    if-lt v7, v15, :cond_6

    if-gt v7, v14, :cond_6

    add-int/lit8 v2, v6, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v7, -0x30

    add-int/2addr v2, v3

    if-lt v8, v15, :cond_5

    if-gt v8, v14, :cond_5

    if-lt v9, v15, :cond_5

    if-gt v9, v14, :cond_5

    add-int/lit8 v3, v8, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, v9, -0x30

    add-int/2addr v3, v4

    if-lt v10, v15, :cond_4

    if-gt v10, v14, :cond_4

    if-lt v11, v15, :cond_4

    if-gt v11, v14, :cond_4

    add-int/lit8 v4, v10, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v5, v11, -0x30

    add-int/2addr v4, v5

    if-lt v12, v15, :cond_3

    if-gt v12, v14, :cond_3

    if-lt v13, v15, :cond_3

    if-gt v13, v14, :cond_3

    add-int/lit8 v5, v12, -0x30

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v6, v13, -0x30

    add-int/2addr v5, v6

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    const/4 v6, 0x0

    return-object v6

    :cond_0
    const/16 v6, 0x18

    if-gt v3, v6, :cond_2

    const/16 v6, 0x3c

    if-gt v4, v6, :cond_2

    if-le v5, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    move/from16 p0, v0

    move/from16 p1, v1

    move/from16 p2, v2

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    .line 1
    invoke-static/range {p0 .. p6}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0

    :cond_6
    const/4 v0, 0x0

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0

    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public static localDateTime(CCCCCCCCCCCCCCCCCCCCCCC)Ljava/time/LocalDateTime;
    .locals 17

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    const/16 v16, 0x0

    const/16 v15, 0x30

    if-lt v0, v15, :cond_0

    const/16 v14, 0x39

    if-gt v0, v14, :cond_0

    if-lt v1, v15, :cond_0

    if-gt v1, v14, :cond_0

    if-lt v2, v15, :cond_0

    if-gt v2, v14, :cond_0

    if-lt v3, v15, :cond_0

    if-gt v3, v14, :cond_0

    sub-int/2addr v0, v15

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v15

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    add-int/lit8 v1, v3, -0x30

    add-int/2addr v0, v1

    if-lt v4, v15, :cond_0

    if-gt v4, v14, :cond_0

    if-lt v5, v15, :cond_0

    if-gt v5, v14, :cond_0

    add-int/lit8 v1, v4, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, v5, -0x30

    add-int/2addr v1, v2

    if-lt v6, v15, :cond_0

    if-gt v6, v14, :cond_0

    if-lt v7, v15, :cond_0

    if-gt v7, v14, :cond_0

    add-int/lit8 v2, v6, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v7, -0x30

    add-int/2addr v2, v3

    if-lt v8, v15, :cond_0

    if-gt v8, v14, :cond_0

    if-lt v9, v15, :cond_0

    if-gt v9, v14, :cond_0

    add-int/lit8 v3, v8, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, v9, -0x30

    add-int/2addr v3, v4

    if-lt v10, v15, :cond_0

    if-gt v10, v14, :cond_0

    if-lt v11, v15, :cond_0

    if-gt v11, v14, :cond_0

    add-int/lit8 v4, v10, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v5, v11, -0x30

    add-int/2addr v4, v5

    if-lt v12, v15, :cond_0

    if-gt v12, v14, :cond_0

    if-lt v13, v15, :cond_0

    if-gt v13, v14, :cond_0

    add-int/lit8 v5, v12, -0x30

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v6, v13, -0x30

    add-int/2addr v5, v6

    move/from16 v6, p14

    move v7, v14

    if-lt v6, v15, :cond_0

    if-gt v6, v7, :cond_0

    move/from16 v8, p15

    move v9, v15

    if-lt v8, v9, :cond_0

    if-gt v8, v7, :cond_0

    move/from16 v10, p16

    if-lt v10, v9, :cond_0

    if-gt v10, v7, :cond_0

    move/from16 v11, p17

    if-lt v11, v9, :cond_0

    if-gt v11, v7, :cond_0

    move/from16 v12, p18

    if-lt v12, v9, :cond_0

    if-gt v12, v7, :cond_0

    move/from16 v13, p19

    if-lt v13, v9, :cond_0

    if-gt v13, v7, :cond_0

    move/from16 v14, p20

    if-lt v14, v9, :cond_0

    if-gt v14, v7, :cond_0

    move/from16 v15, p21

    if-lt v15, v9, :cond_0

    if-gt v15, v7, :cond_0

    move/from16 p5, v5

    move/from16 v5, p22

    if-lt v5, v9, :cond_0

    if-gt v5, v7, :cond_0

    sub-int/2addr v6, v9

    const v7, 0x5f5e100

    mul-int/2addr v6, v7

    add-int/lit8 v7, v8, -0x30

    const v8, 0x989680

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v7, v10, -0x30

    const v8, 0xf4240

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v7, v11, -0x30

    const v8, 0x186a0

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v7, v12, -0x30

    mul-int/lit16 v7, v7, 0x2710

    add-int/2addr v6, v7

    add-int/lit8 v7, v13, -0x30

    mul-int/lit16 v7, v7, 0x3e8

    add-int/2addr v6, v7

    add-int/lit8 v7, v14, -0x30

    mul-int/lit8 v7, v7, 0x64

    add-int/2addr v6, v7

    add-int/lit8 v7, v15, -0x30

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v6, v7

    sub-int/2addr v5, v9

    add-int/2addr v5, v6

    move/from16 p0, v0

    move/from16 p1, v1

    move/from16 p2, v2

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p6, v5

    .line 2
    invoke-static/range {p0 .. p6}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v16
.end method

.method public static millis(Ljava/time/LocalDateTime;)J
    .locals 8

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getYear()I

    move-result v1

    .line 2
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v2

    .line 3
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v3

    .line 4
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v4

    .line 5
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v5

    .line 6
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v6

    .line 7
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v7

    .line 8
    invoke-static/range {v0 .. v7}, Lcom/alibaba/fastjson2/util/DateUtils;->millis(Ljava/time/ZoneId;IIIIIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static millis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J
    .locals 8

    .line 9
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getYear()I

    move-result v1

    .line 10
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v2

    .line 11
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v3

    .line 12
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v4

    .line 13
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v5

    .line 14
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v6

    .line 15
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v7

    move-object v0, p1

    .line 16
    invoke-static/range {v0 .. v7}, Lcom/alibaba/fastjson2/util/DateUtils;->millis(Ljava/time/ZoneId;IIIIIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static millis(Ljava/time/ZoneId;IIIIIII)J
    .locals 7

    if-nez p0, :cond_0

    .line 17
    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    :cond_0
    mul-int/lit16 v0, p1, 0x16d

    add-int/lit8 v1, p1, 0x3

    .line 18
    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, p1, 0x63

    div-int/lit8 v2, v2, 0x64

    sub-int/2addr v1, v2

    add-int/lit16 v2, p1, 0x18f

    div-int/lit16 v2, v2, 0x190

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit16 v1, p2, 0x16f

    add-int/lit16 v1, v1, -0x16a

    div-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    add-int/lit8 v1, p3, -0x1

    add-int/2addr v0, v1

    int-to-long v0, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le p2, v2, :cond_3

    const-wide/16 v5, 0x1

    sub-long/2addr v0, v5

    and-int/lit8 v2, p1, 0x3

    if-nez v2, :cond_2

    .line 19
    rem-int/lit8 v2, p1, 0x64

    if-nez v2, :cond_1

    rem-int/lit16 v2, p1, 0x190

    if-nez v2, :cond_2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    if-nez v2, :cond_3

    sub-long/2addr v0, v5

    :cond_3
    const-wide/32 v5, 0xafaa8

    sub-long/2addr v0, v5

    const-wide/32 v5, 0x15180

    mul-long/2addr v0, v5

    mul-int/lit16 v2, p4, 0xe10

    int-to-long v5, v2

    add-long/2addr v0, v5

    mul-int/lit8 v2, p5, 0x3c

    int-to-long v5, v2

    add-long/2addr v0, v5

    int-to-long v5, p6

    add-long/2addr v0, v5

    .line 20
    sget-object v2, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_ID:Ljava/time/ZoneId;

    if-eq p0, v2, :cond_5

    invoke-virtual {p0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v2

    sget-object v5, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_RULES:Ljava/time/zone/ZoneRules;

    if-ne v2, v5, :cond_4

    goto :goto_1

    :cond_4
    move v4, v3

    :cond_5
    :goto_1
    if-eqz v4, :cond_6

    const-wide/32 v4, 0x28d2bea0

    cmp-long v2, v0, v4

    if-ltz v2, :cond_6

    const/16 v3, 0x7080

    goto :goto_2

    .line 21
    :cond_6
    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    if-eq p0, v2, :cond_8

    invoke-virtual {p0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTC"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    .line 22
    :cond_7
    invoke-static {p1, p2, p3}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p1

    .line 23
    invoke-static {p4, p5, p6, p7}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object p2

    .line 24
    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 25
    invoke-virtual {p0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v3

    :cond_8
    :goto_2
    int-to-long p0, v3

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x3e8

    mul-long/2addr v0, p0

    if-eqz p7, :cond_9

    const p0, 0xf4240

    .line 27
    div-int/2addr p7, p0

    int-to-long p0, p7

    add-long/2addr v0, p0

    :cond_9
    return-wide v0
.end method

.method public static month(CCC)I
    .locals 7

    const/16 v0, 0x41

    const/16 v1, 0x72

    const/16 v2, 0x75

    const/16 v3, 0x70

    if-eq p0, v0, :cond_7

    const/16 v0, 0x44

    const/16 v4, 0x63

    const/16 v5, 0x65

    if-eq p0, v0, :cond_6

    const/16 v0, 0x46

    if-eq p0, v0, :cond_5

    const/16 v0, 0x4a

    const/16 v6, 0x61

    if-eq p0, v0, :cond_2

    const/16 v0, 0x53

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-ne p1, v4, :cond_9

    const/16 p0, 0x74

    if-ne p2, p0, :cond_9

    const/16 p0, 0xa

    return p0

    :pswitch_1
    const/16 p0, 0x6f

    if-ne p1, p0, :cond_9

    const/16 p0, 0x76

    if-ne p2, p0, :cond_9

    const/16 p0, 0xb

    return p0

    :pswitch_2
    if-ne p1, v6, :cond_9

    if-ne p2, v1, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/16 p0, 0x79

    if-ne p2, p0, :cond_9

    const/4 p0, 0x5

    return p0

    :cond_1
    if-ne p1, v5, :cond_9

    if-ne p2, v3, :cond_9

    const/16 p0, 0x9

    return p0

    :cond_2
    const/16 p0, 0x6e

    if-ne p1, v6, :cond_3

    if-ne p2, p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    if-ne p1, v2, :cond_9

    if-ne p2, p0, :cond_4

    const/4 p0, 0x6

    return p0

    :cond_4
    const/16 p0, 0x6c

    if-ne p2, p0, :cond_9

    const/4 p0, 0x7

    return p0

    :cond_5
    if-ne p1, v5, :cond_9

    const/16 p0, 0x62

    if-ne p2, p0, :cond_9

    const/4 p0, 0x2

    return p0

    :cond_6
    if-ne p1, v5, :cond_9

    if-ne p2, v4, :cond_9

    const/16 p0, 0xc

    return p0

    :cond_7
    if-ne p1, v3, :cond_8

    if-ne p2, v1, :cond_8

    const/4 p0, 0x4

    return p0

    :cond_8
    if-ne p1, v2, :cond_9

    const/16 p0, 0x67

    if-ne p2, p0, :cond_9

    const/16 p0, 0x8

    return p0

    :cond_9
    :goto_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4

    .line 34
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis(Ljava/lang/String;Ljava/time/ZoneId;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 35
    :cond_0
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p0
.end method

.method public static parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->parseDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/ZoneId;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static parseDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/ZoneId;)Ljava/util/Date;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p1, :cond_c

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "iso8601"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_2
    const-string v0, "dd.MM.yyyy HH:mm:ss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_3
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_4
    const-string v0, "yyyy/MM/dd HH:mm:ss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v0, "yyyy/MM/dd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_6
    const-string v0, "yyyy-MM-dd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_7
    const-string v0, "yyyyMMdd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_8
    const-string v0, "yyyyMMddHHmmssSSSZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    if-nez p2, :cond_b

    .line 5
    sget-object p2, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    .line 6
    :cond_b
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 8
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/util/DateUtils;->millis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide p0

    .line 9
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 10
    :pswitch_0
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_1
    sget-object p1, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH_T:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {p0, p2, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->c(Ljava/lang/String;Ljava/time/ZoneId;Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)J

    move-result-wide p0

    .line 12
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 13
    :pswitch_2
    sget-object p1, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {p0, p2, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->c(Ljava/lang/String;Ljava/time/ZoneId;Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)J

    move-result-wide p0

    .line 14
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 15
    :pswitch_3
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillisYMDHMS19(Ljava/lang/String;Ljava/time/ZoneId;)J

    move-result-wide p0

    .line 16
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 17
    :pswitch_4
    sget-object p1, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_SLASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {p0, p2, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->c(Ljava/lang/String;Ljava/time/ZoneId;Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)J

    move-result-wide p0

    .line 18
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 19
    :pswitch_5
    sget-object p1, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_SLASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {p0, p2, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->b(Ljava/lang/String;Ljava/time/ZoneId;Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)J

    move-result-wide p0

    .line 20
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 21
    :pswitch_6
    sget-object p1, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {p0, p2, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->b(Ljava/lang/String;Ljava/time/ZoneId;Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;)J

    move-result-wide p0

    .line 22
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 23
    :pswitch_7
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    .line 24
    invoke-static {p0, p1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/time/LocalDate;->getYear()I

    move-result v1

    .line 26
    invoke-virtual {p0}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v2

    .line 27
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    .line 28
    invoke-static/range {v0 .. v7}, Lcom/alibaba/fastjson2/util/DateUtils;->millis(Ljava/time/ZoneId;IIIIIII)J

    move-result-wide p0

    .line 29
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 30
    :pswitch_8
    sget-object p1, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis(Ljava/lang/String;Ljava/time/ZoneId;)J

    move-result-wide p0

    .line 31
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 32
    :cond_c
    :goto_1
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis(Ljava/lang/String;Ljava/time/ZoneId;)J

    move-result-wide p0

    const-wide/16 v1, 0x0

    cmp-long p2, p0, v1

    if-nez p2, :cond_d

    return-object v0

    .line 33
    :cond_d
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    :cond_e
    :goto_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x14bad9d9 -> :sswitch_8
        -0x10781ba0 -> :sswitch_7
        -0x985fe00 -> :sswitch_6
        -0x61c4540 -> :sswitch_5
        0x129110e0 -> :sswitch_4
        0x4f76f1a0 -> :sswitch_3
        0x534c3940 -> :sswitch_2
        0x6b2ed43a -> :sswitch_1
        0x7ce21384 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static parseDate(Ljava/lang/String;Ljava/time/ZoneId;)Ljava/util/Date;
    .locals 2

    .line 36
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis(Ljava/lang/String;Ljava/time/ZoneId;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static parseDateYMDHMS19(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillisYMDHMS19(Ljava/lang/String;Ljava/time/ZoneId;)J

    move-result-wide v0

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseLocalDate(Ljava/lang/String;)Ljava/time/LocalDate;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 2
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate([CII)Ljava/time/LocalDate;

    move-result-object v1

    if-nez v1, :cond_7

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "0000-00-00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "0000\u5e7400\u670800\u65e5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "00000000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "0000-0-00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    move v2, v3

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 4
    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, p0, p0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :pswitch_0
    return-object v0

    :cond_7
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x794e6996 -> :sswitch_5
        -0x45f8e800 -> :sswitch_4
        0x0 -> :sswitch_3
        0x33c587 -> :sswitch_2
        0x52cad51 -> :sswitch_1
        0x4f8288e0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static parseLocalDate([BII)Ljava/time/LocalDate;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    add-int v1, p1, p2

    .line 5
    array-length v2, p0

    const/4 v3, 0x0

    const-string v4, "illegal input "

    if-gt v1, v2, :cond_2

    packed-switch p2, :pswitch_data_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 6
    aget-byte v1, p0, p1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    if-ne v1, v2, :cond_1

    return-object v0

    .line 7
    :pswitch_0
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate11([BI)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate10([BI)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_2
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate9([BI)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 10
    :pswitch_3
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate8([BI)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    .line 12
    new-instance p0, Ljava/time/format/DateTimeParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw p0

    .line 13
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    .line 14
    new-instance p0, Ljava/time/format/DateTimeParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw p0

    :cond_3
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseLocalDate([CII)Ljava/time/LocalDate;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    add-int v1, p1, p2

    .line 15
    array-length v2, p0

    const/4 v3, 0x0

    const-string v4, "illegal input "

    if-gt v1, v2, :cond_2

    packed-switch p2, :pswitch_data_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 16
    aget-char v1, p0, p1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p0, v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p0, v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p0, v1

    if-ne v1, v2, :cond_1

    return-object v0

    .line 17
    :pswitch_0
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate11([CI)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 18
    :pswitch_1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate10([CI)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 19
    :pswitch_2
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate9([CI)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 20
    :pswitch_3
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate8([CI)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 22
    new-instance p0, Ljava/time/format/DateTimeParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw p0

    .line 23
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 24
    new-instance p0, Ljava/time/format/DateTimeParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw p0

    :cond_3
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseLocalDate10([BI)Ljava/time/LocalDate;
    .locals 14

    add-int/lit8 v0, p1, 0xa

    .line 1
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    aget-byte v0, p0, p1

    int-to-char v0, v0

    add-int/lit8 v1, p1, 0x1

    .line 3
    aget-byte v1, p0, v1

    int-to-char v1, v1

    add-int/lit8 v3, p1, 0x2

    .line 4
    aget-byte v3, p0, v3

    int-to-char v3, v3

    add-int/lit8 v4, p1, 0x3

    .line 5
    aget-byte v4, p0, v4

    int-to-char v4, v4

    add-int/lit8 v5, p1, 0x4

    .line 6
    aget-byte v5, p0, v5

    int-to-char v5, v5

    add-int/lit8 v6, p1, 0x5

    .line 7
    aget-byte v6, p0, v6

    int-to-char v6, v6

    add-int/lit8 v7, p1, 0x6

    .line 8
    aget-byte v7, p0, v7

    int-to-char v7, v7

    add-int/lit8 v8, p1, 0x7

    .line 9
    aget-byte v8, p0, v8

    int-to-char v8, v8

    add-int/lit8 v9, p1, 0x8

    .line 10
    aget-byte v9, p0, v9

    int-to-char v9, v9

    add-int/lit8 p1, p1, 0x9

    .line 11
    aget-byte p0, p0, p1

    int-to-char p0, p0

    const/16 p1, 0x2d

    const/16 v10, 0x30

    if-ne v5, p1, :cond_1

    if-ne v8, p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v11, 0x2f

    if-ne v5, v11, :cond_2

    if-ne v8, v11, :cond_2

    :goto_0
    move v8, v1

    move v5, v4

    move v1, v6

    move p1, v7

    move v4, v9

    goto :goto_2

    :cond_2
    const/16 v12, 0x2e

    if-ne v3, v12, :cond_3

    if-ne v6, v12, :cond_3

    goto :goto_1

    :cond_3
    if-ne v3, p1, :cond_4

    if-ne v6, p1, :cond_4

    :goto_1
    move p1, v5

    move v3, v9

    move v5, p0

    move p0, v1

    move v1, v4

    move v4, v0

    move v0, v7

    goto :goto_2

    :cond_4
    if-ne v3, v11, :cond_5

    if-ne v6, v11, :cond_5

    move p1, v1

    move v3, v9

    move v1, v0

    move v0, v7

    move v13, v5

    move v5, p0

    move p0, v13

    goto :goto_2

    :cond_5
    const/16 p1, 0x20

    if-ne v1, p1, :cond_7

    if-ne v6, p1, :cond_7

    .line 12
    invoke-static {v3, v4, v5}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result p1

    if-lez p1, :cond_7

    .line 13
    div-int/lit8 v1, p1, 0xa

    add-int/2addr v1, v10

    int-to-char v1, v1

    .line 14
    rem-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v10

    int-to-char p1, p1

    move v5, p0

    move p0, v0

    move v0, v7

    move v3, v9

    move v4, v10

    :goto_2
    if-lt v0, v10, :cond_7

    const/16 v6, 0x39

    if-gt v0, v6, :cond_7

    if-lt v8, v10, :cond_7

    if-gt v8, v6, :cond_7

    if-lt v3, v10, :cond_7

    if-gt v3, v6, :cond_7

    if-lt v5, v10, :cond_7

    if-gt v5, v6, :cond_7

    sub-int/2addr v0, v10

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v8, v10

    mul-int/lit8 v8, v8, 0x64

    add-int/2addr v0, v8

    sub-int/2addr v3, v10

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    sub-int/2addr v5, v10

    add-int/2addr v0, v5

    if-lt v1, v10, :cond_7

    if-gt v1, v6, :cond_7

    if-lt p1, v10, :cond_7

    if-gt p1, v6, :cond_7

    sub-int/2addr v1, v10

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr p1, v10

    add-int/2addr v1, p1

    if-lt v4, v10, :cond_7

    if-gt v4, v6, :cond_7

    if-lt p0, v10, :cond_7

    if-gt p0, v6, :cond_7

    sub-int/2addr v4, v10

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr p0, v10

    add-int/2addr v4, p0

    if-nez v0, :cond_6

    if-nez v1, :cond_6

    if-nez v4, :cond_6

    return-object v2

    .line 15
    :cond_6
    invoke-static {v0, v1, v4}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v2
.end method

.method public static parseLocalDate10([CI)Ljava/time/LocalDate;
    .locals 16

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0xa

    .line 16
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 17
    :cond_0
    aget-char v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 18
    aget-char v2, v0, v2

    add-int/lit8 v4, p1, 0x2

    .line 19
    aget-char v4, v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 20
    aget-char v5, v0, v5

    add-int/lit8 v6, p1, 0x4

    .line 21
    aget-char v6, v0, v6

    add-int/lit8 v7, p1, 0x5

    .line 22
    aget-char v7, v0, v7

    add-int/lit8 v8, p1, 0x6

    .line 23
    aget-char v8, v0, v8

    add-int/lit8 v9, p1, 0x7

    .line 24
    aget-char v9, v0, v9

    add-int/lit8 v10, p1, 0x8

    .line 25
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 26
    aget-char v0, v0, v11

    const/16 v11, 0x2d

    if-ne v6, v11, :cond_1

    if-ne v9, v11, :cond_1

    goto :goto_0

    :cond_1
    const/16 v13, 0x2f

    if-ne v6, v13, :cond_2

    if-ne v9, v13, :cond_2

    :goto_0
    move v9, v10

    move v10, v0

    move v0, v4

    const/16 v4, 0x30

    goto/16 :goto_4

    :cond_2
    const/16 v14, 0x2e

    if-ne v4, v14, :cond_3

    if-ne v7, v14, :cond_3

    goto :goto_1

    :cond_3
    if-ne v4, v11, :cond_4

    if-ne v7, v11, :cond_4

    :goto_1
    move v7, v5

    const/16 v4, 0x30

    move v5, v0

    move v0, v10

    move v10, v2

    move v2, v9

    move v9, v1

    move v1, v8

    move v8, v6

    goto/16 :goto_4

    :cond_4
    if-ne v4, v13, :cond_5

    if-ne v7, v13, :cond_5

    move v7, v1

    move v1, v8

    const/16 v4, 0x30

    move v8, v2

    move v2, v9

    move v9, v5

    move v5, v0

    move v0, v10

    move v10, v6

    goto/16 :goto_4

    :cond_5
    const/16 v11, 0x65e5

    const/16 v13, 0x6708

    const/16 v14, 0x5e74

    if-ne v6, v14, :cond_6

    if-ne v8, v13, :cond_6

    if-ne v0, v11, :cond_6

    :goto_2
    move v0, v4

    move v8, v7

    const/16 v4, 0x30

    const/16 v7, 0x30

    goto :goto_4

    :cond_6
    const v15, 0xc77c

    const v3, 0xc6d4

    const v12, 0xb144

    if-ne v6, v12, :cond_7

    if-ne v8, v3, :cond_7

    if-ne v0, v15, :cond_7

    goto :goto_2

    :cond_7
    if-ne v6, v14, :cond_8

    if-ne v9, v13, :cond_8

    if-ne v0, v11, :cond_8

    :goto_3
    move v0, v4

    const/16 v4, 0x30

    const/16 v9, 0x30

    goto :goto_4

    :cond_8
    if-ne v6, v12, :cond_9

    if-ne v9, v3, :cond_9

    if-ne v0, v15, :cond_9

    goto :goto_3

    :cond_9
    const/16 v3, 0x20

    if-ne v2, v3, :cond_f

    if-ne v7, v3, :cond_f

    .line 27
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_e

    .line 28
    div-int/lit8 v3, v2, 0xa

    const/16 v4, 0x30

    add-int/2addr v3, v4

    int-to-char v3, v3

    .line 29
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v4

    int-to-char v2, v2

    move v5, v0

    move v7, v3

    move v0, v10

    move v10, v1

    move v1, v8

    move v8, v2

    move v2, v9

    move v9, v4

    :goto_4
    if-lt v1, v4, :cond_d

    const/16 v3, 0x39

    if-gt v1, v3, :cond_d

    if-lt v2, v4, :cond_d

    if-gt v2, v3, :cond_d

    if-lt v0, v4, :cond_d

    if-gt v0, v3, :cond_d

    if-lt v5, v4, :cond_d

    if-gt v5, v3, :cond_d

    sub-int/2addr v1, v4

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    sub-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v1, v0

    sub-int/2addr v5, v4

    add-int/2addr v1, v5

    if-lt v7, v4, :cond_c

    if-gt v7, v3, :cond_c

    if-lt v8, v4, :cond_c

    if-gt v8, v3, :cond_c

    sub-int/2addr v7, v4

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, v4

    add-int/2addr v7, v8

    if-lt v9, v4, :cond_b

    if-gt v9, v3, :cond_b

    if-lt v10, v4, :cond_b

    if-gt v10, v3, :cond_b

    sub-int/2addr v9, v4

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v4

    add-int/2addr v9, v10

    if-nez v1, :cond_a

    if-nez v7, :cond_a

    if-nez v9, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_a
    invoke-static {v1, v7, v9}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0

    :cond_e
    const/4 v0, 0x0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseLocalDate11([BI)Ljava/time/LocalDate;
    .locals 12

    add-int/lit8 v0, p1, 0xb

    .line 17
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 18
    :cond_0
    aget-byte v0, p0, p1

    int-to-char v0, v0

    add-int/lit8 v1, p1, 0x1

    .line 19
    aget-byte v1, p0, v1

    int-to-char v1, v1

    add-int/lit8 v3, p1, 0x2

    .line 20
    aget-byte v3, p0, v3

    int-to-char v3, v3

    add-int/lit8 v4, p1, 0x3

    .line 21
    aget-byte v4, p0, v4

    int-to-char v4, v4

    add-int/lit8 v5, p1, 0x4

    .line 22
    aget-byte v5, p0, v5

    int-to-char v5, v5

    add-int/lit8 v6, p1, 0x5

    .line 23
    aget-byte v6, p0, v6

    int-to-char v6, v6

    add-int/lit8 v7, p1, 0x6

    .line 24
    aget-byte v7, p0, v7

    int-to-char v7, v7

    add-int/lit8 v8, p1, 0x7

    .line 25
    aget-byte v8, p0, v8

    int-to-char v8, v8

    add-int/lit8 v9, p1, 0x8

    .line 26
    aget-byte v9, p0, v9

    int-to-char v9, v9

    add-int/lit8 v10, p1, 0x9

    .line 27
    aget-byte v10, p0, v10

    int-to-char v10, v10

    add-int/lit8 p1, p1, 0xa

    .line 28
    aget-byte p0, p0, p1

    int-to-char p0, p0

    const/16 p1, 0x2d

    const/16 v11, 0x30

    if-ne v5, p1, :cond_1

    if-ne v8, p1, :cond_1

    const/16 p1, 0x5a

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x20

    if-ne v3, p1, :cond_3

    if-ne v7, p1, :cond_3

    .line 29
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result p1

    if-lez p1, :cond_3

    .line 30
    div-int/lit8 v3, p1, 0xa

    add-int/2addr v3, v11

    int-to-char v6, v3

    .line 31
    rem-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v11

    int-to-char v7, p1

    move v4, p0

    move v3, v10

    move v10, v1

    move v1, v9

    move v9, v0

    move v0, v8

    :goto_0
    if-lt v0, v11, :cond_3

    const/16 p0, 0x39

    if-gt v0, p0, :cond_3

    if-lt v1, v11, :cond_3

    if-gt v1, p0, :cond_3

    if-lt v3, v11, :cond_3

    if-gt v3, p0, :cond_3

    if-lt v4, v11, :cond_3

    if-gt v4, p0, :cond_3

    sub-int/2addr v0, v11

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v11

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    sub-int/2addr v3, v11

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    sub-int/2addr v4, v11

    add-int/2addr v0, v4

    if-lt v6, v11, :cond_3

    if-gt v6, p0, :cond_3

    if-lt v7, v11, :cond_3

    if-gt v7, p0, :cond_3

    sub-int/2addr v6, v11

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v7, v11

    add-int/2addr v6, v7

    if-lt v9, v11, :cond_3

    if-gt v9, p0, :cond_3

    if-lt v10, v11, :cond_3

    if-gt v10, p0, :cond_3

    sub-int/2addr v9, v11

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v11

    add-int/2addr v9, v10

    if-nez v0, :cond_2

    if-nez v6, :cond_2

    if-nez v9, :cond_2

    return-object v2

    .line 32
    :cond_2
    invoke-static {v0, v6, v9}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v2
.end method

.method public static parseLocalDate11([CI)Ljava/time/LocalDate;
    .locals 12

    add-int/lit8 v0, p1, 0xb

    .line 1
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 3
    aget-char v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 4
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 5
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 6
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 7
    aget-char v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 8
    aget-char v7, p0, v7

    add-int/lit8 v8, p1, 0x7

    .line 9
    aget-char v8, p0, v8

    add-int/lit8 v9, p1, 0x8

    .line 10
    aget-char v9, p0, v9

    add-int/lit8 v10, p1, 0x9

    .line 11
    aget-char v10, p0, v10

    add-int/lit8 p1, p1, 0xa

    .line 12
    aget-char p0, p0, p1

    const/16 p1, 0x5e74

    const/16 v11, 0x30

    if-ne v5, p1, :cond_1

    const/16 p1, 0x6708

    if-ne v8, p1, :cond_1

    const/16 p1, 0x65e5

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x2d

    if-ne v5, p1, :cond_2

    if-ne v8, p1, :cond_2

    const/16 p1, 0x5a

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const p1, 0xb144

    if-ne v5, p1, :cond_3

    const p1, 0xc6d4

    if-ne v8, p1, :cond_3

    const p1, 0xc77c

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0x20

    if-ne v3, p1, :cond_5

    if-ne v7, p1, :cond_5

    .line 13
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result p1

    if-lez p1, :cond_5

    .line 14
    div-int/lit8 v3, p1, 0xa

    add-int/2addr v3, v11

    int-to-char v6, v3

    .line 15
    rem-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v11

    int-to-char v7, p1

    move v4, p0

    move v3, v10

    move v10, v1

    move v1, v9

    move v9, v0

    move v0, v8

    :goto_0
    if-lt v0, v11, :cond_5

    const/16 p0, 0x39

    if-gt v0, p0, :cond_5

    if-lt v1, v11, :cond_5

    if-gt v1, p0, :cond_5

    if-lt v3, v11, :cond_5

    if-gt v3, p0, :cond_5

    if-lt v4, v11, :cond_5

    if-gt v4, p0, :cond_5

    sub-int/2addr v0, v11

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v11

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    sub-int/2addr v3, v11

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    sub-int/2addr v4, v11

    add-int/2addr v0, v4

    if-lt v6, v11, :cond_5

    if-gt v6, p0, :cond_5

    if-lt v7, v11, :cond_5

    if-gt v7, p0, :cond_5

    sub-int/2addr v6, v11

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v7, v11

    add-int/2addr v6, v7

    if-lt v9, v11, :cond_5

    if-gt v9, p0, :cond_5

    if-lt v10, v11, :cond_5

    if-gt v10, p0, :cond_5

    sub-int/2addr v9, v11

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v11

    add-int/2addr v9, v10

    if-nez v0, :cond_4

    if-nez v6, :cond_4

    if-nez v9, :cond_4

    return-object v2

    .line 16
    :cond_4
    invoke-static {v0, v6, v9}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v2
.end method

.method public static parseLocalDate8([BI)Ljava/time/LocalDate;
    .locals 10

    add-int/lit8 v0, p1, 0x8

    .line 1
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    aget-byte v0, p0, p1

    int-to-char v0, v0

    add-int/lit8 v1, p1, 0x1

    .line 3
    aget-byte v1, p0, v1

    int-to-char v1, v1

    add-int/lit8 v3, p1, 0x2

    .line 4
    aget-byte v3, p0, v3

    int-to-char v3, v3

    add-int/lit8 v4, p1, 0x3

    .line 5
    aget-byte v4, p0, v4

    int-to-char v4, v4

    add-int/lit8 v5, p1, 0x4

    .line 6
    aget-byte v5, p0, v5

    int-to-char v5, v5

    add-int/lit8 v6, p1, 0x5

    .line 7
    aget-byte v6, p0, v6

    int-to-char v6, v6

    add-int/lit8 v7, p1, 0x6

    .line 8
    aget-byte v7, p0, v7

    int-to-char v7, v7

    add-int/lit8 p1, p1, 0x7

    .line 9
    aget-byte p0, p0, p1

    int-to-char p0, p0

    const/16 p1, 0x2d

    const/16 v8, 0x30

    if-ne v5, p1, :cond_1

    if-ne v7, p1, :cond_1

    move v5, v8

    move v7, v5

    goto :goto_0

    :cond_1
    const/16 v9, 0x2f

    if-ne v1, v9, :cond_2

    if-ne v4, v9, :cond_2

    move v4, p0

    move p0, v3

    move v1, v6

    move v3, v7

    move v7, v8

    move v6, v0

    move v0, v5

    move v5, v7

    goto :goto_0

    :cond_2
    if-ne v1, p1, :cond_4

    if-ne v6, p1, :cond_4

    .line 10
    invoke-static {v3, v4, v5}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result p1

    if-lez p1, :cond_3

    .line 11
    div-int/lit8 v1, p1, 0xa

    add-int/2addr v1, v8

    int-to-char v5, v1

    .line 12
    rem-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v8

    int-to-char p1, p1

    const/16 v1, 0x32

    move v4, p0

    move v6, p1

    move p0, v0

    move v0, v1

    move v3, v7

    move v1, v8

    move v7, v1

    goto :goto_0

    :cond_3
    return-object v2

    :cond_4
    :goto_0
    if-lt v0, v8, :cond_6

    const/16 p1, 0x39

    if-gt v0, p1, :cond_6

    if-lt v1, v8, :cond_6

    if-gt v1, p1, :cond_6

    if-lt v3, v8, :cond_6

    if-gt v3, p1, :cond_6

    if-lt v4, v8, :cond_6

    if-gt v4, p1, :cond_6

    sub-int/2addr v0, v8

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v8

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    sub-int/2addr v3, v8

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    sub-int/2addr v4, v8

    add-int/2addr v0, v4

    if-lt v5, v8, :cond_6

    if-gt v5, p1, :cond_6

    if-lt v6, v8, :cond_6

    if-gt v6, p1, :cond_6

    sub-int/2addr v5, v8

    mul-int/lit8 v5, v5, 0xa

    sub-int/2addr v6, v8

    add-int/2addr v5, v6

    if-lt v7, v8, :cond_6

    if-gt v7, p1, :cond_6

    if-lt p0, v8, :cond_6

    if-gt p0, p1, :cond_6

    sub-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr p0, v8

    add-int/2addr v7, p0

    if-nez v0, :cond_5

    if-nez v5, :cond_5

    if-nez v7, :cond_5

    return-object v2

    .line 13
    :cond_5
    invoke-static {v0, v5, v7}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v2
.end method

.method public static parseLocalDate8([CI)Ljava/time/LocalDate;
    .locals 10

    add-int/lit8 v0, p1, 0x8

    .line 14
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 15
    :cond_0
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 16
    aget-char v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 17
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 18
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 19
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 20
    aget-char v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 21
    aget-char v7, p0, v7

    add-int/lit8 p1, p1, 0x7

    .line 22
    aget-char p0, p0, p1

    const/16 p1, 0x2d

    const/16 v8, 0x30

    if-ne v5, p1, :cond_1

    if-ne v7, p1, :cond_1

    move v5, v8

    move v7, v5

    goto :goto_0

    :cond_1
    const/16 v9, 0x2f

    if-ne v1, v9, :cond_2

    if-ne v4, v9, :cond_2

    move v4, p0

    move p0, v3

    move v1, v6

    move v3, v7

    move v7, v8

    move v6, v0

    move v0, v5

    move v5, v7

    goto :goto_0

    :cond_2
    if-ne v1, p1, :cond_4

    if-ne v6, p1, :cond_4

    .line 23
    invoke-static {v3, v4, v5}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result p1

    if-lez p1, :cond_3

    .line 24
    div-int/lit8 v1, p1, 0xa

    add-int/2addr v1, v8

    int-to-char v5, v1

    .line 25
    rem-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v8

    int-to-char p1, p1

    const/16 v1, 0x32

    move v4, p0

    move v6, p1

    move p0, v0

    move v0, v1

    move v3, v7

    move v1, v8

    move v7, v1

    goto :goto_0

    :cond_3
    return-object v2

    :cond_4
    :goto_0
    if-lt v0, v8, :cond_6

    const/16 p1, 0x39

    if-gt v0, p1, :cond_6

    if-lt v1, v8, :cond_6

    if-gt v1, p1, :cond_6

    if-lt v3, v8, :cond_6

    if-gt v3, p1, :cond_6

    if-lt v4, v8, :cond_6

    if-gt v4, p1, :cond_6

    sub-int/2addr v0, v8

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v8

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    sub-int/2addr v3, v8

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    sub-int/2addr v4, v8

    add-int/2addr v0, v4

    if-lt v5, v8, :cond_6

    if-gt v5, p1, :cond_6

    if-lt v6, v8, :cond_6

    if-gt v6, p1, :cond_6

    sub-int/2addr v5, v8

    mul-int/lit8 v5, v5, 0xa

    sub-int/2addr v6, v8

    add-int/2addr v5, v6

    if-lt v7, v8, :cond_6

    if-gt v7, p1, :cond_6

    if-lt p0, v8, :cond_6

    if-gt p0, p1, :cond_6

    sub-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr p0, v8

    add-int/2addr v7, p0

    if-nez v0, :cond_5

    if-nez v5, :cond_5

    if-nez v7, :cond_5

    return-object v2

    .line 26
    :cond_5
    invoke-static {v0, v5, v7}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v2
.end method

.method public static parseLocalDate9([BI)Ljava/time/LocalDate;
    .locals 13

    add-int/lit8 v0, p1, 0x9

    .line 1
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    aget-byte v0, p0, p1

    int-to-char v0, v0

    add-int/lit8 v1, p1, 0x1

    .line 3
    aget-byte v1, p0, v1

    int-to-char v1, v1

    add-int/lit8 v3, p1, 0x2

    .line 4
    aget-byte v3, p0, v3

    int-to-char v3, v3

    add-int/lit8 v4, p1, 0x3

    .line 5
    aget-byte v4, p0, v4

    int-to-char v4, v4

    add-int/lit8 v5, p1, 0x4

    .line 6
    aget-byte v5, p0, v5

    int-to-char v5, v5

    add-int/lit8 v6, p1, 0x5

    .line 7
    aget-byte v6, p0, v6

    int-to-char v6, v6

    add-int/lit8 v7, p1, 0x6

    .line 8
    aget-byte v7, p0, v7

    int-to-char v7, v7

    add-int/lit8 v8, p1, 0x7

    .line 9
    aget-byte v8, p0, v8

    int-to-char v8, v8

    add-int/lit8 p1, p1, 0x8

    .line 10
    aget-byte p0, p0, p1

    int-to-char p0, p0

    const/16 p1, 0x2d

    const/16 v9, 0x30

    if-ne v5, p1, :cond_1

    if-ne v8, p1, :cond_1

    :goto_0
    move p1, v3

    move v5, v4

    move v3, v6

    move v4, v7

    :goto_1
    move v8, v9

    goto/16 :goto_6

    :cond_1
    if-ne v5, p1, :cond_2

    if-ne v7, p1, :cond_2

    :goto_2
    move p1, v3

    move v5, v4

    move v4, v6

    :goto_3
    move v3, v9

    goto/16 :goto_6

    :cond_2
    const/16 v10, 0x2f

    if-ne v5, v10, :cond_3

    if-ne v8, v10, :cond_3

    goto :goto_0

    :cond_3
    if-ne v5, v10, :cond_4

    if-ne v7, v10, :cond_4

    goto :goto_2

    :cond_4
    const/16 v11, 0x2e

    if-ne v1, v11, :cond_5

    if-ne v5, v11, :cond_5

    :goto_4
    move v5, p0

    move p0, v0

    move v0, v6

    move v1, v7

    move p1, v8

    goto :goto_1

    :cond_5
    if-ne v3, v11, :cond_6

    if-ne v5, v11, :cond_6

    :goto_5
    move v5, p0

    move p0, v1

    move v1, v7

    move p1, v8

    move v3, v9

    move v8, v0

    move v0, v6

    goto/16 :goto_6

    :cond_6
    if-ne v1, p1, :cond_7

    if-ne v5, p1, :cond_7

    goto :goto_4

    :cond_7
    if-ne v3, p1, :cond_8

    if-ne v5, p1, :cond_8

    goto :goto_5

    :cond_8
    if-ne v3, p1, :cond_a

    if-ne v7, p1, :cond_a

    .line 11
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result p1

    if-lez p1, :cond_9

    .line 12
    div-int/lit8 v3, p1, 0xa

    add-int/2addr v3, v9

    int-to-char v3, v3

    .line 13
    rem-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v9

    int-to-char p1, p1

    const/16 v4, 0x32

    move v5, p0

    move p0, v1

    move v1, v9

    move v12, v4

    move v4, p1

    move p1, v8

    move v8, v0

    move v0, v12

    goto :goto_6

    :cond_9
    return-object v2

    :cond_a
    if-ne v1, v10, :cond_b

    if-ne v5, v10, :cond_b

    move v5, p0

    move p0, v4

    move v1, v7

    move p1, v8

    move v4, v0

    move v8, v3

    move v0, v6

    goto :goto_3

    :cond_b
    if-ne v3, v10, :cond_d

    if-ne v5, v10, :cond_d

    move v5, p0

    move v3, v0

    move p0, v4

    move v0, v6

    move p1, v8

    move v8, v9

    move v4, v1

    move v1, v7

    :goto_6
    if-lt v0, v9, :cond_d

    const/16 v6, 0x39

    if-gt v0, v6, :cond_d

    if-lt v1, v9, :cond_d

    if-gt v1, v6, :cond_d

    if-lt p1, v9, :cond_d

    if-gt p1, v6, :cond_d

    if-lt v5, v9, :cond_d

    if-gt v5, v6, :cond_d

    sub-int/2addr v0, v9

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v9

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    sub-int/2addr p1, v9

    mul-int/lit8 p1, p1, 0xa

    add-int/2addr v0, p1

    sub-int/2addr v5, v9

    add-int/2addr v0, v5

    if-lt v3, v9, :cond_d

    if-gt v3, v6, :cond_d

    if-lt v4, v9, :cond_d

    if-gt v4, v6, :cond_d

    sub-int/2addr v3, v9

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v4, v9

    add-int/2addr v3, v4

    if-lt v8, v9, :cond_d

    if-gt v8, v6, :cond_d

    if-lt p0, v9, :cond_d

    if-gt p0, v6, :cond_d

    sub-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr p0, v9

    add-int/2addr v8, p0

    if-nez v0, :cond_c

    if-nez v3, :cond_c

    if-nez v8, :cond_c

    return-object v2

    .line 14
    :cond_c
    invoke-static {v0, v3, v8}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_d
    return-object v2
.end method

.method public static parseLocalDate9([CI)Ljava/time/LocalDate;
    .locals 13

    add-int/lit8 v0, p1, 0x9

    .line 15
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 16
    :cond_0
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 17
    aget-char v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 18
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 19
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 20
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 21
    aget-char v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 22
    aget-char v7, p0, v7

    add-int/lit8 v8, p1, 0x7

    .line 23
    aget-char v8, p0, v8

    add-int/lit8 p1, p1, 0x8

    .line 24
    aget-char p0, p0, p1

    const/16 p1, 0x2d

    const/16 v9, 0x30

    if-ne v5, p1, :cond_1

    if-ne v8, p1, :cond_1

    :goto_0
    move p1, v3

    move v5, v4

    move v3, v6

    move v4, v7

    :goto_1
    move v8, v9

    goto/16 :goto_7

    :cond_1
    if-ne v5, p1, :cond_2

    if-ne v7, p1, :cond_2

    :goto_2
    move p1, v3

    move v5, v4

    move v4, v6

    :goto_3
    move v3, v9

    goto/16 :goto_7

    :cond_2
    const/16 v10, 0x2f

    if-ne v5, v10, :cond_3

    if-ne v8, v10, :cond_3

    goto :goto_0

    :cond_3
    if-ne v5, v10, :cond_4

    if-ne v7, v10, :cond_4

    goto :goto_2

    :cond_4
    const/16 v11, 0x2e

    if-ne v1, v11, :cond_5

    if-ne v5, v11, :cond_5

    :goto_4
    move v5, p0

    move p0, v0

    move v0, v6

    move v1, v7

    move p1, v8

    goto :goto_1

    :cond_5
    if-ne v3, v11, :cond_6

    if-ne v5, v11, :cond_6

    :goto_5
    move v5, p0

    move p0, v1

    move v1, v7

    move p1, v8

    move v3, v9

    move v8, v0

    move v0, v6

    goto/16 :goto_7

    :cond_6
    if-ne v1, p1, :cond_7

    if-ne v5, p1, :cond_7

    goto :goto_4

    :cond_7
    if-ne v3, p1, :cond_8

    if-ne v5, p1, :cond_8

    goto :goto_5

    :cond_8
    const/16 v11, 0x5e74

    if-ne v5, v11, :cond_9

    const/16 v11, 0x6708

    if-ne v7, v11, :cond_9

    const/16 v11, 0x65e5

    if-ne p0, v11, :cond_9

    :goto_6
    move p1, v3

    move v5, v4

    move v4, v6

    move p0, v8

    move v3, v9

    move v8, v3

    goto/16 :goto_7

    :cond_9
    const v11, 0xb144

    if-ne v5, v11, :cond_a

    const v11, 0xc6d4

    if-ne v7, v11, :cond_a

    const v11, 0xc77c

    if-ne p0, v11, :cond_a

    goto :goto_6

    :cond_a
    if-ne v3, p1, :cond_c

    if-ne v7, p1, :cond_c

    .line 25
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result p1

    if-lez p1, :cond_b

    .line 26
    div-int/lit8 v3, p1, 0xa

    add-int/2addr v3, v9

    int-to-char v3, v3

    .line 27
    rem-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v9

    int-to-char p1, p1

    const/16 v4, 0x32

    move v5, p0

    move p0, v1

    move v1, v9

    move v12, v4

    move v4, p1

    move p1, v8

    move v8, v0

    move v0, v12

    goto :goto_7

    :cond_b
    return-object v2

    :cond_c
    if-ne v1, v10, :cond_d

    if-ne v5, v10, :cond_d

    move v5, p0

    move p0, v4

    move v1, v7

    move p1, v8

    move v4, v0

    move v8, v3

    move v0, v6

    goto :goto_3

    :cond_d
    if-ne v3, v10, :cond_f

    if-ne v5, v10, :cond_f

    move v5, p0

    move v3, v0

    move p0, v4

    move v0, v6

    move p1, v8

    move v8, v9

    move v4, v1

    move v1, v7

    :goto_7
    if-lt v0, v9, :cond_f

    const/16 v6, 0x39

    if-gt v0, v6, :cond_f

    if-lt v1, v9, :cond_f

    if-gt v1, v6, :cond_f

    if-lt p1, v9, :cond_f

    if-gt p1, v6, :cond_f

    if-lt v5, v9, :cond_f

    if-gt v5, v6, :cond_f

    sub-int/2addr v0, v9

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v9

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    sub-int/2addr p1, v9

    mul-int/lit8 p1, p1, 0xa

    add-int/2addr v0, p1

    sub-int/2addr v5, v9

    add-int/2addr v0, v5

    if-lt v3, v9, :cond_f

    if-gt v3, v6, :cond_f

    if-lt v4, v9, :cond_f

    if-gt v4, v6, :cond_f

    sub-int/2addr v3, v9

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v4, v9

    add-int/2addr v3, v4

    if-lt v8, v9, :cond_f

    if-gt v8, v6, :cond_f

    if-lt p0, v9, :cond_f

    if-gt p0, v6, :cond_f

    sub-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr p0, v9

    add-int/2addr v8, p0

    if-nez v0, :cond_e

    if-nez v3, :cond_e

    if-nez v8, :cond_e

    return-object v2

    .line 28
    :cond_e
    invoke-static {v0, v3, v8}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_f
    return-object v2
.end method

.method public static parseLocalDateTime(Ljava/lang/String;)Ljava/time/LocalDateTime;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime(Ljava/lang/String;II)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static parseLocalDateTime(Ljava/lang/String;II)Ljava/time/LocalDateTime;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-array v1, p2, [C

    add-int v2, p1, p2

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p0, p1, v2, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 4
    invoke-static {v1, p1, p2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime([CII)Ljava/time/LocalDateTime;

    move-result-object p2

    if-nez p2, :cond_9

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v1, -0x1

    sparse-switch p2, :sswitch_data_0

    :goto_0
    move v3, v1

    goto :goto_1

    :sswitch_0
    const-string p2, "0000-00-00"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_1
    const-string p2, "0000\u5e7400\u670800\u65e5"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_2
    const-string p2, "null"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_3
    const-string p2, ""

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_4
    const-string p2, "00000000"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_5
    const-string p2, "000000000000"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_6
    const-string p2, "0000-00-0"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_7
    const-string p2, "0000-0-00"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_0

    :cond_8
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 6
    new-instance p2, Ljava/time/format/DateTimeParseException;

    invoke-direct {p2, p0, p0, p1}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw p2

    :pswitch_0
    return-object v0

    :cond_9
    return-object p2

    :cond_a
    :goto_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x794e6996 -> :sswitch_7
        -0x794e5eb0 -> :sswitch_6
        -0x4f2e5c00 -> :sswitch_5
        -0x45f8e800 -> :sswitch_4
        0x0 -> :sswitch_3
        0x33c587 -> :sswitch_2
        0x52cad51 -> :sswitch_1
        0x4f8288e0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static parseLocalDateTime([BII)Ljava/time/LocalDateTime;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 29
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTimeX([BII)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 30
    :pswitch_1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime20([BI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 31
    :pswitch_2
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime19([BI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 32
    :pswitch_3
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime18([BI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 33
    :pswitch_4
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime17([BI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 34
    :pswitch_5
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime16([BI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 35
    :pswitch_6
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime14([BI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 36
    :pswitch_7
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime12([BI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 37
    :pswitch_8
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate11([BI)Ljava/time/LocalDate;

    move-result-object p0

    sget-object p1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    .line 38
    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 39
    :pswitch_9
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate10([BI)Ljava/time/LocalDate;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 40
    :cond_1
    sget-object p1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 41
    :pswitch_a
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate9([BI)Ljava/time/LocalDate;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 42
    :cond_2
    sget-object p1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 43
    :pswitch_b
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate8([BI)Ljava/time/LocalDate;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v0

    .line 44
    :cond_3
    sget-object p1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 45
    :pswitch_c
    aget-byte v1, p0, p1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_4

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_4

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_4

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    if-ne v1, v2, :cond_4

    return-object v0

    .line 46
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    .line 47
    new-instance p0, Ljava/time/format/DateTimeParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "illegal input "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw p0

    :cond_5
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static parseLocalDateTime([CII)Ljava/time/LocalDateTime;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 7
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTimeX([CII)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime20([CI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_2
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime19([CI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 10
    :pswitch_3
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime18([CI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_4
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime17([CI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 12
    :pswitch_5
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime16([CI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 13
    :pswitch_6
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime14([CI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 14
    :pswitch_7
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime12([CI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 15
    :pswitch_8
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate11([CI)Ljava/time/LocalDate;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 16
    :cond_1
    sget-object p1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 17
    :pswitch_9
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate10([CI)Ljava/time/LocalDate;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 18
    :cond_2
    sget-object p1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 19
    :pswitch_a
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate9([CI)Ljava/time/LocalDate;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v0

    .line 20
    :cond_3
    sget-object p1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    :pswitch_b
    const/4 p2, 0x2

    .line 21
    aget-char p2, p0, p2

    const/16 v1, 0x3a

    if-ne p2, v1, :cond_4

    const/4 p2, 0x5

    aget-char p2, p0, p2

    if-ne p2, v1, :cond_4

    .line 22
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime8([CI)Ljava/time/LocalTime;

    move-result-object p0

    .line 23
    sget-object p1, Lcom/alibaba/fastjson2/util/DateUtils;->LOCAL_DATE_19700101:Ljava/time/LocalDate;

    invoke-static {p1, p0}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 24
    :cond_4
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate8([CI)Ljava/time/LocalDate;

    move-result-object p0

    if-nez p0, :cond_5

    return-object v0

    .line 25
    :cond_5
    sget-object p1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 26
    :pswitch_c
    aget-char v1, p0, p1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_6

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p0, v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_6

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p0, v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_6

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p0, v1

    if-ne v1, v2, :cond_6

    return-object v0

    .line 27
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 28
    new-instance p0, Ljava/time/format/DateTimeParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "illegal input "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw p0

    :cond_7
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static parseLocalDateTime12([BI)Ljava/time/LocalDateTime;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    add-int/lit8 v2, v1, 0xc

    .line 27
    array-length v3, v0

    const-string v5, "illegal input "

    if-gt v2, v3, :cond_7

    .line 28
    aget-byte v3, v0, v1

    int-to-char v3, v3

    add-int/lit8 v6, v1, 0x1

    .line 29
    aget-byte v6, v0, v6

    int-to-char v6, v6

    add-int/lit8 v7, v1, 0x2

    .line 30
    aget-byte v7, v0, v7

    int-to-char v7, v7

    add-int/lit8 v8, v1, 0x3

    .line 31
    aget-byte v8, v0, v8

    int-to-char v8, v8

    add-int/lit8 v9, v1, 0x4

    .line 32
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v10, v1, 0x5

    .line 33
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, v1, 0x6

    .line 34
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, v1, 0x7

    .line 35
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, v1, 0x8

    .line 36
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, v1, 0x9

    .line 37
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, v1, 0xa

    .line 38
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, v1, 0xb

    .line 39
    aget-byte v4, v0, v16

    int-to-char v4, v4

    move-object/from16 v16, v5

    const/16 v5, 0x30

    if-lt v3, v5, :cond_6

    const/16 v0, 0x39

    if-gt v3, v0, :cond_5

    if-lt v6, v5, :cond_5

    if-gt v6, v0, :cond_5

    if-lt v7, v5, :cond_5

    if-gt v7, v0, :cond_5

    if-lt v8, v5, :cond_5

    if-gt v8, v0, :cond_5

    sub-int/2addr v3, v5

    mul-int/lit16 v3, v3, 0x3e8

    sub-int/2addr v6, v5

    mul-int/lit8 v6, v6, 0x64

    add-int/2addr v3, v6

    sub-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v3, v7

    sub-int/2addr v8, v5

    add-int v17, v3, v8

    if-lt v9, v5, :cond_4

    if-gt v9, v0, :cond_4

    if-lt v10, v5, :cond_4

    if-gt v10, v0, :cond_4

    sub-int/2addr v9, v5

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v5

    add-int v18, v9, v10

    if-lt v11, v5, :cond_3

    if-gt v11, v0, :cond_3

    if-lt v12, v5, :cond_3

    if-gt v12, v0, :cond_3

    sub-int/2addr v11, v5

    mul-int/lit8 v11, v11, 0xa

    sub-int/2addr v12, v5

    add-int v19, v11, v12

    if-lt v13, v5, :cond_2

    if-gt v13, v0, :cond_2

    if-lt v14, v5, :cond_2

    if-gt v14, v0, :cond_2

    sub-int/2addr v13, v5

    mul-int/lit8 v13, v13, 0xa

    sub-int/2addr v14, v5

    add-int v20, v13, v14

    if-lt v15, v5, :cond_1

    if-gt v15, v0, :cond_1

    if-lt v4, v5, :cond_1

    if-gt v4, v0, :cond_1

    sub-int/2addr v15, v5

    mul-int/lit8 v15, v15, 0xa

    sub-int/2addr v4, v5

    add-int v21, v15, v4

    if-nez v17, :cond_0

    if-nez v18, :cond_0

    if-nez v19, :cond_0

    if-nez v20, :cond_0

    if-nez v21, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v22, 0x0

    .line 40
    invoke-static/range {v17 .. v22}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 42
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v16

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_2
    move-object/from16 v3, p0

    move-object/from16 v4, v16

    .line 43
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 44
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_3
    move-object/from16 v3, p0

    move-object/from16 v4, v16

    .line 45
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 46
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_4
    move-object/from16 v3, p0

    move-object/from16 v4, v16

    .line 47
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 48
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_5
    move-object/from16 v3, p0

    goto :goto_0

    :cond_6
    move-object v3, v0

    :goto_0
    move-object/from16 v4, v16

    .line 49
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 50
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_7
    move-object v3, v0

    move-object v4, v5

    .line 51
    new-instance v0, Ljava/lang/String;

    array-length v2, v3

    sub-int/2addr v2, v1

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 52
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1
.end method

.method public static parseLocalDateTime12([CI)Ljava/time/LocalDateTime;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    add-int/lit8 v2, v1, 0xc

    .line 1
    array-length v3, v0

    const-string v5, "illegal input "

    if-gt v2, v3, :cond_7

    .line 2
    aget-char v3, v0, v1

    add-int/lit8 v6, v1, 0x1

    .line 3
    aget-char v6, v0, v6

    add-int/lit8 v7, v1, 0x2

    .line 4
    aget-char v7, v0, v7

    add-int/lit8 v8, v1, 0x3

    .line 5
    aget-char v8, v0, v8

    add-int/lit8 v9, v1, 0x4

    .line 6
    aget-char v9, v0, v9

    add-int/lit8 v10, v1, 0x5

    .line 7
    aget-char v10, v0, v10

    add-int/lit8 v11, v1, 0x6

    .line 8
    aget-char v11, v0, v11

    add-int/lit8 v12, v1, 0x7

    .line 9
    aget-char v12, v0, v12

    add-int/lit8 v13, v1, 0x8

    .line 10
    aget-char v13, v0, v13

    add-int/lit8 v14, v1, 0x9

    .line 11
    aget-char v14, v0, v14

    add-int/lit8 v15, v1, 0xa

    .line 12
    aget-char v15, v0, v15

    add-int/lit8 v16, v1, 0xb

    .line 13
    aget-char v4, v0, v16

    move-object/from16 v16, v5

    const/16 v5, 0x30

    if-lt v3, v5, :cond_6

    const/16 v0, 0x39

    if-gt v3, v0, :cond_5

    if-lt v6, v5, :cond_5

    if-gt v6, v0, :cond_5

    if-lt v7, v5, :cond_5

    if-gt v7, v0, :cond_5

    if-lt v8, v5, :cond_5

    if-gt v8, v0, :cond_5

    sub-int/2addr v3, v5

    mul-int/lit16 v3, v3, 0x3e8

    sub-int/2addr v6, v5

    mul-int/lit8 v6, v6, 0x64

    add-int/2addr v3, v6

    sub-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v3, v7

    sub-int/2addr v8, v5

    add-int v17, v3, v8

    if-lt v9, v5, :cond_4

    if-gt v9, v0, :cond_4

    if-lt v10, v5, :cond_4

    if-gt v10, v0, :cond_4

    sub-int/2addr v9, v5

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v5

    add-int v18, v9, v10

    if-lt v11, v5, :cond_3

    if-gt v11, v0, :cond_3

    if-lt v12, v5, :cond_3

    if-gt v12, v0, :cond_3

    sub-int/2addr v11, v5

    mul-int/lit8 v11, v11, 0xa

    sub-int/2addr v12, v5

    add-int v19, v11, v12

    if-lt v13, v5, :cond_2

    if-gt v13, v0, :cond_2

    if-lt v14, v5, :cond_2

    if-gt v14, v0, :cond_2

    sub-int/2addr v13, v5

    mul-int/lit8 v13, v13, 0xa

    sub-int/2addr v14, v5

    add-int v20, v13, v14

    if-lt v15, v5, :cond_1

    if-gt v15, v0, :cond_1

    if-lt v4, v5, :cond_1

    if-gt v4, v0, :cond_1

    sub-int/2addr v15, v5

    mul-int/lit8 v15, v15, 0xa

    sub-int/2addr v4, v5

    add-int v21, v15, v4

    if-nez v17, :cond_0

    if-nez v18, :cond_0

    if-nez v19, :cond_0

    if-nez v20, :cond_0

    if-nez v21, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v22, 0x0

    .line 14
    invoke-static/range {v17 .. v22}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 16
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v16

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_2
    move-object/from16 v3, p0

    move-object/from16 v4, v16

    .line 17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 18
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_3
    move-object/from16 v3, p0

    move-object/from16 v4, v16

    .line 19
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 20
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_4
    move-object/from16 v3, p0

    move-object/from16 v4, v16

    .line 21
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 22
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_5
    move-object/from16 v3, p0

    goto :goto_0

    :cond_6
    move-object v3, v0

    :goto_0
    move-object/from16 v4, v16

    .line 23
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 24
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_7
    move-object v3, v0

    move-object v4, v5

    .line 25
    new-instance v0, Ljava/lang/String;

    array-length v2, v3

    sub-int/2addr v2, v1

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 26
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1
.end method

.method public static parseLocalDateTime14([BI)Ljava/time/LocalDateTime;
    .locals 22

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0xe

    .line 17
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 18
    :cond_0
    aget-byte v1, v0, p1

    int-to-char v1, v1

    add-int/lit8 v2, p1, 0x1

    .line 19
    aget-byte v2, v0, v2

    int-to-char v2, v2

    add-int/lit8 v4, p1, 0x2

    .line 20
    aget-byte v4, v0, v4

    int-to-char v4, v4

    add-int/lit8 v5, p1, 0x3

    .line 21
    aget-byte v5, v0, v5

    int-to-char v5, v5

    add-int/lit8 v6, p1, 0x4

    .line 22
    aget-byte v6, v0, v6

    int-to-char v6, v6

    add-int/lit8 v7, p1, 0x5

    .line 23
    aget-byte v7, v0, v7

    int-to-char v7, v7

    add-int/lit8 v8, p1, 0x6

    .line 24
    aget-byte v8, v0, v8

    int-to-char v8, v8

    add-int/lit8 v9, p1, 0x7

    .line 25
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v10, p1, 0x8

    .line 26
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, p1, 0x9

    .line 27
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, p1, 0xa

    .line 28
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, p1, 0xb

    .line 29
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, p1, 0xc

    .line 30
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, p1, 0xd

    .line 31
    aget-byte v0, v0, v15

    int-to-char v0, v0

    const/16 v15, 0x30

    if-lt v1, v15, :cond_7

    const/16 v3, 0x39

    if-gt v1, v3, :cond_6

    if-lt v2, v15, :cond_6

    if-gt v2, v3, :cond_6

    if-lt v4, v15, :cond_6

    if-gt v4, v3, :cond_6

    if-lt v5, v15, :cond_6

    if-gt v5, v3, :cond_6

    sub-int/2addr v1, v15

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v2, v15

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    sub-int/2addr v4, v15

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v1, v4

    sub-int/2addr v5, v15

    add-int v16, v1, v5

    if-lt v6, v15, :cond_5

    if-gt v6, v3, :cond_5

    if-lt v7, v15, :cond_5

    if-gt v7, v3, :cond_5

    sub-int/2addr v6, v15

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v7, v15

    add-int v17, v6, v7

    if-lt v8, v15, :cond_4

    if-gt v8, v3, :cond_4

    if-lt v9, v15, :cond_4

    if-gt v9, v3, :cond_4

    sub-int/2addr v8, v15

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v9, v15

    add-int v18, v8, v9

    if-lt v10, v15, :cond_3

    if-gt v10, v3, :cond_3

    if-lt v11, v15, :cond_3

    if-gt v11, v3, :cond_3

    sub-int/2addr v10, v15

    mul-int/lit8 v10, v10, 0xa

    sub-int/2addr v11, v15

    add-int v19, v10, v11

    if-lt v12, v15, :cond_2

    if-gt v12, v3, :cond_2

    if-lt v13, v15, :cond_2

    if-gt v13, v3, :cond_2

    sub-int/2addr v12, v15

    mul-int/lit8 v12, v12, 0xa

    sub-int/2addr v13, v15

    add-int v20, v12, v13

    if-lt v14, v15, :cond_1

    if-gt v14, v3, :cond_1

    if-lt v0, v15, :cond_1

    if-gt v0, v3, :cond_1

    sub-int/2addr v14, v15

    mul-int/lit8 v14, v14, 0xa

    sub-int/2addr v0, v15

    add-int v21, v14, v0

    .line 32
    invoke-static/range {v16 .. v21}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    move-object v0, v3

    :goto_0
    return-object v0
.end method

.method public static parseLocalDateTime14([CI)Ljava/time/LocalDateTime;
    .locals 22

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0xe

    .line 1
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 2
    :cond_0
    aget-char v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 3
    aget-char v2, v0, v2

    add-int/lit8 v4, p1, 0x2

    .line 4
    aget-char v4, v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 5
    aget-char v5, v0, v5

    add-int/lit8 v6, p1, 0x4

    .line 6
    aget-char v6, v0, v6

    add-int/lit8 v7, p1, 0x5

    .line 7
    aget-char v7, v0, v7

    add-int/lit8 v8, p1, 0x6

    .line 8
    aget-char v8, v0, v8

    add-int/lit8 v9, p1, 0x7

    .line 9
    aget-char v9, v0, v9

    add-int/lit8 v10, p1, 0x8

    .line 10
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 11
    aget-char v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 12
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 13
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xc

    .line 14
    aget-char v14, v0, v14

    add-int/lit8 v15, p1, 0xd

    .line 15
    aget-char v0, v0, v15

    const/16 v15, 0x30

    if-lt v1, v15, :cond_7

    const/16 v3, 0x39

    if-gt v1, v3, :cond_6

    if-lt v2, v15, :cond_6

    if-gt v2, v3, :cond_6

    if-lt v4, v15, :cond_6

    if-gt v4, v3, :cond_6

    if-lt v5, v15, :cond_6

    if-gt v5, v3, :cond_6

    sub-int/2addr v1, v15

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v2, v15

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    sub-int/2addr v4, v15

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v1, v4

    sub-int/2addr v5, v15

    add-int v16, v1, v5

    if-lt v6, v15, :cond_5

    if-gt v6, v3, :cond_5

    if-lt v7, v15, :cond_5

    if-gt v7, v3, :cond_5

    sub-int/2addr v6, v15

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v7, v15

    add-int v17, v6, v7

    if-lt v8, v15, :cond_4

    if-gt v8, v3, :cond_4

    if-lt v9, v15, :cond_4

    if-gt v9, v3, :cond_4

    sub-int/2addr v8, v15

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v9, v15

    add-int v18, v8, v9

    if-lt v10, v15, :cond_3

    if-gt v10, v3, :cond_3

    if-lt v11, v15, :cond_3

    if-gt v11, v3, :cond_3

    sub-int/2addr v10, v15

    mul-int/lit8 v10, v10, 0xa

    sub-int/2addr v11, v15

    add-int v19, v10, v11

    if-lt v12, v15, :cond_2

    if-gt v12, v3, :cond_2

    if-lt v13, v15, :cond_2

    if-gt v13, v3, :cond_2

    sub-int/2addr v12, v15

    mul-int/lit8 v12, v12, 0xa

    sub-int/2addr v13, v15

    add-int v20, v12, v13

    if-lt v14, v15, :cond_1

    if-gt v14, v3, :cond_1

    if-lt v0, v15, :cond_1

    if-gt v0, v3, :cond_1

    sub-int/2addr v14, v15

    mul-int/lit8 v14, v14, 0xa

    sub-int/2addr v0, v15

    add-int v21, v14, v0

    .line 16
    invoke-static/range {v16 .. v21}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    move-object v0, v3

    :goto_0
    return-object v0
.end method

.method public static parseLocalDateTime16([BI)Ljava/time/LocalDateTime;
    .locals 25

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x10

    .line 25
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 26
    :cond_0
    aget-byte v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 27
    aget-byte v2, v0, v2

    add-int/lit8 v4, p1, 0x2

    .line 28
    aget-byte v4, v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 29
    aget-byte v5, v0, v5

    add-int/lit8 v6, p1, 0x4

    .line 30
    aget-byte v6, v0, v6

    add-int/lit8 v7, p1, 0x5

    .line 31
    aget-byte v7, v0, v7

    add-int/lit8 v8, p1, 0x6

    .line 32
    aget-byte v8, v0, v8

    add-int/lit8 v9, p1, 0x7

    .line 33
    aget-byte v9, v0, v9

    add-int/lit8 v10, p1, 0x8

    .line 34
    aget-byte v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 35
    aget-byte v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 36
    aget-byte v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 37
    aget-byte v13, v0, v13

    add-int/lit8 v14, p1, 0xc

    .line 38
    aget-byte v14, v0, v14

    add-int/lit8 v15, p1, 0xd

    .line 39
    aget-byte v15, v0, v15

    add-int/lit8 v16, p1, 0xe

    .line 40
    aget-byte v3, v0, v16

    add-int/lit8 v16, p1, 0xf

    .line 41
    aget-byte v0, v0, v16

    move/from16 p0, v0

    const/16 v0, 0x2d

    if-ne v6, v0, :cond_2

    if-ne v9, v0, :cond_2

    const/16 v0, 0x54

    if-eq v12, v0, :cond_1

    const/16 v0, 0x20

    if-ne v12, v0, :cond_2

    :cond_1
    const/16 v0, 0x3a

    if-ne v15, v0, :cond_2

    int-to-char v0, v1

    int-to-char v1, v2

    int-to-char v2, v4

    int-to-char v4, v5

    int-to-char v5, v7

    int-to-char v6, v8

    int-to-char v7, v10

    int-to-char v8, v11

    int-to-char v9, v13

    int-to-char v10, v14

    int-to-char v3, v3

    move/from16 v11, p0

    int-to-char v11, v11

    move v12, v11

    const/16 v13, 0x30

    const/16 v14, 0x30

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    goto :goto_0

    :cond_2
    move/from16 v0, p0

    move/from16 v20, v3

    const/16 v3, 0x54

    if-ne v10, v3, :cond_3

    const/16 v3, 0x5a

    if-ne v0, v3, :cond_3

    int-to-char v0, v1

    int-to-char v1, v2

    int-to-char v2, v4

    int-to-char v4, v5

    int-to-char v3, v6

    int-to-char v6, v7

    int-to-char v5, v8

    int-to-char v8, v9

    int-to-char v7, v11

    int-to-char v9, v12

    int-to-char v10, v13

    int-to-char v11, v14

    int-to-char v12, v15

    move/from16 v13, v20

    int-to-char v13, v13

    move v14, v13

    move v13, v12

    move v12, v11

    move v11, v9

    move v9, v8

    move v8, v5

    move v5, v3

    move v3, v10

    move v10, v7

    :goto_0
    const/16 v7, 0x30

    goto/16 :goto_2

    :cond_3
    move/from16 v3, v20

    move/from16 v20, v14

    const/16 v14, -0x1b

    move/from16 v23, v13

    const/16 v13, -0x1a

    if-ne v6, v14, :cond_4

    const/16 v14, -0x47

    if-ne v7, v14, :cond_4

    const/16 v14, -0x4c

    if-ne v8, v14, :cond_4

    if-ne v10, v13, :cond_4

    const/16 v14, -0x64

    if-ne v11, v14, :cond_4

    const/16 v14, -0x78

    if-ne v12, v14, :cond_4

    if-ne v15, v13, :cond_4

    const/16 v14, -0x69

    if-ne v3, v14, :cond_4

    const/16 v14, -0x5b

    if-ne v0, v14, :cond_4

    int-to-char v0, v1

    int-to-char v1, v2

    int-to-char v2, v4

    int-to-char v4, v5

    int-to-char v6, v9

    move/from16 v14, v23

    int-to-char v3, v14

    move/from16 v5, v20

    int-to-char v8, v5

    move v9, v8

    const/16 v5, 0x30

    const/16 v7, 0x30

    const/16 v10, 0x30

    const/16 v11, 0x30

    const/16 v12, 0x30

    const/16 v13, 0x30

    const/16 v14, 0x30

    move v8, v3

    goto/16 :goto_1

    :cond_4
    move/from16 v24, v20

    move/from16 v14, v23

    const/16 v13, -0x1b

    if-ne v6, v13, :cond_5

    const/16 v13, -0x47

    if-ne v7, v13, :cond_5

    const/16 v13, -0x4c

    if-ne v8, v13, :cond_5

    const/16 v13, -0x1a

    if-ne v11, v13, :cond_5

    const/16 v13, -0x64

    if-ne v12, v13, :cond_5

    const/16 v13, -0x78

    if-ne v14, v13, :cond_5

    const/16 v13, -0x1a

    if-ne v15, v13, :cond_5

    const/16 v13, -0x69

    if-ne v3, v13, :cond_5

    const/16 v13, -0x5b

    if-ne v0, v13, :cond_5

    int-to-char v0, v1

    int-to-char v1, v2

    int-to-char v2, v4

    int-to-char v4, v5

    int-to-char v3, v9

    int-to-char v6, v10

    move/from16 v13, v24

    int-to-char v8, v13

    move v5, v3

    move v9, v8

    const/16 v3, 0x30

    const/16 v7, 0x30

    const/16 v8, 0x30

    const/16 v10, 0x30

    const/16 v11, 0x30

    const/16 v12, 0x30

    const/16 v13, 0x30

    const/16 v14, 0x30

    goto/16 :goto_2

    :cond_5
    move/from16 v13, v24

    move/from16 p0, v0

    const/16 v0, 0x2d

    if-ne v6, v0, :cond_7

    if-ne v9, v0, :cond_7

    const/16 v0, 0x54

    if-eq v12, v0, :cond_6

    const/16 v0, 0x20

    if-ne v12, v0, :cond_8

    :cond_6
    const/16 v0, 0x3a

    if-ne v13, v0, :cond_7

    if-ne v3, v0, :cond_7

    int-to-char v0, v1

    int-to-char v1, v2

    int-to-char v2, v4

    int-to-char v4, v5

    int-to-char v3, v7

    int-to-char v6, v8

    int-to-char v5, v10

    int-to-char v8, v11

    int-to-char v7, v14

    int-to-char v9, v15

    move/from16 v10, p0

    int-to-char v10, v10

    move v11, v7

    move v12, v9

    move v14, v10

    const/16 v7, 0x30

    const/16 v10, 0x30

    const/16 v13, 0x30

    move v9, v8

    move v8, v5

    move v5, v3

    :goto_1
    const/16 v3, 0x30

    goto/16 :goto_2

    :cond_7
    const/16 v0, 0x20

    :cond_8
    if-ne v2, v0, :cond_b

    if-ne v7, v0, :cond_b

    if-ne v12, v0, :cond_b

    const/16 v0, 0x3a

    if-ne v15, v0, :cond_a

    int-to-char v0, v8

    int-to-char v2, v9

    int-to-char v7, v10

    int-to-char v8, v11

    int-to-char v4, v4

    int-to-char v5, v5

    int-to-char v6, v6

    .line 42
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v4

    if-lez v4, :cond_9

    .line 43
    div-int/lit8 v5, v4, 0xa

    const/16 v6, 0x30

    add-int/2addr v5, v6

    int-to-char v5, v5

    .line 44
    rem-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v6

    int-to-char v6, v4

    int-to-char v1, v1

    int-to-char v9, v14

    int-to-char v10, v13

    int-to-char v3, v3

    move/from16 v4, p0

    int-to-char v11, v4

    move v4, v8

    move v12, v11

    const/16 v8, 0x30

    const/16 v13, 0x30

    const/16 v14, 0x30

    move v11, v10

    move v10, v9

    move v9, v1

    move v1, v2

    move v2, v7

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    return-object v0

    :cond_a
    const/16 v0, 0x20

    :cond_b
    if-ne v2, v0, :cond_13

    if-ne v7, v0, :cond_13

    if-ne v12, v0, :cond_13

    const/16 v0, 0x3a

    if-ne v13, v0, :cond_13

    if-ne v3, v0, :cond_13

    int-to-char v0, v1

    int-to-char v1, v4

    int-to-char v2, v5

    int-to-char v3, v6

    .line 45
    invoke-static {v1, v2, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_12

    .line 46
    div-int/lit8 v2, v1, 0xa

    const/16 v7, 0x30

    add-int/2addr v2, v7

    int-to-char v5, v2

    .line 47
    rem-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v7

    int-to-char v6, v1

    int-to-char v1, v8

    int-to-char v2, v9

    int-to-char v3, v10

    int-to-char v4, v11

    int-to-char v10, v14

    int-to-char v11, v15

    move/from16 v8, p0

    int-to-char v13, v8

    move v9, v0

    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v7

    move v8, v3

    move v12, v11

    move v14, v13

    move v13, v8

    move v11, v10

    move v10, v13

    :goto_2
    if-lt v0, v7, :cond_11

    const/16 v15, 0x39

    if-gt v0, v15, :cond_11

    if-lt v1, v7, :cond_11

    if-gt v1, v15, :cond_11

    if-lt v2, v7, :cond_11

    if-gt v2, v15, :cond_11

    if-lt v4, v7, :cond_11

    if-gt v4, v15, :cond_11

    sub-int/2addr v0, v7

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v7

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    sub-int/2addr v2, v7

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v0, v2

    sub-int/2addr v4, v7

    add-int v17, v0, v4

    if-lt v5, v7, :cond_10

    if-gt v5, v15, :cond_10

    if-lt v6, v7, :cond_10

    if-gt v6, v15, :cond_10

    sub-int/2addr v5, v7

    mul-int/lit8 v5, v5, 0xa

    sub-int/2addr v6, v7

    add-int v18, v5, v6

    if-lt v8, v7, :cond_f

    if-gt v8, v15, :cond_f

    if-lt v9, v7, :cond_f

    if-gt v9, v15, :cond_f

    sub-int/2addr v8, v7

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v9, v7

    add-int v19, v8, v9

    if-lt v10, v7, :cond_e

    if-gt v10, v15, :cond_e

    if-lt v11, v7, :cond_e

    if-gt v11, v15, :cond_e

    sub-int/2addr v10, v7

    mul-int/lit8 v10, v10, 0xa

    sub-int/2addr v11, v7

    add-int v20, v10, v11

    if-lt v3, v7, :cond_d

    if-gt v3, v15, :cond_d

    if-lt v12, v7, :cond_d

    if-gt v12, v15, :cond_d

    sub-int/2addr v3, v7

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v12, v7

    add-int v21, v3, v12

    if-lt v13, v7, :cond_c

    if-gt v13, v15, :cond_c

    if-lt v14, v7, :cond_c

    if-gt v14, v15, :cond_c

    sub-int/2addr v13, v7

    mul-int/lit8 v13, v13, 0xa

    sub-int/2addr v14, v7

    add-int v22, v13, v14

    .line 48
    invoke-static/range {v17 .. v22}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0

    :cond_e
    const/4 v0, 0x0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseLocalDateTime16([CI)Ljava/time/LocalDateTime;
    .locals 24

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x10

    .line 1
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 2
    :cond_0
    aget-char v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 3
    aget-char v2, v0, v2

    add-int/lit8 v4, p1, 0x2

    .line 4
    aget-char v4, v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 5
    aget-char v5, v0, v5

    add-int/lit8 v6, p1, 0x4

    .line 6
    aget-char v6, v0, v6

    add-int/lit8 v7, p1, 0x5

    .line 7
    aget-char v7, v0, v7

    add-int/lit8 v8, p1, 0x6

    .line 8
    aget-char v8, v0, v8

    add-int/lit8 v9, p1, 0x7

    .line 9
    aget-char v9, v0, v9

    add-int/lit8 v10, p1, 0x8

    .line 10
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 11
    aget-char v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 12
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 13
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xc

    .line 14
    aget-char v14, v0, v14

    add-int/lit8 v15, p1, 0xd

    .line 15
    aget-char v15, v0, v15

    add-int/lit8 v16, p1, 0xe

    .line 16
    aget-char v3, v0, v16

    add-int/lit8 v16, p1, 0xf

    .line 17
    aget-char v0, v0, v16

    move/from16 v16, v1

    const/16 v1, 0x2d

    if-ne v6, v1, :cond_2

    if-ne v9, v1, :cond_2

    const/16 v1, 0x54

    if-eq v12, v1, :cond_1

    const/16 v1, 0x20

    if-ne v12, v1, :cond_2

    :cond_1
    const/16 v1, 0x3a

    if-ne v15, v1, :cond_2

    move v9, v3

    move v6, v7

    move v7, v8

    move v8, v10

    move v12, v14

    move/from16 v1, v16

    const/16 v3, 0x30

    const/16 v15, 0x30

    move v14, v0

    const/16 v0, 0x30

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x54

    if-ne v10, v1, :cond_3

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_3

    move v0, v3

    move/from16 v1, v16

    const/16 v3, 0x30

    move/from16 v23, v11

    move v11, v9

    move v9, v13

    move/from16 v13, v23

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x2d

    if-ne v6, v1, :cond_5

    if-ne v9, v1, :cond_5

    const/16 v1, 0x54

    if-eq v12, v1, :cond_4

    const/16 v1, 0x20

    if-ne v12, v1, :cond_6

    :cond_4
    const/16 v1, 0x3a

    if-ne v14, v1, :cond_5

    if-ne v3, v1, :cond_5

    move v6, v7

    move v7, v8

    move v8, v10

    move v12, v13

    move v14, v15

    move/from16 v1, v16

    const/16 v3, 0x30

    const/16 v9, 0x30

    const/16 v13, 0x30

    const/16 v15, 0x30

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x20

    :cond_6
    if-ne v2, v1, :cond_9

    if-ne v7, v1, :cond_9

    if-ne v12, v1, :cond_9

    const/16 v1, 0x3a

    if-ne v15, v1, :cond_8

    .line 18
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_7

    .line 19
    div-int/lit8 v2, v1, 0xa

    const/16 v4, 0x30

    add-int/2addr v2, v4

    int-to-char v6, v2

    .line 20
    rem-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v4

    int-to-char v7, v1

    move v1, v8

    move v2, v9

    move v4, v10

    move v5, v11

    move v12, v14

    move/from16 v11, v16

    const/16 v8, 0x30

    const/16 v15, 0x30

    move v14, v0

    move v9, v3

    const/16 v0, 0x30

    const/16 v3, 0x30

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    return-object v0

    :cond_8
    const/16 v1, 0x20

    :cond_9
    if-ne v2, v1, :cond_11

    if-ne v7, v1, :cond_11

    if-ne v12, v1, :cond_11

    const/16 v1, 0x3a

    if-ne v14, v1, :cond_11

    if-ne v3, v1, :cond_11

    .line 21
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_10

    .line 22
    div-int/lit8 v2, v1, 0xa

    const/16 v3, 0x30

    add-int/2addr v2, v3

    int-to-char v6, v2

    .line 23
    rem-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v3

    int-to-char v7, v1

    move v1, v8

    move v2, v9

    move v4, v10

    move v5, v11

    move v12, v13

    move v14, v15

    move/from16 v11, v16

    move v8, v3

    move v9, v8

    move v13, v9

    move v15, v13

    :goto_0
    if-lt v1, v3, :cond_f

    const/16 v10, 0x39

    if-gt v1, v10, :cond_f

    if-lt v2, v3, :cond_f

    if-gt v2, v10, :cond_f

    if-lt v4, v3, :cond_f

    if-gt v4, v10, :cond_f

    if-lt v5, v3, :cond_f

    if-gt v5, v10, :cond_f

    sub-int/2addr v1, v3

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    sub-int/2addr v4, v3

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v1, v4

    sub-int/2addr v5, v3

    add-int v17, v1, v5

    if-lt v6, v3, :cond_e

    if-gt v6, v10, :cond_e

    if-lt v7, v3, :cond_e

    if-gt v7, v10, :cond_e

    sub-int/2addr v6, v3

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v7, v3

    add-int v18, v6, v7

    if-lt v8, v3, :cond_d

    if-gt v8, v10, :cond_d

    if-lt v11, v3, :cond_d

    if-gt v11, v10, :cond_d

    sub-int/2addr v8, v3

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v11, v3

    add-int v19, v8, v11

    if-lt v13, v3, :cond_c

    if-gt v13, v10, :cond_c

    if-lt v12, v3, :cond_c

    if-gt v12, v10, :cond_c

    sub-int/2addr v13, v3

    mul-int/lit8 v13, v13, 0xa

    sub-int/2addr v12, v3

    add-int v20, v13, v12

    if-lt v9, v3, :cond_b

    if-gt v9, v10, :cond_b

    if-lt v14, v3, :cond_b

    if-gt v14, v10, :cond_b

    sub-int/2addr v9, v3

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v14, v3

    add-int v21, v9, v14

    if-lt v15, v3, :cond_a

    if-gt v15, v10, :cond_a

    if-lt v0, v3, :cond_a

    if-gt v0, v10, :cond_a

    sub-int/2addr v15, v3

    mul-int/lit8 v15, v15, 0xa

    sub-int/2addr v0, v3

    add-int v22, v15, v0

    .line 24
    invoke-static/range {v17 .. v22}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_a
    const/4 v0, 0x0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0

    :cond_e
    const/4 v0, 0x0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseLocalDateTime17([BI)Ljava/time/LocalDateTime;
    .locals 32

    move-object/from16 v0, p0

    move/from16 v1, p1

    add-int/lit8 v2, v1, 0x11

    .line 37
    array-length v3, v0

    const-string v4, "illegal input "

    if-gt v2, v3, :cond_19

    .line 38
    aget-byte v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    .line 39
    aget-byte v3, v0, v3

    add-int/lit8 v6, v1, 0x2

    .line 40
    aget-byte v6, v0, v6

    add-int/lit8 v7, v1, 0x3

    .line 41
    aget-byte v7, v0, v7

    add-int/lit8 v8, v1, 0x4

    .line 42
    aget-byte v8, v0, v8

    add-int/lit8 v9, v1, 0x5

    .line 43
    aget-byte v9, v0, v9

    add-int/lit8 v10, v1, 0x6

    .line 44
    aget-byte v10, v0, v10

    add-int/lit8 v11, v1, 0x7

    .line 45
    aget-byte v11, v0, v11

    add-int/lit8 v12, v1, 0x8

    .line 46
    aget-byte v12, v0, v12

    add-int/lit8 v13, v1, 0x9

    .line 47
    aget-byte v13, v0, v13

    add-int/lit8 v14, v1, 0xa

    .line 48
    aget-byte v14, v0, v14

    add-int/lit8 v15, v1, 0xb

    .line 49
    aget-byte v15, v0, v15

    add-int/lit8 v16, v1, 0xc

    .line 50
    aget-byte v5, v0, v16

    add-int/lit8 v16, v1, 0xd

    move-object/from16 v17, v4

    .line 51
    aget-byte v4, v0, v16

    add-int/lit8 v16, v1, 0xe

    move/from16 v18, v5

    .line 52
    aget-byte v5, v0, v16

    add-int/lit8 v16, v1, 0xf

    move/from16 v19, v5

    .line 53
    aget-byte v5, v0, v16

    add-int/lit8 v16, v1, 0x10

    .line 54
    aget-byte v1, v0, v16

    const/16 v0, 0x2d

    if-ne v8, v0, :cond_1

    if-ne v11, v0, :cond_1

    const/16 v0, 0x54

    if-eq v14, v0, :cond_0

    const/16 v0, 0x20

    if-ne v14, v0, :cond_1

    :cond_0
    const/16 v0, 0x3a

    if-ne v4, v0, :cond_1

    const/16 v0, 0x5a

    if-ne v1, v0, :cond_1

    int-to-char v0, v2

    int-to-char v1, v3

    int-to-char v2, v6

    int-to-char v3, v7

    int-to-char v4, v9

    int-to-char v6, v10

    int-to-char v7, v12

    int-to-char v8, v13

    int-to-char v9, v15

    move/from16 v10, v18

    int-to-char v10, v10

    move/from16 v11, v19

    int-to-char v11, v11

    int-to-char v5, v5

    move v13, v10

    move v14, v11

    move-object/from16 v29, v17

    const/16 v11, 0x30

    const/16 v12, 0x30

    const/16 v26, 0x0

    move v10, v7

    move v7, v3

    :goto_0
    move v3, v1

    move v1, v0

    const/16 v0, 0x30

    goto/16 :goto_5

    :cond_1
    move/from16 v0, v18

    move/from16 v18, v1

    move/from16 v1, v19

    move/from16 v19, v5

    const/16 v5, 0x2d

    if-ne v8, v5, :cond_3

    if-ne v10, v5, :cond_3

    const/16 v5, 0x20

    if-eq v12, v5, :cond_2

    const/16 v5, 0x54

    if-ne v12, v5, :cond_3

    :cond_2
    const/16 v5, 0x3a

    if-ne v15, v5, :cond_3

    if-ne v1, v5, :cond_3

    int-to-char v1, v2

    int-to-char v2, v3

    int-to-char v3, v6

    int-to-char v5, v7

    int-to-char v6, v9

    int-to-char v8, v11

    int-to-char v7, v13

    int-to-char v9, v14

    int-to-char v0, v0

    int-to-char v4, v4

    move/from16 v10, v19

    int-to-char v10, v10

    move/from16 v11, v18

    int-to-char v11, v11

    move v14, v0

    move v13, v9

    move v12, v11

    move-object/from16 v29, v17

    const/16 v0, 0x30

    const/16 v26, 0x0

    move v9, v7

    move v11, v10

    const/16 v10, 0x30

    move v7, v5

    move v5, v4

    const/16 v4, 0x30

    move/from16 v30, v3

    move v3, v2

    move/from16 v2, v30

    goto/16 :goto_5

    :cond_3
    move/from16 v16, v4

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v18, v0

    const/16 v0, -0x1b

    if-ne v8, v0, :cond_4

    const/16 v0, -0x47

    if-ne v9, v0, :cond_4

    const/16 v0, -0x4c

    if-ne v10, v0, :cond_4

    const/16 v0, -0x1a

    if-ne v13, v0, :cond_4

    const/16 v0, -0x64

    if-ne v14, v0, :cond_4

    const/16 v0, -0x78

    if-ne v15, v0, :cond_4

    const/16 v0, -0x1a

    if-ne v1, v0, :cond_4

    const/16 v0, -0x69

    if-ne v5, v0, :cond_4

    const/16 v0, -0x5b

    if-ne v4, v0, :cond_4

    int-to-char v0, v2

    int-to-char v1, v3

    int-to-char v2, v6

    int-to-char v3, v7

    int-to-char v4, v11

    int-to-char v6, v12

    move/from16 v5, v18

    int-to-char v5, v5

    move/from16 v7, v16

    int-to-char v8, v7

    move v7, v3

    move v10, v5

    move-object/from16 v29, v17

    const/16 v5, 0x30

    const/16 v9, 0x30

    const/16 v11, 0x30

    const/16 v12, 0x30

    const/16 v13, 0x30

    const/16 v14, 0x30

    const/16 v26, 0x0

    goto/16 :goto_0

    :cond_4
    move/from16 v0, v18

    move/from16 v18, v4

    move/from16 v4, v16

    move/from16 v19, v5

    const/16 v5, 0x20

    if-ne v6, v5, :cond_7

    if-ne v10, v5, :cond_7

    if-ne v15, v5, :cond_7

    const/16 v5, 0x3a

    if-ne v1, v5, :cond_6

    int-to-char v1, v11

    int-to-char v5, v12

    int-to-char v6, v13

    int-to-char v10, v14

    int-to-char v7, v7

    int-to-char v8, v8

    int-to-char v9, v9

    .line 55
    invoke-static {v7, v8, v9}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v7

    if-lez v7, :cond_5

    .line 56
    div-int/lit8 v8, v7, 0xa

    const/16 v9, 0x30

    add-int/2addr v8, v9

    int-to-char v8, v8

    .line 57
    rem-int/lit8 v7, v7, 0xa

    add-int/2addr v7, v9

    int-to-char v7, v7

    int-to-char v2, v2

    int-to-char v3, v3

    int-to-char v0, v0

    int-to-char v4, v4

    move/from16 v9, v19

    int-to-char v9, v9

    move/from16 v11, v18

    int-to-char v11, v11

    move v13, v4

    move v4, v8

    move v14, v9

    move-object/from16 v29, v17

    const/16 v12, 0x30

    const/16 v26, 0x0

    move v9, v0

    move v8, v3

    move v3, v5

    move v5, v11

    const/16 v0, 0x30

    const/16 v11, 0x30

    move/from16 v30, v10

    move v10, v2

    move v2, v6

    move v6, v7

    :goto_1
    move/from16 v7, v30

    goto/16 :goto_5

    .line 58
    :cond_5
    new-instance v0, Ljava/lang/String;

    const/16 v2, 0x11

    move-object/from16 v5, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 59
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_6
    move-object/from16 v21, v17

    move/from16 v20, v18

    const/16 v5, 0x20

    goto :goto_2

    :cond_7
    move-object/from16 v21, v17

    move/from16 v20, v18

    :goto_2
    if-ne v3, v5, :cond_9

    if-ne v9, v5, :cond_9

    if-ne v14, v5, :cond_9

    const/16 v5, 0x3a

    if-ne v0, v5, :cond_9

    if-ne v1, v5, :cond_9

    int-to-char v0, v2

    int-to-char v1, v6

    int-to-char v2, v7

    int-to-char v3, v8

    .line 60
    invoke-static {v1, v2, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_8

    .line 61
    div-int/lit8 v2, v1, 0xa

    const/16 v3, 0x30

    add-int/2addr v2, v3

    int-to-char v2, v2

    .line 62
    rem-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v3

    int-to-char v6, v1

    int-to-char v1, v10

    int-to-char v3, v11

    int-to-char v5, v12

    int-to-char v7, v13

    int-to-char v8, v15

    int-to-char v4, v4

    move/from16 v9, v19

    int-to-char v9, v9

    move/from16 v10, v20

    int-to-char v10, v10

    move v13, v8

    move v11, v9

    move v12, v10

    move-object/from16 v29, v21

    const/16 v9, 0x30

    const/16 v10, 0x30

    const/16 v14, 0x30

    const/16 v26, 0x0

    move v8, v0

    const/16 v0, 0x30

    move/from16 v30, v4

    move v4, v2

    move v2, v5

    move/from16 v5, v30

    goto/16 :goto_5

    .line 63
    :cond_8
    new-instance v0, Ljava/lang/String;

    const/16 v2, 0x11

    move-object/from16 v5, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 64
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v21

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_9
    move/from16 v5, v19

    move/from16 v22, v20

    move-object/from16 v23, v21

    move/from16 v19, v1

    const/16 v1, 0x20

    if-ne v3, v1, :cond_c

    if-ne v9, v1, :cond_c

    if-ne v14, v1, :cond_c

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_b

    if-ne v5, v1, :cond_b

    int-to-char v0, v2

    int-to-char v1, v6

    int-to-char v2, v7

    int-to-char v3, v8

    .line 65
    invoke-static {v1, v2, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_a

    .line 66
    div-int/lit8 v2, v1, 0xa

    const/16 v3, 0x30

    add-int/2addr v2, v3

    int-to-char v2, v2

    .line 67
    rem-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v3

    int-to-char v6, v1

    int-to-char v1, v10

    int-to-char v3, v11

    int-to-char v5, v12

    int-to-char v7, v13

    int-to-char v8, v15

    int-to-char v4, v4

    move/from16 v9, v19

    int-to-char v9, v9

    move/from16 v10, v22

    int-to-char v10, v10

    move v14, v4

    move v13, v8

    move v12, v10

    move-object/from16 v29, v23

    const/16 v10, 0x30

    const/16 v11, 0x30

    const/16 v26, 0x0

    move v8, v0

    move v4, v2

    move v2, v5

    move v5, v9

    const/16 v0, 0x30

    const/16 v9, 0x30

    goto/16 :goto_5

    .line 68
    :cond_a
    new-instance v0, Ljava/lang/String;

    const/16 v2, 0x11

    move-object/from16 v1, p0

    move/from16 v5, p1

    invoke-direct {v0, v1, v5, v2}, Ljava/lang/String;-><init>([BII)V

    .line 69
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v23

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_b
    move/from16 v24, v22

    move-object/from16 v25, v23

    const/16 v1, 0x20

    goto :goto_3

    :cond_c
    move/from16 v24, v22

    move-object/from16 v25, v23

    :goto_3
    if-ne v3, v1, :cond_f

    if-ne v9, v1, :cond_f

    if-ne v14, v1, :cond_f

    const/16 v1, 0x3a

    if-ne v4, v1, :cond_e

    if-ne v5, v1, :cond_e

    int-to-char v1, v2

    int-to-char v2, v6

    int-to-char v3, v7

    int-to-char v4, v8

    .line 70
    invoke-static {v2, v3, v4}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_d

    .line 71
    div-int/lit8 v3, v2, 0xa

    const/16 v4, 0x30

    add-int/2addr v3, v4

    int-to-char v3, v3

    .line 72
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v4

    int-to-char v6, v2

    int-to-char v2, v10

    int-to-char v4, v11

    int-to-char v5, v12

    int-to-char v7, v13

    int-to-char v8, v15

    int-to-char v0, v0

    move/from16 v9, v19

    int-to-char v9, v9

    move/from16 v10, v24

    int-to-char v10, v10

    move v13, v0

    move v12, v10

    move-object/from16 v29, v25

    const/16 v0, 0x30

    const/16 v10, 0x30

    const/16 v11, 0x30

    const/16 v14, 0x30

    const/16 v26, 0x0

    move/from16 v30, v8

    move v8, v1

    move v1, v2

    move v2, v5

    move v5, v9

    move/from16 v9, v30

    move/from16 v31, v4

    move v4, v3

    move/from16 v3, v31

    goto/16 :goto_5

    .line 73
    :cond_d
    new-instance v0, Ljava/lang/String;

    const/16 v2, 0x11

    move-object/from16 v1, p0

    move/from16 v5, p1

    invoke-direct {v0, v1, v5, v2}, Ljava/lang/String;-><init>([BII)V

    .line 74
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_e
    move/from16 v26, v24

    move-object/from16 v27, v25

    const/16 v1, 0x20

    goto :goto_4

    :cond_f
    move/from16 v26, v24

    move-object/from16 v27, v25

    :goto_4
    if-ne v6, v1, :cond_11

    if-ne v10, v1, :cond_11

    if-ne v15, v1, :cond_11

    const/16 v1, 0x3a

    if-ne v4, v1, :cond_11

    if-ne v5, v1, :cond_11

    int-to-char v1, v2

    int-to-char v2, v3

    int-to-char v3, v7

    int-to-char v4, v8

    int-to-char v5, v9

    .line 75
    invoke-static {v3, v4, v5}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v3

    if-lez v3, :cond_10

    .line 76
    div-int/lit8 v4, v3, 0xa

    const/16 v5, 0x30

    add-int/2addr v4, v5

    int-to-char v4, v4

    .line 77
    rem-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v5

    int-to-char v6, v3

    int-to-char v3, v11

    int-to-char v5, v12

    int-to-char v7, v13

    int-to-char v8, v14

    int-to-char v10, v0

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v9, v26

    int-to-char v11, v9

    move v13, v10

    move v12, v11

    move-object/from16 v29, v27

    const/16 v9, 0x30

    const/16 v11, 0x30

    const/16 v14, 0x30

    const/16 v26, 0x0

    move v10, v1

    move v1, v3

    move v3, v5

    move v5, v0

    const/16 v0, 0x30

    move/from16 v30, v8

    move v8, v2

    move v2, v7

    goto/16 :goto_1

    .line 78
    :cond_10
    new-instance v0, Ljava/lang/String;

    const/16 v2, 0x11

    move-object/from16 v1, p0

    move/from16 v5, p1

    invoke-direct {v0, v1, v5, v2}, Ljava/lang/String;-><init>([BII)V

    .line 79
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_11
    move/from16 v1, v19

    move/from16 v28, v26

    move-object/from16 v29, v27

    int-to-char v2, v2

    int-to-char v3, v3

    int-to-char v6, v6

    int-to-char v7, v7

    int-to-char v8, v8

    int-to-char v9, v9

    int-to-char v10, v10

    int-to-char v11, v11

    int-to-char v12, v12

    int-to-char v13, v13

    int-to-char v14, v14

    int-to-char v15, v15

    int-to-char v0, v0

    int-to-char v4, v4

    move/from16 v16, v0

    const/16 v0, 0x30

    if-lt v1, v0, :cond_18

    move/from16 v17, v2

    const/16 v2, 0x39

    if-gt v1, v2, :cond_18

    if-lt v5, v0, :cond_18

    if-gt v5, v2, :cond_18

    move/from16 v18, v3

    move/from16 v3, v28

    if-lt v3, v0, :cond_18

    if-gt v3, v2, :cond_18

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x64

    sub-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v1, v5

    add-int/lit8 v2, v3, -0x30

    add-int/2addr v1, v2

    const v2, 0xf4240

    mul-int/2addr v1, v2

    move/from16 v26, v1

    move v2, v6

    move v6, v9

    move v9, v12

    move v5, v15

    move/from16 v1, v17

    move/from16 v3, v18

    move v12, v4

    move v4, v8

    move v8, v11

    move/from16 v11, v16

    :goto_5
    if-lt v1, v0, :cond_17

    const/16 v15, 0x39

    if-gt v1, v15, :cond_17

    if-lt v3, v0, :cond_17

    if-gt v3, v15, :cond_17

    if-lt v2, v0, :cond_17

    if-gt v2, v15, :cond_17

    if-lt v7, v0, :cond_17

    if-gt v7, v15, :cond_17

    sub-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v1, v3

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    sub-int/2addr v7, v0

    add-int v20, v1, v7

    if-lt v4, v0, :cond_16

    const/16 v1, 0x39

    if-gt v4, v1, :cond_16

    if-lt v6, v0, :cond_16

    if-gt v6, v1, :cond_16

    sub-int/2addr v4, v0

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v6, v0

    add-int v21, v4, v6

    if-lt v10, v0, :cond_15

    if-gt v10, v1, :cond_15

    if-lt v8, v0, :cond_15

    if-gt v8, v1, :cond_15

    sub-int/2addr v10, v0

    mul-int/lit8 v10, v10, 0xa

    sub-int/2addr v8, v0

    add-int v22, v10, v8

    if-lt v9, v0, :cond_14

    if-gt v9, v1, :cond_14

    if-lt v13, v0, :cond_14

    if-gt v13, v1, :cond_14

    sub-int/2addr v9, v0

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v13, v0

    add-int v23, v9, v13

    if-lt v14, v0, :cond_13

    if-gt v14, v1, :cond_13

    if-lt v5, v0, :cond_13

    if-gt v5, v1, :cond_13

    sub-int/2addr v14, v0

    mul-int/lit8 v14, v14, 0xa

    sub-int/2addr v5, v0

    add-int v24, v14, v5

    if-lt v11, v0, :cond_12

    if-gt v11, v1, :cond_12

    if-lt v12, v0, :cond_12

    if-gt v12, v1, :cond_12

    sub-int/2addr v11, v0

    mul-int/lit8 v11, v11, 0xa

    sub-int/2addr v12, v0

    add-int v25, v11, v12

    .line 80
    invoke-static/range {v20 .. v26}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 81
    :cond_12
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x11

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 82
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_13
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, v29

    .line 83
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .line 84
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_14
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, v29

    .line 85
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .line 86
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_15
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, v29

    .line 87
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .line 88
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_16
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, v29

    .line 89
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .line 90
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_17
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, v29

    .line 91
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .line 92
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_18
    const/4 v0, 0x0

    return-object v0

    :cond_19
    move v2, v1

    move-object v3, v4

    move-object v1, v0

    .line 93
    new-instance v0, Ljava/lang/String;

    array-length v4, v1

    sub-int/2addr v4, v2

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .line 94
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1
.end method

.method public static parseLocalDateTime17([CI)Ljava/time/LocalDateTime;
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    add-int/lit8 v2, v1, 0x11

    .line 1
    array-length v3, v0

    if-gt v2, v3, :cond_14

    .line 2
    aget-char v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    .line 3
    aget-char v3, v0, v3

    add-int/lit8 v5, v1, 0x2

    .line 4
    aget-char v5, v0, v5

    add-int/lit8 v6, v1, 0x3

    .line 5
    aget-char v6, v0, v6

    add-int/lit8 v7, v1, 0x4

    .line 6
    aget-char v7, v0, v7

    add-int/lit8 v8, v1, 0x5

    .line 7
    aget-char v8, v0, v8

    add-int/lit8 v9, v1, 0x6

    .line 8
    aget-char v9, v0, v9

    add-int/lit8 v10, v1, 0x7

    .line 9
    aget-char v10, v0, v10

    add-int/lit8 v11, v1, 0x8

    .line 10
    aget-char v11, v0, v11

    add-int/lit8 v12, v1, 0x9

    .line 11
    aget-char v12, v0, v12

    add-int/lit8 v13, v1, 0xa

    .line 12
    aget-char v13, v0, v13

    add-int/lit8 v14, v1, 0xb

    .line 13
    aget-char v14, v0, v14

    add-int/lit8 v15, v1, 0xc

    .line 14
    aget-char v15, v0, v15

    add-int/lit8 v16, v1, 0xd

    .line 15
    aget-char v4, v0, v16

    add-int/lit8 v16, v1, 0xe

    move/from16 v17, v2

    .line 16
    aget-char v2, v0, v16

    add-int/lit8 v16, v1, 0xf

    move/from16 v18, v12

    .line 17
    aget-char v12, v0, v16

    add-int/lit8 v1, v1, 0x10

    .line 18
    aget-char v0, v0, v1

    const/16 v16, 0x0

    const/16 v1, 0x2d

    if-ne v7, v1, :cond_2

    if-ne v10, v1, :cond_2

    const/16 v1, 0x54

    if-eq v13, v1, :cond_0

    const/16 v1, 0x20

    if-ne v13, v1, :cond_1

    :cond_0
    const/16 v1, 0x3a

    if-ne v4, v1, :cond_1

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    move v13, v2

    move v10, v3

    move v7, v8

    move v8, v9

    move v9, v11

    move v11, v14

    move/from16 v2, v17

    move/from16 v3, v18

    const/16 v0, 0x30

    const/16 v4, 0x30

    const/16 v26, 0x0

    move v14, v12

    move v12, v15

    const/16 v15, 0x30

    goto/16 :goto_2

    :cond_1
    const/16 v1, 0x2d

    :cond_2
    if-ne v7, v1, :cond_4

    if-ne v9, v1, :cond_4

    const/16 v1, 0x20

    if-eq v11, v1, :cond_3

    const/16 v1, 0x54

    if-ne v11, v1, :cond_4

    :cond_3
    const/16 v1, 0x3a

    if-ne v14, v1, :cond_4

    if-ne v2, v1, :cond_4

    move v14, v4

    move/from16 v2, v17

    move/from16 v11, v18

    const/16 v7, 0x30

    const/16 v9, 0x30

    const/16 v26, 0x0

    move v4, v0

    const/16 v0, 0x30

    move/from16 v27, v10

    move v10, v3

    move/from16 v3, v27

    move/from16 v28, v15

    move v15, v12

    move v12, v13

    move/from16 v13, v28

    goto/16 :goto_2

    :cond_4
    const/16 v1, 0x20

    if-ne v5, v1, :cond_7

    if-ne v9, v1, :cond_7

    if-ne v14, v1, :cond_7

    const/16 v1, 0x3a

    if-ne v2, v1, :cond_6

    .line 19
    invoke-static {v6, v7, v8}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_5

    .line 20
    div-int/lit8 v2, v1, 0xa

    const/16 v5, 0x30

    add-int/2addr v2, v5

    int-to-char v7, v2

    .line 21
    rem-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v5

    int-to-char v8, v1

    move v14, v0

    move v2, v10

    move v10, v11

    move v6, v13

    move v11, v15

    move/from16 v9, v17

    move/from16 v5, v18

    const/16 v0, 0x30

    const/16 v15, 0x30

    const/16 v26, 0x0

    move v13, v12

    move v12, v4

    const/16 v4, 0x30

    goto/16 :goto_2

    :cond_5
    return-object v16

    :cond_6
    const/16 v1, 0x20

    :cond_7
    if-ne v3, v1, :cond_a

    if-ne v8, v1, :cond_a

    if-ne v13, v1, :cond_a

    const/16 v1, 0x3a

    if-ne v15, v1, :cond_9

    if-ne v2, v1, :cond_9

    .line 22
    invoke-static {v5, v6, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_8

    .line 23
    div-int/lit8 v2, v1, 0xa

    const/16 v3, 0x30

    add-int/2addr v2, v3

    int-to-char v7, v2

    .line 24
    rem-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v3

    int-to-char v8, v1

    move v2, v9

    move v5, v11

    move v15, v12

    move v12, v14

    move/from16 v3, v17

    move/from16 v6, v18

    const/16 v9, 0x30

    const/16 v11, 0x30

    const/16 v13, 0x30

    const/16 v26, 0x0

    move v14, v4

    move v4, v0

    :goto_0
    const/16 v0, 0x30

    goto/16 :goto_2

    :cond_8
    return-object v16

    :cond_9
    const/16 v1, 0x20

    :cond_a
    if-ne v3, v1, :cond_d

    if-ne v8, v1, :cond_d

    if-ne v13, v1, :cond_d

    const/16 v1, 0x3a

    if-ne v15, v1, :cond_c

    if-ne v12, v1, :cond_c

    .line 25
    invoke-static {v5, v6, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_b

    .line 26
    div-int/lit8 v3, v1, 0xa

    const/16 v5, 0x30

    add-int/2addr v3, v5

    int-to-char v7, v3

    .line 27
    rem-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v5

    int-to-char v8, v1

    move v13, v4

    move v5, v11

    move v12, v14

    move/from16 v3, v17

    move/from16 v6, v18

    const/16 v11, 0x30

    const/16 v15, 0x30

    const/16 v26, 0x0

    move v4, v0

    move v14, v2

    move v2, v9

    const/16 v0, 0x30

    :goto_1
    const/16 v9, 0x30

    goto/16 :goto_2

    :cond_b
    return-object v16

    :cond_c
    const/16 v1, 0x20

    :cond_d
    if-ne v3, v1, :cond_10

    if-ne v8, v1, :cond_10

    if-ne v13, v1, :cond_10

    const/16 v1, 0x3a

    if-ne v4, v1, :cond_f

    if-ne v12, v1, :cond_f

    .line 28
    invoke-static {v5, v6, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_e

    .line 29
    div-int/lit8 v3, v1, 0xa

    const/16 v4, 0x30

    add-int/2addr v3, v4

    int-to-char v7, v3

    .line 30
    rem-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v4

    int-to-char v8, v1

    move v4, v0

    move v5, v11

    move v11, v14

    move v12, v15

    move/from16 v3, v17

    move/from16 v6, v18

    const/16 v0, 0x30

    const/16 v13, 0x30

    const/16 v15, 0x30

    const/16 v26, 0x0

    move v14, v2

    move v2, v9

    goto :goto_1

    :cond_e
    return-object v16

    :cond_f
    const/16 v1, 0x20

    :cond_10
    if-ne v5, v1, :cond_12

    if-ne v9, v1, :cond_12

    if-ne v14, v1, :cond_12

    const/16 v1, 0x3a

    if-ne v4, v1, :cond_12

    if-ne v12, v1, :cond_12

    .line 31
    invoke-static {v6, v7, v8}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_11

    .line 32
    div-int/lit8 v4, v1, 0xa

    const/16 v5, 0x30

    add-int/2addr v4, v5

    int-to-char v7, v4

    .line 33
    rem-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v5

    int-to-char v8, v1

    move v4, v0

    move v14, v2

    move v0, v5

    move v2, v10

    move v10, v11

    move v6, v13

    move v12, v15

    move/from16 v9, v17

    const/16 v26, 0x0

    move v11, v0

    move v13, v11

    move v15, v13

    move/from16 v5, v18

    goto :goto_2

    :cond_11
    return-object v16

    :cond_12
    const/16 v1, 0x30

    if-lt v2, v1, :cond_13

    move/from16 v19, v3

    const/16 v3, 0x39

    if-gt v2, v3, :cond_13

    if-lt v12, v1, :cond_13

    if-gt v12, v3, :cond_13

    if-lt v0, v1, :cond_13

    if-gt v0, v3, :cond_13

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0x64

    add-int/lit8 v12, v12, -0x30

    mul-int/lit8 v12, v12, 0xa

    add-int/2addr v2, v12

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v2, v0

    const v0, 0xf4240

    mul-int/2addr v0, v2

    move/from16 v26, v0

    move v3, v10

    move/from16 v2, v17

    move/from16 v12, v18

    move/from16 v10, v19

    goto/16 :goto_0

    :goto_2
    if-lt v2, v0, :cond_13

    const/16 v1, 0x39

    if-gt v2, v1, :cond_13

    if-lt v10, v0, :cond_13

    if-gt v10, v1, :cond_13

    if-lt v5, v0, :cond_13

    if-gt v5, v1, :cond_13

    if-lt v6, v0, :cond_13

    if-gt v6, v1, :cond_13

    sub-int/2addr v2, v0

    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v10, v0

    mul-int/lit8 v10, v10, 0x64

    add-int/2addr v2, v10

    sub-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v2, v5

    sub-int/2addr v6, v0

    add-int v20, v2, v6

    if-lt v7, v0, :cond_13

    const/16 v1, 0x39

    if-gt v7, v1, :cond_13

    if-lt v8, v0, :cond_13

    if-gt v8, v1, :cond_13

    sub-int/2addr v7, v0

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, v0

    add-int v21, v7, v8

    if-lt v9, v0, :cond_13

    if-gt v9, v1, :cond_13

    if-lt v3, v0, :cond_13

    if-gt v3, v1, :cond_13

    sub-int/2addr v9, v0

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v3, v0

    add-int v22, v9, v3

    if-lt v11, v0, :cond_13

    if-gt v11, v1, :cond_13

    if-lt v12, v0, :cond_13

    if-gt v12, v1, :cond_13

    sub-int/2addr v11, v0

    mul-int/lit8 v11, v11, 0xa

    sub-int/2addr v12, v0

    add-int v23, v11, v12

    if-lt v13, v0, :cond_13

    if-gt v13, v1, :cond_13

    if-lt v14, v0, :cond_13

    if-gt v14, v1, :cond_13

    sub-int/2addr v13, v0

    mul-int/lit8 v13, v13, 0xa

    sub-int/2addr v14, v0

    add-int v24, v13, v14

    if-lt v15, v0, :cond_13

    if-gt v15, v1, :cond_13

    if-lt v4, v0, :cond_13

    if-gt v4, v1, :cond_13

    sub-int/2addr v15, v0

    mul-int/lit8 v15, v15, 0xa

    sub-int/2addr v4, v0

    add-int v25, v15, v4

    .line 34
    invoke-static/range {v20 .. v26}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_13
    return-object v16

    .line 35
    :cond_14
    new-instance v2, Ljava/lang/String;

    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 36
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal input "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0
.end method

.method public static parseLocalDateTime18([BI)Ljava/time/LocalDateTime;
    .locals 31

    move-object/from16 v0, p0

    move/from16 v1, p1

    add-int/lit8 v2, v1, 0x12

    .line 67
    array-length v3, v0

    const-string v5, "illegal input "

    if-gt v2, v3, :cond_26

    .line 68
    aget-byte v2, v0, v1

    int-to-char v2, v2

    add-int/lit8 v3, v1, 0x1

    .line 69
    aget-byte v3, v0, v3

    int-to-char v3, v3

    add-int/lit8 v6, v1, 0x2

    .line 70
    aget-byte v6, v0, v6

    int-to-char v6, v6

    add-int/lit8 v7, v1, 0x3

    .line 71
    aget-byte v7, v0, v7

    int-to-char v7, v7

    add-int/lit8 v8, v1, 0x4

    .line 72
    aget-byte v8, v0, v8

    int-to-char v8, v8

    add-int/lit8 v9, v1, 0x5

    .line 73
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v10, v1, 0x6

    .line 74
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, v1, 0x7

    .line 75
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, v1, 0x8

    .line 76
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, v1, 0x9

    .line 77
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, v1, 0xa

    .line 78
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, v1, 0xb

    .line 79
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, v1, 0xc

    .line 80
    aget-byte v4, v0, v16

    int-to-char v4, v4

    add-int/lit8 v16, v1, 0xd

    move/from16 v17, v2

    .line 81
    aget-byte v2, v0, v16

    int-to-char v2, v2

    add-int/lit8 v16, v1, 0xe

    move/from16 v18, v12

    .line 82
    aget-byte v12, v0, v16

    int-to-char v12, v12

    add-int/lit8 v16, v1, 0xf

    move/from16 v19, v12

    .line 83
    aget-byte v12, v0, v16

    int-to-char v12, v12

    add-int/lit8 v16, v1, 0x10

    move/from16 v20, v15

    .line 84
    aget-byte v15, v0, v16

    int-to-char v15, v15

    add-int/lit8 v16, v1, 0x11

    move-object/from16 v21, v5

    .line 85
    aget-byte v5, v0, v16

    int-to-char v5, v5

    move/from16 v16, v5

    const/16 v5, 0x2d

    if-ne v8, v5, :cond_2

    if-ne v10, v5, :cond_2

    const/16 v5, 0x20

    if-eq v13, v5, :cond_0

    const/16 v5, 0x54

    if-ne v13, v5, :cond_1

    :cond_0
    const/16 v5, 0x3a

    if-ne v4, v5, :cond_1

    if-ne v12, v5, :cond_1

    move v4, v2

    move v10, v9

    move v8, v14

    move v5, v15

    move/from16 v2, v17

    move/from16 v13, v18

    move/from16 v12, v19

    move/from16 v15, v20

    const/16 v9, 0x30

    :goto_0
    move v14, v7

    :goto_1
    move v7, v6

    :goto_2
    const/16 v6, 0x30

    goto/16 :goto_5

    :cond_1
    const/16 v5, 0x2d

    :cond_2
    if-ne v8, v5, :cond_5

    if-ne v11, v5, :cond_5

    const/16 v5, 0x20

    if-eq v13, v5, :cond_3

    const/16 v5, 0x54

    if-ne v13, v5, :cond_4

    :cond_3
    const/16 v5, 0x3a

    if-ne v4, v5, :cond_4

    if-ne v12, v5, :cond_4

    move v4, v2

    move v8, v14

    move v5, v15

    move/from16 v2, v17

    move/from16 v13, v18

    move/from16 v12, v19

    move/from16 v15, v20

    const/16 v11, 0x30

    goto :goto_0

    :cond_4
    const/16 v5, 0x2d

    :cond_5
    if-ne v8, v5, :cond_8

    if-ne v11, v5, :cond_8

    const/16 v5, 0x20

    if-eq v14, v5, :cond_6

    const/16 v5, 0x54

    if-ne v14, v5, :cond_7

    :cond_6
    const/16 v5, 0x3a

    if-ne v4, v5, :cond_7

    if-ne v12, v5, :cond_7

    move v4, v2

    move v14, v7

    move v5, v15

    move/from16 v2, v17

    move/from16 v11, v18

    move/from16 v12, v19

    move/from16 v15, v20

    const/16 v8, 0x30

    goto :goto_1

    :cond_7
    const/16 v5, 0x2d

    :cond_8
    if-ne v8, v5, :cond_b

    if-ne v11, v5, :cond_b

    const/16 v5, 0x20

    if-eq v14, v5, :cond_9

    const/16 v5, 0x54

    if-ne v14, v5, :cond_a

    :cond_9
    const/16 v5, 0x3a

    if-ne v2, v5, :cond_a

    if-ne v12, v5, :cond_a

    move v14, v7

    move v5, v15

    move/from16 v2, v17

    move/from16 v11, v18

    move/from16 v12, v19

    move/from16 v8, v20

    move v15, v4

    move v7, v6

    const/16 v4, 0x30

    goto :goto_2

    :cond_a
    const/16 v5, 0x2d

    :cond_b
    if-ne v8, v5, :cond_d

    if-ne v11, v5, :cond_d

    const/16 v5, 0x20

    if-eq v14, v5, :cond_c

    const/16 v5, 0x54

    if-ne v14, v5, :cond_d

    :cond_c
    const/16 v5, 0x3a

    if-ne v2, v5, :cond_d

    if-ne v15, v5, :cond_d

    move v15, v4

    move v14, v7

    move/from16 v2, v17

    move/from16 v11, v18

    move/from16 v4, v19

    move/from16 v8, v20

    const/16 v5, 0x30

    goto/16 :goto_1

    :cond_d
    const/16 v5, 0x20

    if-ne v3, v5, :cond_f

    if-ne v9, v5, :cond_f

    if-ne v14, v5, :cond_f

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_f

    if-ne v12, v5, :cond_f

    .line 86
    invoke-static {v6, v7, v8}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v3

    if-lez v3, :cond_e

    .line 87
    div-int/lit8 v4, v3, 0xa

    const/16 v5, 0x30

    add-int/2addr v4, v5

    int-to-char v9, v4

    .line 88
    rem-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v5

    int-to-char v3, v3

    move v4, v2

    move v2, v10

    move v14, v13

    move v5, v15

    move/from16 v13, v17

    move/from16 v7, v18

    move/from16 v12, v19

    move/from16 v15, v20

    const/16 v6, 0x30

    const/16 v8, 0x30

    move v10, v3

    move v3, v11

    const/16 v11, 0x30

    goto/16 :goto_5

    .line 89
    :cond_e
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 90
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v21

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_f
    move-object/from16 v5, v21

    move/from16 v21, v4

    const/16 v4, 0x20

    if-ne v3, v4, :cond_12

    if-ne v9, v4, :cond_12

    if-ne v14, v4, :cond_12

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_11

    if-ne v12, v4, :cond_11

    .line 91
    invoke-static {v6, v7, v8}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_10

    .line 92
    div-int/lit8 v3, v2, 0xa

    const/16 v4, 0x30

    add-int/2addr v3, v4

    int-to-char v9, v3

    .line 93
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v4

    int-to-char v2, v2

    move v3, v11

    move v14, v13

    move/from16 v13, v17

    move/from16 v7, v18

    move/from16 v12, v19

    move/from16 v8, v20

    const/16 v4, 0x30

    const/16 v6, 0x30

    const/16 v11, 0x30

    move/from16 v29, v10

    move v10, v2

    move/from16 v2, v29

    move/from16 v30, v21

    move-object/from16 v21, v5

    move v5, v15

    move/from16 v15, v30

    goto/16 :goto_5

    .line 94
    :cond_10
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 95
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_11
    const/16 v4, 0x20

    :cond_12
    if-ne v3, v4, :cond_15

    if-ne v9, v4, :cond_15

    if-ne v14, v4, :cond_15

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_14

    if-ne v15, v4, :cond_14

    .line 96
    invoke-static {v6, v7, v8}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_13

    .line 97
    div-int/lit8 v3, v2, 0xa

    const/16 v4, 0x30

    add-int/2addr v3, v4

    int-to-char v9, v3

    .line 98
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v4

    int-to-char v2, v2

    move v3, v11

    move v14, v13

    move/from16 v13, v17

    move/from16 v7, v18

    move/from16 v4, v19

    move/from16 v8, v20

    move/from16 v15, v21

    const/16 v6, 0x30

    const/16 v11, 0x30

    move-object/from16 v21, v5

    const/16 v5, 0x30

    move/from16 v29, v10

    move v10, v2

    move/from16 v2, v29

    goto/16 :goto_5

    .line 99
    :cond_13
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 100
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_14
    const/16 v4, 0x20

    :cond_15
    if-ne v6, v4, :cond_18

    if-ne v10, v4, :cond_18

    move/from16 v22, v3

    move/from16 v3, v20

    if-ne v3, v4, :cond_17

    move/from16 v4, v19

    move/from16 v19, v11

    const/16 v11, 0x3a

    if-ne v4, v11, :cond_19

    if-ne v15, v11, :cond_19

    .line 101
    invoke-static {v7, v8, v9}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v3

    if-lez v3, :cond_16

    .line 102
    div-int/lit8 v4, v3, 0xa

    const/16 v6, 0x30

    add-int/2addr v4, v6

    int-to-char v9, v4

    .line 103
    rem-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v6

    int-to-char v3, v3

    move v15, v2

    move v10, v3

    move v7, v13

    move/from16 v11, v17

    move/from16 v3, v18

    move/from16 v2, v19

    move/from16 v8, v21

    move/from16 v13, v22

    const/16 v4, 0x30

    const/16 v6, 0x30

    :goto_3
    move-object/from16 v21, v5

    const/16 v5, 0x30

    goto/16 :goto_5

    .line 104
    :cond_16
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 105
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_17
    move/from16 v4, v19

    goto :goto_4

    :cond_18
    move/from16 v22, v3

    move/from16 v4, v19

    move/from16 v3, v20

    :goto_4
    move/from16 v19, v11

    :cond_19
    const/16 v11, 0x20

    if-ne v6, v11, :cond_1c

    if-ne v10, v11, :cond_1c

    if-ne v3, v11, :cond_1c

    const/16 v11, 0x3a

    if-ne v2, v11, :cond_1b

    if-ne v15, v11, :cond_1b

    .line 106
    invoke-static {v7, v8, v9}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_1a

    .line 107
    div-int/lit8 v3, v2, 0xa

    const/16 v6, 0x30

    add-int/2addr v3, v6

    int-to-char v9, v3

    .line 108
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v6

    int-to-char v2, v2

    move v10, v2

    move v7, v13

    move/from16 v11, v17

    move/from16 v3, v18

    move/from16 v2, v19

    move/from16 v15, v21

    move/from16 v13, v22

    const/16 v6, 0x30

    const/16 v8, 0x30

    goto :goto_3

    .line 109
    :cond_1a
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 110
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_1b
    const/16 v11, 0x20

    :cond_1c
    if-ne v6, v11, :cond_25

    if-ne v10, v11, :cond_25

    if-ne v3, v11, :cond_25

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_25

    if-ne v12, v3, :cond_25

    .line 111
    invoke-static {v7, v8, v9}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_24

    .line 112
    div-int/lit8 v3, v2, 0xa

    const/16 v6, 0x30

    add-int/2addr v3, v6

    int-to-char v9, v3

    .line 113
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v6

    int-to-char v2, v2

    move v10, v2

    move v12, v4

    move v4, v6

    move v8, v4

    move v7, v13

    move/from16 v11, v17

    move/from16 v3, v18

    move/from16 v2, v19

    move/from16 v13, v22

    move/from16 v29, v21

    move-object/from16 v21, v5

    move v5, v15

    move/from16 v15, v29

    :goto_5
    if-lt v2, v6, :cond_23

    const/16 v0, 0x39

    if-gt v2, v0, :cond_22

    if-lt v3, v6, :cond_22

    if-gt v3, v0, :cond_22

    if-lt v7, v6, :cond_22

    if-gt v7, v0, :cond_22

    if-lt v14, v6, :cond_22

    if-gt v14, v0, :cond_22

    sub-int/2addr v2, v6

    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v3, v6

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    sub-int/2addr v7, v6

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v2, v7

    sub-int/2addr v14, v6

    add-int v23, v2, v14

    if-lt v9, v6, :cond_21

    if-gt v9, v0, :cond_21

    if-lt v10, v6, :cond_21

    if-gt v10, v0, :cond_21

    sub-int/2addr v9, v6

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v6

    add-int v24, v9, v10

    if-lt v11, v6, :cond_20

    if-gt v11, v0, :cond_20

    if-lt v13, v6, :cond_20

    if-gt v13, v0, :cond_20

    sub-int/2addr v11, v6

    mul-int/lit8 v11, v11, 0xa

    sub-int/2addr v13, v6

    add-int v25, v11, v13

    if-lt v8, v6, :cond_1f

    if-gt v8, v0, :cond_1f

    if-lt v15, v6, :cond_1f

    if-gt v15, v0, :cond_1f

    sub-int/2addr v8, v6

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v15, v6

    add-int v26, v8, v15

    if-lt v4, v6, :cond_1e

    if-gt v4, v0, :cond_1e

    if-lt v12, v6, :cond_1e

    if-gt v12, v0, :cond_1e

    sub-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v12, v6

    add-int v27, v4, v12

    if-lt v5, v6, :cond_1d

    if-gt v5, v0, :cond_1d

    move/from16 v2, v16

    if-lt v2, v6, :cond_1d

    if-gt v2, v0, :cond_1d

    sub-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v0, v2, -0x30

    add-int v28, v5, v0

    .line 114
    invoke-static/range {v23 .. v28}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 115
    :cond_1d
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x12

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 116
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v21

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_1e
    move-object/from16 v2, p0

    move-object/from16 v3, v21

    .line 117
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x12

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 118
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_1f
    move-object/from16 v2, p0

    move-object/from16 v3, v21

    .line 119
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x12

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 120
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_20
    move-object/from16 v2, p0

    move-object/from16 v3, v21

    .line 121
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x12

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 122
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_21
    move-object/from16 v2, p0

    move-object/from16 v3, v21

    .line 123
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x12

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 124
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_22
    move-object/from16 v2, p0

    goto :goto_6

    :cond_23
    move-object v2, v0

    :goto_6
    move-object/from16 v3, v21

    .line 125
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x12

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 126
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_24
    move-object v2, v0

    move-object v3, v5

    const/16 v4, 0x12

    const/4 v5, 0x0

    .line 127
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 128
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_25
    move-object v2, v0

    move-object v3, v5

    .line 129
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x12

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 130
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_26
    move-object v2, v0

    move-object v3, v5

    .line 131
    new-instance v0, Ljava/lang/String;

    array-length v4, v2

    sub-int/2addr v4, v1

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 132
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1
.end method

.method public static parseLocalDateTime18([CI)Ljava/time/LocalDateTime;
    .locals 31

    move-object/from16 v0, p0

    move/from16 v1, p1

    add-int/lit8 v2, v1, 0x12

    .line 1
    array-length v3, v0

    const-string v5, "illegal input "

    if-gt v2, v3, :cond_26

    .line 2
    aget-char v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    .line 3
    aget-char v3, v0, v3

    add-int/lit8 v6, v1, 0x2

    .line 4
    aget-char v6, v0, v6

    add-int/lit8 v7, v1, 0x3

    .line 5
    aget-char v7, v0, v7

    add-int/lit8 v8, v1, 0x4

    .line 6
    aget-char v8, v0, v8

    add-int/lit8 v9, v1, 0x5

    .line 7
    aget-char v9, v0, v9

    add-int/lit8 v10, v1, 0x6

    .line 8
    aget-char v10, v0, v10

    add-int/lit8 v11, v1, 0x7

    .line 9
    aget-char v11, v0, v11

    add-int/lit8 v12, v1, 0x8

    .line 10
    aget-char v12, v0, v12

    add-int/lit8 v13, v1, 0x9

    .line 11
    aget-char v13, v0, v13

    add-int/lit8 v14, v1, 0xa

    .line 12
    aget-char v14, v0, v14

    add-int/lit8 v15, v1, 0xb

    .line 13
    aget-char v15, v0, v15

    add-int/lit8 v16, v1, 0xc

    .line 14
    aget-char v4, v0, v16

    add-int/lit8 v16, v1, 0xd

    move/from16 v17, v2

    .line 15
    aget-char v2, v0, v16

    add-int/lit8 v16, v1, 0xe

    move/from16 v18, v12

    .line 16
    aget-char v12, v0, v16

    add-int/lit8 v16, v1, 0xf

    move/from16 v19, v12

    .line 17
    aget-char v12, v0, v16

    add-int/lit8 v16, v1, 0x10

    move/from16 v20, v15

    .line 18
    aget-char v15, v0, v16

    add-int/lit8 v16, v1, 0x11

    move-object/from16 v21, v5

    .line 19
    aget-char v5, v0, v16

    move/from16 v16, v5

    const/16 v5, 0x2d

    if-ne v8, v5, :cond_2

    if-ne v10, v5, :cond_2

    const/16 v5, 0x20

    if-eq v13, v5, :cond_0

    const/16 v5, 0x54

    if-ne v13, v5, :cond_1

    :cond_0
    const/16 v5, 0x3a

    if-ne v4, v5, :cond_1

    if-ne v12, v5, :cond_1

    move v4, v2

    move v10, v9

    move v8, v14

    move v5, v15

    move/from16 v2, v17

    move/from16 v13, v18

    move/from16 v12, v19

    move/from16 v15, v20

    const/16 v9, 0x30

    :goto_0
    move v14, v7

    :goto_1
    move v7, v6

    :goto_2
    const/16 v6, 0x30

    goto/16 :goto_5

    :cond_1
    const/16 v5, 0x2d

    :cond_2
    if-ne v8, v5, :cond_5

    if-ne v11, v5, :cond_5

    const/16 v5, 0x20

    if-eq v13, v5, :cond_3

    const/16 v5, 0x54

    if-ne v13, v5, :cond_4

    :cond_3
    const/16 v5, 0x3a

    if-ne v4, v5, :cond_4

    if-ne v12, v5, :cond_4

    move v4, v2

    move v8, v14

    move v5, v15

    move/from16 v2, v17

    move/from16 v13, v18

    move/from16 v12, v19

    move/from16 v15, v20

    const/16 v11, 0x30

    goto :goto_0

    :cond_4
    const/16 v5, 0x2d

    :cond_5
    if-ne v8, v5, :cond_8

    if-ne v11, v5, :cond_8

    const/16 v5, 0x20

    if-eq v14, v5, :cond_6

    const/16 v5, 0x54

    if-ne v14, v5, :cond_7

    :cond_6
    const/16 v5, 0x3a

    if-ne v4, v5, :cond_7

    if-ne v12, v5, :cond_7

    move v4, v2

    move v14, v7

    move v5, v15

    move/from16 v2, v17

    move/from16 v11, v18

    move/from16 v12, v19

    move/from16 v15, v20

    const/16 v8, 0x30

    goto :goto_1

    :cond_7
    const/16 v5, 0x2d

    :cond_8
    if-ne v8, v5, :cond_b

    if-ne v11, v5, :cond_b

    const/16 v5, 0x20

    if-eq v14, v5, :cond_9

    const/16 v5, 0x54

    if-ne v14, v5, :cond_a

    :cond_9
    const/16 v5, 0x3a

    if-ne v2, v5, :cond_a

    if-ne v12, v5, :cond_a

    move v14, v7

    move v5, v15

    move/from16 v2, v17

    move/from16 v11, v18

    move/from16 v12, v19

    move/from16 v8, v20

    move v15, v4

    move v7, v6

    const/16 v4, 0x30

    goto :goto_2

    :cond_a
    const/16 v5, 0x2d

    :cond_b
    if-ne v8, v5, :cond_d

    if-ne v11, v5, :cond_d

    const/16 v5, 0x20

    if-eq v14, v5, :cond_c

    const/16 v5, 0x54

    if-ne v14, v5, :cond_d

    :cond_c
    const/16 v5, 0x3a

    if-ne v2, v5, :cond_d

    if-ne v15, v5, :cond_d

    move v15, v4

    move v14, v7

    move/from16 v2, v17

    move/from16 v11, v18

    move/from16 v4, v19

    move/from16 v8, v20

    const/16 v5, 0x30

    goto/16 :goto_1

    :cond_d
    const/16 v5, 0x20

    if-ne v3, v5, :cond_f

    if-ne v9, v5, :cond_f

    if-ne v14, v5, :cond_f

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_f

    if-ne v12, v5, :cond_f

    .line 20
    invoke-static {v6, v7, v8}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v3

    if-lez v3, :cond_e

    .line 21
    div-int/lit8 v4, v3, 0xa

    const/16 v5, 0x30

    add-int/2addr v4, v5

    int-to-char v9, v4

    .line 22
    rem-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v5

    int-to-char v3, v3

    move v4, v2

    move v2, v10

    move v14, v13

    move v5, v15

    move/from16 v13, v17

    move/from16 v7, v18

    move/from16 v12, v19

    move/from16 v15, v20

    const/16 v6, 0x30

    const/16 v8, 0x30

    move v10, v3

    move v3, v11

    const/16 v11, 0x30

    goto/16 :goto_5

    .line 23
    :cond_e
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 24
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v21

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_f
    move-object/from16 v5, v21

    move/from16 v21, v4

    const/16 v4, 0x20

    if-ne v3, v4, :cond_12

    if-ne v9, v4, :cond_12

    if-ne v14, v4, :cond_12

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_11

    if-ne v12, v4, :cond_11

    .line 25
    invoke-static {v6, v7, v8}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_10

    .line 26
    div-int/lit8 v3, v2, 0xa

    const/16 v4, 0x30

    add-int/2addr v3, v4

    int-to-char v9, v3

    .line 27
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v4

    int-to-char v2, v2

    move v3, v11

    move v14, v13

    move/from16 v13, v17

    move/from16 v7, v18

    move/from16 v12, v19

    move/from16 v8, v20

    const/16 v4, 0x30

    const/16 v6, 0x30

    const/16 v11, 0x30

    move/from16 v29, v10

    move v10, v2

    move/from16 v2, v29

    move/from16 v30, v21

    move-object/from16 v21, v5

    move v5, v15

    move/from16 v15, v30

    goto/16 :goto_5

    .line 28
    :cond_10
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 29
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_11
    const/16 v4, 0x20

    :cond_12
    if-ne v3, v4, :cond_15

    if-ne v9, v4, :cond_15

    if-ne v14, v4, :cond_15

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_14

    if-ne v15, v4, :cond_14

    .line 30
    invoke-static {v6, v7, v8}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_13

    .line 31
    div-int/lit8 v3, v2, 0xa

    const/16 v4, 0x30

    add-int/2addr v3, v4

    int-to-char v9, v3

    .line 32
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v4

    int-to-char v2, v2

    move v3, v11

    move v14, v13

    move/from16 v13, v17

    move/from16 v7, v18

    move/from16 v4, v19

    move/from16 v8, v20

    move/from16 v15, v21

    const/16 v6, 0x30

    const/16 v11, 0x30

    move-object/from16 v21, v5

    const/16 v5, 0x30

    move/from16 v29, v10

    move v10, v2

    move/from16 v2, v29

    goto/16 :goto_5

    .line 33
    :cond_13
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 34
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_14
    const/16 v4, 0x20

    :cond_15
    if-ne v6, v4, :cond_18

    if-ne v10, v4, :cond_18

    move/from16 v22, v3

    move/from16 v3, v20

    if-ne v3, v4, :cond_17

    move/from16 v4, v19

    move/from16 v19, v11

    const/16 v11, 0x3a

    if-ne v4, v11, :cond_19

    if-ne v15, v11, :cond_19

    .line 35
    invoke-static {v7, v8, v9}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v3

    if-lez v3, :cond_16

    .line 36
    div-int/lit8 v4, v3, 0xa

    const/16 v6, 0x30

    add-int/2addr v4, v6

    int-to-char v9, v4

    .line 37
    rem-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v6

    int-to-char v3, v3

    move v15, v2

    move v10, v3

    move v7, v13

    move/from16 v11, v17

    move/from16 v3, v18

    move/from16 v2, v19

    move/from16 v8, v21

    move/from16 v13, v22

    const/16 v4, 0x30

    const/16 v6, 0x30

    :goto_3
    move-object/from16 v21, v5

    const/16 v5, 0x30

    goto/16 :goto_5

    .line 38
    :cond_16
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 39
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_17
    move/from16 v4, v19

    goto :goto_4

    :cond_18
    move/from16 v22, v3

    move/from16 v4, v19

    move/from16 v3, v20

    :goto_4
    move/from16 v19, v11

    :cond_19
    const/16 v11, 0x20

    if-ne v6, v11, :cond_1c

    if-ne v10, v11, :cond_1c

    if-ne v3, v11, :cond_1c

    const/16 v11, 0x3a

    if-ne v2, v11, :cond_1b

    if-ne v15, v11, :cond_1b

    .line 40
    invoke-static {v7, v8, v9}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_1a

    .line 41
    div-int/lit8 v3, v2, 0xa

    const/16 v6, 0x30

    add-int/2addr v3, v6

    int-to-char v9, v3

    .line 42
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v6

    int-to-char v2, v2

    move v10, v2

    move v7, v13

    move/from16 v11, v17

    move/from16 v3, v18

    move/from16 v2, v19

    move/from16 v15, v21

    move/from16 v13, v22

    const/16 v6, 0x30

    const/16 v8, 0x30

    goto :goto_3

    .line 43
    :cond_1a
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 44
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_1b
    const/16 v11, 0x20

    :cond_1c
    if-ne v6, v11, :cond_25

    if-ne v10, v11, :cond_25

    if-ne v3, v11, :cond_25

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_25

    if-ne v12, v3, :cond_25

    .line 45
    invoke-static {v7, v8, v9}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_24

    .line 46
    div-int/lit8 v3, v2, 0xa

    const/16 v6, 0x30

    add-int/2addr v3, v6

    int-to-char v9, v3

    .line 47
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v6

    int-to-char v2, v2

    move v10, v2

    move v12, v4

    move v4, v6

    move v8, v4

    move v7, v13

    move/from16 v11, v17

    move/from16 v3, v18

    move/from16 v2, v19

    move/from16 v13, v22

    move/from16 v29, v21

    move-object/from16 v21, v5

    move v5, v15

    move/from16 v15, v29

    :goto_5
    if-lt v2, v6, :cond_23

    const/16 v0, 0x39

    if-gt v2, v0, :cond_22

    if-lt v3, v6, :cond_22

    if-gt v3, v0, :cond_22

    if-lt v7, v6, :cond_22

    if-gt v7, v0, :cond_22

    if-lt v14, v6, :cond_22

    if-gt v14, v0, :cond_22

    sub-int/2addr v2, v6

    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v3, v6

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    sub-int/2addr v7, v6

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v2, v7

    sub-int/2addr v14, v6

    add-int v23, v2, v14

    if-lt v9, v6, :cond_21

    if-gt v9, v0, :cond_21

    if-lt v10, v6, :cond_21

    if-gt v10, v0, :cond_21

    sub-int/2addr v9, v6

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v6

    add-int v24, v9, v10

    if-lt v11, v6, :cond_20

    if-gt v11, v0, :cond_20

    if-lt v13, v6, :cond_20

    if-gt v13, v0, :cond_20

    sub-int/2addr v11, v6

    mul-int/lit8 v11, v11, 0xa

    sub-int/2addr v13, v6

    add-int v25, v11, v13

    if-lt v8, v6, :cond_1f

    if-gt v8, v0, :cond_1f

    if-lt v15, v6, :cond_1f

    if-gt v15, v0, :cond_1f

    sub-int/2addr v8, v6

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v15, v6

    add-int v26, v8, v15

    if-lt v4, v6, :cond_1e

    if-gt v4, v0, :cond_1e

    if-lt v12, v6, :cond_1e

    if-gt v12, v0, :cond_1e

    sub-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v12, v6

    add-int v27, v4, v12

    if-lt v5, v6, :cond_1d

    if-gt v5, v0, :cond_1d

    move/from16 v2, v16

    if-lt v2, v6, :cond_1d

    if-gt v2, v0, :cond_1d

    sub-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v0, v2, -0x30

    add-int v28, v5, v0

    .line 48
    invoke-static/range {v23 .. v28}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 49
    :cond_1d
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x12

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 50
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v21

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_1e
    move-object/from16 v2, p0

    move-object/from16 v3, v21

    .line 51
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x12

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 52
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_1f
    move-object/from16 v2, p0

    move-object/from16 v3, v21

    .line 53
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x12

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 54
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_20
    move-object/from16 v2, p0

    move-object/from16 v3, v21

    .line 55
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x12

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 56
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_21
    move-object/from16 v2, p0

    move-object/from16 v3, v21

    .line 57
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x12

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 58
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_22
    move-object/from16 v2, p0

    goto :goto_6

    :cond_23
    move-object v2, v0

    :goto_6
    move-object/from16 v3, v21

    .line 59
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x12

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 60
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_24
    move-object v2, v0

    move-object v3, v5

    const/16 v4, 0x12

    const/4 v5, 0x0

    .line 61
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 62
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_25
    move-object v2, v0

    move-object v3, v5

    .line 63
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x12

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 64
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_26
    move-object v2, v0

    move-object v3, v5

    .line 65
    new-instance v0, Ljava/lang/String;

    array-length v4, v2

    sub-int/2addr v4, v1

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 66
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1
.end method

.method public static parseLocalDateTime19(Ljava/lang/String;I)Ljava/time/LocalDateTime;
    .locals 3

    add-int/lit8 v0, p1, 0x13

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v1, 0x13

    new-array v1, v1, [C

    const/4 v2, 0x0

    .line 26
    invoke-virtual {p0, p1, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 27
    invoke-static {v1, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime19([CI)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static parseLocalDateTime19([BI)Ljava/time/LocalDateTime;
    .locals 28

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x13

    .line 28
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 29
    :cond_0
    aget-byte v1, v0, p1

    int-to-char v1, v1

    add-int/lit8 v2, p1, 0x1

    .line 30
    aget-byte v2, v0, v2

    int-to-char v2, v2

    add-int/lit8 v4, p1, 0x2

    .line 31
    aget-byte v4, v0, v4

    int-to-char v4, v4

    add-int/lit8 v5, p1, 0x3

    .line 32
    aget-byte v5, v0, v5

    int-to-char v5, v5

    add-int/lit8 v6, p1, 0x4

    .line 33
    aget-byte v6, v0, v6

    int-to-char v6, v6

    add-int/lit8 v7, p1, 0x5

    .line 34
    aget-byte v7, v0, v7

    int-to-char v7, v7

    add-int/lit8 v8, p1, 0x6

    .line 35
    aget-byte v8, v0, v8

    int-to-char v8, v8

    add-int/lit8 v9, p1, 0x7

    .line 36
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v10, p1, 0x8

    .line 37
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, p1, 0x9

    .line 38
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, p1, 0xa

    .line 39
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, p1, 0xb

    .line 40
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, p1, 0xc

    .line 41
    aget-byte v14, v0, v14

    int-to-char v15, v14

    add-int/lit8 v14, p1, 0xd

    .line 42
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v16, p1, 0xe

    .line 43
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0xf

    move/from16 v18, v1

    .line 44
    aget-byte v1, v0, v16

    int-to-char v1, v1

    add-int/lit8 v16, p1, 0x10

    move/from16 v19, v8

    .line 45
    aget-byte v8, v0, v16

    int-to-char v8, v8

    add-int/lit8 v16, p1, 0x11

    move/from16 v20, v10

    .line 46
    aget-byte v10, v0, v16

    int-to-char v10, v10

    add-int/lit8 v16, p1, 0x12

    .line 47
    aget-byte v0, v0, v16

    int-to-char v0, v0

    move/from16 v16, v11

    const/16 v11, 0x2d

    if-ne v6, v11, :cond_2

    if-ne v9, v11, :cond_2

    const/16 v11, 0x20

    if-eq v12, v11, :cond_1

    const/16 v11, 0x54

    if-ne v12, v11, :cond_2

    :cond_1
    const/16 v11, 0x3a

    if-ne v14, v11, :cond_2

    if-ne v8, v11, :cond_2

    goto :goto_0

    :cond_2
    const/16 v11, 0x2f

    if-ne v6, v11, :cond_5

    if-ne v9, v11, :cond_5

    const/16 v11, 0x20

    if-eq v12, v11, :cond_3

    const/16 v11, 0x54

    if-ne v12, v11, :cond_4

    :cond_3
    const/16 v11, 0x3a

    if-ne v14, v11, :cond_4

    if-ne v8, v11, :cond_4

    :goto_0
    move v9, v2

    move/from16 v17, v5

    move/from16 v21, v16

    move/from16 v14, v18

    move/from16 v16, v4

    move/from16 v18, v7

    goto :goto_2

    :cond_4
    const/16 v11, 0x2f

    :cond_5
    if-ne v4, v11, :cond_7

    if-ne v7, v11, :cond_7

    const/16 v11, 0x20

    if-eq v12, v11, :cond_6

    const/16 v11, 0x54

    if-ne v12, v11, :cond_7

    :cond_6
    const/16 v11, 0x3a

    if-ne v14, v11, :cond_7

    if-ne v8, v11, :cond_7

    move/from16 v21, v2

    move/from16 v17, v16

    move/from16 v14, v19

    move/from16 v16, v20

    move/from16 v19, v6

    move/from16 v20, v18

    move/from16 v18, v5

    goto :goto_2

    :cond_7
    const/16 v11, 0x20

    if-ne v2, v11, :cond_9

    if-ne v7, v11, :cond_9

    if-ne v12, v11, :cond_9

    const/16 v2, 0x3a

    if-ne v14, v2, :cond_9

    if-ne v8, v2, :cond_9

    .line 48
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    const/16 v4, 0x30

    if-lez v2, :cond_8

    .line 49
    div-int/lit8 v5, v2, 0xa

    add-int/2addr v5, v4

    int-to-char v5, v5

    .line 50
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v4

    int-to-char v2, v2

    move v6, v2

    goto :goto_1

    :cond_8
    move v5, v4

    move v6, v5

    :goto_1
    move/from16 v17, v16

    move/from16 v21, v18

    move/from16 v14, v19

    move/from16 v16, v20

    move/from16 v20, v4

    move/from16 v18, v5

    move/from16 v19, v6

    :goto_2
    move v2, v15

    move v15, v9

    move/from16 v22, v13

    move/from16 v23, v2

    move/from16 v24, v3

    move/from16 v25, v1

    move/from16 v26, v10

    move/from16 v27, v0

    .line 51
    invoke-static/range {v14 .. v27}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseLocalDateTime19([CI)Ljava/time/LocalDateTime;
    .locals 28

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x13

    .line 1
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 2
    :cond_0
    aget-char v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 3
    aget-char v2, v0, v2

    add-int/lit8 v4, p1, 0x2

    .line 4
    aget-char v4, v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 5
    aget-char v5, v0, v5

    add-int/lit8 v6, p1, 0x4

    .line 6
    aget-char v6, v0, v6

    add-int/lit8 v7, p1, 0x5

    .line 7
    aget-char v7, v0, v7

    add-int/lit8 v8, p1, 0x6

    .line 8
    aget-char v8, v0, v8

    add-int/lit8 v9, p1, 0x7

    .line 9
    aget-char v9, v0, v9

    add-int/lit8 v10, p1, 0x8

    .line 10
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 11
    aget-char v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 12
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 13
    aget-char v22, v0, v13

    add-int/lit8 v13, p1, 0xc

    .line 14
    aget-char v23, v0, v13

    add-int/lit8 v13, p1, 0xd

    .line 15
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xe

    .line 16
    aget-char v24, v0, v14

    add-int/lit8 v14, p1, 0xf

    .line 17
    aget-char v25, v0, v14

    add-int/lit8 v14, p1, 0x10

    .line 18
    aget-char v14, v0, v14

    add-int/lit8 v15, p1, 0x11

    .line 19
    aget-char v26, v0, v15

    add-int/lit8 v15, p1, 0x12

    .line 20
    aget-char v27, v0, v15

    const/16 v0, 0x2d

    const/16 v3, 0x20

    const/16 v15, 0x3a

    if-ne v6, v0, :cond_2

    if-ne v9, v0, :cond_2

    if-eq v12, v3, :cond_1

    const/16 v0, 0x54

    if-ne v12, v0, :cond_2

    :cond_1
    if-ne v13, v15, :cond_2

    if-ne v14, v15, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x2f

    if-ne v6, v0, :cond_4

    if-ne v9, v0, :cond_4

    if-eq v12, v3, :cond_3

    const/16 v3, 0x54

    if-ne v12, v3, :cond_4

    :cond_3
    if-ne v13, v15, :cond_4

    if-ne v14, v15, :cond_4

    :goto_0
    move v14, v1

    move v15, v2

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v21, v11

    goto :goto_3

    :cond_4
    if-ne v4, v0, :cond_6

    if-ne v7, v0, :cond_6

    const/16 v0, 0x20

    if-eq v12, v0, :cond_5

    const/16 v0, 0x54

    if-ne v12, v0, :cond_6

    :cond_5
    if-ne v13, v15, :cond_6

    if-ne v14, v15, :cond_6

    move/from16 v20, v1

    move/from16 v21, v2

    :goto_1
    move/from16 v18, v5

    move/from16 v19, v6

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v11

    goto :goto_3

    :cond_6
    const/16 v0, 0x20

    if-ne v2, v0, :cond_8

    if-ne v7, v0, :cond_8

    if-ne v12, v0, :cond_8

    if-ne v13, v15, :cond_8

    if-ne v14, v15, :cond_8

    .line 21
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v0

    const/16 v2, 0x30

    if-lez v0, :cond_7

    .line 22
    div-int/lit8 v3, v0, 0xa

    add-int/2addr v3, v2

    int-to-char v3, v3

    .line 23
    rem-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    int-to-char v0, v0

    move v6, v0

    move v5, v3

    goto :goto_2

    :cond_7
    move v5, v2

    move v6, v5

    :goto_2
    move/from16 v21, v1

    move/from16 v20, v2

    goto :goto_1

    .line 24
    :goto_3
    invoke-static/range {v14 .. v27}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseLocalDateTime20([BI)Ljava/time/LocalDateTime;
    .locals 23

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x13

    .line 26
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 27
    :cond_0
    aget-byte v2, v0, p1

    int-to-char v10, v2

    add-int/lit8 v2, p1, 0x1

    .line 28
    aget-byte v2, v0, v2

    int-to-char v11, v2

    add-int/lit8 v2, p1, 0x2

    .line 29
    aget-byte v2, v0, v2

    int-to-char v2, v2

    add-int/lit8 v4, p1, 0x3

    .line 30
    aget-byte v4, v0, v4

    int-to-char v4, v4

    add-int/lit8 v5, p1, 0x4

    .line 31
    aget-byte v5, v0, v5

    int-to-char v5, v5

    add-int/lit8 v6, p1, 0x5

    .line 32
    aget-byte v6, v0, v6

    int-to-char v6, v6

    add-int/lit8 v7, p1, 0x6

    .line 33
    aget-byte v7, v0, v7

    int-to-char v7, v7

    add-int/lit8 v8, p1, 0x7

    .line 34
    aget-byte v8, v0, v8

    int-to-char v8, v8

    add-int/lit8 v9, p1, 0x8

    .line 35
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v12, p1, 0x9

    .line 36
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, p1, 0xa

    .line 37
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, p1, 0xb

    .line 38
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, p1, 0xc

    .line 39
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0xd

    .line 40
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0xe

    move/from16 v18, v3

    .line 41
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0xf

    move/from16 v19, v15

    .line 42
    aget-byte v15, v0, v16

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0x10

    move/from16 v20, v15

    .line 43
    aget-byte v15, v0, v16

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0x11

    move/from16 v21, v15

    .line 44
    aget-byte v15, v0, v16

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0x12

    move/from16 v22, v11

    .line 45
    aget-byte v11, v0, v16

    int-to-char v11, v11

    .line 46
    aget-byte v0, v0, v1

    int-to-char v0, v0

    const/16 v1, 0x20

    if-ne v2, v1, :cond_3

    if-ne v7, v1, :cond_3

    if-ne v14, v1, :cond_3

    const/16 v1, 0x3a

    if-ne v3, v1, :cond_3

    if-eq v15, v1, :cond_1

    goto :goto_1

    .line 47
    :cond_1
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    const/16 v2, 0x30

    if-lez v1, :cond_2

    .line 48
    div-int/lit8 v3, v1, 0xa

    add-int/2addr v3, v2

    int-to-char v3, v3

    .line 49
    rem-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v2

    int-to-char v1, v1

    move v2, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    move v4, v8

    move v5, v9

    move v6, v12

    move v7, v13

    move v8, v2

    move v9, v1

    move v1, v11

    move/from16 v11, v22

    move/from16 v12, v19

    move/from16 v13, v18

    move/from16 v14, v20

    move/from16 v15, v21

    move/from16 v16, v1

    move/from16 v17, v0

    .line 50
    invoke-static/range {v4 .. v17}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseLocalDateTime20([CI)Ljava/time/LocalDateTime;
    .locals 21

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x13

    .line 1
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 2
    :cond_0
    aget-char v10, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 3
    aget-char v11, v0, v2

    add-int/lit8 v2, p1, 0x2

    .line 4
    aget-char v2, v0, v2

    add-int/lit8 v4, p1, 0x3

    .line 5
    aget-char v4, v0, v4

    add-int/lit8 v5, p1, 0x4

    .line 6
    aget-char v5, v0, v5

    add-int/lit8 v6, p1, 0x5

    .line 7
    aget-char v6, v0, v6

    add-int/lit8 v7, p1, 0x6

    .line 8
    aget-char v7, v0, v7

    add-int/lit8 v8, p1, 0x7

    .line 9
    aget-char v8, v0, v8

    add-int/lit8 v9, p1, 0x8

    .line 10
    aget-char v9, v0, v9

    add-int/lit8 v12, p1, 0x9

    .line 11
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0xa

    .line 12
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xb

    .line 13
    aget-char v14, v0, v14

    add-int/lit8 v15, p1, 0xc

    .line 14
    aget-char v15, v0, v15

    add-int/lit8 v16, p1, 0xd

    .line 15
    aget-char v16, v0, v16

    add-int/lit8 v17, p1, 0xe

    .line 16
    aget-char v3, v0, v17

    add-int/lit8 v17, p1, 0xf

    .line 17
    aget-char v17, v0, v17

    add-int/lit8 v18, p1, 0x10

    .line 18
    aget-char v18, v0, v18

    add-int/lit8 v19, p1, 0x11

    move/from16 v20, v15

    .line 19
    aget-char v15, v0, v19

    add-int/lit8 v19, p1, 0x12

    .line 20
    aget-char v19, v0, v19

    .line 21
    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v2, v1, :cond_3

    if-ne v7, v1, :cond_3

    if-ne v14, v1, :cond_3

    const/16 v1, 0x3a

    if-ne v3, v1, :cond_3

    if-eq v15, v1, :cond_1

    goto :goto_1

    .line 22
    :cond_1
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    const/16 v2, 0x30

    if-lez v1, :cond_2

    .line 23
    div-int/lit8 v3, v1, 0xa

    add-int/2addr v3, v2

    int-to-char v3, v3

    .line 24
    rem-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v2

    int-to-char v1, v1

    move v2, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    move v4, v8

    move v5, v9

    move v6, v12

    move v7, v13

    move v8, v2

    move v9, v1

    move/from16 v12, v20

    move/from16 v13, v16

    move/from16 v14, v17

    move/from16 v15, v18

    move/from16 v16, v19

    move/from16 v17, v0

    .line 25
    invoke-static/range {v4 .. v17}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseLocalDateTime26([BI)Ljava/time/LocalDateTime;
    .locals 31

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x1a

    .line 1
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 2
    :cond_0
    aget-byte v1, v0, p1

    int-to-char v4, v1

    add-int/lit8 v1, p1, 0x1

    .line 3
    aget-byte v1, v0, v1

    int-to-char v5, v1

    add-int/lit8 v1, p1, 0x2

    .line 4
    aget-byte v1, v0, v1

    int-to-char v6, v1

    add-int/lit8 v1, p1, 0x3

    .line 5
    aget-byte v1, v0, v1

    int-to-char v7, v1

    add-int/lit8 v1, p1, 0x4

    .line 6
    aget-byte v1, v0, v1

    int-to-char v1, v1

    add-int/lit8 v2, p1, 0x5

    .line 7
    aget-byte v2, v0, v2

    int-to-char v8, v2

    add-int/lit8 v2, p1, 0x6

    .line 8
    aget-byte v2, v0, v2

    int-to-char v9, v2

    add-int/lit8 v2, p1, 0x7

    .line 9
    aget-byte v2, v0, v2

    int-to-char v2, v2

    add-int/lit8 v10, p1, 0x8

    .line 10
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, p1, 0x9

    .line 11
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, p1, 0xa

    .line 12
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, p1, 0xb

    .line 13
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, p1, 0xc

    .line 14
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, p1, 0xd

    .line 15
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0xe

    .line 16
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0xf

    move/from16 v18, v3

    .line 17
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x10

    move/from16 v19, v3

    .line 18
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x11

    move/from16 v20, v14

    .line 19
    aget-byte v14, v0, v16

    int-to-char v14, v14

    add-int/lit8 v16, p1, 0x12

    move/from16 v21, v14

    .line 20
    aget-byte v14, v0, v16

    int-to-char v14, v14

    add-int/lit8 v16, p1, 0x13

    move/from16 v22, v14

    .line 21
    aget-byte v14, v0, v16

    int-to-char v14, v14

    add-int/lit8 v16, p1, 0x14

    move/from16 v23, v13

    .line 22
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x15

    move/from16 v27, v13

    .line 23
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x16

    move/from16 v28, v13

    .line 24
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x17

    move/from16 v29, v13

    .line 25
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x18

    move/from16 v30, v13

    .line 26
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x19

    .line 27
    aget-byte v0, v0, v16

    int-to-char v0, v0

    move/from16 v16, v13

    const/16 v13, 0x2d

    if-ne v1, v13, :cond_3

    if-ne v2, v13, :cond_3

    const/16 v1, 0x20

    if-eq v12, v1, :cond_1

    const/16 v1, 0x54

    if-ne v12, v1, :cond_3

    :cond_1
    const/16 v1, 0x3a

    if-ne v15, v1, :cond_3

    if-ne v3, v1, :cond_3

    const/16 v1, 0x2e

    if-eq v14, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v24, 0x30

    const/16 v25, 0x30

    const/16 v26, 0x30

    move/from16 v12, v23

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v23, v30

    move/from16 v27, v16

    move/from16 v13, v20

    move/from16 v16, v21

    move/from16 v17, v22

    move/from16 v14, v18

    move/from16 v15, v19

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v23

    move/from16 v22, v27

    move/from16 v23, v0

    .line 28
    invoke-static/range {v4 .. v26}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseLocalDateTime26([CI)Ljava/time/LocalDateTime;
    .locals 30

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x1a

    .line 29
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 30
    :cond_0
    aget-char v4, v0, p1

    add-int/lit8 v1, p1, 0x1

    .line 31
    aget-char v5, v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 32
    aget-char v6, v0, v1

    add-int/lit8 v1, p1, 0x3

    .line 33
    aget-char v7, v0, v1

    add-int/lit8 v1, p1, 0x4

    .line 34
    aget-char v1, v0, v1

    add-int/lit8 v2, p1, 0x5

    .line 35
    aget-char v8, v0, v2

    add-int/lit8 v2, p1, 0x6

    .line 36
    aget-char v9, v0, v2

    add-int/lit8 v2, p1, 0x7

    .line 37
    aget-char v2, v0, v2

    add-int/lit8 v10, p1, 0x8

    .line 38
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 39
    aget-char v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 40
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 41
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xc

    .line 42
    aget-char v14, v0, v14

    add-int/lit8 v15, p1, 0xd

    .line 43
    aget-char v15, v0, v15

    add-int/lit8 v16, p1, 0xe

    .line 44
    aget-char v16, v0, v16

    add-int/lit8 v17, p1, 0xf

    .line 45
    aget-char v17, v0, v17

    add-int/lit8 v18, p1, 0x10

    .line 46
    aget-char v3, v0, v18

    add-int/lit8 v18, p1, 0x11

    .line 47
    aget-char v18, v0, v18

    add-int/lit8 v20, p1, 0x12

    .line 48
    aget-char v20, v0, v20

    add-int/lit8 v21, p1, 0x13

    move/from16 v22, v14

    .line 49
    aget-char v14, v0, v21

    add-int/lit8 v21, p1, 0x14

    .line 50
    aget-char v21, v0, v21

    add-int/lit8 v23, p1, 0x15

    .line 51
    aget-char v23, v0, v23

    add-int/lit8 v24, p1, 0x16

    .line 52
    aget-char v27, v0, v24

    add-int/lit8 v24, p1, 0x17

    .line 53
    aget-char v28, v0, v24

    add-int/lit8 v24, p1, 0x18

    .line 54
    aget-char v29, v0, v24

    add-int/lit8 v24, p1, 0x19

    .line 55
    aget-char v0, v0, v24

    move/from16 p0, v0

    const/16 v0, 0x2d

    if-ne v1, v0, :cond_3

    if-ne v2, v0, :cond_3

    const/16 v0, 0x20

    if-eq v12, v0, :cond_1

    const/16 v0, 0x54

    if-ne v12, v0, :cond_3

    :cond_1
    const/16 v0, 0x3a

    if-ne v15, v0, :cond_3

    if-ne v3, v0, :cond_3

    const/16 v0, 0x2e

    if-eq v14, v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v24, 0x30

    const/16 v25, 0x30

    const/16 v26, 0x30

    move v12, v13

    move/from16 v13, v22

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v20

    move/from16 v18, v21

    move/from16 v19, v23

    move/from16 v20, v27

    move/from16 v21, v28

    move/from16 v22, v29

    move/from16 v23, p0

    .line 56
    invoke-static/range {v4 .. v26}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseLocalDateTime27([BI)Ljava/time/LocalDateTime;
    .locals 31

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x1b

    .line 1
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 2
    :cond_0
    aget-byte v1, v0, p1

    int-to-char v4, v1

    add-int/lit8 v1, p1, 0x1

    .line 3
    aget-byte v1, v0, v1

    int-to-char v5, v1

    add-int/lit8 v1, p1, 0x2

    .line 4
    aget-byte v1, v0, v1

    int-to-char v6, v1

    add-int/lit8 v1, p1, 0x3

    .line 5
    aget-byte v1, v0, v1

    int-to-char v7, v1

    add-int/lit8 v1, p1, 0x4

    .line 6
    aget-byte v1, v0, v1

    int-to-char v1, v1

    add-int/lit8 v2, p1, 0x5

    .line 7
    aget-byte v2, v0, v2

    int-to-char v8, v2

    add-int/lit8 v2, p1, 0x6

    .line 8
    aget-byte v2, v0, v2

    int-to-char v9, v2

    add-int/lit8 v2, p1, 0x7

    .line 9
    aget-byte v2, v0, v2

    int-to-char v2, v2

    add-int/lit8 v10, p1, 0x8

    .line 10
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, p1, 0x9

    .line 11
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, p1, 0xa

    .line 12
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, p1, 0xb

    .line 13
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, p1, 0xc

    .line 14
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, p1, 0xd

    .line 15
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0xe

    .line 16
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0xf

    move/from16 v18, v3

    .line 17
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x10

    move/from16 v19, v3

    .line 18
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x11

    move/from16 v20, v14

    .line 19
    aget-byte v14, v0, v16

    int-to-char v14, v14

    add-int/lit8 v16, p1, 0x12

    move/from16 v21, v14

    .line 20
    aget-byte v14, v0, v16

    int-to-char v14, v14

    add-int/lit8 v16, p1, 0x13

    move/from16 v22, v14

    .line 21
    aget-byte v14, v0, v16

    int-to-char v14, v14

    add-int/lit8 v16, p1, 0x14

    move/from16 v23, v13

    .line 22
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x15

    move/from16 v24, v13

    .line 23
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x16

    move/from16 v27, v13

    .line 24
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x17

    move/from16 v28, v13

    .line 25
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x18

    move/from16 v29, v13

    .line 26
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x19

    move/from16 v30, v13

    .line 27
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x1a

    .line 28
    aget-byte v0, v0, v16

    int-to-char v0, v0

    move/from16 v16, v13

    const/16 v13, 0x2d

    if-ne v1, v13, :cond_3

    if-ne v2, v13, :cond_3

    const/16 v1, 0x20

    if-eq v12, v1, :cond_1

    const/16 v1, 0x54

    if-ne v12, v1, :cond_3

    :cond_1
    const/16 v1, 0x3a

    if-ne v15, v1, :cond_3

    if-ne v3, v1, :cond_3

    const/16 v1, 0x2e

    if-eq v14, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v25, 0x30

    const/16 v26, 0x30

    move/from16 v12, v23

    move/from16 v1, v24

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v23, v29

    move/from16 v24, v30

    move/from16 v27, v16

    move/from16 v13, v20

    move/from16 v16, v21

    move/from16 v17, v22

    move/from16 v14, v18

    move/from16 v15, v19

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v23

    move/from16 v22, v24

    move/from16 v23, v27

    move/from16 v24, v0

    .line 29
    invoke-static/range {v4 .. v26}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseLocalDateTime27([CI)Ljava/time/LocalDateTime;
    .locals 30

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x1b

    .line 30
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 31
    :cond_0
    aget-char v4, v0, p1

    add-int/lit8 v1, p1, 0x1

    .line 32
    aget-char v5, v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 33
    aget-char v6, v0, v1

    add-int/lit8 v1, p1, 0x3

    .line 34
    aget-char v7, v0, v1

    add-int/lit8 v1, p1, 0x4

    .line 35
    aget-char v1, v0, v1

    add-int/lit8 v2, p1, 0x5

    .line 36
    aget-char v8, v0, v2

    add-int/lit8 v2, p1, 0x6

    .line 37
    aget-char v9, v0, v2

    add-int/lit8 v2, p1, 0x7

    .line 38
    aget-char v2, v0, v2

    add-int/lit8 v10, p1, 0x8

    .line 39
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 40
    aget-char v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 41
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 42
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xc

    .line 43
    aget-char v14, v0, v14

    add-int/lit8 v15, p1, 0xd

    .line 44
    aget-char v15, v0, v15

    add-int/lit8 v16, p1, 0xe

    .line 45
    aget-char v16, v0, v16

    add-int/lit8 v17, p1, 0xf

    .line 46
    aget-char v17, v0, v17

    add-int/lit8 v18, p1, 0x10

    .line 47
    aget-char v3, v0, v18

    add-int/lit8 v18, p1, 0x11

    .line 48
    aget-char v18, v0, v18

    add-int/lit8 v20, p1, 0x12

    .line 49
    aget-char v20, v0, v20

    add-int/lit8 v21, p1, 0x13

    move/from16 v22, v14

    .line 50
    aget-char v14, v0, v21

    add-int/lit8 v21, p1, 0x14

    .line 51
    aget-char v21, v0, v21

    add-int/lit8 v23, p1, 0x15

    .line 52
    aget-char v23, v0, v23

    add-int/lit8 v24, p1, 0x16

    .line 53
    aget-char v24, v0, v24

    add-int/lit8 v25, p1, 0x17

    .line 54
    aget-char v27, v0, v25

    add-int/lit8 v25, p1, 0x18

    .line 55
    aget-char v28, v0, v25

    add-int/lit8 v25, p1, 0x19

    .line 56
    aget-char v29, v0, v25

    add-int/lit8 v25, p1, 0x1a

    .line 57
    aget-char v0, v0, v25

    move/from16 p0, v0

    const/16 v0, 0x2d

    if-ne v1, v0, :cond_3

    if-ne v2, v0, :cond_3

    const/16 v0, 0x20

    if-eq v12, v0, :cond_1

    const/16 v0, 0x54

    if-ne v12, v0, :cond_3

    :cond_1
    const/16 v0, 0x3a

    if-ne v15, v0, :cond_3

    if-ne v3, v0, :cond_3

    const/16 v0, 0x2e

    if-eq v14, v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v25, 0x30

    const/16 v26, 0x30

    move v12, v13

    move/from16 v13, v22

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v20

    move/from16 v18, v21

    move/from16 v19, v23

    move/from16 v20, v24

    move/from16 v21, v27

    move/from16 v22, v28

    move/from16 v23, v29

    move/from16 v24, p0

    .line 58
    invoke-static/range {v4 .. v26}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseLocalDateTime28([BI)Ljava/time/LocalDateTime;
    .locals 31

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x1c

    .line 31
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 32
    :cond_0
    aget-byte v1, v0, p1

    int-to-char v4, v1

    add-int/lit8 v1, p1, 0x1

    .line 33
    aget-byte v1, v0, v1

    int-to-char v5, v1

    add-int/lit8 v1, p1, 0x2

    .line 34
    aget-byte v1, v0, v1

    int-to-char v6, v1

    add-int/lit8 v1, p1, 0x3

    .line 35
    aget-byte v1, v0, v1

    int-to-char v7, v1

    add-int/lit8 v1, p1, 0x4

    .line 36
    aget-byte v1, v0, v1

    int-to-char v1, v1

    add-int/lit8 v2, p1, 0x5

    .line 37
    aget-byte v2, v0, v2

    int-to-char v8, v2

    add-int/lit8 v2, p1, 0x6

    .line 38
    aget-byte v2, v0, v2

    int-to-char v9, v2

    add-int/lit8 v2, p1, 0x7

    .line 39
    aget-byte v2, v0, v2

    int-to-char v2, v2

    add-int/lit8 v10, p1, 0x8

    .line 40
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, p1, 0x9

    .line 41
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, p1, 0xa

    .line 42
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, p1, 0xb

    .line 43
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, p1, 0xc

    .line 44
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, p1, 0xd

    .line 45
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0xe

    .line 46
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0xf

    move/from16 v18, v3

    .line 47
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x10

    move/from16 v19, v3

    .line 48
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x11

    move/from16 v20, v14

    .line 49
    aget-byte v14, v0, v16

    int-to-char v14, v14

    add-int/lit8 v16, p1, 0x12

    move/from16 v21, v14

    .line 50
    aget-byte v14, v0, v16

    int-to-char v14, v14

    add-int/lit8 v16, p1, 0x13

    move/from16 v22, v14

    .line 51
    aget-byte v14, v0, v16

    int-to-char v14, v14

    add-int/lit8 v16, p1, 0x14

    move/from16 v23, v13

    .line 52
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x15

    move/from16 v24, v13

    .line 53
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x16

    move/from16 v25, v13

    .line 54
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x17

    move/from16 v27, v13

    .line 55
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x18

    move/from16 v28, v13

    .line 56
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x19

    move/from16 v29, v13

    .line 57
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x1a

    move/from16 v30, v13

    .line 58
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x1b

    .line 59
    aget-byte v0, v0, v16

    int-to-char v0, v0

    move/from16 v16, v13

    const/16 v13, 0x2d

    if-ne v1, v13, :cond_3

    if-ne v2, v13, :cond_3

    const/16 v1, 0x20

    if-eq v12, v1, :cond_1

    const/16 v1, 0x54

    if-ne v12, v1, :cond_3

    :cond_1
    const/16 v1, 0x3a

    if-ne v15, v1, :cond_3

    if-ne v3, v1, :cond_3

    const/16 v1, 0x2e

    if-eq v14, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v26, 0x30

    move/from16 v12, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v27

    move/from16 v23, v28

    move/from16 v24, v29

    move/from16 v25, v30

    move/from16 v27, v16

    move/from16 v13, v20

    move/from16 v16, v21

    move/from16 v17, v22

    move/from16 v14, v18

    move/from16 v15, v19

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v23

    move/from16 v22, v24

    move/from16 v23, v25

    move/from16 v24, v27

    move/from16 v25, v0

    .line 60
    invoke-static/range {v4 .. v26}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseLocalDateTime28([CI)Ljava/time/LocalDateTime;
    .locals 30

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x1c

    .line 1
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 2
    :cond_0
    aget-char v4, v0, p1

    add-int/lit8 v1, p1, 0x1

    .line 3
    aget-char v5, v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 4
    aget-char v6, v0, v1

    add-int/lit8 v1, p1, 0x3

    .line 5
    aget-char v7, v0, v1

    add-int/lit8 v1, p1, 0x4

    .line 6
    aget-char v1, v0, v1

    add-int/lit8 v2, p1, 0x5

    .line 7
    aget-char v8, v0, v2

    add-int/lit8 v2, p1, 0x6

    .line 8
    aget-char v9, v0, v2

    add-int/lit8 v2, p1, 0x7

    .line 9
    aget-char v2, v0, v2

    add-int/lit8 v10, p1, 0x8

    .line 10
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 11
    aget-char v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 12
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 13
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xc

    .line 14
    aget-char v14, v0, v14

    add-int/lit8 v15, p1, 0xd

    .line 15
    aget-char v15, v0, v15

    add-int/lit8 v16, p1, 0xe

    .line 16
    aget-char v16, v0, v16

    add-int/lit8 v17, p1, 0xf

    .line 17
    aget-char v17, v0, v17

    add-int/lit8 v18, p1, 0x10

    .line 18
    aget-char v3, v0, v18

    add-int/lit8 v18, p1, 0x11

    .line 19
    aget-char v18, v0, v18

    add-int/lit8 v20, p1, 0x12

    .line 20
    aget-char v20, v0, v20

    add-int/lit8 v21, p1, 0x13

    move/from16 v22, v14

    .line 21
    aget-char v14, v0, v21

    add-int/lit8 v21, p1, 0x14

    .line 22
    aget-char v21, v0, v21

    add-int/lit8 v23, p1, 0x15

    .line 23
    aget-char v23, v0, v23

    add-int/lit8 v24, p1, 0x16

    .line 24
    aget-char v24, v0, v24

    add-int/lit8 v25, p1, 0x17

    .line 25
    aget-char v25, v0, v25

    add-int/lit8 v26, p1, 0x18

    .line 26
    aget-char v27, v0, v26

    add-int/lit8 v26, p1, 0x19

    .line 27
    aget-char v28, v0, v26

    add-int/lit8 v26, p1, 0x1a

    .line 28
    aget-char v29, v0, v26

    add-int/lit8 v26, p1, 0x1b

    .line 29
    aget-char v0, v0, v26

    move/from16 p0, v0

    const/16 v0, 0x2d

    if-ne v1, v0, :cond_3

    if-ne v2, v0, :cond_3

    const/16 v0, 0x20

    if-eq v12, v0, :cond_1

    const/16 v0, 0x54

    if-ne v12, v0, :cond_3

    :cond_1
    const/16 v0, 0x3a

    if-ne v15, v0, :cond_3

    if-ne v3, v0, :cond_3

    const/16 v0, 0x2e

    if-eq v14, v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v26, 0x30

    move v12, v13

    move/from16 v13, v22

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v20

    move/from16 v18, v21

    move/from16 v19, v23

    move/from16 v20, v24

    move/from16 v21, v25

    move/from16 v22, v27

    move/from16 v23, v28

    move/from16 v24, v29

    move/from16 v25, p0

    .line 30
    invoke-static/range {v4 .. v26}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseLocalDateTime29([BI)Ljava/time/LocalDateTime;
    .locals 31

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x1d

    .line 1
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 2
    :cond_0
    aget-byte v1, v0, p1

    int-to-char v4, v1

    add-int/lit8 v1, p1, 0x1

    .line 3
    aget-byte v1, v0, v1

    int-to-char v5, v1

    add-int/lit8 v1, p1, 0x2

    .line 4
    aget-byte v1, v0, v1

    int-to-char v6, v1

    add-int/lit8 v1, p1, 0x3

    .line 5
    aget-byte v1, v0, v1

    int-to-char v7, v1

    add-int/lit8 v1, p1, 0x4

    .line 6
    aget-byte v1, v0, v1

    int-to-char v1, v1

    add-int/lit8 v2, p1, 0x5

    .line 7
    aget-byte v2, v0, v2

    int-to-char v8, v2

    add-int/lit8 v2, p1, 0x6

    .line 8
    aget-byte v2, v0, v2

    int-to-char v9, v2

    add-int/lit8 v2, p1, 0x7

    .line 9
    aget-byte v2, v0, v2

    int-to-char v2, v2

    add-int/lit8 v10, p1, 0x8

    .line 10
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, p1, 0x9

    .line 11
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, p1, 0xa

    .line 12
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, p1, 0xb

    .line 13
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, p1, 0xc

    .line 14
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, p1, 0xd

    .line 15
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0xe

    .line 16
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0xf

    move/from16 v18, v3

    .line 17
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x10

    move/from16 v19, v3

    .line 18
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, p1, 0x11

    move/from16 v20, v14

    .line 19
    aget-byte v14, v0, v16

    int-to-char v14, v14

    add-int/lit8 v16, p1, 0x12

    move/from16 v21, v14

    .line 20
    aget-byte v14, v0, v16

    int-to-char v14, v14

    add-int/lit8 v16, p1, 0x13

    move/from16 v22, v14

    .line 21
    aget-byte v14, v0, v16

    int-to-char v14, v14

    add-int/lit8 v16, p1, 0x14

    move/from16 v23, v13

    .line 22
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x15

    move/from16 v24, v13

    .line 23
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x16

    move/from16 v25, v13

    .line 24
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x17

    move/from16 v26, v13

    .line 25
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x18

    move/from16 v27, v13

    .line 26
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x19

    move/from16 v28, v13

    .line 27
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x1a

    move/from16 v29, v13

    .line 28
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x1b

    move/from16 v30, v13

    .line 29
    aget-byte v13, v0, v16

    int-to-char v13, v13

    add-int/lit8 v16, p1, 0x1c

    .line 30
    aget-byte v0, v0, v16

    int-to-char v0, v0

    move/from16 v16, v13

    const/16 v13, 0x2d

    if-ne v1, v13, :cond_3

    if-ne v2, v13, :cond_3

    const/16 v1, 0x20

    if-eq v12, v1, :cond_1

    const/16 v1, 0x54

    if-ne v12, v1, :cond_3

    :cond_1
    const/16 v1, 0x3a

    if-ne v15, v1, :cond_3

    if-ne v3, v1, :cond_3

    const/16 v1, 0x2e

    if-eq v14, v1, :cond_2

    goto :goto_0

    :cond_2
    move/from16 v12, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v23, v27

    move/from16 v24, v28

    move/from16 v25, v29

    move/from16 v26, v30

    move/from16 v27, v16

    move/from16 v13, v20

    move/from16 v16, v21

    move/from16 v17, v22

    move/from16 v14, v18

    move/from16 v15, v19

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v23

    move/from16 v22, v24

    move/from16 v23, v25

    move/from16 v24, v26

    move/from16 v25, v27

    move/from16 v26, v0

    .line 31
    invoke-static/range {v4 .. v26}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseLocalDateTime29([CI)Ljava/time/LocalDateTime;
    .locals 31

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x1d

    .line 32
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 33
    :cond_0
    aget-char v4, v0, p1

    add-int/lit8 v1, p1, 0x1

    .line 34
    aget-char v5, v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 35
    aget-char v6, v0, v1

    add-int/lit8 v1, p1, 0x3

    .line 36
    aget-char v7, v0, v1

    add-int/lit8 v1, p1, 0x4

    .line 37
    aget-char v1, v0, v1

    add-int/lit8 v2, p1, 0x5

    .line 38
    aget-char v8, v0, v2

    add-int/lit8 v2, p1, 0x6

    .line 39
    aget-char v9, v0, v2

    add-int/lit8 v2, p1, 0x7

    .line 40
    aget-char v2, v0, v2

    add-int/lit8 v10, p1, 0x8

    .line 41
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 42
    aget-char v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 43
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 44
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xc

    .line 45
    aget-char v14, v0, v14

    add-int/lit8 v15, p1, 0xd

    .line 46
    aget-char v15, v0, v15

    add-int/lit8 v16, p1, 0xe

    .line 47
    aget-char v16, v0, v16

    add-int/lit8 v17, p1, 0xf

    .line 48
    aget-char v17, v0, v17

    add-int/lit8 v18, p1, 0x10

    .line 49
    aget-char v3, v0, v18

    add-int/lit8 v18, p1, 0x11

    .line 50
    aget-char v18, v0, v18

    add-int/lit8 v20, p1, 0x12

    .line 51
    aget-char v20, v0, v20

    add-int/lit8 v21, p1, 0x13

    move/from16 v22, v14

    .line 52
    aget-char v14, v0, v21

    add-int/lit8 v21, p1, 0x14

    .line 53
    aget-char v21, v0, v21

    add-int/lit8 v23, p1, 0x15

    .line 54
    aget-char v23, v0, v23

    add-int/lit8 v24, p1, 0x16

    .line 55
    aget-char v24, v0, v24

    add-int/lit8 v25, p1, 0x17

    .line 56
    aget-char v25, v0, v25

    add-int/lit8 v26, p1, 0x18

    .line 57
    aget-char v26, v0, v26

    add-int/lit8 v27, p1, 0x19

    .line 58
    aget-char v27, v0, v27

    add-int/lit8 v28, p1, 0x1a

    .line 59
    aget-char v28, v0, v28

    add-int/lit8 v29, p1, 0x1b

    .line 60
    aget-char v29, v0, v29

    add-int/lit8 v30, p1, 0x1c

    .line 61
    aget-char v0, v0, v30

    move/from16 p0, v0

    const/16 v0, 0x2d

    if-ne v1, v0, :cond_3

    if-ne v2, v0, :cond_3

    const/16 v0, 0x20

    if-eq v12, v0, :cond_1

    const/16 v0, 0x54

    if-ne v12, v0, :cond_3

    :cond_1
    const/16 v0, 0x3a

    if-ne v15, v0, :cond_3

    if-ne v3, v0, :cond_3

    const/16 v0, 0x2e

    if-eq v14, v0, :cond_2

    goto :goto_0

    :cond_2
    move v12, v13

    move/from16 v13, v22

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v20

    move/from16 v18, v21

    move/from16 v19, v23

    move/from16 v20, v24

    move/from16 v21, v25

    move/from16 v22, v26

    move/from16 v23, v27

    move/from16 v24, v28

    move/from16 v25, v29

    move/from16 v26, p0

    .line 62
    invoke-static/range {v4 .. v26}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseLocalDateTimeX([BII)Ljava/time/LocalDateTime;
    .locals 32

    move/from16 v0, p2

    if-eqz p0, :cond_5

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/16 v2, 0x15

    if-lt v0, v2, :cond_4

    const/16 v3, 0x1d

    if-le v0, v3, :cond_1

    goto/16 :goto_5

    .line 67
    :cond_1
    aget-byte v3, p0, p1

    int-to-char v4, v3

    add-int/lit8 v3, p1, 0x1

    .line 68
    aget-byte v3, p0, v3

    int-to-char v5, v3

    add-int/lit8 v3, p1, 0x2

    .line 69
    aget-byte v3, p0, v3

    int-to-char v6, v3

    add-int/lit8 v3, p1, 0x3

    .line 70
    aget-byte v3, p0, v3

    int-to-char v7, v3

    add-int/lit8 v3, p1, 0x4

    .line 71
    aget-byte v3, p0, v3

    int-to-char v3, v3

    add-int/lit8 v8, p1, 0x5

    .line 72
    aget-byte v8, p0, v8

    int-to-char v8, v8

    add-int/lit8 v9, p1, 0x6

    .line 73
    aget-byte v9, p0, v9

    int-to-char v9, v9

    add-int/lit8 v10, p1, 0x7

    .line 74
    aget-byte v10, p0, v10

    int-to-char v10, v10

    add-int/lit8 v11, p1, 0x8

    .line 75
    aget-byte v11, p0, v11

    int-to-char v11, v11

    add-int/lit8 v12, p1, 0x9

    .line 76
    aget-byte v12, p0, v12

    int-to-char v12, v12

    add-int/lit8 v13, p1, 0xa

    .line 77
    aget-byte v13, p0, v13

    int-to-char v13, v13

    add-int/lit8 v14, p1, 0xb

    .line 78
    aget-byte v14, p0, v14

    int-to-char v14, v14

    add-int/lit8 v15, p1, 0xc

    .line 79
    aget-byte v15, p0, v15

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0xd

    .line 80
    aget-byte v1, p0, v16

    int-to-char v1, v1

    add-int/lit8 v16, p1, 0xe

    .line 81
    aget-byte v2, p0, v16

    int-to-char v2, v2

    add-int/lit8 v16, p1, 0xf

    move/from16 v19, v2

    .line 82
    aget-byte v2, p0, v16

    int-to-char v2, v2

    add-int/lit8 v16, p1, 0x10

    move/from16 v20, v2

    .line 83
    aget-byte v2, p0, v16

    int-to-char v2, v2

    add-int/lit8 v16, p1, 0x11

    move/from16 v21, v15

    .line 84
    aget-byte v15, p0, v16

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0x12

    move/from16 v22, v15

    .line 85
    aget-byte v15, p0, v16

    int-to-char v15, v15

    add-int/lit8 v16, p1, 0x13

    move/from16 v23, v15

    .line 86
    aget-byte v15, p0, v16

    int-to-char v15, v15

    const/16 v16, 0x30

    packed-switch v0, :pswitch_data_0

    add-int/lit8 v0, p1, 0x14

    .line 87
    aget-byte v0, p0, v0

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x15

    move/from16 v18, v0

    .line 88
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x16

    move/from16 v24, v0

    .line 89
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x17

    move/from16 v25, v0

    .line 90
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x18

    move/from16 v26, v0

    .line 91
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x19

    move/from16 v27, v0

    .line 92
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x1a

    move/from16 v28, v0

    .line 93
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x1b

    move/from16 v29, v0

    .line 94
    aget-byte v0, p0, v16

    int-to-char v0, v0

    add-int/lit8 v16, p1, 0x1c

    move/from16 p2, v0

    .line 95
    aget-byte v0, p0, v16

    int-to-char v0, v0

    move/from16 p0, p2

    move/from16 v30, v0

    move/from16 v31, v25

    move/from16 v25, v24

    move/from16 v24, v29

    move/from16 v29, v28

    move/from16 v28, v27

    move/from16 v27, v26

    move/from16 v26, v31

    goto/16 :goto_4

    :pswitch_0
    add-int/lit8 v0, p1, 0x14

    .line 96
    aget-byte v0, p0, v0

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x15

    move/from16 v24, v0

    .line 97
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x16

    move/from16 v25, v0

    .line 98
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x17

    move/from16 v26, v0

    .line 99
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x18

    move/from16 p2, v0

    .line 100
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x19

    move/from16 v27, v0

    .line 101
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x1a

    move/from16 v28, v0

    .line 102
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x1b

    move/from16 v29, v0

    .line 103
    aget-byte v0, p0, v18

    int-to-char v0, v0

    move/from16 p0, v0

    move/from16 v30, v16

    move/from16 v18, v24

    move/from16 v24, v29

    move/from16 v29, v28

    move/from16 v28, v27

    move/from16 v27, p2

    goto/16 :goto_4

    :pswitch_1
    add-int/lit8 v0, p1, 0x14

    .line 104
    aget-byte v0, p0, v0

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x15

    move/from16 v24, v0

    .line 105
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x16

    move/from16 v25, v0

    .line 106
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x17

    move/from16 v26, v0

    .line 107
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x18

    move/from16 v27, v0

    .line 108
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x19

    move/from16 v28, v0

    .line 109
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x1a

    move/from16 v29, v0

    .line 110
    aget-byte v0, p0, v18

    int-to-char v0, v0

    move/from16 p0, v16

    move/from16 v30, p0

    move/from16 v18, v24

    move/from16 v24, v0

    goto/16 :goto_4

    :pswitch_2
    add-int/lit8 v0, p1, 0x14

    .line 111
    aget-byte v0, p0, v0

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x15

    move/from16 v24, v0

    .line 112
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x16

    move/from16 v25, v0

    .line 113
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x17

    move/from16 v26, v0

    .line 114
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x18

    move/from16 v27, v0

    .line 115
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x19

    move/from16 v28, v0

    .line 116
    aget-byte v0, p0, v18

    int-to-char v0, v0

    move/from16 v29, v0

    move/from16 p0, v16

    move/from16 v30, p0

    goto/16 :goto_3

    :pswitch_3
    add-int/lit8 v0, p1, 0x14

    .line 117
    aget-byte v0, p0, v0

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x15

    move/from16 v24, v0

    .line 118
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x16

    move/from16 v25, v0

    .line 119
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x17

    move/from16 v26, v0

    .line 120
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x18

    move/from16 v27, v0

    .line 121
    aget-byte v0, p0, v18

    int-to-char v0, v0

    move/from16 v28, v0

    move/from16 p0, v16

    move/from16 v29, p0

    goto :goto_2

    :pswitch_4
    add-int/lit8 v0, p1, 0x14

    .line 122
    aget-byte v0, p0, v0

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x15

    move/from16 v24, v0

    .line 123
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x16

    move/from16 v25, v0

    .line 124
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x17

    move/from16 v26, v0

    .line 125
    aget-byte v0, p0, v18

    int-to-char v0, v0

    move/from16 v27, v0

    move/from16 p0, v16

    move/from16 v28, p0

    goto :goto_1

    :pswitch_5
    add-int/lit8 v0, p1, 0x14

    .line 126
    aget-byte v0, p0, v0

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x15

    move/from16 v24, v0

    .line 127
    aget-byte v0, p0, v18

    int-to-char v0, v0

    add-int/lit8 v18, p1, 0x16

    move/from16 v25, v0

    .line 128
    aget-byte v0, p0, v18

    int-to-char v0, v0

    move/from16 v26, v0

    move/from16 p0, v16

    move/from16 v27, p0

    goto :goto_0

    :pswitch_6
    add-int/lit8 v0, p1, 0x14

    .line 129
    aget-byte v0, p0, v0

    int-to-char v0, v0

    const/16 v18, 0x15

    add-int/lit8 v18, p1, 0x15

    move/from16 v24, v0

    .line 130
    aget-byte v0, p0, v18

    int-to-char v0, v0

    move/from16 v25, v0

    move/from16 p0, v16

    move/from16 v26, p0

    move/from16 v27, v26

    :goto_0
    move/from16 v28, v27

    :goto_1
    move/from16 v29, v28

    :goto_2
    move/from16 v30, v29

    :goto_3
    move/from16 v18, v24

    move/from16 v24, v30

    goto :goto_4

    :pswitch_7
    add-int/lit8 v0, p1, 0x14

    .line 131
    aget-byte v0, p0, v0

    int-to-char v0, v0

    move/from16 v18, v0

    move/from16 p0, v16

    move/from16 v24, p0

    move/from16 v25, v24

    move/from16 v26, v25

    move/from16 v27, v26

    move/from16 v28, v27

    move/from16 v29, v28

    move/from16 v30, v29

    :goto_4
    const/16 v0, 0x2d

    if-ne v3, v0, :cond_3

    if-ne v10, v0, :cond_3

    const/16 v0, 0x20

    if-eq v13, v0, :cond_2

    const/16 v0, 0x54

    if-ne v13, v0, :cond_3

    :cond_2
    const/16 v0, 0x3a

    if-ne v1, v0, :cond_3

    if-ne v2, v0, :cond_3

    const/16 v0, 0x2e

    if-ne v15, v0, :cond_3

    move v10, v11

    move v11, v12

    move v12, v14

    move/from16 v13, v21

    move/from16 v14, v19

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v15, v20

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v19, v25

    move/from16 v20, v26

    move/from16 v21, v27

    move/from16 v22, v28

    move/from16 v23, v29

    move/from16 v25, p0

    move/from16 v26, v30

    .line 132
    invoke-static/range {v4 .. v26}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :cond_4
    :goto_5
    const/4 v0, 0x0

    return-object v0

    :cond_5
    :goto_6
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x15
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

.method public static parseLocalDateTimeX([CII)Ljava/time/LocalDateTime;
    .locals 32

    move/from16 v0, p2

    if-eqz p0, :cond_5

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const/16 v2, 0x15

    if-lt v0, v2, :cond_4

    const/16 v3, 0x1d

    if-le v0, v3, :cond_1

    goto/16 :goto_6

    .line 1
    :cond_1
    aget-char v4, p0, p1

    add-int/lit8 v3, p1, 0x1

    .line 2
    aget-char v5, p0, v3

    add-int/lit8 v3, p1, 0x2

    .line 3
    aget-char v6, p0, v3

    add-int/lit8 v3, p1, 0x3

    .line 4
    aget-char v7, p0, v3

    add-int/lit8 v3, p1, 0x4

    .line 5
    aget-char v3, p0, v3

    add-int/lit8 v8, p1, 0x5

    .line 6
    aget-char v8, p0, v8

    add-int/lit8 v9, p1, 0x6

    .line 7
    aget-char v9, p0, v9

    add-int/lit8 v10, p1, 0x7

    .line 8
    aget-char v10, p0, v10

    add-int/lit8 v11, p1, 0x8

    .line 9
    aget-char v11, p0, v11

    add-int/lit8 v12, p1, 0x9

    .line 10
    aget-char v12, p0, v12

    add-int/lit8 v13, p1, 0xa

    .line 11
    aget-char v13, p0, v13

    add-int/lit8 v14, p1, 0xb

    .line 12
    aget-char v14, p0, v14

    add-int/lit8 v15, p1, 0xc

    .line 13
    aget-char v15, p0, v15

    add-int/lit8 v16, p1, 0xd

    .line 14
    aget-char v1, p0, v16

    add-int/lit8 v16, p1, 0xe

    .line 15
    aget-char v16, p0, v16

    add-int/lit8 v18, p1, 0xf

    .line 16
    aget-char v18, p0, v18

    add-int/lit8 v19, p1, 0x10

    .line 17
    aget-char v2, p0, v19

    add-int/lit8 v19, p1, 0x11

    .line 18
    aget-char v19, p0, v19

    add-int/lit8 v21, p1, 0x12

    .line 19
    aget-char v21, p0, v21

    add-int/lit8 v22, p1, 0x13

    move/from16 v23, v15

    .line 20
    aget-char v15, p0, v22

    const/16 v22, 0x30

    packed-switch v0, :pswitch_data_0

    add-int/lit8 v0, p1, 0x14

    .line 21
    aget-char v0, p0, v0

    add-int/lit8 v20, p1, 0x15

    .line 22
    aget-char v20, p0, v20

    add-int/lit8 v22, p1, 0x16

    .line 23
    aget-char v22, p0, v22

    add-int/lit8 v24, p1, 0x17

    .line 24
    aget-char v24, p0, v24

    add-int/lit8 v25, p1, 0x18

    .line 25
    aget-char v25, p0, v25

    add-int/lit8 v26, p1, 0x19

    .line 26
    aget-char v26, p0, v26

    add-int/lit8 v27, p1, 0x1a

    .line 27
    aget-char v27, p0, v27

    add-int/lit8 v28, p1, 0x1b

    .line 28
    aget-char v28, p0, v28

    add-int/lit8 v29, p1, 0x1c

    .line 29
    aget-char v29, p0, v29

    move/from16 p0, v0

    move/from16 v30, v24

    move/from16 v24, v22

    move/from16 v22, v25

    move/from16 v25, v30

    move/from16 v31, v27

    move/from16 v27, v26

    move/from16 v26, v29

    move/from16 v29, v28

    move/from16 v28, v31

    goto/16 :goto_5

    :pswitch_0
    add-int/lit8 v0, p1, 0x14

    .line 30
    aget-char v0, p0, v0

    add-int/lit8 v20, p1, 0x15

    .line 31
    aget-char v20, p0, v20

    add-int/lit8 v24, p1, 0x16

    .line 32
    aget-char v24, p0, v24

    add-int/lit8 v25, p1, 0x17

    .line 33
    aget-char v25, p0, v25

    add-int/lit8 v26, p1, 0x18

    .line 34
    aget-char v26, p0, v26

    add-int/lit8 v27, p1, 0x19

    .line 35
    aget-char v27, p0, v27

    add-int/lit8 v28, p1, 0x1a

    .line 36
    aget-char v28, p0, v28

    add-int/lit8 v29, p1, 0x1b

    .line 37
    aget-char v29, p0, v29

    move/from16 p0, v0

    move/from16 v30, v26

    move/from16 v26, v22

    move/from16 v22, v30

    goto/16 :goto_5

    :pswitch_1
    add-int/lit8 v0, p1, 0x14

    .line 38
    aget-char v0, p0, v0

    add-int/lit8 v20, p1, 0x15

    .line 39
    aget-char v20, p0, v20

    add-int/lit8 v24, p1, 0x16

    .line 40
    aget-char v24, p0, v24

    add-int/lit8 v25, p1, 0x17

    .line 41
    aget-char v25, p0, v25

    add-int/lit8 v26, p1, 0x18

    .line 42
    aget-char v26, p0, v26

    add-int/lit8 v27, p1, 0x19

    .line 43
    aget-char v27, p0, v27

    add-int/lit8 v28, p1, 0x1a

    .line 44
    aget-char v28, p0, v28

    move/from16 p0, v0

    move/from16 v29, v22

    goto :goto_1

    :pswitch_2
    add-int/lit8 v0, p1, 0x14

    .line 45
    aget-char v0, p0, v0

    add-int/lit8 v20, p1, 0x15

    .line 46
    aget-char v20, p0, v20

    add-int/lit8 v24, p1, 0x16

    .line 47
    aget-char v24, p0, v24

    add-int/lit8 v25, p1, 0x17

    .line 48
    aget-char v25, p0, v25

    add-int/lit8 v26, p1, 0x18

    .line 49
    aget-char v26, p0, v26

    add-int/lit8 v27, p1, 0x19

    .line 50
    aget-char v27, p0, v27

    move/from16 p0, v0

    move/from16 v28, v22

    goto :goto_0

    :pswitch_3
    add-int/lit8 v0, p1, 0x14

    .line 51
    aget-char v0, p0, v0

    add-int/lit8 v20, p1, 0x15

    .line 52
    aget-char v20, p0, v20

    add-int/lit8 v24, p1, 0x16

    .line 53
    aget-char v24, p0, v24

    add-int/lit8 v25, p1, 0x17

    .line 54
    aget-char v25, p0, v25

    add-int/lit8 v26, p1, 0x18

    .line 55
    aget-char v26, p0, v26

    move/from16 p0, v0

    move/from16 v27, v22

    move/from16 v28, v27

    :goto_0
    move/from16 v29, v28

    :goto_1
    move/from16 v22, v26

    move/from16 v26, v29

    goto :goto_5

    :pswitch_4
    add-int/lit8 v0, p1, 0x14

    .line 56
    aget-char v0, p0, v0

    add-int/lit8 v20, p1, 0x15

    .line 57
    aget-char v20, p0, v20

    add-int/lit8 v24, p1, 0x16

    .line 58
    aget-char v24, p0, v24

    add-int/lit8 v25, p1, 0x17

    .line 59
    aget-char v25, p0, v25

    move/from16 p0, v0

    move/from16 v26, v22

    goto :goto_4

    :pswitch_5
    add-int/lit8 v0, p1, 0x14

    .line 60
    aget-char v0, p0, v0

    add-int/lit8 v20, p1, 0x15

    .line 61
    aget-char v20, p0, v20

    add-int/lit8 v24, p1, 0x16

    .line 62
    aget-char v24, p0, v24

    move/from16 p0, v0

    move/from16 v25, v22

    goto :goto_3

    :pswitch_6
    add-int/lit8 v0, p1, 0x14

    .line 63
    aget-char v0, p0, v0

    const/16 v20, 0x15

    add-int/lit8 v20, p1, 0x15

    .line 64
    aget-char v20, p0, v20

    move/from16 p0, v0

    move/from16 v24, v22

    goto :goto_2

    :pswitch_7
    add-int/lit8 v0, p1, 0x14

    .line 65
    aget-char v0, p0, v0

    move/from16 p0, v0

    move/from16 v20, v22

    move/from16 v24, v20

    :goto_2
    move/from16 v25, v24

    :goto_3
    move/from16 v26, v25

    :goto_4
    move/from16 v27, v26

    move/from16 v28, v27

    move/from16 v29, v28

    :goto_5
    const/16 v0, 0x2d

    if-ne v3, v0, :cond_3

    if-ne v10, v0, :cond_3

    const/16 v0, 0x20

    if-eq v13, v0, :cond_2

    const/16 v0, 0x54

    if-ne v13, v0, :cond_3

    :cond_2
    const/16 v0, 0x3a

    if-ne v1, v0, :cond_3

    if-ne v2, v0, :cond_3

    const/16 v0, 0x2e

    if-ne v15, v0, :cond_3

    move v10, v11

    move v11, v12

    move v12, v14

    move/from16 v13, v23

    move/from16 v14, v16

    move/from16 v15, v18

    move/from16 v16, v19

    move/from16 v17, v21

    move/from16 v18, p0

    move/from16 v19, v20

    move/from16 v20, v24

    move/from16 v21, v25

    move/from16 v23, v27

    move/from16 v24, v28

    move/from16 v25, v29

    .line 66
    invoke-static/range {v4 .. v26}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :cond_4
    :goto_6
    const/4 v0, 0x0

    return-object v0

    :cond_5
    :goto_7
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x15
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

.method public static parseLocalTime(CCCCCCCC)Ljava/time/LocalTime;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x3a

    if-ne p2, v1, :cond_0

    if-ne p5, v1, :cond_0

    const/16 p2, 0x30

    if-lt p0, p2, :cond_0

    const/16 p5, 0x39

    if-gt p0, p5, :cond_0

    if-lt p1, p2, :cond_0

    if-gt p1, p5, :cond_0

    sub-int/2addr p0, p2

    mul-int/lit8 p0, p0, 0xa

    sub-int/2addr p1, p2

    add-int/2addr p0, p1

    if-lt p3, p2, :cond_0

    if-gt p3, p5, :cond_0

    if-lt p4, p2, :cond_0

    if-gt p4, p5, :cond_0

    sub-int/2addr p3, p2

    mul-int/lit8 p3, p3, 0xa

    sub-int/2addr p4, p2

    add-int/2addr p3, p4

    if-lt p6, p2, :cond_0

    if-gt p6, p5, :cond_0

    if-lt p7, p2, :cond_0

    if-gt p7, p5, :cond_0

    sub-int/2addr p6, p2

    mul-int/lit8 p6, p6, 0xa

    sub-int/2addr p7, p2

    add-int/2addr p6, p7

    invoke-static {p0, p3, p6}, Ljava/time/LocalTime;->of(III)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static parseLocalTime10([BI)Ljava/time/LocalTime;
    .locals 10

    add-int/lit8 v0, p1, 0xa

    .line 1
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 3
    aget-byte v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 4
    aget-byte v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 5
    aget-byte v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 6
    aget-byte v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 7
    aget-byte v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 8
    aget-byte v7, p0, v7

    add-int/lit8 v8, p1, 0x7

    .line 9
    aget-byte v8, p0, v8

    add-int/lit8 v9, p1, 0x8

    .line 10
    aget-byte v9, p0, v9

    add-int/lit8 p1, p1, 0x9

    .line 11
    aget-byte p0, p0, p1

    const/16 p1, 0x3a

    if-ne v3, p1, :cond_1

    if-ne v6, p1, :cond_1

    const/16 p1, 0x2e

    if-ne v9, p1, :cond_1

    const/16 p1, 0x30

    if-lt v0, p1, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    if-lt v1, p1, :cond_1

    if-gt v1, v3, :cond_1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    if-lt v4, p1, :cond_1

    if-gt v4, v3, :cond_1

    if-lt v5, p1, :cond_1

    if-gt v5, v3, :cond_1

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v5, p1

    add-int/2addr v4, v5

    if-lt v7, p1, :cond_1

    if-gt v7, v3, :cond_1

    if-lt v8, p1, :cond_1

    if-gt v8, v3, :cond_1

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, p1

    add-int/2addr v7, v8

    if-lt p0, p1, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x64

    const p1, 0xf4240

    mul-int/2addr p0, p1

    .line 12
    invoke-static {v0, v4, v7, p0}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static parseLocalTime10([CI)Ljava/time/LocalTime;
    .locals 10

    add-int/lit8 v0, p1, 0xa

    .line 13
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 14
    :cond_0
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 15
    aget-char v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 16
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 17
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 18
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 19
    aget-char v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 20
    aget-char v7, p0, v7

    add-int/lit8 v8, p1, 0x7

    .line 21
    aget-char v8, p0, v8

    add-int/lit8 v9, p1, 0x8

    .line 22
    aget-char v9, p0, v9

    add-int/lit8 p1, p1, 0x9

    .line 23
    aget-char p0, p0, p1

    const/16 p1, 0x3a

    if-ne v3, p1, :cond_1

    if-ne v6, p1, :cond_1

    const/16 p1, 0x2e

    if-ne v9, p1, :cond_1

    const/16 p1, 0x30

    if-lt v0, p1, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    if-lt v1, p1, :cond_1

    if-gt v1, v3, :cond_1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    if-lt v4, p1, :cond_1

    if-gt v4, v3, :cond_1

    if-lt v5, p1, :cond_1

    if-gt v5, v3, :cond_1

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v5, p1

    add-int/2addr v4, v5

    if-lt v7, p1, :cond_1

    if-gt v7, v3, :cond_1

    if-lt v8, p1, :cond_1

    if-gt v8, v3, :cond_1

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, p1

    add-int/2addr v7, v8

    if-lt p0, p1, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x64

    const p1, 0xf4240

    mul-int/2addr p0, p1

    .line 24
    invoke-static {v0, v4, v7, p0}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static parseLocalTime11([BI)Ljava/time/LocalTime;
    .locals 11

    add-int/lit8 v0, p1, 0xb

    .line 1
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 3
    aget-byte v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 4
    aget-byte v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 5
    aget-byte v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 6
    aget-byte v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 7
    aget-byte v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 8
    aget-byte v7, p0, v7

    add-int/lit8 v8, p1, 0x7

    .line 9
    aget-byte v8, p0, v8

    add-int/lit8 v9, p1, 0x8

    .line 10
    aget-byte v9, p0, v9

    add-int/lit8 v10, p1, 0x9

    .line 11
    aget-byte v10, p0, v10

    add-int/lit8 p1, p1, 0xa

    .line 12
    aget-byte p0, p0, p1

    const/16 p1, 0x3a

    if-ne v3, p1, :cond_1

    if-ne v6, p1, :cond_1

    const/16 p1, 0x2e

    if-ne v9, p1, :cond_1

    const/16 p1, 0x30

    if-lt v0, p1, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    if-lt v1, p1, :cond_1

    if-gt v1, v3, :cond_1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    if-lt v4, p1, :cond_1

    if-gt v4, v3, :cond_1

    if-lt v5, p1, :cond_1

    if-gt v5, v3, :cond_1

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v5, p1

    add-int/2addr v4, v5

    if-lt v7, p1, :cond_1

    if-gt v7, v3, :cond_1

    if-lt v8, p1, :cond_1

    if-gt v8, v3, :cond_1

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, p1

    add-int/2addr v7, v8

    if-lt v10, p1, :cond_1

    if-gt v10, v3, :cond_1

    if-lt p0, p1, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr v10, p1

    mul-int/lit8 v10, v10, 0x64

    sub-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0xa

    add-int/2addr v10, p0

    const p0, 0xf4240

    mul-int/2addr v10, p0

    .line 13
    invoke-static {v0, v4, v7, v10}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static parseLocalTime11([CI)Ljava/time/LocalTime;
    .locals 11

    add-int/lit8 v0, p1, 0xb

    .line 14
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 15
    :cond_0
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 16
    aget-char v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 17
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 18
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 19
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 20
    aget-char v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 21
    aget-char v7, p0, v7

    add-int/lit8 v8, p1, 0x7

    .line 22
    aget-char v8, p0, v8

    add-int/lit8 v9, p1, 0x8

    .line 23
    aget-char v9, p0, v9

    add-int/lit8 v10, p1, 0x9

    .line 24
    aget-char v10, p0, v10

    add-int/lit8 p1, p1, 0xa

    .line 25
    aget-char p0, p0, p1

    const/16 p1, 0x3a

    if-ne v3, p1, :cond_1

    if-ne v6, p1, :cond_1

    const/16 p1, 0x2e

    if-ne v9, p1, :cond_1

    const/16 p1, 0x30

    if-lt v0, p1, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    if-lt v1, p1, :cond_1

    if-gt v1, v3, :cond_1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    if-lt v4, p1, :cond_1

    if-gt v4, v3, :cond_1

    if-lt v5, p1, :cond_1

    if-gt v5, v3, :cond_1

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v5, p1

    add-int/2addr v4, v5

    if-lt v7, p1, :cond_1

    if-gt v7, v3, :cond_1

    if-lt v8, p1, :cond_1

    if-gt v8, v3, :cond_1

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, p1

    add-int/2addr v7, v8

    if-lt v10, p1, :cond_1

    if-gt v10, v3, :cond_1

    if-lt p0, p1, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr v10, p1

    mul-int/lit8 v10, v10, 0x64

    sub-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0xa

    add-int/2addr v10, p0

    const p0, 0xf4240

    mul-int/2addr v10, p0

    .line 26
    invoke-static {v0, v4, v7, v10}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static parseLocalTime12([BI)Ljava/time/LocalTime;
    .locals 12

    add-int/lit8 v0, p1, 0xc

    .line 1
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 3
    aget-byte v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 4
    aget-byte v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 5
    aget-byte v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 6
    aget-byte v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 7
    aget-byte v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 8
    aget-byte v7, p0, v7

    add-int/lit8 v8, p1, 0x7

    .line 9
    aget-byte v8, p0, v8

    add-int/lit8 v9, p1, 0x8

    .line 10
    aget-byte v9, p0, v9

    add-int/lit8 v10, p1, 0x9

    .line 11
    aget-byte v10, p0, v10

    add-int/lit8 v11, p1, 0xa

    .line 12
    aget-byte v11, p0, v11

    add-int/lit8 p1, p1, 0xb

    .line 13
    aget-byte p0, p0, p1

    const/16 p1, 0x3a

    if-ne v3, p1, :cond_1

    if-ne v6, p1, :cond_1

    const/16 p1, 0x2e

    if-ne v9, p1, :cond_1

    const/16 p1, 0x30

    if-lt v0, p1, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    if-lt v1, p1, :cond_1

    if-gt v1, v3, :cond_1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    if-lt v4, p1, :cond_1

    if-gt v4, v3, :cond_1

    if-lt v5, p1, :cond_1

    if-gt v5, v3, :cond_1

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v5, p1

    add-int/2addr v4, v5

    if-lt v7, p1, :cond_1

    if-gt v7, v3, :cond_1

    if-lt v8, p1, :cond_1

    if-gt v8, v3, :cond_1

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, p1

    add-int/2addr v7, v8

    if-lt v10, p1, :cond_1

    if-gt v10, v3, :cond_1

    if-lt v11, p1, :cond_1

    if-gt v11, v3, :cond_1

    if-lt p0, p1, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr v10, p1

    mul-int/lit8 v10, v10, 0x64

    sub-int/2addr v11, p1

    mul-int/lit8 v11, v11, 0xa

    add-int/2addr v10, v11

    sub-int/2addr p0, p1

    add-int/2addr v10, p0

    const p0, 0xf4240

    mul-int/2addr v10, p0

    .line 14
    invoke-static {v0, v4, v7, v10}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static parseLocalTime12([CI)Ljava/time/LocalTime;
    .locals 12

    add-int/lit8 v0, p1, 0xc

    .line 15
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 16
    :cond_0
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 17
    aget-char v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 18
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 19
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    .line 20
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x5

    .line 21
    aget-char v6, p0, v6

    add-int/lit8 v7, p1, 0x6

    .line 22
    aget-char v7, p0, v7

    add-int/lit8 v8, p1, 0x7

    .line 23
    aget-char v8, p0, v8

    add-int/lit8 v9, p1, 0x8

    .line 24
    aget-char v9, p0, v9

    add-int/lit8 v10, p1, 0x9

    .line 25
    aget-char v10, p0, v10

    add-int/lit8 v11, p1, 0xa

    .line 26
    aget-char v11, p0, v11

    add-int/lit8 p1, p1, 0xb

    .line 27
    aget-char p0, p0, p1

    const/16 p1, 0x3a

    if-ne v3, p1, :cond_1

    if-ne v6, p1, :cond_1

    const/16 p1, 0x2e

    if-ne v9, p1, :cond_1

    const/16 p1, 0x30

    if-lt v0, p1, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    if-lt v1, p1, :cond_1

    if-gt v1, v3, :cond_1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    if-lt v4, p1, :cond_1

    if-gt v4, v3, :cond_1

    if-lt v5, p1, :cond_1

    if-gt v5, v3, :cond_1

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v5, p1

    add-int/2addr v4, v5

    if-lt v7, p1, :cond_1

    if-gt v7, v3, :cond_1

    if-lt v8, p1, :cond_1

    if-gt v8, v3, :cond_1

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, p1

    add-int/2addr v7, v8

    if-lt v10, p1, :cond_1

    if-gt v10, v3, :cond_1

    if-lt v11, p1, :cond_1

    if-gt v11, v3, :cond_1

    if-lt p0, p1, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr v10, p1

    mul-int/lit8 v10, v10, 0x64

    sub-int/2addr v11, p1

    mul-int/lit8 v11, v11, 0xa

    add-int/2addr v10, v11

    sub-int/2addr p0, p1

    add-int/2addr v10, p0

    const p0, 0xf4240

    mul-int/2addr v10, p0

    .line 28
    invoke-static {v0, v4, v7, v10}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static parseLocalTime18([BI)Ljava/time/LocalTime;
    .locals 19

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x12

    .line 1
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 2
    :cond_0
    aget-byte v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 3
    aget-byte v2, v0, v2

    add-int/lit8 v4, p1, 0x2

    .line 4
    aget-byte v4, v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 5
    aget-byte v5, v0, v5

    add-int/lit8 v6, p1, 0x4

    .line 6
    aget-byte v6, v0, v6

    add-int/lit8 v7, p1, 0x5

    .line 7
    aget-byte v7, v0, v7

    add-int/lit8 v8, p1, 0x6

    .line 8
    aget-byte v8, v0, v8

    add-int/lit8 v9, p1, 0x7

    .line 9
    aget-byte v9, v0, v9

    add-int/lit8 v10, p1, 0x8

    .line 10
    aget-byte v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 11
    aget-byte v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 12
    aget-byte v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 13
    aget-byte v13, v0, v13

    add-int/lit8 v14, p1, 0xc

    .line 14
    aget-byte v14, v0, v14

    add-int/lit8 v15, p1, 0xd

    .line 15
    aget-byte v15, v0, v15

    add-int/lit8 v16, p1, 0xe

    .line 16
    aget-byte v3, v0, v16

    add-int/lit8 v16, p1, 0xf

    move/from16 v17, v3

    .line 17
    aget-byte v3, v0, v16

    add-int/lit8 v16, p1, 0x10

    move/from16 v18, v3

    .line 18
    aget-byte v3, v0, v16

    add-int/lit8 v16, p1, 0x11

    .line 19
    aget-byte v0, v0, v16

    move/from16 p0, v0

    const/16 v0, 0x3a

    if-ne v4, v0, :cond_5

    if-ne v7, v0, :cond_5

    const/16 v0, 0x2e

    if-ne v10, v0, :cond_5

    const/16 v0, 0x30

    if-lt v1, v0, :cond_4

    const/16 v4, 0x39

    if-gt v1, v4, :cond_4

    if-lt v2, v0, :cond_4

    if-gt v2, v4, :cond_4

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    if-lt v5, v0, :cond_3

    if-gt v5, v4, :cond_3

    if-lt v6, v0, :cond_3

    if-gt v6, v4, :cond_3

    sub-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0xa

    sub-int/2addr v6, v0

    add-int/2addr v5, v6

    if-lt v8, v0, :cond_2

    if-gt v8, v4, :cond_2

    if-lt v9, v0, :cond_2

    if-gt v9, v4, :cond_2

    sub-int/2addr v8, v0

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v9, v0

    add-int/2addr v8, v9

    if-lt v11, v0, :cond_1

    if-gt v11, v4, :cond_1

    if-lt v12, v0, :cond_1

    if-gt v12, v4, :cond_1

    if-lt v13, v0, :cond_1

    if-gt v13, v4, :cond_1

    if-lt v14, v0, :cond_1

    if-gt v14, v4, :cond_1

    if-lt v15, v0, :cond_1

    if-gt v15, v4, :cond_1

    move/from16 v2, v17

    if-lt v2, v0, :cond_1

    if-gt v2, v4, :cond_1

    move/from16 v6, v18

    if-lt v6, v0, :cond_1

    if-gt v6, v4, :cond_1

    if-lt v3, v0, :cond_1

    if-gt v3, v4, :cond_1

    move/from16 v7, p0

    if-lt v7, v0, :cond_1

    if-gt v7, v4, :cond_1

    sub-int/2addr v11, v0

    const v4, 0x5f5e100

    mul-int/2addr v11, v4

    sub-int/2addr v12, v0

    const v4, 0x989680

    mul-int/2addr v12, v4

    add-int/2addr v11, v12

    sub-int/2addr v13, v0

    const v4, 0xf4240

    mul-int/2addr v13, v4

    add-int/2addr v11, v13

    sub-int/2addr v14, v0

    const v4, 0x186a0

    mul-int/2addr v14, v4

    add-int/2addr v11, v14

    sub-int/2addr v15, v0

    mul-int/lit16 v15, v15, 0x2710

    add-int/2addr v11, v15

    sub-int/2addr v2, v0

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v11, v2

    add-int/lit8 v2, v6, -0x30

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v11, v2

    sub-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v11, v3

    add-int/lit8 v0, v7, -0x30

    add-int/2addr v11, v0

    .line 20
    invoke-static {v1, v5, v8, v11}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseLocalTime18([CI)Ljava/time/LocalTime;
    .locals 19

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x12

    .line 21
    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return-object v3

    .line 22
    :cond_0
    aget-char v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 23
    aget-char v2, v0, v2

    add-int/lit8 v4, p1, 0x2

    .line 24
    aget-char v4, v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 25
    aget-char v5, v0, v5

    add-int/lit8 v6, p1, 0x4

    .line 26
    aget-char v6, v0, v6

    add-int/lit8 v7, p1, 0x5

    .line 27
    aget-char v7, v0, v7

    add-int/lit8 v8, p1, 0x6

    .line 28
    aget-char v8, v0, v8

    add-int/lit8 v9, p1, 0x7

    .line 29
    aget-char v9, v0, v9

    add-int/lit8 v10, p1, 0x8

    .line 30
    aget-char v10, v0, v10

    add-int/lit8 v11, p1, 0x9

    .line 31
    aget-char v11, v0, v11

    add-int/lit8 v12, p1, 0xa

    .line 32
    aget-char v12, v0, v12

    add-int/lit8 v13, p1, 0xb

    .line 33
    aget-char v13, v0, v13

    add-int/lit8 v14, p1, 0xc

    .line 34
    aget-char v14, v0, v14

    add-int/lit8 v15, p1, 0xd

    .line 35
    aget-char v15, v0, v15

    add-int/lit8 v16, p1, 0xe

    .line 36
    aget-char v3, v0, v16

    add-int/lit8 v16, p1, 0xf

    move/from16 v17, v3

    .line 37
    aget-char v3, v0, v16

    add-int/lit8 v16, p1, 0x10

    move/from16 v18, v3

    .line 38
    aget-char v3, v0, v16

    add-int/lit8 v16, p1, 0x11

    .line 39
    aget-char v0, v0, v16

    move/from16 p0, v0

    const/16 v0, 0x3a

    if-ne v4, v0, :cond_5

    if-ne v7, v0, :cond_5

    const/16 v0, 0x2e

    if-ne v10, v0, :cond_5

    const/16 v0, 0x30

    if-lt v1, v0, :cond_4

    const/16 v4, 0x39

    if-gt v1, v4, :cond_4

    if-lt v2, v0, :cond_4

    if-gt v2, v4, :cond_4

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    if-lt v5, v0, :cond_3

    if-gt v5, v4, :cond_3

    if-lt v6, v0, :cond_3

    if-gt v6, v4, :cond_3

    sub-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0xa

    sub-int/2addr v6, v0

    add-int/2addr v5, v6

    if-lt v8, v0, :cond_2

    if-gt v8, v4, :cond_2

    if-lt v9, v0, :cond_2

    if-gt v9, v4, :cond_2

    sub-int/2addr v8, v0

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v9, v0

    add-int/2addr v8, v9

    if-lt v11, v0, :cond_1

    if-gt v11, v4, :cond_1

    if-lt v12, v0, :cond_1

    if-gt v12, v4, :cond_1

    if-lt v13, v0, :cond_1

    if-gt v13, v4, :cond_1

    if-lt v14, v0, :cond_1

    if-gt v14, v4, :cond_1

    if-lt v15, v0, :cond_1

    if-gt v15, v4, :cond_1

    move/from16 v2, v17

    if-lt v2, v0, :cond_1

    if-gt v2, v4, :cond_1

    move/from16 v6, v18

    if-lt v6, v0, :cond_1

    if-gt v6, v4, :cond_1

    if-lt v3, v0, :cond_1

    if-gt v3, v4, :cond_1

    move/from16 v7, p0

    if-lt v7, v0, :cond_1

    if-gt v7, v4, :cond_1

    sub-int/2addr v11, v0

    const v4, 0x5f5e100

    mul-int/2addr v11, v4

    sub-int/2addr v12, v0

    const v4, 0x989680

    mul-int/2addr v12, v4

    add-int/2addr v11, v12

    sub-int/2addr v13, v0

    const v4, 0xf4240

    mul-int/2addr v13, v4

    add-int/2addr v11, v13

    sub-int/2addr v14, v0

    const v4, 0x186a0

    mul-int/2addr v14, v4

    add-int/2addr v11, v14

    sub-int/2addr v15, v0

    mul-int/lit16 v15, v15, 0x2710

    add-int/2addr v11, v15

    sub-int/2addr v2, v0

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v11, v2

    add-int/lit8 v2, v6, -0x30

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v11, v2

    sub-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v11, v3

    add-int/lit8 v0, v7, -0x30

    add-int/2addr v11, v0

    .line 40
    invoke-static {v1, v5, v8, v11}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseLocalTime5([BI)Ljava/time/LocalTime;
    .locals 5

    add-int/lit8 v0, p1, 0x5

    .line 1
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 3
    aget-byte v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 4
    aget-byte v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 5
    aget-byte v4, p0, v4

    add-int/lit8 p1, p1, 0x4

    .line 6
    aget-byte p0, p0, p1

    const/16 p1, 0x3a

    if-ne v3, p1, :cond_1

    const/16 p1, 0x30

    if-lt v0, p1, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    if-lt v1, p1, :cond_1

    if-gt v1, v3, :cond_1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    if-lt v4, p1, :cond_1

    if-gt v4, v3, :cond_1

    if-lt p0, p1, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr p0, p1

    add-int/2addr v4, p0

    .line 7
    invoke-static {v0, v4}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static parseLocalTime5([CI)Ljava/time/LocalTime;
    .locals 5

    add-int/lit8 v0, p1, 0x5

    .line 8
    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 9
    :cond_0
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 10
    aget-char v1, p0, v1

    add-int/lit8 v3, p1, 0x2

    .line 11
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    .line 12
    aget-char v4, p0, v4

    add-int/lit8 p1, p1, 0x4

    .line 13
    aget-char p0, p0, p1

    const/16 p1, 0x3a

    if-ne v3, p1, :cond_1

    const/16 p1, 0x30

    if-lt v0, p1, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    if-lt v1, p1, :cond_1

    if-gt v1, v3, :cond_1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    if-lt v4, p1, :cond_1

    if-gt v4, v3, :cond_1

    if-lt p0, p1, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr p0, p1

    add-int/2addr v4, p0

    .line 14
    invoke-static {v0, v4}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static parseLocalTime8([BI)Ljava/time/LocalTime;
    .locals 9

    add-int/lit8 v0, p1, 0x8

    .line 1
    array-length v1, p0

    if-le v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    aget-byte v0, p0, p1

    int-to-char v1, v0

    add-int/lit8 v0, p1, 0x1

    .line 3
    aget-byte v0, p0, v0

    int-to-char v2, v0

    add-int/lit8 v0, p1, 0x2

    .line 4
    aget-byte v0, p0, v0

    int-to-char v3, v0

    add-int/lit8 v0, p1, 0x3

    .line 5
    aget-byte v0, p0, v0

    int-to-char v4, v0

    add-int/lit8 v0, p1, 0x4

    .line 6
    aget-byte v0, p0, v0

    int-to-char v5, v0

    add-int/lit8 v0, p1, 0x5

    .line 7
    aget-byte v0, p0, v0

    int-to-char v6, v0

    add-int/lit8 v0, p1, 0x6

    .line 8
    aget-byte v0, p0, v0

    int-to-char v7, v0

    add-int/lit8 p1, p1, 0x7

    .line 9
    aget-byte p0, p0, p1

    int-to-char v8, p0

    .line 10
    invoke-static/range {v1 .. v8}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime(CCCCCCCC)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public static parseLocalTime8([CI)Ljava/time/LocalTime;
    .locals 8

    add-int/lit8 v0, p1, 0x8

    .line 11
    array-length v1, p0

    if-le v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 12
    :cond_0
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 13
    aget-char v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    .line 14
    aget-char v2, p0, v2

    add-int/lit8 v3, p1, 0x3

    .line 15
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x4

    .line 16
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x5

    .line 17
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x6

    .line 18
    aget-char v6, p0, v6

    add-int/lit8 p1, p1, 0x7

    .line 19
    aget-char v7, p0, p1

    .line 20
    invoke-static/range {v0 .. v7}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime(CCCCCCCC)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public static parseMillis(Ljava/lang/String;)J
    .locals 2

    .line 1
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis(Ljava/lang/String;Ljava/time/ZoneId;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseMillis(Ljava/lang/String;Ljava/time/ZoneId;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis([CIILjava/time/ZoneId;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static parseMillis([BII)J
    .locals 2

    .line 4
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sget-object v1, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p0, p1, p2, v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis([BIILjava/nio/charset/Charset;Ljava/time/ZoneId;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static parseMillis([BIILjava/nio/charset/Charset;)J
    .locals 1

    .line 5
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis([BIILjava/nio/charset/Charset;Ljava/time/ZoneId;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static parseMillis([BIILjava/nio/charset/Charset;Ljava/time/ZoneId;)J
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_14

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v6, 0x4

    if-ne v2, v6, :cond_1

    .line 6
    aget-byte v7, v0, v1

    const/16 v8, 0x6e

    if-ne v7, v8, :cond_1

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, v0, v7

    const/16 v8, 0x75

    if-ne v7, v8, :cond_1

    add-int/lit8 v7, v1, 0x2

    aget-byte v7, v0, v7

    const/16 v8, 0x6c

    if-ne v7, v8, :cond_1

    add-int/lit8 v7, v1, 0x3

    aget-byte v7, v0, v7

    if-ne v7, v8, :cond_1

    return-wide v4

    .line 7
    :cond_1
    aget-byte v7, v0, v1

    int-to-char v7, v7

    const/16 v8, 0x22

    if-ne v7, v8, :cond_3

    add-int/lit8 v9, v2, -0x1

    .line 8
    aget-byte v9, v0, v9

    if-ne v9, v8, :cond_3

    .line 9
    invoke-static/range {p0 .. p3}, Lcom/alibaba/fastjson2/JSONReader;->of([BIILjava/nio/charset/Charset;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object v1

    .line 10
    :try_start_0
    sget-object v10, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object v11, v1

    invoke-virtual/range {v10 .. v15}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 11
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_12

    .line 12
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_2

    .line 13
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2

    :cond_3
    const/16 v8, 0x13

    if-ne v2, v8, :cond_4

    .line 14
    invoke-static {v0, v1, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis19([BILjava/time/ZoneId;)J

    move-result-wide v2

    goto/16 :goto_3

    :cond_4
    const/4 v9, 0x0

    if-gt v2, v8, :cond_11

    const/16 v8, 0x10

    const/16 v10, 0x2d

    if-ne v2, v8, :cond_5

    add-int/lit8 v8, v1, 0xa

    .line 15
    aget-byte v8, v0, v8

    int-to-char v8, v8

    const/16 v11, 0x2b

    if-eq v8, v11, :cond_11

    if-ne v8, v10, :cond_5

    goto/16 :goto_2

    :cond_5
    const/16 v8, 0x9

    const/4 v11, 0x0

    const-wide/16 v12, 0x3e8

    const/16 v14, 0x30

    if-eq v7, v10, :cond_6

    if-lt v7, v14, :cond_d

    const/16 v15, 0x39

    if-gt v7, v15, :cond_d

    .line 16
    :cond_6
    invoke-static/range {p0 .. p2}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber([BII)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 17
    invoke-static/range {p0 .. p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseLong([BII)J

    move-result-wide v0

    const/16 v4, 0x8

    if-ne v2, v4, :cond_c

    const-wide/32 v4, 0x12c9985

    cmp-long v2, v0, v4

    if-ltz v2, :cond_c

    const-wide/32 v4, 0x1406fa5

    cmp-long v2, v0, v4

    if-gtz v2, :cond_c

    long-to-int v2, v0

    .line 18
    div-int/lit16 v14, v2, 0x2710

    .line 19
    rem-int/lit16 v4, v2, 0x2710

    div-int/lit8 v15, v4, 0x64

    .line 20
    rem-int/lit8 v2, v2, 0x64

    const/4 v4, 0x1

    if-lt v15, v4, :cond_c

    const/16 v5, 0xc

    if-gt v15, v5, :cond_c

    const/4 v5, 0x2

    if-eq v15, v5, :cond_8

    if-eq v15, v6, :cond_7

    const/4 v4, 0x6

    if-eq v15, v4, :cond_7

    if-eq v15, v8, :cond_7

    const/16 v4, 0xb

    if-eq v15, v4, :cond_7

    const/16 v4, 0x1f

    goto :goto_1

    :cond_7
    const/16 v4, 0x1e

    goto :goto_1

    :cond_8
    and-int/lit8 v5, v14, 0x3

    if-nez v5, :cond_a

    .line 21
    rem-int/lit8 v5, v14, 0x64

    if-nez v5, :cond_9

    rem-int/lit16 v5, v14, 0x190

    if-nez v5, :cond_a

    :cond_9
    move v9, v4

    :cond_a
    if-eqz v9, :cond_b

    const/16 v4, 0x1d

    goto :goto_1

    :cond_b
    const/16 v4, 0x1c

    :goto_1
    if-gt v2, v4, :cond_c

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v16, v2

    .line 22
    invoke-static/range {v14 .. v19}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 23
    invoke-static {v0, v3, v11}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    mul-long/2addr v0, v12

    :cond_c
    move-wide v2, v0

    goto/16 :goto_3

    :cond_d
    add-int/lit8 v6, v2, -0x1

    .line 25
    aget-byte v6, v0, v6

    int-to-char v6, v6

    const/16 v7, 0x5a

    if-ne v6, v7, :cond_e

    .line 26
    sget-object v3, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    .line 27
    :cond_e
    invoke-static/range {p0 .. p2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime([BII)Ljava/time/LocalDateTime;

    move-result-object v2

    if-nez v2, :cond_f

    .line 28
    aget-byte v6, v0, v1

    if-ne v6, v14, :cond_f

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, v0, v6

    if-ne v6, v14, :cond_f

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, v0, v6

    if-ne v6, v14, :cond_f

    add-int/lit8 v6, v1, 0x3

    aget-byte v6, v0, v6

    if-ne v6, v14, :cond_f

    add-int/lit8 v6, v1, 0x4

    aget-byte v6, v0, v6

    if-ne v6, v10, :cond_f

    add-int/lit8 v6, v1, 0x5

    aget-byte v6, v0, v6

    if-ne v6, v14, :cond_f

    add-int/lit8 v6, v1, 0x6

    aget-byte v6, v0, v6

    if-ne v6, v14, :cond_f

    add-int/lit8 v6, v1, 0x7

    aget-byte v6, v0, v6

    if-ne v6, v10, :cond_f

    add-int/lit8 v6, v1, 0x8

    aget-byte v6, v0, v6

    if-ne v6, v14, :cond_f

    add-int/2addr v1, v8

    aget-byte v0, v0, v1

    if-ne v0, v14, :cond_f

    const/16 v15, 0x7b2

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 29
    invoke-static/range {v15 .. v20}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 30
    :cond_f
    invoke-static {v2, v3, v11}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    .line 32
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getNano()I

    move-result v2

    cmp-long v3, v0, v4

    const v4, 0xf4240

    if-gez v3, :cond_10

    if-lez v2, :cond_10

    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    mul-long/2addr v0, v12

    .line 33
    div-int/2addr v2, v4

    int-to-long v2, v2

    add-long/2addr v0, v2

    sub-long v2, v0, v12

    goto :goto_3

    :cond_10
    mul-long/2addr v0, v12

    .line 34
    div-int/2addr v2, v4

    int-to-long v2, v2

    add-long/2addr v2, v0

    goto :goto_3

    .line 35
    :cond_11
    :goto_2
    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTime([BIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 36
    invoke-interface {v3}, Ljava/time/chrono/ChronoZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    :cond_12
    :goto_3
    return-wide v2

    .line 37
    :cond_13
    new-instance v3, Ljava/lang/String;

    sub-int/2addr v2, v1

    invoke-direct {v3, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 38
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal input "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3, v9}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_14
    :goto_4
    return-wide v4
.end method

.method public static parseMillis([CII)J
    .locals 1

    .line 39
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis([CIILjava/time/ZoneId;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static parseMillis([CIILjava/time/ZoneId;)J
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_15

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v6, 0x4

    if-ne v2, v6, :cond_1

    .line 40
    aget-char v7, v0, v1

    const/16 v8, 0x6e

    if-ne v7, v8, :cond_1

    add-int/lit8 v7, v1, 0x1

    aget-char v7, v0, v7

    const/16 v8, 0x75

    if-ne v7, v8, :cond_1

    add-int/lit8 v7, v1, 0x2

    aget-char v7, v0, v7

    const/16 v8, 0x6c

    if-ne v7, v8, :cond_1

    add-int/lit8 v7, v1, 0x3

    aget-char v7, v0, v7

    if-ne v7, v8, :cond_1

    return-wide v4

    .line 41
    :cond_1
    aget-char v7, v0, v1

    const/16 v8, 0x22

    if-ne v7, v8, :cond_3

    add-int/lit8 v9, v2, -0x1

    .line 42
    aget-char v9, v0, v9

    if-ne v9, v8, :cond_3

    .line 43
    invoke-static/range {p0 .. p2}, Lcom/alibaba/fastjson2/JSONReader;->of([CII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object v1

    .line 44
    :try_start_0
    sget-object v10, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object v11, v1

    invoke-virtual/range {v10 .. v15}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 45
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_13

    .line 46
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_2

    .line 47
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2

    :cond_3
    const/16 v8, 0x13

    if-ne v2, v8, :cond_4

    .line 48
    invoke-static {v0, v1, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis19([CILjava/time/ZoneId;)J

    move-result-wide v2

    goto/16 :goto_3

    :cond_4
    const-string v9, "illegal input "

    const/4 v10, 0x0

    if-gt v2, v8, :cond_12

    const/16 v8, 0x10

    const/16 v11, 0x2d

    if-ne v2, v8, :cond_5

    add-int/lit8 v8, v1, 0xa

    .line 49
    aget-char v8, v0, v8

    const/16 v12, 0x2b

    if-eq v8, v12, :cond_12

    if-ne v8, v11, :cond_5

    goto/16 :goto_2

    :cond_5
    const/4 v8, 0x0

    const-wide/16 v12, 0x3e8

    const/16 v14, 0x30

    if-eq v7, v11, :cond_6

    if-lt v7, v14, :cond_d

    const/16 v15, 0x39

    if-gt v7, v15, :cond_d

    .line 50
    :cond_6
    invoke-static/range {p0 .. p2}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber([CII)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 51
    invoke-static/range {p0 .. p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseLong([CII)J

    move-result-wide v0

    const/16 v4, 0x8

    if-ne v2, v4, :cond_c

    const-wide/32 v4, 0x12c9985

    cmp-long v2, v0, v4

    if-ltz v2, :cond_c

    const-wide/32 v4, 0x1406fa5

    cmp-long v2, v0, v4

    if-gtz v2, :cond_c

    long-to-int v2, v0

    .line 52
    div-int/lit16 v14, v2, 0x2710

    .line 53
    rem-int/lit16 v4, v2, 0x2710

    div-int/lit8 v15, v4, 0x64

    .line 54
    rem-int/lit8 v2, v2, 0x64

    const/4 v4, 0x1

    if-lt v15, v4, :cond_c

    const/16 v5, 0xc

    if-gt v15, v5, :cond_c

    const/4 v5, 0x2

    if-eq v15, v5, :cond_8

    if-eq v15, v6, :cond_7

    const/4 v4, 0x6

    if-eq v15, v4, :cond_7

    const/16 v4, 0x9

    if-eq v15, v4, :cond_7

    const/16 v4, 0xb

    if-eq v15, v4, :cond_7

    const/16 v4, 0x1f

    goto :goto_1

    :cond_7
    const/16 v4, 0x1e

    goto :goto_1

    :cond_8
    and-int/lit8 v5, v14, 0x3

    if-nez v5, :cond_a

    .line 55
    rem-int/lit8 v5, v14, 0x64

    if-nez v5, :cond_9

    rem-int/lit16 v5, v14, 0x190

    if-nez v5, :cond_a

    :cond_9
    move v10, v4

    :cond_a
    if-eqz v10, :cond_b

    const/16 v4, 0x1d

    goto :goto_1

    :cond_b
    const/16 v4, 0x1c

    :goto_1
    if-gt v2, v4, :cond_c

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v16, v2

    .line 56
    invoke-static/range {v14 .. v19}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 57
    invoke-static {v0, v3, v8}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    mul-long/2addr v0, v12

    :cond_c
    move-wide v2, v0

    goto/16 :goto_3

    :cond_d
    add-int/lit8 v6, v2, -0x1

    .line 59
    aget-char v6, v0, v6

    const/16 v7, 0x5a

    if-ne v6, v7, :cond_e

    add-int/lit8 v2, v2, -0x1

    .line 60
    sget-object v3, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    .line 61
    :cond_e
    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime([CII)Ljava/time/LocalDateTime;

    move-result-object v6

    if-nez v6, :cond_f

    .line 62
    aget-char v7, v0, v1

    if-ne v7, v14, :cond_f

    add-int/lit8 v7, v1, 0x1

    aget-char v7, v0, v7

    if-ne v7, v14, :cond_f

    add-int/lit8 v7, v1, 0x2

    aget-char v7, v0, v7

    if-ne v7, v14, :cond_f

    add-int/lit8 v7, v1, 0x3

    aget-char v7, v0, v7

    if-ne v7, v14, :cond_f

    add-int/lit8 v7, v1, 0x4

    aget-char v7, v0, v7

    if-ne v7, v11, :cond_f

    add-int/lit8 v7, v1, 0x5

    aget-char v7, v0, v7

    if-ne v7, v14, :cond_f

    add-int/lit8 v7, v1, 0x6

    aget-char v7, v0, v7

    if-ne v7, v14, :cond_f

    add-int/lit8 v7, v1, 0x7

    aget-char v7, v0, v7

    if-ne v7, v11, :cond_f

    add-int/lit8 v7, v1, 0x8

    aget-char v7, v0, v7

    if-ne v7, v14, :cond_f

    add-int/lit8 v7, v1, 0x9

    aget-char v7, v0, v7

    if-ne v7, v14, :cond_f

    const/16 v15, 0x7b2

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 63
    invoke-static/range {v15 .. v20}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v6

    :cond_f
    if-eqz v6, :cond_11

    .line 64
    invoke-static {v6, v3, v8}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    .line 66
    invoke-virtual {v6}, Ljava/time/LocalDateTime;->getNano()I

    move-result v2

    cmp-long v3, v0, v4

    const v4, 0xf4240

    if-gez v3, :cond_10

    if-lez v2, :cond_10

    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    mul-long/2addr v0, v12

    .line 67
    div-int/2addr v2, v4

    int-to-long v2, v2

    add-long/2addr v0, v2

    sub-long v2, v0, v12

    goto :goto_3

    :cond_10
    mul-long/2addr v0, v12

    .line 68
    div-int/2addr v2, v4

    int-to-long v2, v2

    add-long/2addr v2, v0

    goto :goto_3

    .line 69
    :cond_11
    new-instance v3, Ljava/lang/String;

    sub-int/2addr v2, v1

    invoke-direct {v3, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 70
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3, v10}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    .line 71
    :cond_12
    :goto_2
    invoke-static/range {p0 .. p3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTime([CIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 72
    invoke-interface {v3}, Ljava/time/chrono/ChronoZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    :cond_13
    :goto_3
    return-wide v2

    .line 73
    :cond_14
    new-instance v3, Ljava/lang/String;

    sub-int/2addr v2, v1

    invoke-direct {v3, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 74
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3, v10}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_15
    :goto_4
    return-wide v4
.end method

.method public static parseMillis19(Ljava/lang/String;Ljava/time/ZoneId;)J
    .locals 23

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x13

    const-string v3, "illegal input "

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2d

    .line 3
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x2

    .line 5
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x3

    .line 6
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x4

    .line 7
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/4 v11, 0x5

    .line 8
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/4 v12, 0x6

    .line 9
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/4 v14, 0x7

    .line 10
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x8

    .line 11
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v2, 0x9

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v2, 0xa

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v9, 0xb

    .line 14
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v9, 0xc

    .line 15
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v9, 0xd

    .line 16
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v4, 0xe

    .line 17
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v2, 0xf

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v19, v1

    const/16 v1, 0x10

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v20, v2

    const/16 v2, 0x11

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v21, v15

    const/16 v15, 0x12

    .line 21
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v22, v15

    const/16 v15, 0x2d

    if-ne v10, v15, :cond_1

    if-ne v14, v15, :cond_1

    const/16 v15, 0x20

    if-eq v12, v15, :cond_0

    const/16 v15, 0x54

    if-ne v12, v15, :cond_1

    :cond_0
    const/16 v15, 0x3a

    if-ne v9, v15, :cond_1

    if-ne v1, v15, :cond_1

    goto :goto_0

    :cond_1
    const/16 v15, 0x2f

    if-ne v10, v15, :cond_4

    if-ne v14, v15, :cond_4

    const/16 v15, 0x20

    if-eq v12, v15, :cond_2

    const/16 v15, 0x54

    if-ne v12, v15, :cond_3

    :cond_2
    const/16 v15, 0x3a

    if-ne v9, v15, :cond_3

    if-ne v1, v15, :cond_3

    :goto_0
    move v14, v5

    move v9, v6

    move v10, v7

    move v12, v8

    move/from16 v5, v17

    move/from16 v15, v18

    move/from16 v1, v19

    const/16 v6, 0x30

    move v7, v2

    move v8, v4

    move/from16 v4, v20

    move/from16 v2, v21

    goto/16 :goto_3

    :cond_3
    const/16 v15, 0x2f

    :cond_4
    if-ne v7, v15, :cond_5

    if-ne v11, v15, :cond_5

    const/16 v15, 0x20

    if-ne v12, v15, :cond_5

    const/16 v15, 0x3a

    if-ne v9, v15, :cond_5

    if-ne v1, v15, :cond_5

    goto :goto_1

    :cond_5
    const/16 v15, 0x2e

    if-ne v7, v15, :cond_6

    if-ne v11, v15, :cond_6

    const/16 v15, 0x20

    if-ne v12, v15, :cond_7

    const/16 v15, 0x3a

    if-ne v9, v15, :cond_6

    if-ne v1, v15, :cond_6

    :goto_1
    move v7, v2

    move v9, v6

    move v11, v8

    move v1, v13

    move/from16 v12, v17

    move/from16 v15, v18

    move/from16 v2, v19

    :goto_2
    const/16 v6, 0x30

    move v8, v4

    move v13, v10

    move/from16 v4, v20

    move/from16 v10, v21

    goto/16 :goto_3

    :cond_6
    const/16 v15, 0x20

    :cond_7
    if-ne v5, v15, :cond_a

    if-ne v11, v15, :cond_a

    if-ne v12, v15, :cond_a

    const/16 v15, 0x3a

    if-ne v9, v15, :cond_9

    if-ne v1, v15, :cond_9

    .line 22
    invoke-static {v7, v8, v10}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_8

    .line 23
    div-int/lit8 v5, v1, 0xa

    const/16 v7, 0x30

    add-int/2addr v5, v7

    int-to-char v8, v5

    const/16 v5, 0xa

    .line 24
    rem-int/2addr v1, v5

    add-int/2addr v1, v7

    int-to-char v10, v1

    move v7, v2

    move v9, v6

    move v11, v8

    move v1, v13

    move/from16 v12, v17

    move/from16 v15, v18

    move/from16 v5, v19

    const/16 v2, 0x30

    goto :goto_2

    .line 25
    :cond_8
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_9
    const/16 v15, 0x20

    :cond_a
    if-ne v7, v15, :cond_d

    if-ne v13, v15, :cond_d

    if-ne v6, v15, :cond_d

    const/16 v15, 0x3a

    if-ne v9, v15, :cond_c

    if-ne v1, v15, :cond_c

    .line 26
    invoke-static {v8, v10, v11}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_b

    .line 27
    div-int/lit8 v6, v1, 0xa

    const/16 v7, 0x30

    add-int/2addr v6, v7

    int-to-char v8, v6

    const/16 v6, 0xa

    .line 28
    rem-int/2addr v1, v6

    add-int/2addr v1, v7

    int-to-char v10, v1

    move v7, v2

    move v11, v8

    move v13, v10

    move v1, v14

    move/from16 v10, v17

    move/from16 v15, v18

    move/from16 v2, v19

    move/from16 v14, v21

    const/16 v6, 0x30

    const/16 v9, 0x30

    move v8, v4

    move/from16 v4, v20

    goto/16 :goto_3

    .line 29
    :cond_b
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_c
    const/16 v15, 0x20

    :cond_d
    if-ne v7, v15, :cond_10

    if-ne v13, v15, :cond_10

    if-ne v6, v15, :cond_10

    const/16 v15, 0x3a

    if-ne v4, v15, :cond_f

    if-ne v1, v15, :cond_f

    .line 30
    invoke-static {v8, v10, v11}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_e

    .line 31
    div-int/lit8 v4, v1, 0xa

    const/16 v6, 0x30

    add-int/2addr v4, v6

    int-to-char v8, v4

    const/16 v4, 0xa

    .line 32
    rem-int/2addr v1, v4

    add-int/2addr v1, v6

    int-to-char v10, v1

    move v7, v2

    move v11, v8

    move v15, v9

    move v13, v10

    move v1, v14

    move/from16 v10, v17

    move/from16 v9, v18

    move/from16 v2, v19

    move/from16 v4, v20

    move/from16 v14, v21

    const/16 v6, 0x30

    const/16 v8, 0x30

    goto :goto_3

    .line 33
    :cond_e
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_f
    const/16 v15, 0x20

    :cond_10
    if-ne v7, v15, :cond_2c

    if-ne v13, v15, :cond_2c

    if-ne v6, v15, :cond_2c

    const/16 v6, 0x3a

    if-ne v4, v6, :cond_2c

    if-ne v2, v6, :cond_2c

    .line 34
    invoke-static {v8, v10, v11}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_2b

    .line 35
    div-int/lit8 v4, v2, 0xa

    const/16 v6, 0x30

    add-int/2addr v4, v6

    int-to-char v8, v4

    const/16 v4, 0xa

    .line 36
    rem-int/2addr v2, v4

    add-int/2addr v2, v6

    int-to-char v10, v2

    move v4, v1

    move v7, v6

    move v11, v8

    move v15, v9

    move v13, v10

    move v1, v14

    move/from16 v10, v17

    move/from16 v9, v18

    move/from16 v2, v19

    move/from16 v8, v20

    move/from16 v14, v21

    :goto_3
    if-lt v1, v6, :cond_2a

    const/16 v0, 0x39

    if-gt v1, v0, :cond_29

    if-lt v14, v6, :cond_29

    if-gt v14, v0, :cond_29

    if-lt v10, v6, :cond_29

    if-gt v10, v0, :cond_29

    if-lt v12, v6, :cond_29

    if-gt v12, v0, :cond_29

    sub-int/2addr v1, v6

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v14, v6

    mul-int/lit8 v14, v14, 0x64

    add-int/2addr v1, v14

    sub-int/2addr v10, v6

    const/16 v14, 0xa

    mul-int/2addr v10, v14

    add-int/2addr v1, v10

    sub-int/2addr v12, v6

    add-int/2addr v1, v12

    if-lt v11, v6, :cond_28

    if-gt v11, v0, :cond_28

    if-lt v13, v6, :cond_28

    if-gt v13, v0, :cond_28

    sub-int/2addr v11, v6

    mul-int/2addr v11, v14

    sub-int/2addr v13, v6

    add-int/2addr v11, v13

    if-nez v11, :cond_11

    if-nez v1, :cond_27

    :cond_11
    const/16 v10, 0xc

    if-gt v11, v10, :cond_27

    if-lt v2, v6, :cond_26

    if-gt v2, v0, :cond_26

    if-lt v5, v6, :cond_26

    if-gt v5, v0, :cond_26

    sub-int/2addr v2, v6

    const/16 v10, 0xa

    mul-int/2addr v2, v10

    sub-int/2addr v5, v6

    add-int/2addr v2, v5

    const/4 v5, 0x2

    if-eq v11, v5, :cond_13

    const/4 v5, 0x4

    if-eq v11, v5, :cond_12

    const/4 v5, 0x6

    if-eq v11, v5, :cond_12

    const/16 v5, 0x9

    if-eq v11, v5, :cond_12

    const/16 v5, 0xb

    if-eq v11, v5, :cond_12

    const/16 v5, 0x1f

    goto :goto_5

    :cond_12
    const/16 v5, 0x1e

    goto :goto_5

    :cond_13
    and-int/lit8 v5, v1, 0x3

    if-nez v5, :cond_15

    .line 37
    rem-int/lit8 v5, v1, 0x64

    if-nez v5, :cond_14

    rem-int/lit16 v5, v1, 0x190

    if-nez v5, :cond_15

    :cond_14
    const/4 v5, 0x1

    goto :goto_4

    :cond_15
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_16

    const/16 v5, 0x1d

    goto :goto_5

    :cond_16
    const/16 v5, 0x1c

    :goto_5
    if-nez v2, :cond_17

    if-nez v1, :cond_25

    :cond_17
    if-gt v2, v5, :cond_25

    const/16 v5, 0x30

    if-lt v9, v5, :cond_24

    if-gt v9, v0, :cond_24

    if-lt v15, v5, :cond_24

    if-gt v15, v0, :cond_24

    sub-int/2addr v9, v5

    const/16 v6, 0xa

    mul-int/2addr v9, v6

    sub-int/2addr v15, v5

    add-int/2addr v9, v15

    if-lt v8, v5, :cond_23

    if-gt v8, v0, :cond_23

    if-lt v4, v5, :cond_23

    if-gt v4, v0, :cond_23

    sub-int/2addr v8, v5

    mul-int/2addr v8, v6

    sub-int/2addr v4, v5

    add-int/2addr v8, v4

    if-lt v7, v5, :cond_22

    if-gt v7, v0, :cond_22

    move/from16 v4, v22

    if-lt v4, v5, :cond_22

    if-gt v4, v0, :cond_22

    sub-int/2addr v7, v5

    mul-int/2addr v7, v6

    add-int/lit8 v15, v4, -0x30

    add-int/2addr v7, v15

    if-nez v1, :cond_18

    if-nez v11, :cond_18

    if-nez v2, :cond_18

    const/16 v1, 0x7b2

    const/4 v2, 0x1

    const/4 v11, 0x1

    :cond_18
    mul-int/lit16 v0, v1, 0x16d

    add-int/lit8 v3, v1, 0x3

    const/4 v4, 0x4

    .line 38
    div-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x63

    div-int/lit8 v4, v4, 0x64

    sub-int/2addr v3, v4

    add-int/lit16 v4, v1, 0x18f

    div-int/lit16 v4, v4, 0x190

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    mul-int/lit16 v3, v11, 0x16f

    add-int/lit16 v3, v3, -0x16a

    const/16 v4, 0xc

    div-int/2addr v3, v4

    add-int/2addr v0, v3

    add-int/lit8 v3, v2, -0x1

    add-int/2addr v0, v3

    int-to-long v3, v0

    const/4 v0, 0x2

    if-le v11, v0, :cond_1b

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    and-int/lit8 v0, v1, 0x3

    if-nez v0, :cond_1a

    .line 39
    rem-int/lit8 v0, v1, 0x64

    if-nez v0, :cond_19

    rem-int/lit16 v0, v1, 0x190

    if-nez v0, :cond_1a

    :cond_19
    const/4 v0, 0x1

    goto :goto_6

    :cond_1a
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_1b

    sub-long/2addr v3, v5

    :cond_1b
    const-wide/32 v5, 0xafaa8

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x15180

    mul-long/2addr v3, v5

    mul-int/lit16 v0, v9, 0xe10

    int-to-long v5, v0

    add-long/2addr v3, v5

    mul-int/lit8 v0, v8, 0x3c

    int-to-long v5, v0

    add-long/2addr v3, v5

    int-to-long v5, v7

    add-long/2addr v3, v5

    if-nez p1, :cond_1c

    .line 40
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    goto :goto_7

    :cond_1c
    move-object/from16 v0, p1

    .line 41
    :goto_7
    sget-object v5, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_ID:Ljava/time/ZoneId;

    if-eq v0, v5, :cond_1e

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v5

    sget-object v6, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_RULES:Ljava/time/zone/ZoneRules;

    if-ne v5, v6, :cond_1d

    goto :goto_8

    :cond_1d
    const/16 v16, 0x0

    goto :goto_9

    :cond_1e
    :goto_8
    const/16 v16, 0x1

    :goto_9
    if-eqz v16, :cond_1f

    const-wide/32 v5, 0x28d2bea0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1f

    const/16 v0, 0x7080

    goto :goto_b

    .line 42
    :cond_1f
    sget-object v5, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    if-eq v0, v5, :cond_21

    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTC"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    goto :goto_a

    .line 43
    :cond_20
    invoke-static {v1, v11, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    const/4 v2, 0x0

    .line 44
    invoke-static {v9, v8, v7, v2}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v2

    .line 45
    invoke-static {v1, v2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 46
    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    goto :goto_b

    :cond_21
    :goto_a
    const/4 v0, 0x0

    :goto_b
    int-to-long v0, v0

    sub-long/2addr v3, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v3, v0

    return-wide v3

    .line 48
    :cond_22
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_23
    move-object/from16 v2, p0

    .line 49
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_24
    move-object/from16 v2, p0

    .line 50
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_25
    const/4 v4, 0x0

    move-object/from16 v2, p0

    .line 51
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v4}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_26
    move-object/from16 v2, p0

    .line 52
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_27
    const/4 v4, 0x0

    move-object/from16 v2, p0

    .line 53
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v4}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_28
    move-object/from16 v2, p0

    .line 54
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_29
    move-object/from16 v2, p0

    goto :goto_c

    :cond_2a
    move-object v2, v0

    .line 55
    :goto_c
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_2b
    move-object v2, v0

    const/4 v4, 0x0

    .line 56
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v4}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_2c
    move-object v2, v0

    .line 57
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_2d
    move-object v2, v0

    .line 58
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v4}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0
.end method

.method public static parseMillis19([BILjava/time/ZoneId;)J
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 59
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    aget-byte v2, v0, v1

    int-to-char v2, v2

    add-int/lit8 v3, v1, 0x1

    .line 61
    aget-byte v3, v0, v3

    int-to-char v3, v3

    add-int/lit8 v4, v1, 0x2

    .line 62
    aget-byte v4, v0, v4

    int-to-char v4, v4

    add-int/lit8 v5, v1, 0x3

    .line 63
    aget-byte v5, v0, v5

    int-to-char v5, v5

    add-int/lit8 v6, v1, 0x4

    .line 64
    aget-byte v6, v0, v6

    int-to-char v6, v6

    add-int/lit8 v7, v1, 0x5

    .line 65
    aget-byte v7, v0, v7

    int-to-char v7, v7

    add-int/lit8 v8, v1, 0x6

    .line 66
    aget-byte v8, v0, v8

    int-to-char v8, v8

    add-int/lit8 v9, v1, 0x7

    .line 67
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v10, v1, 0x8

    .line 68
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, v1, 0x9

    .line 69
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, v1, 0xa

    .line 70
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, v1, 0xb

    .line 71
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, v1, 0xc

    .line 72
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, v1, 0xd

    .line 73
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, v1, 0xe

    move/from16 v17, v2

    .line 74
    aget-byte v2, v0, v16

    int-to-char v2, v2

    add-int/lit8 v16, v1, 0xf

    move/from16 v18, v10

    .line 75
    aget-byte v10, v0, v16

    int-to-char v10, v10

    add-int/lit8 v16, v1, 0x10

    move/from16 v19, v10

    .line 76
    aget-byte v10, v0, v16

    int-to-char v10, v10

    add-int/lit8 v16, v1, 0x11

    move/from16 v20, v11

    .line 77
    aget-byte v11, v0, v16

    int-to-char v11, v11

    add-int/lit8 v16, v1, 0x12

    move/from16 v21, v14

    .line 78
    aget-byte v14, v0, v16

    int-to-char v14, v14

    move/from16 v16, v14

    const-string v14, "illegal input "

    move/from16 v22, v11

    const/16 v11, 0x2d

    if-ne v6, v11, :cond_1

    if-ne v9, v11, :cond_1

    const/16 v11, 0x20

    if-eq v12, v11, :cond_0

    const/16 v11, 0x54

    if-ne v12, v11, :cond_1

    :cond_0
    const/16 v11, 0x3a

    if-ne v15, v11, :cond_1

    if-ne v10, v11, :cond_1

    goto :goto_0

    :cond_1
    const/16 v11, 0x2f

    if-ne v6, v11, :cond_4

    if-ne v9, v11, :cond_4

    const/16 v11, 0x20

    if-eq v12, v11, :cond_2

    const/16 v11, 0x54

    if-ne v12, v11, :cond_3

    :cond_2
    const/16 v11, 0x3a

    if-ne v15, v11, :cond_3

    if-ne v10, v11, :cond_3

    :goto_0
    move v6, v2

    move v9, v3

    move v12, v5

    move v10, v8

    move v15, v13

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v11, v19

    move/from16 v13, v22

    const/16 v5, 0x30

    move v8, v7

    move-object/from16 v17, v14

    move/from16 v14, v21

    move v7, v4

    move/from16 v4, v20

    goto/16 :goto_4

    :cond_3
    const/16 v11, 0x2f

    :cond_4
    if-ne v4, v11, :cond_5

    if-ne v7, v11, :cond_5

    const/16 v11, 0x20

    if-ne v12, v11, :cond_5

    const/16 v11, 0x3a

    if-ne v15, v11, :cond_5

    if-ne v10, v11, :cond_5

    goto :goto_1

    :cond_5
    const/16 v11, 0x2e

    if-ne v4, v11, :cond_6

    if-ne v7, v11, :cond_6

    const/16 v11, 0x20

    if-ne v12, v11, :cond_7

    const/16 v11, 0x3a

    if-ne v15, v11, :cond_6

    if-ne v10, v11, :cond_6

    :goto_1
    move v4, v3

    move v10, v6

    move v15, v13

    move/from16 v3, v17

    move/from16 v7, v18

    move/from16 v11, v19

    move/from16 v12, v20

    move/from16 v13, v22

    move v6, v2

    move v2, v8

    move-object/from16 v17, v14

    move/from16 v14, v21

    move v8, v5

    const/16 v5, 0x30

    goto/16 :goto_4

    :cond_6
    const/16 v11, 0x20

    :cond_7
    if-ne v3, v11, :cond_a

    if-ne v7, v11, :cond_a

    if-ne v12, v11, :cond_a

    const/16 v11, 0x3a

    if-ne v15, v11, :cond_9

    if-ne v10, v11, :cond_9

    .line 79
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v3

    if-lez v3, :cond_8

    .line 80
    div-int/lit8 v4, v3, 0xa

    const/16 v5, 0x30

    add-int/2addr v4, v5

    int-to-char v4, v4

    .line 81
    rem-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v5

    int-to-char v6, v3

    move v10, v6

    move v15, v13

    move/from16 v7, v18

    move/from16 v11, v19

    move/from16 v12, v20

    move/from16 v13, v22

    const/16 v3, 0x30

    const/16 v5, 0x30

    move v6, v2

    move v2, v8

    move v8, v4

    move/from16 v4, v17

    move-object/from16 v17, v14

    :goto_2
    move/from16 v14, v21

    goto/16 :goto_4

    .line 82
    :cond_8
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 83
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_9
    const/16 v11, 0x20

    :cond_a
    if-ne v4, v11, :cond_d

    if-ne v8, v11, :cond_d

    if-ne v13, v11, :cond_d

    const/16 v11, 0x3a

    if-ne v15, v11, :cond_c

    if-ne v10, v11, :cond_c

    .line 84
    invoke-static {v5, v6, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v4

    if-lez v4, :cond_b

    .line 85
    div-int/lit8 v5, v4, 0xa

    const/16 v6, 0x30

    add-int/2addr v5, v6

    int-to-char v5, v5

    .line 86
    rem-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v6

    int-to-char v6, v4

    move v4, v3

    move v8, v5

    move v10, v6

    move/from16 v3, v17

    move/from16 v11, v19

    move/from16 v7, v20

    move/from16 v13, v22

    const/16 v5, 0x30

    const/16 v15, 0x30

    move v6, v2

    move v2, v9

    move-object/from16 v17, v14

    move/from16 v9, v18

    goto :goto_2

    .line 87
    :cond_b
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 88
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_c
    const/16 v11, 0x20

    :cond_d
    if-ne v4, v11, :cond_10

    if-ne v8, v11, :cond_10

    if-ne v13, v11, :cond_10

    const/16 v11, 0x3a

    if-ne v2, v11, :cond_f

    if-ne v10, v11, :cond_f

    .line 89
    invoke-static {v5, v6, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_e

    .line 90
    div-int/lit8 v4, v2, 0xa

    const/16 v5, 0x30

    add-int/2addr v4, v5

    int-to-char v4, v4

    .line 91
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v5

    int-to-char v6, v2

    move v8, v4

    move v10, v6

    move v2, v9

    move/from16 v9, v18

    move/from16 v11, v19

    move/from16 v7, v20

    move/from16 v13, v22

    const/16 v5, 0x30

    const/16 v6, 0x30

    move v4, v3

    move/from16 v3, v17

    :goto_3
    move-object/from16 v17, v14

    move v14, v15

    move/from16 v15, v21

    goto :goto_4

    .line 92
    :cond_e
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 93
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_f
    const/16 v11, 0x20

    :cond_10
    if-ne v4, v11, :cond_2c

    if-ne v8, v11, :cond_2c

    if-ne v13, v11, :cond_2c

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_2c

    move/from16 v2, v22

    if-ne v2, v4, :cond_2c

    .line 94
    invoke-static {v5, v6, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_2b

    .line 95
    div-int/lit8 v4, v2, 0xa

    const/16 v5, 0x30

    add-int/2addr v4, v5

    int-to-char v4, v4

    .line 96
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v5

    int-to-char v6, v2

    move v8, v4

    move v13, v5

    move v2, v9

    move v11, v10

    move/from16 v9, v18

    move/from16 v7, v20

    move v4, v3

    move v10, v6

    move/from16 v3, v17

    move/from16 v6, v19

    goto :goto_3

    :goto_4
    if-lt v2, v5, :cond_2a

    const/16 v0, 0x39

    if-gt v2, v0, :cond_29

    if-lt v9, v5, :cond_29

    if-gt v9, v0, :cond_29

    if-lt v7, v5, :cond_29

    if-gt v7, v0, :cond_29

    if-lt v12, v5, :cond_29

    if-gt v12, v0, :cond_29

    sub-int/2addr v2, v5

    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v9, v5

    mul-int/lit8 v9, v9, 0x64

    add-int/2addr v2, v9

    sub-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v2, v7

    sub-int/2addr v12, v5

    add-int/2addr v2, v12

    if-lt v8, v5, :cond_28

    if-gt v8, v0, :cond_28

    if-lt v10, v5, :cond_28

    if-gt v10, v0, :cond_28

    sub-int/2addr v8, v5

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v10, v5

    add-int/2addr v8, v10

    if-nez v8, :cond_11

    if-nez v2, :cond_27

    :cond_11
    const/16 v7, 0xc

    if-gt v8, v7, :cond_27

    if-lt v3, v5, :cond_26

    if-gt v3, v0, :cond_26

    if-lt v4, v5, :cond_26

    if-gt v4, v0, :cond_26

    sub-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v9, 0x1

    if-eq v8, v5, :cond_13

    if-eq v8, v4, :cond_12

    const/4 v10, 0x6

    if-eq v8, v10, :cond_12

    const/16 v10, 0x9

    if-eq v8, v10, :cond_12

    const/16 v10, 0xb

    if-eq v8, v10, :cond_12

    const/16 v10, 0x1f

    goto :goto_6

    :cond_12
    const/16 v10, 0x1e

    goto :goto_6

    :cond_13
    and-int/lit8 v10, v2, 0x3

    if-nez v10, :cond_15

    .line 97
    rem-int/lit8 v10, v2, 0x64

    if-nez v10, :cond_14

    rem-int/lit16 v10, v2, 0x190

    if-nez v10, :cond_15

    :cond_14
    move v10, v9

    goto :goto_5

    :cond_15
    const/4 v10, 0x0

    :goto_5
    if-eqz v10, :cond_16

    const/16 v10, 0x1d

    goto :goto_6

    :cond_16
    const/16 v10, 0x1c

    :goto_6
    if-nez v3, :cond_17

    if-nez v2, :cond_25

    :cond_17
    if-gt v3, v10, :cond_25

    const/16 v10, 0x30

    if-lt v15, v10, :cond_24

    if-gt v15, v0, :cond_24

    if-lt v14, v10, :cond_24

    if-gt v14, v0, :cond_24

    sub-int/2addr v15, v10

    mul-int/lit8 v15, v15, 0xa

    sub-int/2addr v14, v10

    add-int/2addr v15, v14

    if-lt v6, v10, :cond_23

    if-gt v6, v0, :cond_23

    if-lt v11, v10, :cond_23

    if-gt v11, v0, :cond_23

    sub-int/2addr v6, v10

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v11, v10

    add-int/2addr v6, v11

    if-lt v13, v10, :cond_22

    if-gt v13, v0, :cond_22

    move/from16 v11, v16

    if-lt v11, v10, :cond_22

    if-gt v11, v0, :cond_22

    sub-int/2addr v13, v10

    mul-int/lit8 v13, v13, 0xa

    add-int/lit8 v14, v11, -0x30

    add-int/2addr v13, v14

    if-nez v2, :cond_18

    if-nez v8, :cond_18

    if-nez v3, :cond_18

    const/16 v2, 0x7b2

    move v3, v9

    move v8, v3

    :cond_18
    mul-int/lit16 v0, v2, 0x16d

    add-int/lit8 v1, v2, 0x3

    .line 98
    div-int/2addr v1, v4

    add-int/lit8 v4, v2, 0x63

    div-int/lit8 v4, v4, 0x64

    sub-int/2addr v1, v4

    add-int/lit16 v4, v2, 0x18f

    div-int/lit16 v4, v4, 0x190

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    mul-int/lit16 v1, v8, 0x16f

    add-int/lit16 v1, v1, -0x16a

    div-int/2addr v1, v7

    add-int/2addr v0, v1

    add-int/lit8 v1, v3, -0x1

    add-int/2addr v0, v1

    int-to-long v0, v0

    if-le v8, v5, :cond_1b

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    and-int/lit8 v4, v2, 0x3

    if-nez v4, :cond_1a

    .line 99
    rem-int/lit8 v4, v2, 0x64

    if-nez v4, :cond_19

    rem-int/lit16 v4, v2, 0x190

    if-nez v4, :cond_1a

    :cond_19
    move v4, v9

    goto :goto_7

    :cond_1a
    const/4 v4, 0x0

    :goto_7
    if-nez v4, :cond_1b

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    :cond_1b
    const-wide/32 v4, 0xafaa8

    sub-long/2addr v0, v4

    const-wide/32 v4, 0x15180

    mul-long/2addr v0, v4

    mul-int/lit16 v4, v15, 0xe10

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-int/lit8 v4, v6, 0x3c

    int-to-long v4, v4

    add-long/2addr v0, v4

    int-to-long v4, v13

    add-long/2addr v0, v4

    if-nez p2, :cond_1c

    .line 100
    sget-object v4, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    goto :goto_8

    :cond_1c
    move-object/from16 v4, p2

    .line 101
    :goto_8
    sget-object v5, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_ID:Ljava/time/ZoneId;

    if-eq v4, v5, :cond_1e

    invoke-virtual {v4}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v5

    sget-object v7, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_RULES:Ljava/time/zone/ZoneRules;

    if-ne v5, v7, :cond_1d

    goto :goto_9

    :cond_1d
    const/4 v9, 0x0

    :cond_1e
    :goto_9
    if-eqz v9, :cond_1f

    const-wide/32 v9, 0x28d2bea0

    cmp-long v5, v0, v9

    if-ltz v5, :cond_1f

    const/16 v11, 0x7080

    goto :goto_b

    .line 102
    :cond_1f
    sget-object v5, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    if-eq v4, v5, :cond_21

    invoke-virtual {v4}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v7, "UTC"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    goto :goto_a

    .line 103
    :cond_20
    invoke-static {v2, v8, v3}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v2

    const/4 v3, 0x0

    .line 104
    invoke-static {v15, v6, v13, v3}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v3

    .line 105
    invoke-static {v2, v3}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 106
    invoke-virtual {v4}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object v2

    .line 107
    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v11

    goto :goto_b

    :cond_21
    :goto_a
    const/4 v11, 0x0

    :goto_b
    int-to-long v2, v11

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    .line 108
    :cond_22
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x13

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 109
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_23
    move-object/from16 v2, p0

    move-object/from16 v3, v17

    .line 110
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 111
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_24
    move-object/from16 v2, p0

    move-object/from16 v3, v17

    .line 112
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 113
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_25
    move-object/from16 v2, p0

    move-object/from16 v3, v17

    const/16 v4, 0x13

    const/4 v5, 0x0

    .line 114
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 115
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_26
    move-object/from16 v2, p0

    move-object/from16 v3, v17

    .line 116
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 117
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_27
    move-object/from16 v2, p0

    move-object/from16 v3, v17

    const/16 v4, 0x13

    const/4 v5, 0x0

    .line 118
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 119
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_28
    move-object/from16 v2, p0

    move-object/from16 v3, v17

    .line 120
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 121
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_29
    move-object/from16 v2, p0

    goto :goto_c

    :cond_2a
    move-object v2, v0

    :goto_c
    move-object/from16 v3, v17

    .line 122
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 123
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_2b
    move-object v2, v0

    move-object v3, v14

    const/16 v4, 0x13

    const/4 v5, 0x0

    .line 124
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 125
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_2c
    move-object v2, v0

    move-object v3, v14

    .line 126
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 127
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1
.end method

.method public static parseMillis19([CILjava/time/ZoneId;)J
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 128
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    aget-char v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    .line 130
    aget-char v3, v0, v3

    add-int/lit8 v4, v1, 0x2

    .line 131
    aget-char v4, v0, v4

    add-int/lit8 v5, v1, 0x3

    .line 132
    aget-char v5, v0, v5

    add-int/lit8 v6, v1, 0x4

    .line 133
    aget-char v6, v0, v6

    add-int/lit8 v7, v1, 0x5

    .line 134
    aget-char v7, v0, v7

    add-int/lit8 v8, v1, 0x6

    .line 135
    aget-char v8, v0, v8

    add-int/lit8 v9, v1, 0x7

    .line 136
    aget-char v9, v0, v9

    add-int/lit8 v10, v1, 0x8

    .line 137
    aget-char v10, v0, v10

    add-int/lit8 v11, v1, 0x9

    .line 138
    aget-char v11, v0, v11

    add-int/lit8 v12, v1, 0xa

    .line 139
    aget-char v12, v0, v12

    add-int/lit8 v13, v1, 0xb

    .line 140
    aget-char v13, v0, v13

    add-int/lit8 v14, v1, 0xc

    .line 141
    aget-char v14, v0, v14

    add-int/lit8 v15, v1, 0xd

    .line 142
    aget-char v15, v0, v15

    add-int/lit8 v16, v1, 0xe

    move/from16 v17, v2

    .line 143
    aget-char v2, v0, v16

    add-int/lit8 v16, v1, 0xf

    .line 144
    aget-char v16, v0, v16

    add-int/lit8 v18, v1, 0x10

    move/from16 v19, v10

    .line 145
    aget-char v10, v0, v18

    add-int/lit8 v18, v1, 0x11

    move/from16 v20, v11

    .line 146
    aget-char v11, v0, v18

    add-int/lit8 v18, v1, 0x12

    move/from16 v21, v14

    .line 147
    aget-char v14, v0, v18

    move/from16 v18, v14

    const-string v14, "illegal input "

    move/from16 v22, v11

    const/16 v11, 0x2d

    if-ne v6, v11, :cond_1

    if-ne v9, v11, :cond_1

    const/16 v11, 0x20

    if-eq v12, v11, :cond_0

    const/16 v11, 0x54

    if-ne v12, v11, :cond_1

    :cond_0
    const/16 v11, 0x3a

    if-ne v15, v11, :cond_1

    if-ne v10, v11, :cond_1

    goto :goto_0

    :cond_1
    const/16 v11, 0x2f

    if-ne v6, v11, :cond_4

    if-ne v9, v11, :cond_4

    const/16 v11, 0x20

    if-eq v12, v11, :cond_2

    const/16 v11, 0x54

    if-ne v12, v11, :cond_3

    :cond_2
    const/16 v11, 0x3a

    if-ne v15, v11, :cond_3

    if-ne v10, v11, :cond_3

    :goto_0
    move v6, v2

    move v9, v3

    move v12, v5

    move v10, v8

    move/from16 v2, v17

    move/from16 v3, v19

    move/from16 v15, v21

    move/from16 v11, v22

    const/16 v5, 0x30

    move v8, v7

    move v7, v4

    move/from16 v4, v20

    :goto_1
    move/from16 v23, v16

    :goto_2
    move-object/from16 v16, v14

    move/from16 v14, v23

    goto/16 :goto_4

    :cond_3
    const/16 v11, 0x2f

    :cond_4
    if-ne v4, v11, :cond_5

    if-ne v7, v11, :cond_5

    const/16 v11, 0x20

    if-ne v12, v11, :cond_5

    const/16 v11, 0x3a

    if-ne v15, v11, :cond_5

    if-ne v10, v11, :cond_5

    goto :goto_3

    :cond_5
    const/16 v11, 0x2e

    if-ne v4, v11, :cond_6

    if-ne v7, v11, :cond_6

    const/16 v11, 0x20

    if-ne v12, v11, :cond_7

    const/16 v11, 0x3a

    if-ne v15, v11, :cond_6

    if-ne v10, v11, :cond_6

    :goto_3
    move v4, v3

    move v10, v6

    move/from16 v3, v17

    move/from16 v7, v19

    move/from16 v12, v20

    move/from16 v15, v21

    move/from16 v11, v22

    move v6, v2

    move v2, v8

    move v8, v5

    const/16 v5, 0x30

    goto :goto_1

    :cond_6
    const/16 v11, 0x20

    :cond_7
    if-ne v3, v11, :cond_a

    if-ne v7, v11, :cond_a

    if-ne v12, v11, :cond_a

    const/16 v11, 0x3a

    if-ne v15, v11, :cond_9

    if-ne v10, v11, :cond_9

    .line 148
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v3

    if-lez v3, :cond_8

    .line 149
    div-int/lit8 v4, v3, 0xa

    const/16 v5, 0x30

    add-int/2addr v4, v5

    int-to-char v4, v4

    .line 150
    rem-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v5

    int-to-char v6, v3

    move v10, v6

    move/from16 v7, v19

    move/from16 v12, v20

    move/from16 v15, v21

    move/from16 v11, v22

    const/16 v3, 0x30

    const/16 v5, 0x30

    move v6, v2

    move v2, v8

    move v8, v4

    move/from16 v4, v17

    goto :goto_1

    .line 151
    :cond_8
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 152
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_9
    const/16 v11, 0x20

    :cond_a
    if-ne v4, v11, :cond_d

    if-ne v8, v11, :cond_d

    if-ne v13, v11, :cond_d

    const/16 v11, 0x3a

    if-ne v15, v11, :cond_c

    if-ne v10, v11, :cond_c

    .line 153
    invoke-static {v5, v6, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v4

    if-lez v4, :cond_b

    .line 154
    div-int/lit8 v5, v4, 0xa

    const/16 v6, 0x30

    add-int/2addr v5, v6

    int-to-char v5, v5

    .line 155
    rem-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v6

    int-to-char v6, v4

    move v4, v3

    move v8, v5

    move v10, v6

    move/from16 v3, v17

    move/from16 v7, v20

    move/from16 v15, v21

    move/from16 v11, v22

    const/16 v5, 0x30

    const/16 v13, 0x30

    move v6, v2

    move v2, v9

    move/from16 v9, v19

    goto/16 :goto_1

    .line 156
    :cond_b
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 157
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_c
    const/16 v11, 0x20

    :cond_d
    if-ne v4, v11, :cond_10

    if-ne v8, v11, :cond_10

    if-ne v13, v11, :cond_10

    const/16 v11, 0x3a

    if-ne v2, v11, :cond_f

    if-ne v10, v11, :cond_f

    .line 158
    invoke-static {v5, v6, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_e

    .line 159
    div-int/lit8 v4, v2, 0xa

    const/16 v5, 0x30

    add-int/2addr v4, v5

    int-to-char v4, v4

    .line 160
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v5

    int-to-char v6, v2

    move v8, v4

    move v10, v6

    move v2, v9

    move/from16 v9, v19

    move/from16 v7, v20

    move/from16 v13, v21

    move/from16 v11, v22

    const/16 v5, 0x30

    const/16 v6, 0x30

    move v4, v3

    move/from16 v3, v17

    goto/16 :goto_1

    .line 161
    :cond_e
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 162
    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_f
    const/16 v11, 0x20

    :cond_10
    if-ne v4, v11, :cond_2c

    if-ne v8, v11, :cond_2c

    if-ne v13, v11, :cond_2c

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_2c

    move/from16 v2, v22

    if-ne v2, v4, :cond_2c

    .line 163
    invoke-static {v5, v6, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v2

    if-lez v2, :cond_2b

    .line 164
    div-int/lit8 v4, v2, 0xa

    const/16 v5, 0x30

    add-int/2addr v4, v5

    int-to-char v4, v4

    .line 165
    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v5

    int-to-char v6, v2

    move v8, v4

    move v11, v5

    move v2, v9

    move/from16 v9, v19

    move/from16 v7, v20

    move/from16 v13, v21

    move v4, v3

    move/from16 v3, v17

    move/from16 v23, v10

    move v10, v6

    move/from16 v6, v16

    goto/16 :goto_2

    :goto_4
    if-lt v2, v5, :cond_2a

    const/16 v0, 0x39

    if-gt v2, v0, :cond_29

    if-lt v9, v5, :cond_29

    if-gt v9, v0, :cond_29

    if-lt v7, v5, :cond_29

    if-gt v7, v0, :cond_29

    if-lt v12, v5, :cond_29

    if-gt v12, v0, :cond_29

    sub-int/2addr v2, v5

    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v9, v5

    mul-int/lit8 v9, v9, 0x64

    add-int/2addr v2, v9

    sub-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v2, v7

    sub-int/2addr v12, v5

    add-int/2addr v2, v12

    if-lt v8, v5, :cond_28

    if-gt v8, v0, :cond_28

    if-lt v10, v5, :cond_28

    if-gt v10, v0, :cond_28

    sub-int/2addr v8, v5

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v10, v5

    add-int/2addr v8, v10

    if-nez v8, :cond_11

    if-nez v2, :cond_27

    :cond_11
    const/16 v7, 0xc

    if-gt v8, v7, :cond_27

    if-lt v3, v5, :cond_26

    if-gt v3, v0, :cond_26

    if-lt v4, v5, :cond_26

    if-gt v4, v0, :cond_26

    sub-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v9, 0x1

    if-eq v8, v5, :cond_13

    if-eq v8, v4, :cond_12

    const/4 v10, 0x6

    if-eq v8, v10, :cond_12

    const/16 v10, 0x9

    if-eq v8, v10, :cond_12

    const/16 v10, 0xb

    if-eq v8, v10, :cond_12

    const/16 v10, 0x1f

    goto :goto_6

    :cond_12
    const/16 v10, 0x1e

    goto :goto_6

    :cond_13
    and-int/lit8 v10, v2, 0x3

    if-nez v10, :cond_15

    .line 166
    rem-int/lit8 v10, v2, 0x64

    if-nez v10, :cond_14

    rem-int/lit16 v10, v2, 0x190

    if-nez v10, :cond_15

    :cond_14
    move v10, v9

    goto :goto_5

    :cond_15
    const/4 v10, 0x0

    :goto_5
    if-eqz v10, :cond_16

    const/16 v10, 0x1d

    goto :goto_6

    :cond_16
    const/16 v10, 0x1c

    :goto_6
    if-nez v3, :cond_17

    if-nez v2, :cond_25

    :cond_17
    if-gt v3, v10, :cond_25

    const/16 v10, 0x30

    if-lt v13, v10, :cond_24

    if-gt v13, v0, :cond_24

    if-lt v15, v10, :cond_24

    if-gt v15, v0, :cond_24

    sub-int/2addr v13, v10

    mul-int/lit8 v13, v13, 0xa

    sub-int/2addr v15, v10

    add-int/2addr v13, v15

    if-lt v6, v10, :cond_23

    if-gt v6, v0, :cond_23

    if-lt v14, v10, :cond_23

    if-gt v14, v0, :cond_23

    sub-int/2addr v6, v10

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v14, v10

    add-int/2addr v6, v14

    if-lt v11, v10, :cond_22

    if-gt v11, v0, :cond_22

    move/from16 v12, v18

    if-lt v12, v10, :cond_22

    if-gt v12, v0, :cond_22

    sub-int/2addr v11, v10

    mul-int/lit8 v11, v11, 0xa

    add-int/lit8 v14, v12, -0x30

    add-int/2addr v11, v14

    if-nez v2, :cond_18

    if-nez v8, :cond_18

    if-nez v3, :cond_18

    const/16 v2, 0x7b2

    move v3, v9

    move v8, v3

    :cond_18
    mul-int/lit16 v0, v2, 0x16d

    add-int/lit8 v1, v2, 0x3

    .line 167
    div-int/2addr v1, v4

    add-int/lit8 v4, v2, 0x63

    div-int/lit8 v4, v4, 0x64

    sub-int/2addr v1, v4

    add-int/lit16 v4, v2, 0x18f

    div-int/lit16 v4, v4, 0x190

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    mul-int/lit16 v1, v8, 0x16f

    add-int/lit16 v1, v1, -0x16a

    div-int/2addr v1, v7

    add-int/2addr v0, v1

    add-int/lit8 v1, v3, -0x1

    add-int/2addr v0, v1

    int-to-long v0, v0

    if-le v8, v5, :cond_1b

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    and-int/lit8 v4, v2, 0x3

    if-nez v4, :cond_1a

    .line 168
    rem-int/lit8 v4, v2, 0x64

    if-nez v4, :cond_19

    rem-int/lit16 v4, v2, 0x190

    if-nez v4, :cond_1a

    :cond_19
    move v4, v9

    goto :goto_7

    :cond_1a
    const/4 v4, 0x0

    :goto_7
    if-nez v4, :cond_1b

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    :cond_1b
    const-wide/32 v4, 0xafaa8

    sub-long/2addr v0, v4

    const-wide/32 v4, 0x15180

    mul-long/2addr v0, v4

    mul-int/lit16 v4, v13, 0xe10

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-int/lit8 v4, v6, 0x3c

    int-to-long v4, v4

    add-long/2addr v0, v4

    int-to-long v4, v11

    add-long/2addr v0, v4

    if-nez p2, :cond_1c

    .line 169
    sget-object v4, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    goto :goto_8

    :cond_1c
    move-object/from16 v4, p2

    .line 170
    :goto_8
    sget-object v5, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_ID:Ljava/time/ZoneId;

    if-eq v4, v5, :cond_1e

    invoke-virtual {v4}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v5

    sget-object v7, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_RULES:Ljava/time/zone/ZoneRules;

    if-ne v5, v7, :cond_1d

    goto :goto_9

    :cond_1d
    const/4 v9, 0x0

    :cond_1e
    :goto_9
    if-eqz v9, :cond_1f

    const-wide/32 v9, 0x28d2bea0

    cmp-long v5, v0, v9

    if-ltz v5, :cond_1f

    const/16 v11, 0x7080

    goto :goto_b

    .line 171
    :cond_1f
    sget-object v5, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    if-eq v4, v5, :cond_21

    invoke-virtual {v4}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v7, "UTC"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    goto :goto_a

    .line 172
    :cond_20
    invoke-static {v2, v8, v3}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v2

    const/4 v3, 0x0

    .line 173
    invoke-static {v13, v6, v11, v3}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v3

    .line 174
    invoke-static {v2, v3}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 175
    invoke-virtual {v4}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object v2

    .line 176
    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v11

    goto :goto_b

    :cond_21
    :goto_a
    const/4 v11, 0x0

    :goto_b
    int-to-long v2, v11

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    .line 177
    :cond_22
    new-instance v0, Ljava/lang/String;

    const/16 v3, 0x13

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 178
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_23
    move-object/from16 v2, p0

    move-object/from16 v3, v16

    .line 179
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 180
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_24
    move-object/from16 v2, p0

    move-object/from16 v3, v16

    .line 181
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 182
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_25
    move-object/from16 v2, p0

    move-object/from16 v3, v16

    const/16 v4, 0x13

    const/4 v5, 0x0

    .line 183
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 184
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_26
    move-object/from16 v2, p0

    move-object/from16 v3, v16

    .line 185
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 186
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_27
    move-object/from16 v2, p0

    move-object/from16 v3, v16

    const/16 v4, 0x13

    const/4 v5, 0x0

    .line 187
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 188
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_28
    move-object/from16 v2, p0

    move-object/from16 v3, v16

    .line 189
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 190
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_29
    move-object/from16 v2, p0

    goto :goto_c

    :cond_2a
    move-object v2, v0

    :goto_c
    move-object/from16 v3, v16

    .line 191
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 192
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_2b
    move-object v2, v0

    move-object v3, v14

    const/16 v4, 0x13

    const/4 v5, 0x0

    .line 193
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 194
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :cond_2c
    move-object v2, v0

    move-object v3, v14

    .line 195
    new-instance v0, Ljava/lang/String;

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 196
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1
.end method

.method public static parseMillisYMDHMS19(Ljava/lang/String;Ljava/time/ZoneId;)J
    .locals 22

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x13

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1b

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/4 v11, 0x6

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/4 v13, 0x7

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x8

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x9

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v11, 0xb

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v11, 0xc

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v11, 0xd

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v17, v3

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v18, v3

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v19, v5

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v20, v5

    const/16 v5, 0x12

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v0, 0x2d

    move/from16 v21, v5

    const-string v5, "illegal input"

    if-ne v9, v0, :cond_1a

    if-ne v13, v0, :cond_1a

    const/16 v0, 0x20

    if-ne v15, v0, :cond_1a

    const/16 v0, 0x3a

    if-ne v11, v0, :cond_1a

    if-ne v3, v0, :cond_1a

    const/16 v0, 0x30

    if-lt v1, v0, :cond_19

    const/16 v3, 0x39

    if-gt v1, v3, :cond_19

    if-lt v4, v0, :cond_19

    if-gt v4, v3, :cond_19

    if-lt v6, v0, :cond_19

    if-gt v6, v3, :cond_19

    if-lt v7, v0, :cond_19

    if-gt v7, v3, :cond_19

    sub-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v4, v0

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v1, v4

    sub-int/2addr v6, v0

    const/16 v4, 0xa

    mul-int/2addr v6, v4

    add-int/2addr v1, v6

    sub-int/2addr v7, v0

    add-int/2addr v1, v7

    if-lt v10, v0, :cond_18

    if-gt v10, v3, :cond_18

    if-lt v12, v0, :cond_18

    if-gt v12, v3, :cond_18

    sub-int/2addr v10, v0

    mul-int/2addr v10, v4

    sub-int/2addr v12, v0

    add-int/2addr v10, v12

    if-nez v10, :cond_1

    if-nez v1, :cond_17

    :cond_1
    const/16 v4, 0xc

    if-gt v10, v4, :cond_17

    if-lt v14, v0, :cond_16

    if-gt v14, v3, :cond_16

    if-lt v2, v0, :cond_16

    if-gt v2, v3, :cond_16

    sub-int/2addr v14, v0

    const/16 v4, 0xa

    mul-int/2addr v14, v4

    sub-int/2addr v2, v0

    add-int/2addr v14, v2

    const/4 v2, 0x2

    if-eq v10, v2, :cond_3

    const/4 v2, 0x4

    if-eq v10, v2, :cond_2

    const/4 v2, 0x6

    if-eq v10, v2, :cond_2

    const/16 v2, 0x9

    if-eq v10, v2, :cond_2

    const/16 v2, 0xb

    if-eq v10, v2, :cond_2

    const/16 v2, 0x1f

    goto :goto_1

    :cond_2
    const/16 v2, 0x1e

    goto :goto_1

    :cond_3
    and-int/lit8 v2, v1, 0x3

    if-nez v2, :cond_5

    rem-int/lit8 v2, v1, 0x64

    if-nez v2, :cond_4

    rem-int/lit16 v2, v1, 0x190

    if-nez v2, :cond_5

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_6

    const/16 v2, 0x1d

    goto :goto_1

    :cond_6
    const/16 v2, 0x1c

    :goto_1
    if-nez v14, :cond_7

    if-nez v1, :cond_15

    :cond_7
    if-gt v14, v2, :cond_15

    if-lt v8, v0, :cond_14

    if-gt v8, v3, :cond_14

    move/from16 v2, v19

    if-lt v2, v0, :cond_14

    if-gt v2, v3, :cond_14

    sub-int/2addr v8, v0

    const/16 v4, 0xa

    mul-int/2addr v8, v4

    sub-int/2addr v2, v0

    add-int/2addr v8, v2

    move/from16 v2, v17

    if-lt v2, v0, :cond_13

    if-gt v2, v3, :cond_13

    move/from16 v6, v18

    if-lt v6, v0, :cond_13

    if-gt v6, v3, :cond_13

    sub-int/2addr v2, v0

    mul-int/2addr v2, v4

    sub-int/2addr v6, v0

    add-int/2addr v2, v6

    move/from16 v6, v20

    if-lt v6, v0, :cond_12

    if-gt v6, v3, :cond_12

    move/from16 v7, v21

    if-lt v7, v0, :cond_12

    if-gt v7, v3, :cond_12

    add-int/lit8 v5, v6, -0x30

    mul-int/2addr v5, v4

    add-int/lit8 v0, v7, -0x30

    add-int/2addr v5, v0

    if-nez v1, :cond_8

    if-nez v10, :cond_8

    if-nez v14, :cond_8

    const/16 v1, 0x7b2

    const/4 v10, 0x1

    const/4 v14, 0x1

    :cond_8
    mul-int/lit16 v0, v1, 0x16d

    add-int/lit8 v3, v1, 0x3

    const/4 v4, 0x4

    div-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x63

    div-int/lit8 v4, v4, 0x64

    sub-int/2addr v3, v4

    add-int/lit16 v4, v1, 0x18f

    div-int/lit16 v4, v4, 0x190

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    mul-int/lit16 v3, v10, 0x16f

    add-int/lit16 v3, v3, -0x16a

    const/16 v4, 0xc

    div-int/2addr v3, v4

    add-int/2addr v0, v3

    add-int/lit8 v3, v14, -0x1

    add-int/2addr v0, v3

    int-to-long v3, v0

    const/4 v0, 0x2

    if-le v10, v0, :cond_b

    const-wide/16 v6, 0x1

    sub-long/2addr v3, v6

    and-int/lit8 v0, v1, 0x3

    if-nez v0, :cond_a

    rem-int/lit8 v0, v1, 0x64

    if-nez v0, :cond_9

    rem-int/lit16 v0, v1, 0x190

    if-nez v0, :cond_a

    :cond_9
    const/4 v0, 0x1

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_b

    sub-long/2addr v3, v6

    :cond_b
    const-wide/32 v6, 0xafaa8

    sub-long/2addr v3, v6

    const-wide/32 v6, 0x15180

    mul-long/2addr v3, v6

    mul-int/lit16 v0, v8, 0xe10

    int-to-long v6, v0

    add-long/2addr v3, v6

    mul-int/lit8 v0, v2, 0x3c

    int-to-long v6, v0

    add-long/2addr v3, v6

    int-to-long v6, v5

    add-long/2addr v3, v6

    if-nez p1, :cond_c

    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    goto :goto_3

    :cond_c
    move-object/from16 v0, p1

    :goto_3
    sget-object v6, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_ID:Ljava/time/ZoneId;

    if-eq v0, v6, :cond_e

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v6

    sget-object v7, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_RULES:Ljava/time/zone/ZoneRules;

    if-ne v6, v7, :cond_d

    goto :goto_4

    :cond_d
    const/16 v16, 0x0

    goto :goto_5

    :cond_e
    :goto_4
    const/16 v16, 0x1

    :goto_5
    if-eqz v16, :cond_f

    const-wide/32 v6, 0x28d2bea0

    cmp-long v6, v3, v6

    if-ltz v6, :cond_f

    const/16 v0, 0x7080

    goto :goto_7

    :cond_f
    sget-object v6, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    if-eq v0, v6, :cond_11

    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTC"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_6

    :cond_10
    invoke-static {v1, v10, v14}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {v8, v2, v5, v6}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    goto :goto_7

    :cond_11
    :goto_6
    const/4 v0, 0x0

    :goto_7
    int-to-long v0, v0

    sub-long/2addr v3, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v3, v0

    return-wide v3

    :cond_12
    new-instance v0, Ljava/time/format/DateTimeParseException;

    const/4 v2, 0x0

    move-object/from16 v1, p0

    invoke-direct {v0, v5, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_13
    const/4 v2, 0x0

    move-object/from16 v1, p0

    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v5, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_14
    const/4 v2, 0x0

    move-object/from16 v1, p0

    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v5, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_15
    const/4 v2, 0x0

    move-object/from16 v1, p0

    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v5, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_16
    const/4 v2, 0x0

    move-object/from16 v1, p0

    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v5, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_17
    const/4 v2, 0x0

    move-object/from16 v1, p0

    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v5, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_18
    const/4 v2, 0x0

    move-object/from16 v1, p0

    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v5, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_19
    const/4 v2, 0x0

    move-object/from16 v1, p0

    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v5, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_1a
    const/4 v2, 0x0

    move-object/from16 v1, p0

    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v5, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0

    :cond_1b
    move-object v1, v0

    move v2, v3

    new-instance v0, Ljava/time/format/DateTimeParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal input "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0
.end method

.method public static parseZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTime(Ljava/lang/String;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static parseZonedDateTime(Ljava/lang/String;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 3
    :cond_1
    sget v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ANDROID_SDK_INT:I

    const/16 v2, 0x22

    const/4 v3, 0x0

    if-lt v1, v2, :cond_2

    .line 4
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 5
    array-length v2, v1

    invoke-static {v1, v3, v2, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTime([BIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v1, v1

    invoke-static {v2, v3, v1, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTime([CIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_6

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v1, -0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string p1, "0000-00-00"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string p1, "null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string p1, "0"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v3

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 9
    new-instance p1, Ljava/time/format/DateTimeParseException;

    invoke-direct {p1, p0, p0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw p1

    :pswitch_0
    return-object v0

    :cond_6
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_2
        0x33c587 -> :sswitch_1
        0x4f8288e0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static parseZonedDateTime([BII)Ljava/time/ZonedDateTime;
    .locals 1

    .line 10
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTime([BIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static parseZonedDateTime([BIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 59

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    if-nez v0, :cond_0

    return-object v4

    :cond_0
    if-nez v2, :cond_1

    return-object v4

    :cond_1
    const/16 v5, 0x10

    if-ne v2, v5, :cond_2

    .line 12
    invoke-static {v0, v1, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->d([BILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v5, 0x13

    if-ge v2, v5, :cond_3

    return-object v4

    .line 13
    :cond_3
    aget-byte v5, v0, v1

    int-to-char v5, v5

    add-int/lit8 v6, v1, 0x1

    .line 14
    aget-byte v6, v0, v6

    int-to-char v6, v6

    add-int/lit8 v7, v1, 0x2

    .line 15
    aget-byte v7, v0, v7

    int-to-char v7, v7

    add-int/lit8 v8, v1, 0x3

    .line 16
    aget-byte v8, v0, v8

    int-to-char v9, v8

    add-int/lit8 v10, v1, 0x4

    .line 17
    aget-byte v10, v0, v10

    int-to-char v10, v10

    add-int/lit8 v11, v1, 0x5

    .line 18
    aget-byte v11, v0, v11

    int-to-char v11, v11

    add-int/lit8 v12, v1, 0x6

    .line 19
    aget-byte v12, v0, v12

    int-to-char v12, v12

    add-int/lit8 v13, v1, 0x7

    .line 20
    aget-byte v13, v0, v13

    int-to-char v13, v13

    add-int/lit8 v14, v1, 0x8

    .line 21
    aget-byte v14, v0, v14

    int-to-char v14, v14

    add-int/lit8 v15, v1, 0x9

    .line 22
    aget-byte v15, v0, v15

    int-to-char v15, v15

    add-int/lit8 v16, v1, 0xa

    .line 23
    aget-byte v4, v0, v16

    int-to-char v4, v4

    add-int/lit8 v16, v1, 0xb

    move/from16 v17, v8

    .line 24
    aget-byte v8, v0, v16

    int-to-char v8, v8

    add-int/lit8 v16, v1, 0xc

    .line 25
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, v1, 0xd

    move/from16 v18, v14

    .line 26
    aget-byte v14, v0, v16

    int-to-char v14, v14

    add-int/lit8 v16, v1, 0xe

    move/from16 v19, v15

    .line 27
    aget-byte v15, v0, v16

    int-to-char v15, v15

    add-int/lit8 v16, v1, 0xf

    move/from16 v20, v3

    .line 28
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, v1, 0x10

    move/from16 v21, v3

    .line 29
    aget-byte v3, v0, v16

    int-to-char v3, v3

    add-int/lit8 v16, v1, 0x11

    move/from16 v22, v5

    .line 30
    aget-byte v5, v0, v16

    int-to-char v5, v5

    add-int/lit8 v16, v1, 0x12

    move/from16 v23, v6

    .line 31
    aget-byte v6, v0, v16

    int-to-char v6, v6

    move/from16 v16, v6

    const/16 v6, 0x13

    move/from16 v24, v9

    if-ne v2, v6, :cond_4

    const/16 v6, 0x20

    goto :goto_0

    :cond_4
    add-int/lit8 v6, v1, 0x13

    .line 32
    aget-byte v6, v0, v6

    int-to-char v6, v6

    :goto_0
    const/16 v25, 0x0

    const/16 v26, 0x30

    packed-switch v2, :pswitch_data_0

    add-int/lit8 v9, v1, 0x14

    .line 33
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x15

    move/from16 v28, v9

    .line 34
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x16

    move/from16 v29, v9

    .line 35
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x17

    move/from16 v30, v9

    .line 36
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x18

    move/from16 v31, v9

    .line 37
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x19

    move/from16 v32, v9

    .line 38
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x1a

    move/from16 v33, v9

    .line 39
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x1b

    move/from16 v34, v9

    .line 40
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x1c

    move/from16 v35, v9

    .line 41
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x1d

    move/from16 v36, v9

    .line 42
    aget-byte v9, v0, v27

    int-to-char v9, v9

    move/from16 v43, v9

    move/from16 v27, v28

    move/from16 v9, v29

    move/from16 v0, v30

    move/from16 v37, v31

    move/from16 v38, v32

    move/from16 v39, v33

    move/from16 v40, v34

    move/from16 v41, v35

    move/from16 v42, v36

    goto/16 :goto_2

    :pswitch_0
    add-int/lit8 v27, v1, 0x14

    .line 43
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x15

    move/from16 v28, v9

    .line 44
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x16

    move/from16 v29, v9

    .line 45
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x17

    move/from16 v30, v9

    .line 46
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x18

    move/from16 v31, v9

    .line 47
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x19

    move/from16 v32, v9

    .line 48
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x1a

    move/from16 v33, v9

    .line 49
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x1b

    move/from16 v34, v9

    .line 50
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x1c

    move/from16 v35, v9

    .line 51
    aget-byte v9, v0, v27

    int-to-char v9, v9

    move/from16 v42, v9

    move/from16 v43, v25

    move/from16 v27, v28

    move/from16 v9, v29

    move/from16 v0, v30

    move/from16 v37, v31

    move/from16 v38, v32

    move/from16 v39, v33

    move/from16 v40, v34

    move/from16 v41, v35

    goto/16 :goto_2

    :pswitch_1
    add-int/lit8 v9, v1, 0x14

    .line 52
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x15

    move/from16 v28, v9

    .line 53
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x16

    move/from16 v29, v9

    .line 54
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x17

    move/from16 v30, v9

    .line 55
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x18

    move/from16 v31, v9

    .line 56
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x19

    move/from16 v32, v9

    .line 57
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x1a

    move/from16 v33, v9

    .line 58
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x1b

    move/from16 v34, v9

    .line 59
    aget-byte v9, v0, v27

    int-to-char v9, v9

    move/from16 v41, v9

    move/from16 v43, v25

    move/from16 v42, v26

    move/from16 v27, v28

    move/from16 v9, v29

    move/from16 v0, v30

    move/from16 v37, v31

    move/from16 v38, v32

    move/from16 v39, v33

    move/from16 v40, v34

    goto/16 :goto_2

    :pswitch_2
    add-int/lit8 v9, v1, 0x14

    .line 60
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x15

    move/from16 v28, v9

    .line 61
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x16

    move/from16 v29, v9

    .line 62
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x17

    move/from16 v30, v9

    .line 63
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x18

    move/from16 v31, v9

    .line 64
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x19

    move/from16 v32, v9

    .line 65
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x1a

    move/from16 v33, v9

    .line 66
    aget-byte v9, v0, v27

    int-to-char v9, v9

    move/from16 v40, v9

    move/from16 v43, v25

    move/from16 v41, v26

    move/from16 v42, v41

    move/from16 v27, v28

    move/from16 v9, v29

    move/from16 v0, v30

    move/from16 v37, v31

    move/from16 v38, v32

    move/from16 v39, v33

    goto/16 :goto_2

    :pswitch_3
    add-int/lit8 v9, v1, 0x14

    .line 67
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x15

    move/from16 v28, v9

    .line 68
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x16

    move/from16 v29, v9

    .line 69
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x17

    move/from16 v30, v9

    .line 70
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x18

    move/from16 v31, v9

    .line 71
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x19

    move/from16 v32, v9

    .line 72
    aget-byte v9, v0, v27

    int-to-char v9, v9

    move/from16 v39, v9

    move/from16 v43, v25

    move/from16 v40, v26

    move/from16 v41, v40

    move/from16 v42, v41

    move/from16 v27, v28

    move/from16 v9, v29

    move/from16 v0, v30

    move/from16 v37, v31

    move/from16 v38, v32

    goto/16 :goto_2

    :pswitch_4
    add-int/lit8 v9, v1, 0x14

    .line 73
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x15

    move/from16 v28, v9

    .line 74
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x16

    move/from16 v29, v9

    .line 75
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x17

    move/from16 v30, v9

    .line 76
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x18

    move/from16 v31, v9

    .line 77
    aget-byte v9, v0, v27

    int-to-char v9, v9

    move/from16 v38, v9

    move/from16 v43, v25

    move/from16 v39, v26

    move/from16 v40, v39

    move/from16 v41, v40

    move/from16 v42, v41

    move/from16 v27, v28

    move/from16 v9, v29

    move/from16 v0, v30

    move/from16 v37, v31

    goto/16 :goto_2

    :pswitch_5
    add-int/lit8 v9, v1, 0x14

    .line 78
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x15

    move/from16 v28, v9

    .line 79
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x16

    move/from16 v29, v9

    .line 80
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x17

    move/from16 v30, v9

    .line 81
    aget-byte v9, v0, v27

    int-to-char v9, v9

    move/from16 v37, v9

    move/from16 v43, v25

    move/from16 v38, v26

    move/from16 v39, v38

    move/from16 v40, v39

    move/from16 v41, v40

    move/from16 v42, v41

    move/from16 v27, v28

    move/from16 v9, v29

    move/from16 v0, v30

    goto/16 :goto_2

    :pswitch_6
    add-int/lit8 v9, v1, 0x14

    .line 82
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x15

    move/from16 v28, v9

    .line 83
    aget-byte v9, v0, v27

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x16

    move/from16 v29, v9

    .line 84
    aget-byte v9, v0, v27

    int-to-char v9, v9

    move v0, v9

    move/from16 v43, v25

    move/from16 v37, v26

    move/from16 v38, v37

    move/from16 v39, v38

    move/from16 v40, v39

    move/from16 v41, v40

    move/from16 v42, v41

    move/from16 v27, v28

    move/from16 v9, v29

    goto :goto_2

    :pswitch_7
    add-int/lit8 v9, v1, 0x14

    .line 85
    aget-byte v9, v0, v9

    int-to-char v9, v9

    add-int/lit8 v27, v1, 0x15

    move/from16 v28, v9

    .line 86
    aget-byte v9, v0, v27

    int-to-char v9, v9

    move/from16 v43, v25

    move/from16 v0, v26

    move/from16 v37, v0

    move/from16 v38, v37

    move/from16 v39, v38

    move/from16 v40, v39

    move/from16 v41, v40

    move/from16 v42, v41

    move/from16 v27, v28

    goto :goto_2

    :pswitch_8
    add-int/lit8 v9, v1, 0x14

    .line 87
    aget-byte v9, v0, v9

    int-to-char v9, v9

    move/from16 v27, v9

    move/from16 v43, v25

    goto :goto_1

    :pswitch_9
    move/from16 v27, v25

    move/from16 v43, v27

    :goto_1
    move/from16 v0, v26

    move v9, v0

    move/from16 v37, v9

    move/from16 v38, v37

    move/from16 v39, v38

    move/from16 v40, v39

    move/from16 v41, v40

    move/from16 v42, v41

    :goto_2
    const/16 v31, 0x1

    const/16 v1, 0x2d

    move/from16 v33, v0

    const/16 v0, 0x3a

    if-ne v10, v1, :cond_7

    if-ne v13, v1, :cond_7

    const/16 v1, 0x20

    if-eq v4, v1, :cond_5

    const/16 v1, 0x54

    if-ne v4, v1, :cond_7

    :cond_5
    if-ne v14, v0, :cond_7

    if-ne v3, v0, :cond_7

    const/16 v1, 0x5b

    if-eq v6, v1, :cond_6

    const/16 v1, 0x5a

    if-eq v6, v1, :cond_6

    const/16 v1, 0x2b

    if-eq v6, v1, :cond_6

    const/16 v1, 0x2d

    if-eq v6, v1, :cond_6

    const/16 v1, 0x20

    if-ne v6, v1, :cond_7

    :cond_6
    const/16 v0, 0x13

    move-object/from16 v13, p0

    move/from16 v47, v5

    move/from16 v37, v7

    move v14, v8

    move/from16 v39, v11

    move/from16 v40, v12

    move/from16 v45, v15

    move/from16 v48, v16

    move/from16 v41, v18

    move/from16 v42, v19

    move/from16 v15, v20

    move/from16 v46, v21

    :goto_3
    move/from16 v35, v22

    move/from16 v36, v23

    move/from16 v38, v24

    move/from16 v3, v25

    move/from16 v49, v26

    move/from16 v50, v49

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    :goto_4
    const/4 v1, 0x0

    goto/16 :goto_3a

    :cond_7
    const/16 v1, 0x2d

    if-ne v10, v1, :cond_8

    if-ne v13, v1, :cond_8

    const/16 v1, 0x20

    if-ne v4, v1, :cond_8

    if-ne v8, v1, :cond_8

    if-ne v15, v0, :cond_8

    if-ne v5, v0, :cond_8

    const/16 v1, 0x14

    if-ne v2, v1, :cond_9

    move-object/from16 v13, p0

    move v0, v1

    move/from16 v46, v3

    move/from16 v48, v6

    move/from16 v37, v7

    move/from16 v39, v11

    move/from16 v40, v12

    move v15, v14

    move/from16 v47, v16

    move/from16 v41, v18

    move/from16 v42, v19

    move/from16 v14, v20

    move/from16 v45, v21

    goto :goto_3

    :cond_8
    const/16 v1, 0x14

    :cond_9
    if-ne v2, v1, :cond_b

    const/16 v1, 0x20

    if-ne v7, v1, :cond_b

    if-ne v12, v1, :cond_b

    if-ne v8, v1, :cond_b

    if-ne v15, v0, :cond_b

    if-ne v5, v0, :cond_b

    move/from16 v1, v24

    .line 88
    invoke-static {v1, v10, v11}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v0

    if-lez v0, :cond_a

    .line 89
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 90
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    goto :goto_5

    :cond_a
    move/from16 v0, v26

    move v1, v0

    :goto_5
    move/from16 v40, v0

    move/from16 v39, v1

    move/from16 v46, v3

    move/from16 v38, v4

    move/from16 v48, v6

    move/from16 v35, v13

    move v15, v14

    move/from16 v47, v16

    move/from16 v36, v18

    move/from16 v37, v19

    move/from16 v14, v20

    move/from16 v45, v21

    move/from16 v41, v22

    move/from16 v42, v23

    move/from16 v3, v25

    move/from16 v49, v26

    move/from16 v50, v49

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    const/16 v0, 0x14

    const/4 v1, 0x0

    move-object/from16 v13, p0

    goto/16 :goto_3a

    :cond_b
    move/from16 v1, v24

    const/16 v0, 0x2d

    if-ne v10, v0, :cond_f

    if-ne v13, v0, :cond_f

    const/16 v0, 0x20

    if-eq v4, v0, :cond_c

    const/16 v0, 0x54

    if-ne v4, v0, :cond_f

    :cond_c
    const/16 v0, 0x3a

    if-ne v14, v0, :cond_f

    if-ne v3, v0, :cond_f

    const/16 v0, 0x2e

    if-ne v6, v0, :cond_f

    const/16 v0, 0x15

    if-eq v2, v0, :cond_d

    const/16 v0, 0x5b

    if-eq v9, v0, :cond_d

    const/16 v0, 0x2b

    if-eq v9, v0, :cond_d

    const/16 v0, 0x2d

    if-eq v9, v0, :cond_d

    const/16 v0, 0x5a

    if-ne v9, v0, :cond_f

    :cond_d
    const/16 v0, 0x7c

    if-ne v9, v0, :cond_e

    move/from16 v0, v31

    goto :goto_6

    :cond_e
    move/from16 v0, v25

    :goto_6
    move-object/from16 v13, p0

    move v3, v0

    move/from16 v38, v1

    move/from16 v47, v5

    move/from16 v37, v7

    move v14, v8

    move/from16 v39, v11

    move/from16 v40, v12

    move/from16 v45, v15

    move/from16 v48, v16

    move/from16 v41, v18

    move/from16 v42, v19

    move/from16 v15, v20

    move/from16 v46, v21

    move/from16 v35, v22

    move/from16 v36, v23

    move/from16 v50, v26

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v49, v27

    const/16 v0, 0x15

    goto/16 :goto_4

    :cond_f
    const/16 v0, 0x2d

    if-ne v10, v0, :cond_14

    if-ne v13, v0, :cond_14

    const/16 v0, 0x20

    if-eq v4, v0, :cond_10

    const/16 v0, 0x54

    if-ne v4, v0, :cond_14

    :cond_10
    const/16 v0, 0x3a

    if-ne v14, v0, :cond_14

    if-ne v3, v0, :cond_14

    const/16 v0, 0x2e

    if-ne v6, v0, :cond_14

    const/16 v0, 0x16

    if-eq v2, v0, :cond_11

    move/from16 v0, v33

    move/from16 v33, v15

    const/16 v15, 0x5b

    if-eq v0, v15, :cond_12

    const/16 v15, 0x2b

    if-eq v0, v15, :cond_12

    const/16 v15, 0x2d

    if-eq v0, v15, :cond_12

    const/16 v15, 0x5a

    if-ne v0, v15, :cond_15

    goto :goto_7

    :cond_11
    move/from16 v0, v33

    move/from16 v33, v15

    :cond_12
    :goto_7
    const/16 v3, 0x7c

    if-ne v0, v3, :cond_13

    move/from16 v0, v31

    goto :goto_8

    :cond_13
    move/from16 v0, v25

    :goto_8
    move-object/from16 v13, p0

    move v3, v0

    move/from16 v38, v1

    move/from16 v47, v5

    move/from16 v37, v7

    move v14, v8

    move/from16 v50, v9

    move/from16 v39, v11

    move/from16 v40, v12

    move/from16 v48, v16

    move/from16 v41, v18

    move/from16 v42, v19

    move/from16 v15, v20

    move/from16 v46, v21

    move/from16 v35, v22

    move/from16 v36, v23

    move/from16 v51, v26

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v49, v27

    move/from16 v45, v33

    const/16 v0, 0x16

    goto/16 :goto_4

    :cond_14
    move/from16 v0, v33

    move/from16 v33, v15

    :cond_15
    const/16 v15, 0x2d

    if-ne v10, v15, :cond_17

    if-ne v13, v15, :cond_17

    const/16 v15, 0x20

    if-eq v4, v15, :cond_16

    const/16 v15, 0x54

    if-ne v4, v15, :cond_17

    :cond_16
    const/16 v15, 0x3a

    if-ne v14, v15, :cond_17

    const/16 v15, 0x5a

    if-ne v3, v15, :cond_17

    const/16 v15, 0x5b

    if-ne v5, v15, :cond_17

    const/16 v15, 0x5d

    if-ne v9, v15, :cond_17

    const/16 v15, 0x16

    if-ne v2, v15, :cond_17

    const/16 v0, 0x11

    move-object/from16 v13, p0

    move/from16 v38, v1

    move/from16 v37, v7

    move v14, v8

    move/from16 v39, v11

    move/from16 v40, v12

    move/from16 v41, v18

    move/from16 v42, v19

    move/from16 v15, v20

    move/from16 v46, v21

    move/from16 v35, v22

    move/from16 v36, v23

    move/from16 v47, v26

    move/from16 v48, v47

    move/from16 v49, v48

    move/from16 v50, v49

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v3, v31

    move/from16 v45, v33

    goto/16 :goto_4

    :cond_17
    const/16 v15, 0x16

    if-ne v2, v15, :cond_1d

    const/16 v15, 0x20

    if-ne v1, v15, :cond_1d

    move/from16 v47, v10

    const/16 v10, 0x2c

    if-ne v11, v10, :cond_1e

    if-ne v12, v15, :cond_1e

    if-ne v8, v15, :cond_1e

    const/16 v10, 0x3a

    if-ne v14, v10, :cond_1e

    if-ne v3, v10, :cond_1e

    if-ne v6, v15, :cond_1e

    const/16 v10, 0x41

    move/from16 v15, v27

    if-eq v15, v10, :cond_19

    const/16 v10, 0x50

    if-ne v15, v10, :cond_18

    goto :goto_9

    :cond_18
    const/16 v10, 0x16

    move/from16 v58, v22

    move/from16 v22, v13

    move/from16 v13, v23

    move/from16 v23, v58

    goto/16 :goto_d

    :cond_19
    :goto_9
    const/16 v10, 0x4d

    if-ne v9, v10, :cond_1c

    move/from16 v10, v22

    move/from16 v22, v13

    move/from16 v13, v23

    .line 91
    invoke-static {v10, v13, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v0

    if-lez v0, :cond_1a

    .line 92
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 93
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v6, v0

    goto :goto_a

    :cond_1a
    move/from16 v1, v26

    move v6, v1

    :goto_a
    const/16 v0, 0x50

    if-ne v15, v0, :cond_1b

    move/from16 v0, v31

    goto :goto_b

    :cond_1b
    move/from16 v0, v25

    :goto_b
    move-object/from16 v13, p0

    move/from16 v39, v1

    move/from16 v38, v4

    move/from16 v40, v6

    move/from16 v48, v16

    move/from16 v36, v18

    move/from16 v37, v19

    move/from16 v15, v20

    move/from16 v46, v21

    move/from16 v35, v22

    move/from16 v3, v25

    move/from16 v14, v26

    move/from16 v41, v14

    move/from16 v49, v41

    move/from16 v50, v49

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v45, v33

    move/from16 v42, v47

    const/4 v1, 0x0

    goto/16 :goto_10

    :cond_1c
    move/from16 v10, v22

    goto :goto_c

    :cond_1d
    move/from16 v47, v10

    :cond_1e
    move/from16 v10, v22

    move/from16 v15, v27

    :goto_c
    move/from16 v22, v13

    move/from16 v13, v23

    move/from16 v23, v10

    const/16 v10, 0x16

    :goto_d
    if-ne v2, v10, :cond_21

    const/16 v10, 0x2f

    if-ne v7, v10, :cond_21

    const/16 v10, 0x2f

    if-ne v11, v10, :cond_21

    const/16 v10, 0x20

    if-ne v4, v10, :cond_21

    const/16 v10, 0x3a

    if-ne v14, v10, :cond_21

    if-ne v3, v10, :cond_21

    const/16 v10, 0x20

    if-ne v6, v10, :cond_21

    const/16 v10, 0x41

    if-eq v15, v10, :cond_1f

    const/16 v10, 0x50

    if-ne v15, v10, :cond_21

    goto :goto_e

    :cond_1f
    const/16 v10, 0x50

    :goto_e
    move/from16 v27, v6

    const/16 v6, 0x4d

    if-ne v9, v6, :cond_22

    if-ne v15, v10, :cond_20

    move/from16 v0, v31

    goto :goto_f

    :cond_20
    move/from16 v0, v25

    :goto_f
    move/from16 v41, v1

    move v14, v8

    move/from16 v35, v12

    move/from16 v40, v13

    move/from16 v48, v16

    move/from16 v37, v18

    move/from16 v38, v19

    move/from16 v15, v20

    move/from16 v46, v21

    move/from16 v36, v22

    move/from16 v39, v23

    move/from16 v3, v25

    move/from16 v49, v26

    move/from16 v50, v49

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v45, v33

    move/from16 v42, v47

    const/4 v1, 0x0

    move-object/from16 v13, p0

    :goto_10
    move/from16 v25, v0

    move/from16 v47, v5

    const/16 v0, 0x16

    goto/16 :goto_3a

    :cond_21
    move/from16 v27, v6

    :cond_22
    const/16 v6, 0x17

    if-ne v2, v6, :cond_27

    const/16 v10, 0x20

    if-ne v1, v10, :cond_27

    const/16 v6, 0x2c

    if-ne v11, v6, :cond_27

    if-ne v12, v10, :cond_27

    if-ne v8, v10, :cond_27

    move/from16 v6, v33

    const/16 v10, 0x3a

    if-ne v6, v10, :cond_26

    if-ne v5, v10, :cond_26

    const/16 v10, 0x20

    if-ne v15, v10, :cond_26

    const/16 v10, 0x41

    if-eq v9, v10, :cond_23

    const/16 v10, 0x50

    if-ne v9, v10, :cond_26

    :cond_23
    const/16 v10, 0x4d

    if-ne v0, v10, :cond_26

    move/from16 v10, v23

    .line 94
    invoke-static {v10, v13, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v0

    if-lez v0, :cond_24

    .line 95
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 96
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v6, v0

    move v5, v1

    goto :goto_11

    :cond_24
    move/from16 v5, v26

    move v6, v5

    :goto_11
    const/16 v0, 0x50

    if-ne v9, v0, :cond_25

    move/from16 v0, v31

    goto :goto_12

    :cond_25
    move/from16 v0, v25

    :goto_12
    move-object/from16 v13, p0

    move/from16 v46, v3

    move/from16 v38, v4

    move/from16 v39, v5

    move/from16 v40, v6

    move v15, v14

    move/from16 v36, v18

    move/from16 v37, v19

    move/from16 v14, v20

    move/from16 v45, v21

    move/from16 v35, v22

    move/from16 v3, v25

    move/from16 v41, v26

    move/from16 v49, v41

    move/from16 v50, v49

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v48, v27

    move/from16 v42, v47

    :goto_13
    const/4 v1, 0x0

    move/from16 v25, v0

    move/from16 v47, v16

    goto/16 :goto_1e

    :cond_26
    move/from16 v10, v23

    goto :goto_14

    :cond_27
    move/from16 v10, v23

    move/from16 v6, v33

    :goto_14
    move/from16 v23, v8

    const/16 v8, 0x17

    if-ne v2, v8, :cond_2b

    const/16 v8, 0x20

    if-ne v1, v8, :cond_2b

    move/from16 v33, v11

    const/16 v11, 0x2c

    if-ne v12, v11, :cond_2c

    move/from16 v11, v22

    move/from16 v22, v3

    move/from16 v3, v20

    if-ne v11, v8, :cond_2d

    if-ne v3, v8, :cond_2d

    const/16 v8, 0x3a

    if-ne v6, v8, :cond_2d

    if-ne v5, v8, :cond_2d

    const/16 v8, 0x20

    if-ne v15, v8, :cond_2d

    const/16 v8, 0x41

    if-eq v9, v8, :cond_28

    const/16 v8, 0x50

    if-ne v9, v8, :cond_2d

    :cond_28
    const/16 v8, 0x4d

    if-ne v0, v8, :cond_2d

    .line 97
    invoke-static {v10, v13, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v0

    if-lez v0, :cond_29

    .line 98
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 99
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v6, v0

    move v5, v1

    goto :goto_15

    :cond_29
    move/from16 v5, v26

    move v6, v5

    :goto_15
    const/16 v0, 0x50

    if-ne v9, v0, :cond_2a

    move/from16 v0, v31

    goto :goto_16

    :cond_2a
    move/from16 v0, v25

    :goto_16
    move-object/from16 v13, p0

    move/from16 v37, v4

    move/from16 v39, v5

    move/from16 v40, v6

    move v15, v14

    move/from16 v35, v18

    move/from16 v36, v19

    move/from16 v45, v21

    move/from16 v46, v22

    move/from16 v38, v23

    move/from16 v3, v25

    move/from16 v14, v26

    move/from16 v49, v14

    move/from16 v50, v49

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v48, v27

    move/from16 v42, v33

    move/from16 v41, v47

    goto/16 :goto_13

    :cond_2b
    move/from16 v33, v11

    :cond_2c
    move/from16 v11, v22

    move/from16 v22, v3

    move/from16 v3, v20

    :cond_2d
    const/16 v8, 0x18

    if-ne v2, v8, :cond_32

    const/16 v8, 0x20

    if-ne v1, v8, :cond_32

    move/from16 v49, v15

    const/16 v15, 0x2c

    if-ne v12, v15, :cond_33

    if-ne v11, v8, :cond_33

    if-ne v3, v8, :cond_33

    move/from16 v15, v21

    const/16 v8, 0x3a

    move/from16 v21, v3

    move/from16 v3, v16

    if-ne v15, v8, :cond_34

    if-ne v3, v8, :cond_34

    const/16 v8, 0x20

    if-ne v9, v8, :cond_34

    const/16 v8, 0x41

    if-eq v0, v8, :cond_2f

    const/16 v8, 0x50

    if-ne v0, v8, :cond_2e

    goto :goto_17

    :cond_2e
    move/from16 v16, v6

    move/from16 v6, v37

    move/from16 v8, v47

    move/from16 v37, v0

    goto/16 :goto_1a

    :cond_2f
    :goto_17
    const/16 v8, 0x4d

    move/from16 v16, v6

    move/from16 v6, v37

    if-ne v6, v8, :cond_35

    .line 100
    invoke-static {v10, v13, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_30

    .line 101
    div-int/lit8 v3, v1, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 102
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    move v6, v1

    goto :goto_18

    :cond_30
    move/from16 v3, v26

    move v6, v3

    :goto_18
    const/16 v1, 0x50

    if-ne v0, v1, :cond_31

    move/from16 v0, v31

    goto :goto_19

    :cond_31
    move/from16 v0, v25

    :goto_19
    move-object/from16 v13, p0

    move/from16 v39, v3

    move/from16 v37, v4

    move/from16 v46, v5

    move/from16 v40, v6

    move/from16 v15, v16

    move/from16 v35, v18

    move/from16 v36, v19

    move/from16 v45, v22

    move/from16 v38, v23

    move/from16 v3, v25

    move/from16 v50, v26

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v42, v33

    move/from16 v41, v47

    move/from16 v48, v49

    const/4 v1, 0x0

    move/from16 v25, v0

    move/from16 v49, v57

    move/from16 v47, v27

    goto/16 :goto_23

    :cond_32
    move/from16 v49, v15

    :cond_33
    move/from16 v15, v21

    move/from16 v21, v3

    move/from16 v3, v16

    :cond_34
    move/from16 v16, v6

    move/from16 v6, v37

    :cond_35
    move/from16 v37, v0

    move/from16 v8, v47

    :goto_1a
    const/16 v0, 0x2d

    if-ne v8, v0, :cond_3b

    if-ne v11, v0, :cond_3b

    const/16 v0, 0x20

    if-eq v4, v0, :cond_36

    const/16 v0, 0x54

    if-ne v4, v0, :cond_3b

    :cond_36
    const/16 v0, 0x3a

    if-ne v14, v0, :cond_3b

    move/from16 v45, v7

    move/from16 v7, v22

    move/from16 v22, v10

    if-ne v7, v0, :cond_3a

    move/from16 v0, v27

    const/16 v10, 0x2e

    if-ne v0, v10, :cond_3c

    const/16 v10, 0x17

    if-eq v2, v10, :cond_38

    const/16 v10, 0x5b

    if-eq v6, v10, :cond_38

    const/16 v10, 0x7c

    if-eq v6, v10, :cond_37

    const/16 v10, 0x2b

    if-eq v6, v10, :cond_38

    const/16 v10, 0x2d

    if-eq v6, v10, :cond_38

    const/16 v10, 0x5a

    if-ne v6, v10, :cond_3c

    goto :goto_1b

    :cond_37
    move v0, v10

    goto :goto_1c

    :cond_38
    :goto_1b
    const/16 v0, 0x7c

    :goto_1c
    if-ne v6, v0, :cond_39

    move/from16 v0, v31

    goto :goto_1d

    :cond_39
    move/from16 v0, v25

    :goto_1d
    move/from16 v38, v1

    move/from16 v48, v3

    move/from16 v47, v5

    move/from16 v50, v9

    move/from16 v40, v12

    move/from16 v36, v13

    move/from16 v46, v15

    move/from16 v41, v18

    move/from16 v42, v19

    move/from16 v15, v21

    move/from16 v35, v22

    move/from16 v14, v23

    move/from16 v52, v26

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v39, v33

    move/from16 v51, v37

    move/from16 v37, v45

    const/4 v1, 0x0

    move-object/from16 v13, p0

    move v3, v0

    move/from16 v45, v16

    :goto_1e
    const/16 v0, 0x17

    goto/16 :goto_3a

    :cond_3a
    move/from16 v0, v27

    goto :goto_1f

    :cond_3b
    move/from16 v45, v7

    move/from16 v7, v22

    move/from16 v0, v27

    move/from16 v22, v10

    :cond_3c
    :goto_1f
    const/16 v10, 0x2d

    if-ne v8, v10, :cond_42

    if-ne v11, v10, :cond_42

    const/16 v10, 0x20

    if-eq v4, v10, :cond_3d

    const/16 v10, 0x54

    if-ne v4, v10, :cond_42

    :cond_3d
    const/16 v10, 0x3a

    if-ne v14, v10, :cond_42

    if-ne v7, v10, :cond_42

    const/16 v10, 0x2e

    if-ne v0, v10, :cond_42

    const/16 v10, 0x18

    move/from16 v27, v13

    if-eq v2, v10, :cond_3f

    move/from16 v10, v38

    const/16 v13, 0x5b

    if-eq v10, v13, :cond_40

    const/16 v13, 0x7c

    if-eq v10, v13, :cond_3e

    const/16 v13, 0x2b

    if-eq v10, v13, :cond_40

    const/16 v13, 0x2d

    if-eq v10, v13, :cond_40

    const/16 v13, 0x5a

    if-ne v10, v13, :cond_43

    goto :goto_20

    :cond_3e
    move v0, v13

    goto :goto_21

    :cond_3f
    move/from16 v10, v38

    :cond_40
    :goto_20
    const/16 v0, 0x7c

    :goto_21
    if-ne v10, v0, :cond_41

    move/from16 v0, v31

    goto :goto_22

    :cond_41
    move/from16 v0, v25

    :goto_22
    move-object/from16 v13, p0

    move/from16 v38, v1

    move/from16 v48, v3

    move/from16 v47, v5

    move/from16 v52, v6

    move/from16 v50, v9

    move/from16 v40, v12

    move/from16 v46, v15

    move/from16 v41, v18

    move/from16 v42, v19

    move/from16 v15, v21

    move/from16 v35, v22

    move/from16 v14, v23

    move/from16 v53, v26

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v36, v27

    move/from16 v39, v33

    move/from16 v51, v37

    move/from16 v37, v45

    const/4 v1, 0x0

    move v3, v0

    move/from16 v45, v16

    :goto_23
    const/16 v0, 0x18

    goto/16 :goto_3a

    :cond_42
    move/from16 v27, v13

    move/from16 v10, v38

    :cond_43
    const/16 v13, 0x2d

    if-ne v8, v13, :cond_49

    if-ne v11, v13, :cond_49

    const/16 v13, 0x20

    if-eq v4, v13, :cond_44

    const/16 v13, 0x54

    if-ne v4, v13, :cond_49

    :cond_44
    const/16 v13, 0x3a

    if-ne v14, v13, :cond_49

    if-ne v7, v13, :cond_49

    const/16 v13, 0x2e

    if-ne v0, v13, :cond_49

    const/16 v13, 0x19

    if-eq v2, v13, :cond_46

    move/from16 v13, v39

    move/from16 v39, v5

    const/16 v5, 0x5b

    if-eq v13, v5, :cond_47

    const/16 v5, 0x7c

    if-eq v13, v5, :cond_45

    const/16 v5, 0x2b

    if-eq v13, v5, :cond_47

    const/16 v5, 0x2d

    if-eq v13, v5, :cond_47

    const/16 v5, 0x5a

    if-ne v13, v5, :cond_4a

    goto :goto_24

    :cond_45
    move v0, v5

    goto :goto_25

    :cond_46
    move/from16 v13, v39

    move/from16 v39, v5

    :cond_47
    :goto_24
    const/16 v0, 0x7c

    :goto_25
    if-ne v13, v0, :cond_48

    move/from16 v0, v31

    goto :goto_26

    :cond_48
    move/from16 v0, v25

    :goto_26
    move-object/from16 v13, p0

    move/from16 v38, v1

    move/from16 v48, v3

    move/from16 v52, v6

    move/from16 v50, v9

    move/from16 v53, v10

    move/from16 v40, v12

    move/from16 v46, v15

    move/from16 v41, v18

    move/from16 v42, v19

    move/from16 v15, v21

    move/from16 v35, v22

    move/from16 v14, v23

    move/from16 v54, v26

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v36, v27

    move/from16 v51, v37

    move/from16 v47, v39

    move/from16 v37, v45

    const/4 v1, 0x0

    move v3, v0

    move/from16 v45, v16

    move/from16 v39, v33

    const/16 v0, 0x19

    goto/16 :goto_3a

    :cond_49
    move/from16 v13, v39

    move/from16 v39, v5

    :cond_4a
    const/16 v5, 0x2d

    if-ne v8, v5, :cond_50

    if-ne v11, v5, :cond_50

    const/16 v5, 0x20

    if-eq v4, v5, :cond_4b

    const/16 v5, 0x54

    if-ne v4, v5, :cond_50

    :cond_4b
    const/16 v5, 0x3a

    if-ne v14, v5, :cond_50

    if-ne v7, v5, :cond_50

    const/16 v5, 0x2e

    if-ne v0, v5, :cond_50

    const/16 v5, 0x1a

    if-eq v2, v5, :cond_4d

    move/from16 v5, v40

    move/from16 v40, v13

    const/16 v13, 0x5b

    if-eq v5, v13, :cond_4e

    const/16 v13, 0x7c

    if-eq v5, v13, :cond_4c

    const/16 v13, 0x2b

    if-eq v5, v13, :cond_4e

    const/16 v13, 0x2d

    if-eq v5, v13, :cond_4e

    const/16 v13, 0x5a

    if-ne v5, v13, :cond_51

    goto :goto_27

    :cond_4c
    move v0, v13

    goto :goto_28

    :cond_4d
    move/from16 v5, v40

    move/from16 v40, v13

    :cond_4e
    :goto_27
    const/16 v0, 0x7c

    :goto_28
    if-ne v5, v0, :cond_4f

    move/from16 v0, v31

    goto :goto_29

    :cond_4f
    move/from16 v0, v25

    :goto_29
    const/16 v4, 0x1a

    move-object/from16 v13, p0

    move/from16 v38, v1

    move/from16 v48, v3

    move/from16 v52, v6

    move/from16 v50, v9

    move/from16 v53, v10

    move/from16 v46, v15

    move/from16 v41, v18

    move/from16 v42, v19

    move/from16 v15, v21

    move/from16 v35, v22

    move/from16 v14, v23

    move/from16 v55, v26

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v36, v27

    move/from16 v51, v37

    move/from16 v47, v39

    move/from16 v54, v40

    move/from16 v37, v45

    const/4 v1, 0x0

    move v3, v0

    move v0, v4

    move/from16 v40, v12

    goto/16 :goto_2b

    :cond_50
    move/from16 v5, v40

    move/from16 v40, v13

    :cond_51
    const/16 v13, 0x2d

    if-ne v8, v13, :cond_57

    if-ne v11, v13, :cond_57

    const/16 v13, 0x20

    if-eq v4, v13, :cond_52

    const/16 v13, 0x54

    if-ne v4, v13, :cond_57

    :cond_52
    const/16 v13, 0x3a

    if-ne v14, v13, :cond_57

    if-ne v7, v13, :cond_57

    const/16 v13, 0x2e

    if-ne v0, v13, :cond_57

    const/16 v13, 0x1b

    if-eq v2, v13, :cond_53

    move/from16 v13, v41

    move/from16 v41, v5

    const/16 v5, 0x5b

    if-eq v13, v5, :cond_54

    const/16 v5, 0x7c

    if-eq v13, v5, :cond_54

    const/16 v5, 0x2b

    if-eq v13, v5, :cond_54

    const/16 v5, 0x2d

    if-eq v13, v5, :cond_54

    const/16 v5, 0x5a

    if-ne v13, v5, :cond_58

    goto :goto_2a

    :cond_53
    move/from16 v13, v41

    move/from16 v41, v5

    :cond_54
    :goto_2a
    const/16 v0, 0x20

    if-ne v6, v0, :cond_55

    move-object/from16 v13, p0

    move/from16 v38, v1

    move/from16 v48, v3

    move/from16 v50, v9

    move/from16 v40, v12

    move/from16 v46, v15

    move/from16 v41, v18

    move/from16 v42, v19

    move/from16 v15, v21

    move/from16 v35, v22

    move/from16 v14, v23

    move/from16 v3, v25

    move/from16 v52, v26

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v36, v27

    move/from16 v51, v37

    move/from16 v47, v39

    move/from16 v37, v45

    const/16 v0, 0x17

    const/4 v1, 0x0

    :goto_2b
    move/from16 v45, v16

    :goto_2c
    move/from16 v39, v33

    goto/16 :goto_3a

    :cond_55
    const/16 v0, 0x7c

    if-ne v13, v0, :cond_56

    move/from16 v0, v31

    goto :goto_2d

    :cond_56
    move/from16 v0, v25

    :goto_2d
    const/16 v4, 0x1b

    move-object/from16 v13, p0

    move/from16 v38, v1

    move/from16 v48, v3

    move/from16 v52, v6

    move/from16 v50, v9

    move/from16 v53, v10

    move/from16 v46, v15

    move/from16 v42, v19

    move/from16 v15, v21

    move/from16 v35, v22

    move/from16 v14, v23

    move/from16 v56, v26

    move/from16 v57, v56

    move/from16 v36, v27

    move/from16 v51, v37

    move/from16 v47, v39

    move/from16 v54, v40

    move/from16 v55, v41

    move/from16 v37, v45

    const/4 v1, 0x0

    move v3, v0

    move v0, v4

    move/from16 v40, v12

    move/from16 v45, v16

    move/from16 v41, v18

    goto :goto_2c

    :cond_57
    move/from16 v13, v41

    move/from16 v41, v5

    :cond_58
    const/16 v5, 0x2d

    if-ne v8, v5, :cond_5e

    if-ne v11, v5, :cond_5e

    const/16 v5, 0x20

    if-eq v4, v5, :cond_59

    const/16 v5, 0x54

    if-ne v4, v5, :cond_5e

    :cond_59
    const/16 v5, 0x3a

    if-ne v14, v5, :cond_5e

    if-ne v7, v5, :cond_5e

    const/16 v5, 0x2e

    if-ne v0, v5, :cond_5e

    const/16 v5, 0x1c

    if-eq v2, v5, :cond_5b

    move/from16 v5, v42

    move/from16 v42, v13

    const/16 v13, 0x5b

    if-eq v5, v13, :cond_5c

    const/16 v13, 0x7c

    if-eq v5, v13, :cond_5a

    const/16 v13, 0x2b

    if-eq v5, v13, :cond_5c

    const/16 v13, 0x2d

    if-eq v5, v13, :cond_5c

    const/16 v13, 0x5a

    if-ne v5, v13, :cond_5f

    goto :goto_2e

    :cond_5a
    move v0, v13

    goto :goto_2f

    :cond_5b
    move/from16 v5, v42

    move/from16 v42, v13

    :cond_5c
    :goto_2e
    const/16 v0, 0x7c

    :goto_2f
    if-ne v5, v0, :cond_5d

    move/from16 v0, v31

    goto :goto_30

    :cond_5d
    move/from16 v0, v25

    :goto_30
    const/16 v4, 0x1c

    move-object/from16 v13, p0

    move/from16 v38, v1

    move/from16 v48, v3

    move/from16 v52, v6

    move/from16 v50, v9

    move/from16 v53, v10

    move/from16 v46, v15

    move/from16 v15, v21

    move/from16 v35, v22

    move/from16 v14, v23

    move/from16 v57, v26

    move/from16 v36, v27

    move/from16 v51, v37

    move/from16 v47, v39

    move/from16 v54, v40

    move/from16 v55, v41

    move/from16 v56, v42

    move/from16 v37, v45

    const/4 v1, 0x0

    move v3, v0

    move v0, v4

    move/from16 v40, v12

    move/from16 v45, v16

    move/from16 v41, v18

    move/from16 v42, v19

    goto/16 :goto_2c

    :cond_5e
    move/from16 v5, v42

    move/from16 v42, v13

    :cond_5f
    const/16 v13, 0x1c

    if-ne v2, v13, :cond_61

    const/16 v13, 0x20

    if-ne v1, v13, :cond_61

    if-ne v11, v13, :cond_61

    if-ne v4, v13, :cond_61

    const/16 v13, 0x3a

    if-ne v14, v13, :cond_61

    if-ne v7, v13, :cond_61

    const/16 v13, 0x20

    if-ne v0, v13, :cond_61

    if-ne v6, v13, :cond_61

    move/from16 v13, v33

    .line 103
    invoke-static {v8, v13, v12}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v0

    if-lez v0, :cond_60

    .line 104
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 105
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v6, v0

    move v5, v1

    goto :goto_31

    :cond_60
    move/from16 v5, v26

    move v6, v5

    .line 106
    :goto_31
    new-instance v0, Ljava/lang/String;

    move/from16 v1, p1

    add-int/lit8 v4, v1, 0x14

    const/4 v7, 0x3

    move-object/from16 v8, p0

    invoke-direct {v0, v8, v4, v7}, Ljava/lang/String;-><init>([BII)V

    const/16 v4, 0x13

    move-object v1, v0

    move/from16 v48, v3

    move v0, v4

    move-object v13, v8

    move/from16 v35, v10

    move/from16 v46, v15

    move/from16 v45, v16

    move/from16 v15, v21

    move/from16 v14, v23

    move/from16 v3, v25

    move/from16 v49, v26

    move/from16 v50, v49

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v47, v39

    move/from16 v36, v40

    move/from16 v37, v41

    move/from16 v38, v42

    move/from16 v39, v5

    move/from16 v40, v6

    move/from16 v41, v18

    move/from16 v42, v19

    goto/16 :goto_3a

    :cond_61
    move-object/from16 v13, p0

    move/from16 v47, v6

    move/from16 v6, v37

    move/from16 v50, v49

    move/from16 v37, v5

    move/from16 v5, p1

    const/16 v5, 0x1c

    if-ne v2, v5, :cond_63

    const/16 v5, 0x2c

    if-ne v1, v5, :cond_63

    const/16 v5, 0x20

    if-ne v8, v5, :cond_63

    if-ne v12, v5, :cond_63

    if-ne v4, v5, :cond_63

    if-ne v15, v5, :cond_63

    const/16 v5, 0x3a

    if-ne v3, v5, :cond_63

    if-ne v9, v5, :cond_63

    const/16 v5, 0x20

    if-ne v10, v5, :cond_63

    move/from16 v5, v18

    move/from16 v3, v19

    .line 107
    invoke-static {v11, v5, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_62

    .line 108
    div-int/lit8 v3, v1, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 109
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    move v5, v3

    goto :goto_32

    :cond_62
    move/from16 v1, v26

    move v5, v1

    :goto_32
    move/from16 v45, v0

    move/from16 v40, v1

    move/from16 v37, v14

    move/from16 v38, v16

    move/from16 v36, v21

    move/from16 v35, v23

    move/from16 v41, v26

    move/from16 v49, v41

    move/from16 v51, v49

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v3, v31

    move/from16 v42, v33

    move/from16 v15, v39

    move/from16 v48, v47

    move/from16 v46, v50

    const/16 v0, 0x18

    const/4 v1, 0x0

    move/from16 v39, v5

    move/from16 v47, v6

    move v14, v7

    :goto_33
    move/from16 v50, v57

    goto/16 :goto_3a

    :cond_63
    move/from16 v5, v18

    move/from16 v18, v3

    move/from16 v3, v19

    move/from16 v19, v10

    const/16 v10, 0x1d

    if-ne v2, v10, :cond_66

    const/16 v10, 0x2c

    if-ne v1, v10, :cond_66

    const/16 v10, 0x20

    if-ne v8, v10, :cond_66

    if-ne v11, v10, :cond_66

    move/from16 v20, v1

    move/from16 v1, v23

    if-ne v1, v10, :cond_65

    if-ne v7, v10, :cond_65

    const/16 v10, 0x3a

    if-ne v0, v10, :cond_65

    if-ne v6, v10, :cond_65

    move/from16 v23, v9

    move/from16 v10, v40

    const/16 v9, 0x20

    if-ne v10, v9, :cond_67

    .line 110
    invoke-static {v5, v3, v4}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v0

    if-lez v0, :cond_64

    .line 111
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 112
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v6, v0

    move v5, v1

    goto :goto_34

    :cond_64
    move/from16 v5, v26

    move v6, v5

    :goto_34
    move/from16 v40, v6

    move/from16 v42, v12

    move/from16 v36, v14

    move/from16 v38, v15

    move/from16 v37, v16

    move/from16 v15, v18

    move/from16 v48, v19

    move/from16 v35, v21

    move/from16 v46, v23

    move/from16 v49, v26

    move/from16 v51, v49

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v3, v31

    move/from16 v41, v33

    move/from16 v14, v39

    move/from16 v45, v50

    const/16 v0, 0x19

    const/4 v1, 0x0

    move/from16 v39, v5

    goto :goto_33

    :cond_65
    move/from16 v23, v9

    move/from16 v10, v40

    goto :goto_35

    :cond_66
    move/from16 v20, v1

    move/from16 v1, v23

    move/from16 v10, v40

    move/from16 v23, v9

    :cond_67
    :goto_35
    const/16 v9, 0x2d

    if-ne v8, v9, :cond_6d

    if-ne v11, v9, :cond_6d

    const/16 v9, 0x20

    if-eq v4, v9, :cond_68

    const/16 v9, 0x54

    if-ne v4, v9, :cond_6d

    :cond_68
    const/16 v9, 0x3a

    if-ne v14, v9, :cond_6d

    if-ne v7, v9, :cond_6d

    const/16 v9, 0x2e

    if-ne v0, v9, :cond_6d

    const/16 v9, 0x1d

    if-eq v2, v9, :cond_6a

    move/from16 v28, v8

    move/from16 v9, v43

    const/16 v8, 0x5b

    if-eq v9, v8, :cond_6b

    const/16 v8, 0x7c

    if-eq v9, v8, :cond_69

    const/16 v8, 0x2b

    if-eq v9, v8, :cond_6b

    const/16 v8, 0x2d

    if-eq v9, v8, :cond_6b

    const/16 v8, 0x5a

    if-ne v9, v8, :cond_6e

    goto :goto_36

    :cond_69
    move v0, v8

    goto :goto_37

    :cond_6a
    move/from16 v9, v43

    :cond_6b
    :goto_36
    const/16 v0, 0x7c

    :goto_37
    if-ne v9, v0, :cond_6c

    move/from16 v0, v31

    goto :goto_38

    :cond_6c
    move/from16 v0, v25

    :goto_38
    const/16 v4, 0x1d

    move v14, v1

    move/from16 v51, v6

    move/from16 v54, v10

    move/from16 v40, v12

    move/from16 v46, v15

    move/from16 v48, v18

    move/from16 v53, v19

    move/from16 v38, v20

    move/from16 v15, v21

    move/from16 v35, v22

    move/from16 v36, v27

    move/from16 v57, v37

    move/from16 v55, v41

    move/from16 v56, v42

    move/from16 v37, v45

    move/from16 v52, v47

    move/from16 v49, v50

    const/4 v1, 0x0

    move/from16 v42, v3

    move/from16 v41, v5

    move/from16 v45, v16

    move/from16 v50, v23

    move/from16 v47, v39

    move v3, v0

    move v0, v4

    goto/16 :goto_2c

    :cond_6d
    move/from16 v28, v8

    :cond_6e
    const/16 v8, 0x16

    if-ne v2, v8, :cond_7d

    move/from16 v8, v39

    const/16 v9, 0x2b

    if-eq v8, v9, :cond_70

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_6f

    goto :goto_39

    :cond_6f
    move/from16 v9, p1

    move/from16 v39, v8

    goto/16 :goto_41

    :cond_70
    :goto_39
    const/16 v0, 0x11

    move/from16 v46, v1

    move/from16 v51, v7

    move/from16 v42, v11

    move/from16 v41, v12

    move/from16 v48, v14

    move/from16 v50, v15

    move/from16 v49, v16

    move/from16 v38, v20

    move/from16 v47, v21

    move/from16 v35, v22

    move/from16 v52, v26

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v36, v27

    move/from16 v39, v28

    move/from16 v40, v33

    move/from16 v37, v45

    const/4 v1, 0x0

    move v15, v3

    move/from16 v45, v4

    move v14, v5

    move/from16 v3, v25

    :goto_3a
    if-eqz v25, :cond_71

    .line 113
    invoke-static {v14, v15}, Lcom/alibaba/fastjson2/util/DateUtils;->hourAfterNoon(CC)I

    move-result v4

    shr-int/lit8 v5, v4, 0x10

    int-to-char v5, v5

    int-to-short v4, v4

    int-to-char v4, v4

    move/from16 v44, v4

    move/from16 v43, v5

    goto :goto_3b

    :cond_71
    move/from16 v43, v14

    move/from16 v44, v15

    .line 114
    :goto_3b
    invoke-static/range {v35 .. v57}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v4

    if-nez v4, :cond_72

    const/4 v5, 0x0

    return-object v5

    :cond_72
    if-eqz v3, :cond_74

    .line 115
    new-instance v1, Ljava/lang/String;

    sub-int/2addr v2, v0

    invoke-direct {v1, v13, v0, v2}, Ljava/lang/String;-><init>([BII)V

    const-string v0, "UTC"

    .line 116
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    const-string v0, "[UTC]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 117
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v0

    goto :goto_3c

    .line 119
    :cond_73
    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    goto :goto_3c

    :cond_74
    if-ne v0, v2, :cond_75

    move-object/from16 v0, p3

    move-object v1, v0

    goto :goto_3f

    :cond_75
    move/from16 v9, p1

    add-int v3, v9, v0

    .line 120
    aget-byte v5, v13, v3

    int-to-char v5, v5

    const/16 v6, 0x5a

    if-ne v5, v6, :cond_76

    .line 121
    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    :goto_3c
    move-object v1, v0

    move-object/from16 v0, p3

    goto :goto_3f

    :cond_76
    if-nez v1, :cond_7a

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_79

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_77

    goto :goto_3d

    :cond_77
    const/16 v6, 0x20

    if-ne v5, v6, :cond_78

    .line 122
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v1, v13, v3, v0}, Ljava/lang/String;-><init>([BII)V

    goto :goto_3e

    :cond_78
    if-ge v0, v2, :cond_7a

    .line 123
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, -0x2

    invoke-direct {v1, v13, v3, v0}, Ljava/lang/String;-><init>([BII)V

    goto :goto_3e

    .line 124
    :cond_79
    :goto_3d
    new-instance v1, Ljava/lang/String;

    sub-int v0, v2, v0

    invoke-direct {v1, v13, v3, v0}, Ljava/lang/String;-><init>([BII)V

    :cond_7a
    :goto_3e
    move-object/from16 v0, p3

    .line 125
    invoke-static {v1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->getZoneId(Ljava/lang/String;Ljava/time/ZoneId;)Ljava/time/ZoneId;

    move-result-object v1

    :goto_3f
    if-nez v1, :cond_7b

    goto :goto_40

    :cond_7b
    move-object v0, v1

    :goto_40
    if-nez v0, :cond_7c

    .line 126
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    :cond_7c
    const/4 v1, 0x0

    .line 127
    invoke-static {v4, v0, v1}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_7d
    move/from16 v9, p1

    :goto_41
    const/16 v8, 0x20

    move/from16 v18, v14

    if-ne v2, v8, :cond_7e

    const/16 v14, 0x2c

    if-ne v12, v14, :cond_7e

    if-ne v11, v8, :cond_7e

    const/16 v12, 0x2d

    if-ne v4, v12, :cond_7e

    move/from16 v14, v16

    if-ne v14, v12, :cond_7e

    if-ne v0, v8, :cond_7e

    const/16 v0, 0x3a

    if-ne v6, v0, :cond_7e

    if-ne v10, v0, :cond_7e

    add-int/lit8 v0, v9, 0x1c

    .line 128
    aget-byte v0, v13, v0

    if-eq v0, v8, :cond_81

    :cond_7e
    const/16 v0, 0x21

    if-ne v2, v0, :cond_7f

    const/16 v0, 0x2c

    if-ne v11, v0, :cond_7f

    const/16 v0, 0x20

    if-ne v5, v0, :cond_7f

    const/16 v8, 0x2d

    if-ne v1, v8, :cond_7f

    if-ne v15, v8, :cond_7f

    move/from16 v1, v50

    if-ne v1, v0, :cond_7f

    move/from16 v1, v47

    const/16 v8, 0x3a

    if-ne v1, v8, :cond_7f

    move/from16 v1, v41

    if-ne v1, v8, :cond_7f

    add-int/lit8 v1, v9, 0x1d

    aget-byte v1, v13, v1

    if-eq v1, v0, :cond_81

    :cond_7f
    const/16 v0, 0x22

    if-ne v2, v0, :cond_80

    const/16 v0, 0x2c

    if-ne v5, v0, :cond_80

    const/16 v0, 0x20

    if-ne v3, v0, :cond_80

    move/from16 v1, v21

    const/16 v5, 0x2d

    if-ne v1, v5, :cond_80

    if-ne v7, v5, :cond_80

    move/from16 v1, v23

    if-ne v1, v0, :cond_80

    move/from16 v1, v19

    const/16 v5, 0x3a

    if-ne v1, v5, :cond_80

    move/from16 v1, v42

    if-ne v1, v5, :cond_80

    add-int/lit8 v1, v9, 0x1e

    aget-byte v1, v13, v1

    if-eq v1, v0, :cond_81

    :cond_80
    const/16 v0, 0x23

    if-ne v2, v0, :cond_82

    const/16 v0, 0x2c

    if-ne v3, v0, :cond_82

    const/16 v0, 0x20

    if-ne v4, v0, :cond_82

    move/from16 v1, v18

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_82

    move/from16 v1, v39

    if-ne v1, v3, :cond_82

    if-ne v6, v0, :cond_82

    const/16 v1, 0x3a

    if-ne v10, v1, :cond_82

    move/from16 v3, v37

    if-ne v3, v1, :cond_82

    add-int/lit8 v1, v9, 0x1f

    aget-byte v1, v13, v1

    if-ne v1, v0, :cond_82

    .line 129
    :cond_81
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v13, v9, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/DateUtils;->f(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_82
    const/16 v0, 0x22

    if-ne v2, v0, :cond_84

    .line 130
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->a:Ljava/time/format/DateTimeFormatter;

    if-nez v0, :cond_83

    const-string v0, "EEE MMM dd HH:mm:ss O yyyy"

    .line 131
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->a:Ljava/time/format/DateTimeFormatter;

    .line 132
    :cond_83
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v13, v9, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v1, v0}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_84
    const/16 v0, 0x1f

    if-ne v2, v0, :cond_86

    move/from16 v0, v17

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_86

    .line 133
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->d:Ljava/time/format/DateTimeFormatter;

    if-nez v0, :cond_85

    const-string v0, "EEE, dd MMM yyyy HH:mm:ss Z"

    .line 134
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->d:Ljava/time/format/DateTimeFormatter;

    .line 135
    :cond_85
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v13, v9, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v1, v0}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_86
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_9
        :pswitch_9
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

.method public static parseZonedDateTime([CII)Ljava/time/ZonedDateTime;
    .locals 1

    .line 11
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTime([CIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static parseZonedDateTime([CIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 58

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    if-nez v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/16 v4, 0x10

    if-ne v2, v4, :cond_2

    .line 136
    invoke-static {v0, v1, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->e([CILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v4, 0x13

    if-lt v2, v4, :cond_8a

    .line 137
    aget-char v4, v0, v1

    add-int/lit8 v6, v1, 0x1

    .line 138
    aget-char v6, v0, v6

    add-int/lit8 v7, v1, 0x2

    .line 139
    aget-char v7, v0, v7

    add-int/lit8 v8, v1, 0x3

    .line 140
    aget-char v8, v0, v8

    add-int/lit8 v9, v1, 0x4

    .line 141
    aget-char v9, v0, v9

    add-int/lit8 v10, v1, 0x5

    .line 142
    aget-char v10, v0, v10

    add-int/lit8 v11, v1, 0x6

    .line 143
    aget-char v11, v0, v11

    add-int/lit8 v12, v1, 0x7

    .line 144
    aget-char v12, v0, v12

    add-int/lit8 v13, v1, 0x8

    .line 145
    aget-char v13, v0, v13

    add-int/lit8 v14, v1, 0x9

    .line 146
    aget-char v14, v0, v14

    add-int/lit8 v15, v1, 0xa

    .line 147
    aget-char v15, v0, v15

    add-int/lit8 v16, v1, 0xb

    .line 148
    aget-char v5, v0, v16

    add-int/lit8 v16, v1, 0xc

    .line 149
    aget-char v3, v0, v16

    add-int/lit8 v16, v1, 0xd

    move/from16 v18, v13

    .line 150
    aget-char v13, v0, v16

    add-int/lit8 v16, v1, 0xe

    move/from16 v19, v14

    .line 151
    aget-char v14, v0, v16

    add-int/lit8 v16, v1, 0xf

    move/from16 v20, v3

    .line 152
    aget-char v3, v0, v16

    add-int/lit8 v16, v1, 0x10

    move/from16 v21, v3

    .line 153
    aget-char v3, v0, v16

    add-int/lit8 v16, v1, 0x11

    move/from16 v22, v4

    .line 154
    aget-char v4, v0, v16

    add-int/lit8 v16, v1, 0x12

    move/from16 v23, v6

    .line 155
    aget-char v6, v0, v16

    move/from16 v16, v6

    const/16 v6, 0x13

    move/from16 v24, v8

    if-ne v2, v6, :cond_3

    const/16 v6, 0x20

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v1, 0x13

    .line 156
    aget-char v6, v0, v6

    :goto_0
    const/16 v25, 0x30

    packed-switch v2, :pswitch_data_0

    add-int/lit8 v26, v1, 0x14

    .line 157
    aget-char v26, v0, v26

    add-int/lit8 v27, v1, 0x15

    .line 158
    aget-char v27, v0, v27

    add-int/lit8 v28, v1, 0x16

    .line 159
    aget-char v28, v0, v28

    add-int/lit8 v29, v1, 0x17

    .line 160
    aget-char v29, v0, v29

    add-int/lit8 v30, v1, 0x18

    .line 161
    aget-char v30, v0, v30

    add-int/lit8 v31, v1, 0x19

    .line 162
    aget-char v31, v0, v31

    add-int/lit8 v32, v1, 0x1a

    .line 163
    aget-char v32, v0, v32

    add-int/lit8 v33, v1, 0x1b

    .line 164
    aget-char v33, v0, v33

    add-int/lit8 v34, v1, 0x1c

    .line 165
    aget-char v34, v0, v34

    add-int/lit8 v35, v1, 0x1d

    .line 166
    aget-char v35, v0, v35

    move/from16 v36, v26

    move/from16 v37, v27

    move/from16 v38, v28

    move/from16 v39, v29

    move/from16 v40, v30

    move/from16 v41, v31

    move/from16 v42, v32

    move/from16 v43, v33

    move/from16 v44, v34

    move/from16 v45, v35

    goto/16 :goto_2

    :pswitch_0
    add-int/lit8 v26, v1, 0x14

    .line 167
    aget-char v26, v0, v26

    add-int/lit8 v27, v1, 0x15

    .line 168
    aget-char v27, v0, v27

    add-int/lit8 v28, v1, 0x16

    .line 169
    aget-char v28, v0, v28

    add-int/lit8 v29, v1, 0x17

    .line 170
    aget-char v29, v0, v29

    add-int/lit8 v30, v1, 0x18

    .line 171
    aget-char v30, v0, v30

    add-int/lit8 v31, v1, 0x19

    .line 172
    aget-char v31, v0, v31

    add-int/lit8 v32, v1, 0x1a

    .line 173
    aget-char v32, v0, v32

    add-int/lit8 v33, v1, 0x1b

    .line 174
    aget-char v33, v0, v33

    add-int/lit8 v34, v1, 0x1c

    .line 175
    aget-char v34, v0, v34

    move/from16 v36, v26

    move/from16 v37, v27

    move/from16 v38, v28

    move/from16 v39, v29

    move/from16 v40, v30

    move/from16 v41, v31

    move/from16 v42, v32

    move/from16 v43, v33

    move/from16 v44, v34

    goto/16 :goto_1

    :pswitch_1
    add-int/lit8 v26, v1, 0x14

    .line 176
    aget-char v26, v0, v26

    add-int/lit8 v27, v1, 0x15

    .line 177
    aget-char v27, v0, v27

    add-int/lit8 v28, v1, 0x16

    .line 178
    aget-char v28, v0, v28

    add-int/lit8 v29, v1, 0x17

    .line 179
    aget-char v29, v0, v29

    add-int/lit8 v30, v1, 0x18

    .line 180
    aget-char v30, v0, v30

    add-int/lit8 v31, v1, 0x19

    .line 181
    aget-char v31, v0, v31

    add-int/lit8 v32, v1, 0x1a

    .line 182
    aget-char v32, v0, v32

    add-int/lit8 v33, v1, 0x1b

    .line 183
    aget-char v33, v0, v33

    move/from16 v44, v25

    move/from16 v36, v26

    move/from16 v37, v27

    move/from16 v38, v28

    move/from16 v39, v29

    move/from16 v40, v30

    move/from16 v41, v31

    move/from16 v42, v32

    move/from16 v43, v33

    goto/16 :goto_1

    :pswitch_2
    add-int/lit8 v26, v1, 0x14

    .line 184
    aget-char v26, v0, v26

    add-int/lit8 v27, v1, 0x15

    .line 185
    aget-char v27, v0, v27

    add-int/lit8 v28, v1, 0x16

    .line 186
    aget-char v28, v0, v28

    add-int/lit8 v29, v1, 0x17

    .line 187
    aget-char v29, v0, v29

    add-int/lit8 v30, v1, 0x18

    .line 188
    aget-char v30, v0, v30

    add-int/lit8 v31, v1, 0x19

    .line 189
    aget-char v31, v0, v31

    add-int/lit8 v32, v1, 0x1a

    .line 190
    aget-char v32, v0, v32

    move/from16 v43, v25

    move/from16 v44, v43

    move/from16 v36, v26

    move/from16 v37, v27

    move/from16 v38, v28

    move/from16 v39, v29

    move/from16 v40, v30

    move/from16 v41, v31

    move/from16 v42, v32

    goto/16 :goto_1

    :pswitch_3
    add-int/lit8 v26, v1, 0x14

    .line 191
    aget-char v26, v0, v26

    add-int/lit8 v27, v1, 0x15

    .line 192
    aget-char v27, v0, v27

    add-int/lit8 v28, v1, 0x16

    .line 193
    aget-char v28, v0, v28

    add-int/lit8 v29, v1, 0x17

    .line 194
    aget-char v29, v0, v29

    add-int/lit8 v30, v1, 0x18

    .line 195
    aget-char v30, v0, v30

    add-int/lit8 v31, v1, 0x19

    .line 196
    aget-char v31, v0, v31

    move/from16 v42, v25

    move/from16 v43, v42

    move/from16 v44, v43

    move/from16 v36, v26

    move/from16 v37, v27

    move/from16 v38, v28

    move/from16 v39, v29

    move/from16 v40, v30

    move/from16 v41, v31

    goto/16 :goto_1

    :pswitch_4
    add-int/lit8 v26, v1, 0x14

    .line 197
    aget-char v26, v0, v26

    add-int/lit8 v27, v1, 0x15

    .line 198
    aget-char v27, v0, v27

    add-int/lit8 v28, v1, 0x16

    .line 199
    aget-char v28, v0, v28

    add-int/lit8 v29, v1, 0x17

    .line 200
    aget-char v29, v0, v29

    add-int/lit8 v30, v1, 0x18

    .line 201
    aget-char v30, v0, v30

    move/from16 v41, v25

    move/from16 v42, v41

    move/from16 v43, v42

    move/from16 v44, v43

    move/from16 v36, v26

    move/from16 v37, v27

    move/from16 v38, v28

    move/from16 v39, v29

    move/from16 v40, v30

    goto/16 :goto_1

    :pswitch_5
    add-int/lit8 v26, v1, 0x14

    .line 202
    aget-char v26, v0, v26

    add-int/lit8 v27, v1, 0x15

    .line 203
    aget-char v27, v0, v27

    add-int/lit8 v28, v1, 0x16

    .line 204
    aget-char v28, v0, v28

    add-int/lit8 v29, v1, 0x17

    .line 205
    aget-char v29, v0, v29

    move/from16 v40, v25

    move/from16 v41, v40

    move/from16 v42, v41

    move/from16 v43, v42

    move/from16 v44, v43

    move/from16 v36, v26

    move/from16 v37, v27

    move/from16 v38, v28

    move/from16 v39, v29

    goto/16 :goto_1

    :pswitch_6
    add-int/lit8 v26, v1, 0x14

    .line 206
    aget-char v26, v0, v26

    add-int/lit8 v27, v1, 0x15

    .line 207
    aget-char v27, v0, v27

    add-int/lit8 v28, v1, 0x16

    .line 208
    aget-char v28, v0, v28

    move/from16 v39, v25

    move/from16 v40, v39

    move/from16 v41, v40

    move/from16 v42, v41

    move/from16 v43, v42

    move/from16 v44, v43

    move/from16 v36, v26

    move/from16 v37, v27

    move/from16 v38, v28

    goto :goto_1

    :pswitch_7
    add-int/lit8 v26, v1, 0x14

    .line 209
    aget-char v26, v0, v26

    add-int/lit8 v27, v1, 0x15

    .line 210
    aget-char v27, v0, v27

    move/from16 v38, v25

    move/from16 v39, v38

    move/from16 v40, v39

    move/from16 v41, v40

    move/from16 v42, v41

    move/from16 v43, v42

    move/from16 v44, v43

    move/from16 v36, v26

    move/from16 v37, v27

    goto :goto_1

    :pswitch_8
    add-int/lit8 v26, v1, 0x14

    .line 211
    aget-char v26, v0, v26

    move/from16 v37, v25

    move/from16 v38, v37

    move/from16 v39, v38

    move/from16 v40, v39

    move/from16 v41, v40

    move/from16 v42, v41

    move/from16 v43, v42

    move/from16 v44, v43

    move/from16 v36, v26

    goto :goto_1

    :pswitch_9
    move/from16 v37, v25

    move/from16 v38, v37

    move/from16 v39, v38

    move/from16 v40, v39

    move/from16 v41, v40

    move/from16 v42, v41

    move/from16 v43, v42

    move/from16 v44, v43

    const/16 v36, 0x0

    :goto_1
    const/16 v45, 0x0

    :goto_2
    const/16 v30, 0x1

    const/16 v8, 0x2d

    const/16 v0, 0x3a

    const/16 v32, 0x0

    if-ne v9, v8, :cond_6

    if-ne v12, v8, :cond_6

    const/16 v8, 0x20

    if-eq v15, v8, :cond_4

    const/16 v8, 0x54

    if-ne v15, v8, :cond_6

    :cond_4
    if-ne v13, v0, :cond_6

    if-ne v3, v0, :cond_6

    const/16 v8, 0x5b

    if-eq v6, v8, :cond_5

    const/16 v8, 0x5a

    if-eq v6, v8, :cond_5

    const/16 v8, 0x2b

    if-eq v6, v8, :cond_5

    const/16 v8, 0x2d

    if-eq v6, v8, :cond_5

    const/16 v8, 0x20

    if-ne v6, v8, :cond_6

    :cond_5
    const/16 v0, 0x13

    move/from16 v46, v4

    move v13, v5

    move/from16 v36, v7

    move/from16 v38, v10

    move/from16 v39, v11

    move/from16 v44, v14

    move/from16 v47, v16

    move/from16 v40, v18

    move/from16 v41, v19

    move/from16 v14, v20

    move/from16 v45, v21

    move/from16 v34, v22

    move/from16 v35, v23

    move/from16 v37, v24

    move/from16 v48, v25

    move/from16 v49, v48

    move/from16 v50, v49

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    const/16 v17, 0x0

    const/4 v5, 0x0

    :goto_3
    move-object/from16 v4, p0

    goto/16 :goto_36

    :cond_6
    const/16 v8, 0x2d

    if-ne v9, v8, :cond_7

    if-ne v12, v8, :cond_7

    const/16 v8, 0x20

    if-ne v15, v8, :cond_7

    if-ne v5, v8, :cond_7

    if-ne v14, v0, :cond_7

    if-ne v4, v0, :cond_7

    const/16 v8, 0x14

    if-ne v2, v8, :cond_8

    const/4 v5, 0x0

    move-object/from16 v4, p0

    move/from16 v45, v3

    move/from16 v47, v6

    move/from16 v36, v7

    move v0, v8

    move/from16 v38, v10

    move/from16 v39, v11

    move v14, v13

    move/from16 v46, v16

    move/from16 v40, v18

    move/from16 v41, v19

    move/from16 v13, v20

    move/from16 v44, v21

    move/from16 v34, v22

    move/from16 v35, v23

    move/from16 v37, v24

    move/from16 v48, v25

    move/from16 v49, v48

    move/from16 v50, v49

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    const/16 v17, 0x0

    goto/16 :goto_36

    :cond_7
    const/16 v8, 0x14

    :cond_8
    if-ne v2, v8, :cond_a

    const/16 v8, 0x20

    if-ne v7, v8, :cond_a

    if-ne v11, v8, :cond_a

    if-ne v5, v8, :cond_a

    if-ne v14, v0, :cond_a

    if-ne v4, v0, :cond_a

    move/from16 v8, v24

    .line 212
    invoke-static {v8, v9, v10}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v0

    if-lez v0, :cond_9

    .line 213
    div-int/lit8 v4, v0, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    .line 214
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    goto :goto_4

    :cond_9
    move/from16 v0, v25

    move v4, v0

    :goto_4
    const/4 v5, 0x0

    move/from16 v39, v0

    move/from16 v45, v3

    move/from16 v38, v4

    move/from16 v47, v6

    move/from16 v34, v12

    move v14, v13

    move/from16 v37, v15

    move/from16 v46, v16

    move/from16 v35, v18

    move/from16 v36, v19

    move/from16 v13, v20

    move/from16 v44, v21

    move/from16 v40, v22

    move/from16 v41, v23

    move/from16 v48, v25

    move/from16 v49, v48

    move/from16 v50, v49

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    const/16 v0, 0x14

    const/16 v17, 0x0

    goto/16 :goto_3

    :cond_a
    move/from16 v8, v24

    const/16 v0, 0x2d

    if-ne v9, v0, :cond_f

    if-ne v12, v0, :cond_f

    const/16 v0, 0x20

    if-eq v15, v0, :cond_b

    const/16 v0, 0x54

    if-ne v15, v0, :cond_f

    :cond_b
    const/16 v0, 0x3a

    if-ne v13, v0, :cond_f

    if-ne v3, v0, :cond_f

    const/16 v0, 0x2e

    if-ne v6, v0, :cond_f

    const/16 v0, 0x15

    if-eq v2, v0, :cond_c

    move/from16 v0, v37

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_d

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_d

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_d

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_10

    goto :goto_5

    :cond_c
    move/from16 v0, v37

    :cond_d
    :goto_5
    const/16 v1, 0x7c

    if-ne v0, v1, :cond_e

    move/from16 v0, v30

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    :goto_6
    move/from16 v1, p1

    move/from16 v17, v0

    move/from16 v46, v4

    move v13, v5

    move/from16 v37, v8

    move/from16 v38, v10

    move/from16 v39, v11

    move/from16 v44, v14

    move/from16 v47, v16

    move/from16 v40, v18

    move/from16 v41, v19

    move/from16 v14, v20

    move/from16 v45, v21

    move/from16 v34, v22

    move/from16 v35, v23

    move/from16 v49, v25

    move/from16 v50, v49

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v48, v36

    const/16 v0, 0x15

    const/4 v5, 0x0

    move-object/from16 v4, p0

    move/from16 v36, v7

    goto/16 :goto_36

    :cond_f
    move/from16 v0, v37

    :cond_10
    const/16 v1, 0x2d

    if-ne v9, v1, :cond_15

    if-ne v12, v1, :cond_15

    const/16 v1, 0x20

    if-eq v15, v1, :cond_11

    const/16 v1, 0x54

    if-ne v15, v1, :cond_15

    :cond_11
    const/16 v1, 0x3a

    if-ne v13, v1, :cond_15

    if-ne v3, v1, :cond_15

    const/16 v1, 0x2e

    if-ne v6, v1, :cond_15

    const/16 v1, 0x16

    if-eq v2, v1, :cond_12

    move/from16 v1, v38

    move/from16 v38, v14

    const/16 v14, 0x5b

    if-eq v1, v14, :cond_13

    const/16 v14, 0x2b

    if-eq v1, v14, :cond_13

    const/16 v14, 0x2d

    if-eq v1, v14, :cond_13

    const/16 v14, 0x5a

    if-ne v1, v14, :cond_16

    goto :goto_7

    :cond_12
    move/from16 v1, v38

    move/from16 v38, v14

    :cond_13
    :goto_7
    const/16 v3, 0x7c

    if-ne v1, v3, :cond_14

    move/from16 v1, v30

    goto :goto_8

    :cond_14
    const/4 v1, 0x0

    :goto_8
    move/from16 v49, v0

    move/from16 v17, v1

    move/from16 v46, v4

    move v13, v5

    move/from16 v37, v8

    move/from16 v39, v11

    move/from16 v47, v16

    move/from16 v40, v18

    move/from16 v41, v19

    move/from16 v14, v20

    move/from16 v45, v21

    move/from16 v34, v22

    move/from16 v35, v23

    move/from16 v50, v25

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v48, v36

    move/from16 v44, v38

    const/16 v0, 0x16

    const/4 v5, 0x0

    move-object/from16 v4, p0

    move/from16 v1, p1

    move/from16 v36, v7

    goto/16 :goto_9

    :cond_15
    move/from16 v1, v38

    move/from16 v38, v14

    :cond_16
    const/16 v14, 0x2d

    if-ne v9, v14, :cond_18

    if-ne v12, v14, :cond_18

    const/16 v14, 0x20

    if-eq v15, v14, :cond_17

    const/16 v14, 0x54

    if-ne v15, v14, :cond_18

    :cond_17
    const/16 v14, 0x3a

    if-ne v13, v14, :cond_18

    const/16 v14, 0x5a

    if-ne v3, v14, :cond_18

    const/16 v14, 0x5b

    if-ne v4, v14, :cond_18

    const/16 v14, 0x5d

    if-ne v0, v14, :cond_18

    const/16 v14, 0x16

    if-ne v2, v14, :cond_18

    const/16 v0, 0x11

    move-object/from16 v4, p0

    move/from16 v1, p1

    move v13, v5

    move/from16 v36, v7

    move/from16 v37, v8

    move/from16 v39, v11

    move/from16 v40, v18

    move/from16 v41, v19

    move/from16 v14, v20

    move/from16 v45, v21

    move/from16 v34, v22

    move/from16 v35, v23

    move/from16 v46, v25

    move/from16 v47, v46

    move/from16 v48, v47

    move/from16 v49, v48

    move/from16 v50, v49

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v17, v30

    move/from16 v44, v38

    const/4 v5, 0x0

    :goto_9
    move/from16 v38, v10

    goto/16 :goto_36

    :cond_18
    const/16 v14, 0x16

    if-ne v2, v14, :cond_1e

    const/16 v14, 0x20

    if-ne v8, v14, :cond_1e

    move/from16 v48, v9

    const/16 v9, 0x2c

    if-ne v10, v9, :cond_1f

    if-ne v11, v14, :cond_1f

    if-ne v5, v14, :cond_1f

    const/16 v9, 0x3a

    if-ne v13, v9, :cond_1f

    if-ne v3, v9, :cond_1f

    if-ne v6, v14, :cond_1f

    const/16 v9, 0x41

    move/from16 v14, v36

    if-eq v14, v9, :cond_1a

    const/16 v9, 0x50

    if-ne v14, v9, :cond_19

    goto :goto_a

    :cond_19
    const/16 v9, 0x16

    move/from16 v57, v22

    move/from16 v22, v12

    move/from16 v12, v23

    move/from16 v23, v57

    goto/16 :goto_e

    :cond_1a
    :goto_a
    const/16 v9, 0x4d

    if-ne v0, v9, :cond_1d

    move/from16 v9, v22

    move/from16 v22, v12

    move/from16 v12, v23

    .line 215
    invoke-static {v9, v12, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v0

    if-lez v0, :cond_1b

    .line 216
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 217
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v6, v0

    goto :goto_b

    :cond_1b
    move/from16 v1, v25

    move v6, v1

    :goto_b
    const/16 v0, 0x50

    if-ne v14, v0, :cond_1c

    move/from16 v0, v30

    goto :goto_c

    :cond_1c
    const/4 v0, 0x0

    :goto_c
    move v5, v0

    move/from16 v46, v4

    move/from16 v39, v6

    move/from16 v37, v15

    move/from16 v47, v16

    move/from16 v35, v18

    move/from16 v36, v19

    move/from16 v14, v20

    move/from16 v45, v21

    move/from16 v34, v22

    move/from16 v13, v25

    move/from16 v40, v13

    move/from16 v49, v40

    move/from16 v50, v49

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v44, v38

    move/from16 v41, v48

    const/16 v0, 0x16

    const/16 v17, 0x0

    move-object/from16 v4, p0

    move/from16 v38, v1

    move/from16 v48, v56

    goto/16 :goto_1d

    :cond_1d
    move/from16 v9, v22

    goto :goto_d

    :cond_1e
    move/from16 v48, v9

    :cond_1f
    move/from16 v9, v22

    move/from16 v14, v36

    :goto_d
    move/from16 v22, v12

    move/from16 v12, v23

    move/from16 v23, v9

    const/16 v9, 0x16

    :goto_e
    if-ne v2, v9, :cond_22

    const/16 v9, 0x2f

    if-ne v7, v9, :cond_22

    const/16 v9, 0x2f

    if-ne v10, v9, :cond_22

    const/16 v9, 0x20

    if-ne v15, v9, :cond_22

    const/16 v9, 0x3a

    if-ne v13, v9, :cond_22

    if-ne v3, v9, :cond_22

    const/16 v9, 0x20

    if-ne v6, v9, :cond_22

    const/16 v9, 0x41

    if-eq v14, v9, :cond_20

    const/16 v9, 0x50

    if-ne v14, v9, :cond_22

    goto :goto_f

    :cond_20
    const/16 v9, 0x50

    :goto_f
    move/from16 v36, v6

    const/16 v6, 0x4d

    if-ne v0, v6, :cond_23

    if-ne v14, v9, :cond_21

    move/from16 v0, v30

    goto :goto_10

    :cond_21
    const/4 v0, 0x0

    :goto_10
    move/from16 v1, p1

    move/from16 v46, v4

    move v13, v5

    move/from16 v40, v8

    move/from16 v34, v11

    move/from16 v39, v12

    move/from16 v47, v16

    move/from16 v36, v18

    move/from16 v37, v19

    move/from16 v14, v20

    move/from16 v45, v21

    move/from16 v35, v22

    move/from16 v49, v25

    move/from16 v50, v49

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v44, v38

    move/from16 v41, v48

    const/16 v17, 0x0

    move-object/from16 v4, p0

    move v5, v0

    move/from16 v38, v23

    move/from16 v48, v56

    const/16 v0, 0x16

    goto/16 :goto_36

    :cond_22
    move/from16 v36, v6

    :cond_23
    const/16 v6, 0x17

    if-ne v2, v6, :cond_28

    const/16 v9, 0x20

    if-ne v8, v9, :cond_28

    const/16 v6, 0x2c

    if-ne v10, v6, :cond_28

    if-ne v11, v9, :cond_28

    if-ne v5, v9, :cond_28

    move/from16 v6, v38

    const/16 v9, 0x3a

    if-ne v6, v9, :cond_27

    if-ne v4, v9, :cond_27

    const/16 v9, 0x20

    if-ne v14, v9, :cond_27

    const/16 v9, 0x41

    if-eq v0, v9, :cond_24

    const/16 v9, 0x50

    if-ne v0, v9, :cond_27

    :cond_24
    const/16 v9, 0x4d

    if-ne v1, v9, :cond_27

    move/from16 v9, v23

    .line 218
    invoke-static {v9, v12, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_25

    .line 219
    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    .line 220
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    move v6, v1

    goto :goto_11

    :cond_25
    move/from16 v4, v25

    move v6, v4

    :goto_11
    const/16 v1, 0x50

    if-ne v0, v1, :cond_26

    move/from16 v0, v30

    goto :goto_12

    :cond_26
    const/4 v0, 0x0

    :goto_12
    move/from16 v1, p1

    move v5, v0

    move/from16 v45, v3

    move/from16 v38, v4

    move/from16 v39, v6

    move v14, v13

    move/from16 v37, v15

    move/from16 v46, v16

    move/from16 v35, v18

    move/from16 v13, v20

    move/from16 v44, v21

    move/from16 v34, v22

    move/from16 v40, v25

    move/from16 v49, v40

    move/from16 v50, v49

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v47, v36

    move/from16 v41, v48

    const/16 v0, 0x17

    const/16 v17, 0x0

    move-object/from16 v4, p0

    move/from16 v36, v19

    move/from16 v48, v56

    goto/16 :goto_36

    :cond_27
    move/from16 v9, v23

    goto :goto_13

    :cond_28
    move/from16 v9, v23

    move/from16 v6, v38

    :goto_13
    move/from16 v23, v5

    const/16 v5, 0x17

    if-ne v2, v5, :cond_2c

    const/16 v5, 0x20

    if-ne v8, v5, :cond_2c

    move/from16 v38, v10

    const/16 v10, 0x2c

    if-ne v11, v10, :cond_2d

    move/from16 v10, v22

    move/from16 v22, v3

    move/from16 v3, v20

    if-ne v10, v5, :cond_2e

    if-ne v3, v5, :cond_2e

    const/16 v5, 0x3a

    if-ne v6, v5, :cond_2e

    if-ne v4, v5, :cond_2e

    const/16 v5, 0x20

    if-ne v14, v5, :cond_2e

    const/16 v5, 0x41

    if-eq v0, v5, :cond_29

    const/16 v5, 0x50

    if-ne v0, v5, :cond_2e

    :cond_29
    const/16 v5, 0x4d

    if-ne v1, v5, :cond_2e

    .line 221
    invoke-static {v9, v12, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v1

    if-lez v1, :cond_2a

    .line 222
    div-int/lit8 v3, v1, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 223
    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    move v6, v1

    move v4, v3

    goto :goto_14

    :cond_2a
    move/from16 v4, v25

    move v6, v4

    :goto_14
    const/16 v1, 0x50

    if-ne v0, v1, :cond_2b

    move/from16 v0, v30

    goto :goto_15

    :cond_2b
    const/4 v0, 0x0

    :goto_15
    move/from16 v1, p1

    move v5, v0

    move/from16 v39, v6

    move v14, v13

    move/from16 v46, v16

    move/from16 v34, v18

    move/from16 v35, v19

    move/from16 v44, v21

    move/from16 v45, v22

    move/from16 v37, v23

    move/from16 v13, v25

    move/from16 v49, v13

    move/from16 v50, v49

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v47, v36

    move/from16 v41, v38

    move/from16 v40, v48

    const/16 v0, 0x17

    const/16 v17, 0x0

    move/from16 v38, v4

    move/from16 v36, v15

    move/from16 v48, v56

    goto/16 :goto_3

    :cond_2c
    move/from16 v38, v10

    :cond_2d
    move/from16 v10, v22

    move/from16 v22, v3

    move/from16 v3, v20

    :cond_2e
    const/16 v5, 0x18

    if-ne v2, v5, :cond_33

    const/16 v5, 0x20

    if-ne v8, v5, :cond_33

    move/from16 v50, v14

    const/16 v14, 0x2c

    if-ne v11, v14, :cond_34

    if-ne v10, v5, :cond_34

    if-ne v3, v5, :cond_34

    move/from16 v14, v21

    const/16 v5, 0x3a

    move/from16 v21, v3

    move/from16 v3, v16

    if-ne v14, v5, :cond_35

    if-ne v3, v5, :cond_35

    const/16 v5, 0x20

    if-ne v0, v5, :cond_35

    const/16 v5, 0x41

    if-eq v1, v5, :cond_30

    const/16 v5, 0x50

    if-ne v1, v5, :cond_2f

    goto :goto_16

    :cond_2f
    move/from16 v16, v6

    move/from16 v6, v39

    move/from16 v5, v48

    move/from16 v39, v7

    goto/16 :goto_19

    :cond_30
    :goto_16
    const/16 v5, 0x4d

    move/from16 v16, v6

    move/from16 v6, v39

    if-ne v6, v5, :cond_36

    .line 224
    invoke-static {v9, v12, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v0

    if-lez v0, :cond_31

    .line 225
    div-int/lit8 v3, v0, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 226
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v6, v0

    goto :goto_17

    :cond_31
    move/from16 v3, v25

    move v6, v3

    :goto_17
    const/16 v0, 0x50

    if-ne v1, v0, :cond_32

    move/from16 v0, v30

    goto :goto_18

    :cond_32
    const/4 v0, 0x0

    :goto_18
    move/from16 v1, p1

    move v5, v0

    move/from16 v45, v4

    move/from16 v39, v6

    move/from16 v14, v16

    move/from16 v34, v18

    move/from16 v35, v19

    move/from16 v44, v22

    move/from16 v37, v23

    move/from16 v49, v25

    move/from16 v51, v49

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v46, v36

    move/from16 v41, v38

    move/from16 v40, v48

    move/from16 v47, v50

    const/16 v0, 0x18

    const/16 v17, 0x0

    move-object/from16 v4, p0

    move/from16 v38, v3

    move/from16 v36, v15

    move/from16 v48, v56

    move/from16 v50, v48

    goto/16 :goto_36

    :cond_33
    move/from16 v50, v14

    :cond_34
    move/from16 v14, v21

    move/from16 v21, v3

    move/from16 v3, v16

    :cond_35
    move/from16 v16, v6

    move/from16 v6, v39

    :cond_36
    move/from16 v39, v7

    move/from16 v5, v48

    :goto_19
    const/16 v7, 0x2d

    if-ne v5, v7, :cond_3c

    if-ne v10, v7, :cond_3c

    const/16 v7, 0x20

    if-eq v15, v7, :cond_37

    const/16 v7, 0x54

    if-ne v15, v7, :cond_3c

    :cond_37
    const/16 v7, 0x3a

    if-ne v13, v7, :cond_3c

    move/from16 v46, v9

    move/from16 v9, v22

    move/from16 v22, v12

    if-ne v9, v7, :cond_3b

    move/from16 v7, v36

    const/16 v12, 0x2e

    if-ne v7, v12, :cond_3d

    const/16 v12, 0x17

    if-eq v2, v12, :cond_39

    const/16 v12, 0x5b

    if-eq v6, v12, :cond_39

    const/16 v12, 0x7c

    if-eq v6, v12, :cond_38

    const/16 v12, 0x2b

    if-eq v6, v12, :cond_39

    const/16 v12, 0x2d

    if-eq v6, v12, :cond_39

    const/16 v12, 0x5a

    if-ne v6, v12, :cond_3d

    goto :goto_1a

    :cond_38
    move v5, v12

    goto :goto_1b

    :cond_39
    :goto_1a
    const/16 v5, 0x7c

    :goto_1b
    if-ne v6, v5, :cond_3a

    move/from16 v5, v30

    goto :goto_1c

    :cond_3a
    const/4 v5, 0x0

    :goto_1c
    move/from16 v49, v0

    move/from16 v47, v3

    move/from16 v17, v5

    move/from16 v37, v8

    move/from16 v45, v14

    move/from16 v44, v16

    move/from16 v40, v18

    move/from16 v41, v19

    move/from16 v14, v21

    move/from16 v35, v22

    move/from16 v13, v23

    move/from16 v51, v25

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v36, v39

    move/from16 v34, v46

    move/from16 v48, v50

    const/16 v0, 0x17

    const/4 v5, 0x0

    move/from16 v50, v1

    move/from16 v46, v4

    move/from16 v39, v11

    move-object/from16 v4, p0

    :goto_1d
    move/from16 v1, p1

    goto/16 :goto_36

    :cond_3b
    move/from16 v7, v36

    goto :goto_1e

    :cond_3c
    move/from16 v46, v9

    move/from16 v9, v22

    move/from16 v7, v36

    move/from16 v22, v12

    :cond_3d
    :goto_1e
    const/16 v12, 0x2d

    if-ne v5, v12, :cond_43

    if-ne v10, v12, :cond_43

    const/16 v12, 0x20

    if-eq v15, v12, :cond_3e

    const/16 v12, 0x54

    if-ne v15, v12, :cond_43

    :cond_3e
    const/16 v12, 0x3a

    if-ne v13, v12, :cond_43

    if-ne v9, v12, :cond_43

    const/16 v12, 0x2e

    if-ne v7, v12, :cond_43

    const/16 v12, 0x18

    move/from16 v36, v4

    if-eq v2, v12, :cond_3f

    move/from16 v12, v40

    const/16 v4, 0x5b

    if-eq v12, v4, :cond_40

    const/16 v4, 0x7c

    if-eq v12, v4, :cond_41

    const/16 v4, 0x2b

    if-eq v12, v4, :cond_40

    const/16 v4, 0x2d

    if-eq v12, v4, :cond_40

    const/16 v4, 0x5a

    if-ne v12, v4, :cond_44

    goto :goto_1f

    :cond_3f
    move/from16 v12, v40

    :cond_40
    :goto_1f
    const/16 v4, 0x7c

    :cond_41
    if-ne v12, v4, :cond_42

    move/from16 v4, v30

    goto :goto_20

    :cond_42
    const/4 v4, 0x0

    :goto_20
    const/4 v5, 0x0

    move/from16 v49, v0

    move/from16 v47, v3

    move/from16 v17, v4

    move/from16 v51, v6

    move/from16 v37, v8

    move/from16 v45, v14

    move/from16 v44, v16

    move/from16 v40, v18

    move/from16 v41, v19

    move/from16 v14, v21

    move/from16 v35, v22

    move/from16 v13, v23

    move/from16 v52, v25

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v34, v46

    move/from16 v48, v50

    const/16 v0, 0x18

    move-object/from16 v4, p0

    move/from16 v50, v1

    move/from16 v46, v36

    move/from16 v36, v39

    move/from16 v1, p1

    :goto_21
    move/from16 v39, v11

    goto/16 :goto_36

    :cond_43
    move/from16 v36, v4

    move/from16 v12, v40

    :cond_44
    const/16 v4, 0x2d

    if-ne v5, v4, :cond_4a

    if-ne v10, v4, :cond_4a

    const/16 v4, 0x20

    if-eq v15, v4, :cond_45

    const/16 v4, 0x54

    if-ne v15, v4, :cond_4a

    :cond_45
    const/16 v4, 0x3a

    if-ne v13, v4, :cond_4a

    if-ne v9, v4, :cond_4a

    const/16 v4, 0x2e

    if-ne v7, v4, :cond_4a

    const/16 v4, 0x19

    if-eq v2, v4, :cond_46

    move/from16 v4, v41

    move/from16 v41, v1

    const/16 v1, 0x5b

    if-eq v4, v1, :cond_47

    const/16 v1, 0x7c

    if-eq v4, v1, :cond_48

    const/16 v1, 0x2b

    if-eq v4, v1, :cond_47

    const/16 v1, 0x2d

    if-eq v4, v1, :cond_47

    const/16 v1, 0x5a

    if-ne v4, v1, :cond_4b

    goto :goto_22

    :cond_46
    move/from16 v4, v41

    move/from16 v41, v1

    :cond_47
    :goto_22
    const/16 v1, 0x7c

    :cond_48
    if-ne v4, v1, :cond_49

    move/from16 v1, v30

    goto :goto_23

    :cond_49
    const/4 v1, 0x0

    :goto_23
    const/4 v5, 0x0

    move-object/from16 v4, p0

    move/from16 v49, v0

    move/from16 v17, v1

    move/from16 v47, v3

    move/from16 v51, v6

    move/from16 v37, v8

    move/from16 v52, v12

    move/from16 v45, v14

    move/from16 v44, v16

    move/from16 v40, v18

    move/from16 v14, v21

    move/from16 v35, v22

    move/from16 v13, v23

    move/from16 v53, v25

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v34, v46

    move/from16 v48, v50

    const/16 v0, 0x19

    :goto_24
    move/from16 v1, p1

    :goto_25
    move/from16 v46, v36

    move/from16 v36, v39

    move/from16 v50, v41

    move/from16 v39, v11

    move/from16 v41, v19

    goto/16 :goto_36

    :cond_4a
    move/from16 v4, v41

    move/from16 v41, v1

    :cond_4b
    const/16 v1, 0x2d

    if-ne v5, v1, :cond_51

    if-ne v10, v1, :cond_51

    const/16 v1, 0x20

    if-eq v15, v1, :cond_4c

    const/16 v1, 0x54

    if-ne v15, v1, :cond_51

    :cond_4c
    const/16 v1, 0x3a

    if-ne v13, v1, :cond_51

    if-ne v9, v1, :cond_51

    const/16 v1, 0x2e

    if-ne v7, v1, :cond_51

    const/16 v1, 0x1a

    if-eq v2, v1, :cond_4d

    move/from16 v1, v42

    move/from16 v42, v4

    const/16 v4, 0x5b

    if-eq v1, v4, :cond_4e

    const/16 v4, 0x7c

    if-eq v1, v4, :cond_4f

    const/16 v4, 0x2b

    if-eq v1, v4, :cond_4e

    const/16 v4, 0x2d

    if-eq v1, v4, :cond_4e

    const/16 v4, 0x5a

    if-ne v1, v4, :cond_52

    goto :goto_26

    :cond_4d
    move/from16 v1, v42

    move/from16 v42, v4

    :cond_4e
    :goto_26
    const/16 v4, 0x7c

    :cond_4f
    if-ne v1, v4, :cond_50

    move/from16 v1, v30

    goto :goto_27

    :cond_50
    const/4 v1, 0x0

    :goto_27
    const/16 v4, 0x1a

    const/4 v5, 0x0

    move/from16 v49, v0

    move/from16 v17, v1

    move/from16 v47, v3

    move v0, v4

    move/from16 v51, v6

    move/from16 v37, v8

    move/from16 v52, v12

    move/from16 v45, v14

    move/from16 v44, v16

    move/from16 v40, v18

    move/from16 v14, v21

    move/from16 v35, v22

    move/from16 v13, v23

    move/from16 v54, v25

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v53, v42

    :goto_28
    move/from16 v34, v46

    move/from16 v48, v50

    move-object/from16 v4, p0

    goto :goto_24

    :cond_51
    move/from16 v1, v42

    move/from16 v42, v4

    :cond_52
    const/16 v4, 0x2d

    if-ne v5, v4, :cond_58

    if-ne v10, v4, :cond_58

    const/16 v4, 0x20

    if-eq v15, v4, :cond_53

    const/16 v4, 0x54

    if-ne v15, v4, :cond_58

    :cond_53
    const/16 v4, 0x3a

    if-ne v13, v4, :cond_58

    if-ne v9, v4, :cond_58

    const/16 v4, 0x2e

    if-ne v7, v4, :cond_58

    const/16 v4, 0x1b

    if-eq v2, v4, :cond_54

    move/from16 v4, v43

    move/from16 v43, v1

    const/16 v1, 0x5b

    if-eq v4, v1, :cond_55

    const/16 v1, 0x7c

    if-eq v4, v1, :cond_55

    const/16 v1, 0x2b

    if-eq v4, v1, :cond_55

    const/16 v1, 0x2d

    if-eq v4, v1, :cond_55

    const/16 v1, 0x5a

    if-ne v4, v1, :cond_59

    goto :goto_29

    :cond_54
    move/from16 v4, v43

    move/from16 v43, v1

    :cond_55
    :goto_29
    const/16 v1, 0x20

    if-ne v6, v1, :cond_56

    const/4 v5, 0x0

    move-object/from16 v4, p0

    move/from16 v1, p1

    move/from16 v49, v0

    move/from16 v47, v3

    move/from16 v37, v8

    move/from16 v45, v14

    move/from16 v44, v16

    move/from16 v40, v18

    move/from16 v14, v21

    move/from16 v35, v22

    move/from16 v13, v23

    move/from16 v51, v25

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v34, v46

    move/from16 v48, v50

    const/16 v0, 0x17

    const/16 v17, 0x0

    goto/16 :goto_25

    :cond_56
    const/16 v1, 0x7c

    if-ne v4, v1, :cond_57

    move/from16 v1, v30

    goto :goto_2a

    :cond_57
    const/4 v1, 0x0

    :goto_2a
    const/16 v4, 0x1b

    const/4 v5, 0x0

    move/from16 v49, v0

    move/from16 v17, v1

    move/from16 v47, v3

    move v0, v4

    move/from16 v51, v6

    move/from16 v37, v8

    move/from16 v52, v12

    move/from16 v45, v14

    move/from16 v44, v16

    move/from16 v40, v18

    move/from16 v14, v21

    move/from16 v35, v22

    move/from16 v13, v23

    move/from16 v55, v25

    move/from16 v56, v55

    move/from16 v53, v42

    move/from16 v54, v43

    goto/16 :goto_28

    :cond_58
    move/from16 v4, v43

    move/from16 v43, v1

    :cond_59
    const/16 v1, 0x2d

    if-ne v5, v1, :cond_5f

    if-ne v10, v1, :cond_5f

    const/16 v1, 0x20

    if-eq v15, v1, :cond_5a

    const/16 v1, 0x54

    if-ne v15, v1, :cond_5f

    :cond_5a
    const/16 v1, 0x3a

    if-ne v13, v1, :cond_5f

    if-ne v9, v1, :cond_5f

    const/16 v1, 0x2e

    if-ne v7, v1, :cond_5f

    const/16 v1, 0x1c

    if-eq v2, v1, :cond_5b

    move/from16 v1, v44

    move/from16 v44, v4

    const/16 v4, 0x5b

    if-eq v1, v4, :cond_5c

    const/16 v4, 0x7c

    if-eq v1, v4, :cond_5d

    const/16 v4, 0x2b

    if-eq v1, v4, :cond_5c

    const/16 v4, 0x2d

    if-eq v1, v4, :cond_5c

    const/16 v4, 0x5a

    if-ne v1, v4, :cond_60

    goto :goto_2b

    :cond_5b
    move/from16 v1, v44

    move/from16 v44, v4

    :cond_5c
    :goto_2b
    const/16 v4, 0x7c

    :cond_5d
    if-ne v1, v4, :cond_5e

    move/from16 v1, v30

    goto :goto_2c

    :cond_5e
    const/4 v1, 0x0

    :goto_2c
    const/4 v5, 0x0

    move-object/from16 v4, p0

    move/from16 v49, v0

    move/from16 v17, v1

    move/from16 v47, v3

    move/from16 v51, v6

    move/from16 v37, v8

    move/from16 v52, v12

    move/from16 v45, v14

    move/from16 v40, v18

    move/from16 v14, v21

    move/from16 v35, v22

    move/from16 v13, v23

    move/from16 v56, v25

    move/from16 v53, v42

    move/from16 v54, v43

    move/from16 v55, v44

    move/from16 v34, v46

    move/from16 v48, v50

    const/16 v0, 0x1c

    move/from16 v1, p1

    move/from16 v44, v16

    goto/16 :goto_25

    :cond_5f
    move/from16 v1, v44

    move/from16 v44, v4

    :cond_60
    const/16 v4, 0x1c

    if-ne v2, v4, :cond_63

    const/16 v4, 0x20

    if-ne v8, v4, :cond_63

    if-ne v10, v4, :cond_63

    if-ne v15, v4, :cond_63

    const/16 v4, 0x3a

    if-ne v13, v4, :cond_62

    if-ne v9, v4, :cond_62

    const/16 v4, 0x20

    if-ne v7, v4, :cond_63

    if-ne v6, v4, :cond_63

    move/from16 v4, v38

    .line 227
    invoke-static {v5, v4, v11}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v0

    if-lez v0, :cond_61

    .line 228
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 229
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v6, v0

    move v4, v1

    goto :goto_2d

    :cond_61
    move/from16 v4, v25

    move v6, v4

    .line 230
    :goto_2d
    new-instance v0, Ljava/lang/String;

    move/from16 v1, p1

    add-int/lit8 v5, v1, 0x14

    const/4 v7, 0x3

    move-object/from16 v8, p0

    invoke-direct {v0, v8, v5, v7}, Ljava/lang/String;-><init>([CII)V

    const/16 v5, 0x13

    move-object/from16 v32, v0

    move/from16 v47, v3

    move/from16 v38, v4

    move v0, v5

    move/from16 v39, v6

    move-object v4, v8

    move/from16 v34, v12

    move/from16 v45, v14

    move/from16 v40, v18

    move/from16 v41, v19

    move/from16 v14, v21

    move/from16 v13, v23

    move/from16 v48, v25

    move/from16 v49, v48

    move/from16 v50, v49

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v46, v36

    move/from16 v35, v42

    move/from16 v36, v43

    move/from16 v37, v44

    const/4 v5, 0x0

    const/16 v17, 0x0

    move/from16 v44, v16

    goto/16 :goto_36

    :cond_62
    move/from16 v24, v1

    move/from16 v49, v6

    move/from16 v1, p1

    move v6, v4

    move-object/from16 v4, p0

    goto :goto_2e

    :cond_63
    move-object/from16 v4, p0

    move/from16 v24, v1

    move/from16 v49, v6

    const/16 v6, 0x3a

    move/from16 v1, p1

    :goto_2e
    const/16 v6, 0x1c

    if-ne v2, v6, :cond_65

    const/16 v6, 0x2c

    if-ne v8, v6, :cond_65

    const/16 v6, 0x20

    if-ne v5, v6, :cond_65

    if-ne v11, v6, :cond_65

    if-ne v15, v6, :cond_65

    if-ne v14, v6, :cond_65

    const/16 v6, 0x3a

    if-ne v3, v6, :cond_65

    if-ne v0, v6, :cond_65

    const/16 v6, 0x20

    if-ne v12, v6, :cond_65

    move/from16 v6, v18

    move/from16 v3, v19

    .line 231
    invoke-static {v10, v6, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v0

    if-lez v0, :cond_64

    .line 232
    div-int/lit8 v3, v0, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 233
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v6, v0

    goto :goto_2f

    :cond_64
    move/from16 v3, v25

    move v6, v3

    :goto_2f
    move/from16 v39, v6

    move/from16 v44, v7

    move/from16 v37, v16

    move/from16 v35, v21

    move/from16 v34, v23

    move/from16 v40, v25

    move/from16 v48, v40

    move/from16 v51, v48

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v17, v30

    move/from16 v14, v36

    move/from16 v46, v41

    move/from16 v47, v49

    move/from16 v45, v50

    const/16 v0, 0x18

    const/4 v5, 0x0

    move/from16 v36, v13

    move/from16 v49, v56

    move/from16 v50, v49

    move/from16 v41, v38

    move/from16 v38, v3

    move v13, v9

    goto/16 :goto_36

    :cond_65
    move/from16 v6, v18

    move/from16 v18, v3

    move/from16 v3, v19

    move/from16 v19, v12

    const/16 v12, 0x1d

    if-ne v2, v12, :cond_69

    const/16 v12, 0x2c

    if-ne v8, v12, :cond_69

    const/16 v12, 0x20

    if-ne v5, v12, :cond_69

    if-ne v10, v12, :cond_69

    move/from16 v20, v8

    move/from16 v8, v23

    if-ne v8, v12, :cond_68

    if-ne v9, v12, :cond_68

    const/16 v12, 0x3a

    if-ne v7, v12, :cond_68

    move/from16 v23, v0

    move/from16 v0, v41

    move/from16 v41, v14

    if-ne v0, v12, :cond_67

    move/from16 v12, v42

    const/16 v14, 0x20

    if-ne v12, v14, :cond_6a

    .line 234
    invoke-static {v6, v3, v15}, Lcom/alibaba/fastjson2/util/DateUtils;->month(CCC)I

    move-result v0

    if-lez v0, :cond_66

    .line 235
    div-int/lit8 v3, v0, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 236
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    move v6, v0

    goto :goto_30

    :cond_66
    move/from16 v3, v25

    move v6, v3

    :goto_30
    move/from16 v39, v6

    move/from16 v35, v13

    move/from16 v14, v18

    move/from16 v47, v19

    move/from16 v34, v21

    move/from16 v45, v23

    move/from16 v48, v25

    move/from16 v51, v48

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v17, v30

    move/from16 v13, v36

    move/from16 v40, v38

    move/from16 v37, v41

    move/from16 v46, v49

    move/from16 v44, v50

    const/16 v0, 0x19

    const/4 v5, 0x0

    move/from16 v38, v3

    move/from16 v41, v11

    move/from16 v36, v16

    move/from16 v49, v56

    move/from16 v50, v49

    goto/16 :goto_36

    :cond_67
    move/from16 v12, v42

    goto :goto_32

    :cond_68
    move/from16 v23, v0

    move/from16 v0, v41

    move/from16 v12, v42

    goto :goto_31

    :cond_69
    move/from16 v20, v8

    move/from16 v8, v23

    move/from16 v12, v42

    move/from16 v23, v0

    move/from16 v0, v41

    :goto_31
    move/from16 v41, v14

    :cond_6a
    :goto_32
    const/16 v14, 0x2d

    if-ne v5, v14, :cond_70

    if-ne v10, v14, :cond_70

    const/16 v14, 0x20

    if-eq v15, v14, :cond_6b

    const/16 v14, 0x54

    if-ne v15, v14, :cond_70

    :cond_6b
    const/16 v14, 0x3a

    if-ne v13, v14, :cond_70

    if-ne v9, v14, :cond_70

    const/16 v14, 0x2e

    if-ne v7, v14, :cond_70

    const/16 v14, 0x1d

    if-eq v2, v14, :cond_6c

    move/from16 v48, v5

    move/from16 v14, v45

    const/16 v5, 0x5b

    if-eq v14, v5, :cond_6d

    const/16 v5, 0x7c

    if-eq v14, v5, :cond_6e

    const/16 v5, 0x2b

    if-eq v14, v5, :cond_6d

    const/16 v5, 0x2d

    if-eq v14, v5, :cond_6d

    const/16 v5, 0x5a

    if-ne v14, v5, :cond_71

    goto :goto_33

    :cond_6c
    move/from16 v14, v45

    :cond_6d
    :goto_33
    const/16 v5, 0x7c

    :cond_6e
    if-ne v14, v5, :cond_6f

    move/from16 v5, v30

    goto :goto_34

    :cond_6f
    const/4 v5, 0x0

    :goto_34
    const/16 v7, 0x1d

    move/from16 v17, v5

    move/from16 v40, v6

    move v13, v8

    move/from16 v53, v12

    move/from16 v47, v18

    move/from16 v52, v19

    move/from16 v37, v20

    move/from16 v14, v21

    move/from16 v35, v22

    move/from16 v56, v24

    move/from16 v45, v41

    move/from16 v54, v43

    move/from16 v55, v44

    move/from16 v34, v46

    move/from16 v51, v49

    move/from16 v48, v50

    const/4 v5, 0x0

    move/from16 v50, v0

    move/from16 v41, v3

    move v0, v7

    move/from16 v44, v16

    move/from16 v49, v23

    move/from16 v46, v36

    move/from16 v36, v39

    goto/16 :goto_21

    :cond_70
    move/from16 v48, v5

    :cond_71
    const/16 v5, 0x16

    if-ne v2, v5, :cond_80

    move/from16 v5, v36

    const/16 v14, 0x2b

    if-eq v5, v14, :cond_73

    const/16 v14, 0x2d

    if-ne v5, v14, :cond_72

    goto :goto_35

    :cond_72
    move/from16 v36, v5

    goto/16 :goto_3e

    :cond_73
    :goto_35
    const/16 v0, 0x11

    move v14, v3

    move/from16 v45, v8

    move/from16 v50, v9

    move/from16 v40, v11

    move/from16 v47, v13

    move/from16 v44, v15

    move/from16 v37, v20

    move/from16 v35, v22

    move/from16 v51, v25

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v36, v39

    move/from16 v49, v41

    move/from16 v34, v46

    const/4 v5, 0x0

    const/16 v17, 0x0

    move v13, v6

    move/from16 v41, v10

    move/from16 v46, v21

    move/from16 v39, v38

    move/from16 v38, v48

    move/from16 v48, v16

    :goto_36
    if-eqz v5, :cond_74

    .line 237
    invoke-static {v13, v14}, Lcom/alibaba/fastjson2/util/DateUtils;->hourAfterNoon(CC)I

    move-result v3

    shr-int/lit8 v5, v3, 0x10

    int-to-char v5, v5

    int-to-short v3, v3

    int-to-char v3, v3

    move/from16 v43, v3

    move/from16 v42, v5

    goto :goto_37

    :cond_74
    move/from16 v42, v13

    move/from16 v43, v14

    .line 238
    :goto_37
    invoke-static/range {v34 .. v56}, Lcom/alibaba/fastjson2/util/DateUtils;->localDateTime(CCCCCCCCCCCCCCCCCCCCCCC)Ljava/time/LocalDateTime;

    move-result-object v3

    if-nez v3, :cond_75

    const/4 v0, 0x0

    return-object v0

    :cond_75
    if-eqz v17, :cond_77

    .line 239
    new-instance v1, Ljava/lang/String;

    sub-int/2addr v2, v0

    invoke-direct {v1, v4, v0, v2}, Ljava/lang/String;-><init>([CII)V

    const-string v0, "UTC"

    .line 240
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    const-string v0, "[UTC]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    .line 241
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v0

    goto :goto_38

    .line 243
    :cond_76
    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    goto :goto_38

    :cond_77
    if-ne v0, v2, :cond_78

    move-object/from16 v0, p3

    move-object v1, v0

    goto :goto_3c

    :cond_78
    add-int/2addr v1, v0

    .line 244
    aget-char v5, v4, v1

    const/16 v6, 0x5a

    if-ne v5, v6, :cond_79

    .line 245
    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    :goto_38
    move-object v1, v0

    move-object/from16 v0, p3

    goto :goto_3c

    :cond_79
    if-nez v32, :cond_7d

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_7c

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_7a

    goto :goto_39

    :cond_7a
    const/16 v6, 0x20

    if-ne v5, v6, :cond_7b

    .line 246
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v5, v4, v1, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3a

    :cond_7b
    if-ge v0, v2, :cond_7d

    .line 247
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, -0x2

    invoke-direct {v5, v4, v1, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3a

    .line 248
    :cond_7c
    :goto_39
    new-instance v5, Ljava/lang/String;

    sub-int v0, v2, v0

    invoke-direct {v5, v4, v1, v0}, Ljava/lang/String;-><init>([CII)V

    :goto_3a
    move-object/from16 v0, p3

    goto :goto_3b

    :cond_7d
    move-object/from16 v0, p3

    move-object/from16 v5, v32

    .line 249
    :goto_3b
    invoke-static {v5, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->getZoneId(Ljava/lang/String;Ljava/time/ZoneId;)Ljava/time/ZoneId;

    move-result-object v1

    :goto_3c
    if-nez v1, :cond_7e

    goto :goto_3d

    :cond_7e
    move-object v0, v1

    :goto_3d
    if-nez v0, :cond_7f

    .line 250
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    :cond_7f
    const/4 v1, 0x0

    .line 251
    invoke-static {v3, v0, v1}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_80
    :goto_3e
    move/from16 v14, v21

    const/16 v5, 0x20

    move/from16 v18, v13

    if-ne v2, v5, :cond_81

    const/16 v13, 0x2c

    if-ne v11, v13, :cond_81

    if-ne v10, v5, :cond_81

    const/16 v11, 0x2d

    if-ne v15, v11, :cond_81

    move/from16 v13, v16

    if-ne v13, v11, :cond_81

    if-ne v7, v5, :cond_81

    const/16 v7, 0x3a

    if-ne v0, v7, :cond_81

    if-ne v12, v7, :cond_81

    add-int/lit8 v7, v1, 0x1c

    .line 252
    aget-char v7, v4, v7

    if-eq v7, v5, :cond_84

    :cond_81
    const/16 v5, 0x21

    if-ne v2, v5, :cond_82

    const/16 v5, 0x2c

    if-ne v10, v5, :cond_82

    const/16 v5, 0x20

    if-ne v6, v5, :cond_82

    const/16 v7, 0x2d

    if-ne v8, v7, :cond_82

    move/from16 v8, v41

    if-ne v8, v7, :cond_82

    move/from16 v7, v50

    if-ne v7, v5, :cond_82

    move/from16 v7, v49

    const/16 v8, 0x3a

    if-ne v7, v8, :cond_82

    move/from16 v7, v43

    if-ne v7, v8, :cond_82

    add-int/lit8 v7, v1, 0x1d

    aget-char v7, v4, v7

    if-eq v7, v5, :cond_84

    :cond_82
    const/16 v5, 0x22

    if-ne v2, v5, :cond_83

    const/16 v5, 0x2c

    if-ne v6, v5, :cond_83

    const/16 v5, 0x20

    if-ne v3, v5, :cond_83

    const/16 v6, 0x2d

    if-ne v14, v6, :cond_83

    if-ne v9, v6, :cond_83

    move/from16 v6, v23

    if-ne v6, v5, :cond_83

    move/from16 v6, v19

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_83

    move/from16 v6, v44

    if-ne v6, v7, :cond_83

    add-int/lit8 v6, v1, 0x1e

    aget-char v6, v4, v6

    if-eq v6, v5, :cond_84

    :cond_83
    const/16 v5, 0x23

    if-ne v2, v5, :cond_85

    const/16 v5, 0x2c

    if-ne v3, v5, :cond_85

    const/16 v3, 0x20

    if-ne v15, v3, :cond_85

    move/from16 v5, v18

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_85

    move/from16 v5, v36

    if-ne v5, v6, :cond_85

    if-ne v0, v3, :cond_85

    const/16 v0, 0x3a

    if-ne v12, v0, :cond_85

    move/from16 v5, v24

    if-ne v5, v0, :cond_85

    add-int/lit8 v0, v1, 0x1f

    aget-char v0, v4, v0

    if-ne v0, v3, :cond_85

    .line 253
    :cond_84
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/DateUtils;->f(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_85
    const/16 v0, 0x22

    if-ne v2, v0, :cond_87

    .line 254
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->a:Ljava/time/format/DateTimeFormatter;

    if-nez v0, :cond_86

    const-string v0, "EEE MMM dd HH:mm:ss O yyyy"

    .line 255
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, v3}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->a:Ljava/time/format/DateTimeFormatter;

    .line 256
    :cond_86
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v3, v0}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_87
    const/16 v0, 0x1f

    if-ne v2, v0, :cond_89

    move/from16 v0, v20

    const/16 v3, 0x2c

    if-ne v0, v3, :cond_89

    .line 257
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->d:Ljava/time/format/DateTimeFormatter;

    if-nez v0, :cond_88

    const-string v0, "EEE, dd MMM yyyy HH:mm:ss Z"

    .line 258
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, v3}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->d:Ljava/time/format/DateTimeFormatter;

    .line 259
    :cond_88
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v3, v0}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_89
    const/4 v0, 0x0

    return-object v0

    :cond_8a
    move-object v4, v0

    .line 260
    new-instance v0, Ljava/lang/String;

    array-length v2, v4

    sub-int/2addr v2, v1

    invoke-direct {v0, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 261
    new-instance v1, Ljava/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_9
        :pswitch_9
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

.method public static readNanos([BII)I
    .locals 4

    const v0, 0x186a0

    const v1, 0xf4240

    const v2, 0x989680

    const v3, 0x5f5e100

    packed-switch p1, :pswitch_data_0

    .line 10
    aget-byte p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p0, v3

    add-int/lit8 v3, v3, -0x30

    mul-int/2addr v3, v2

    add-int/2addr p1, v3

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p0, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p0, v1

    add-int/lit8 v1, v1, -0x30

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x2710

    add-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x5

    aget-byte v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x6

    aget-byte v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x7

    aget-byte v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr p1, v0

    add-int/lit8 p2, p2, 0x8

    aget-byte p0, p0, p2

    add-int/2addr p1, p0

    add-int/lit8 p1, p1, -0x30

    return p1

    .line 11
    :pswitch_0
    aget-byte p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p0, v3

    add-int/lit8 v3, v3, -0x30

    mul-int/2addr v3, v2

    add-int/2addr p1, v3

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p0, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p0, v1

    add-int/lit8 v1, v1, -0x30

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x2710

    add-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x5

    aget-byte v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x6

    aget-byte v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr p1, v0

    add-int/lit8 p2, p2, 0x7

    aget-byte p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/lit8 p0, p0, 0xa

    add-int/2addr p1, p0

    return p1

    .line 12
    :pswitch_1
    aget-byte p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p0, v3

    add-int/lit8 v3, v3, -0x30

    mul-int/2addr v3, v2

    add-int/2addr p1, v3

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p0, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p0, v1

    add-int/lit8 v1, v1, -0x30

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x2710

    add-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x5

    aget-byte v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr p1, v0

    add-int/lit8 p2, p2, 0x6

    aget-byte p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/lit8 p0, p0, 0x64

    add-int/2addr p1, p0

    return p1

    .line 13
    :pswitch_2
    aget-byte p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p0, v3

    add-int/lit8 v3, v3, -0x30

    mul-int/2addr v3, v2

    add-int/2addr p1, v3

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p0, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p0, v1

    add-int/lit8 v1, v1, -0x30

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x2710

    add-int/2addr p1, v0

    add-int/lit8 p2, p2, 0x5

    aget-byte p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/lit16 p0, p0, 0x3e8

    add-int/2addr p1, p0

    return p1

    .line 14
    :pswitch_3
    aget-byte p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p0, v3

    add-int/lit8 v3, v3, -0x30

    mul-int/2addr v3, v2

    add-int/2addr p1, v3

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p0, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p0, v1

    add-int/lit8 v1, v1, -0x30

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    add-int/lit8 p2, p2, 0x4

    aget-byte p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/lit16 p0, p0, 0x2710

    add-int/2addr p1, p0

    return p1

    .line 15
    :pswitch_4
    aget-byte p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p0, v3

    add-int/lit8 v3, v3, -0x30

    mul-int/2addr v3, v2

    add-int/2addr p1, v3

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p0, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    add-int/lit8 p2, p2, 0x3

    aget-byte p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/2addr p0, v0

    add-int/2addr p1, p0

    return p1

    .line 16
    :pswitch_5
    aget-byte p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/2addr v0, v2

    add-int/2addr p1, v0

    add-int/lit8 p2, p2, 0x2

    aget-byte p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/2addr p0, v1

    add-int/2addr p1, p0

    return p1

    .line 17
    :pswitch_6
    aget-byte p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 p2, p2, 0x1

    aget-byte p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/2addr p0, v2

    add-int/2addr p1, p0

    return p1

    .line 18
    :pswitch_7
    aget-byte p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/2addr p0, v3

    return p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static readNanos([CII)I
    .locals 4

    const v0, 0x186a0

    const v1, 0xf4240

    const v2, 0x989680

    const v3, 0x5f5e100

    packed-switch p1, :pswitch_data_0

    .line 1
    aget-char p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v3, p2, 0x1

    aget-char v3, p0, v3

    add-int/lit8 v3, v3, -0x30

    mul-int/2addr v3, v2

    add-int/2addr p1, v3

    add-int/lit8 v2, p2, 0x2

    aget-char v2, p0, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    add-int/lit8 v1, p2, 0x3

    aget-char v1, p0, v1

    add-int/lit8 v1, v1, -0x30

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    add-int/lit8 v0, p2, 0x4

    aget-char v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x2710

    add-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x5

    aget-char v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x6

    aget-char v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x7

    aget-char v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr p1, v0

    add-int/lit8 p2, p2, 0x8

    aget-char p0, p0, p2

    add-int/2addr p1, p0

    add-int/lit8 p1, p1, -0x30

    return p1

    .line 2
    :pswitch_0
    aget-char p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v3, p2, 0x1

    aget-char v3, p0, v3

    add-int/lit8 v3, v3, -0x30

    mul-int/2addr v3, v2

    add-int/2addr p1, v3

    add-int/lit8 v2, p2, 0x2

    aget-char v2, p0, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    add-int/lit8 v1, p2, 0x3

    aget-char v1, p0, v1

    add-int/lit8 v1, v1, -0x30

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    add-int/lit8 v0, p2, 0x4

    aget-char v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x2710

    add-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x5

    aget-char v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x6

    aget-char v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr p1, v0

    add-int/lit8 p2, p2, 0x7

    aget-char p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/lit8 p0, p0, 0xa

    add-int/2addr p1, p0

    return p1

    .line 3
    :pswitch_1
    aget-char p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v3, p2, 0x1

    aget-char v3, p0, v3

    add-int/lit8 v3, v3, -0x30

    mul-int/2addr v3, v2

    add-int/2addr p1, v3

    add-int/lit8 v2, p2, 0x2

    aget-char v2, p0, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    add-int/lit8 v1, p2, 0x3

    aget-char v1, p0, v1

    add-int/lit8 v1, v1, -0x30

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    add-int/lit8 v0, p2, 0x4

    aget-char v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x2710

    add-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x5

    aget-char v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr p1, v0

    add-int/lit8 p2, p2, 0x6

    aget-char p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/lit8 p0, p0, 0x64

    add-int/2addr p1, p0

    return p1

    .line 4
    :pswitch_2
    aget-char p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v3, p2, 0x1

    aget-char v3, p0, v3

    add-int/lit8 v3, v3, -0x30

    mul-int/2addr v3, v2

    add-int/2addr p1, v3

    add-int/lit8 v2, p2, 0x2

    aget-char v2, p0, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    add-int/lit8 v1, p2, 0x3

    aget-char v1, p0, v1

    add-int/lit8 v1, v1, -0x30

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    add-int/lit8 v0, p2, 0x4

    aget-char v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x2710

    add-int/2addr p1, v0

    add-int/lit8 p2, p2, 0x5

    aget-char p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/lit16 p0, p0, 0x3e8

    add-int/2addr p1, p0

    return p1

    .line 5
    :pswitch_3
    aget-char p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v3, p2, 0x1

    aget-char v3, p0, v3

    add-int/lit8 v3, v3, -0x30

    mul-int/2addr v3, v2

    add-int/2addr p1, v3

    add-int/lit8 v2, p2, 0x2

    aget-char v2, p0, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    add-int/lit8 v1, p2, 0x3

    aget-char v1, p0, v1

    add-int/lit8 v1, v1, -0x30

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    add-int/lit8 p2, p2, 0x4

    aget-char p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/lit16 p0, p0, 0x2710

    add-int/2addr p1, p0

    return p1

    .line 6
    :pswitch_4
    aget-char p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v3, p2, 0x1

    aget-char v3, p0, v3

    add-int/lit8 v3, v3, -0x30

    mul-int/2addr v3, v2

    add-int/2addr p1, v3

    add-int/lit8 v2, p2, 0x2

    aget-char v2, p0, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    add-int/lit8 p2, p2, 0x3

    aget-char p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/2addr p0, v0

    add-int/2addr p1, p0

    return p1

    .line 7
    :pswitch_5
    aget-char p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 v0, p2, 0x1

    aget-char v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    mul-int/2addr v0, v2

    add-int/2addr p1, v0

    add-int/lit8 p2, p2, 0x2

    aget-char p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/2addr p0, v1

    add-int/2addr p1, p0

    return p1

    .line 8
    :pswitch_6
    aget-char p1, p0, p2

    add-int/lit8 p1, p1, -0x30

    mul-int/2addr p1, v3

    add-int/lit8 p2, p2, 0x1

    aget-char p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/2addr p0, v2

    add-int/2addr p1, p0

    return p1

    .line 9
    :pswitch_7
    aget-char p0, p0, p2

    add-int/lit8 p0, p0, -0x30

    mul-int/2addr p0, v3

    return p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static toString(JZLjava/time/ZoneId;)Ljava/lang/String;
    .locals 29

    move-wide/from16 v0, p0

    const-wide/16 v2, 0x3e8

    .line 2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v4

    .line 3
    sget-object v6, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_ID:Ljava/time/ZoneId;

    move-object/from16 v7, p3

    if-eq v7, v6, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v6

    sget-object v8, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_RULES:Ljava/time/zone/ZoneRules;

    if-ne v6, v8, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static/range {p0 .. p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v6

    .line 5
    invoke-virtual/range {p3 .. p3}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-static {v4, v5}, Lcom/alibaba/fastjson2/util/DateUtils;->getShanghaiZoneOffsetTotalSeconds(J)I

    move-result v6

    :goto_1
    int-to-long v7, v6

    add-long/2addr v4, v7

    const-wide/32 v7, 0x15180

    .line 7
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v9

    .line 8
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    const-wide/32 v7, 0xafaa8

    add-long/2addr v9, v7

    const-wide/16 v7, 0x3c

    sub-long/2addr v9, v7

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    const-wide/16 v13, 0x1

    const-wide/32 v15, 0x23ab1

    const-wide/16 v17, 0x190

    if-gez v5, :cond_2

    add-long v19, v9, v13

    .line 9
    div-long v19, v19, v15

    sub-long v2, v19, v13

    mul-long v19, v2, v17

    neg-long v2, v2

    mul-long/2addr v2, v15

    add-long/2addr v9, v2

    goto :goto_2

    :cond_2
    move-wide/from16 v19, v11

    :goto_2
    mul-long v2, v9, v17

    const-wide/16 v21, 0x24f

    add-long v2, v2, v21

    .line 10
    div-long/2addr v2, v15

    const-wide/16 v15, 0x16d

    mul-long v21, v2, v15

    const-wide/16 v23, 0x4

    .line 11
    div-long v25, v2, v23

    add-long v21, v21, v25

    const-wide/16 v25, 0x64

    div-long v27, v2, v25

    sub-long v21, v21, v27

    div-long v27, v2, v17

    add-long v21, v21, v27

    sub-long v21, v9, v21

    cmp-long v5, v21, v11

    if-gez v5, :cond_3

    sub-long/2addr v2, v13

    mul-long/2addr v15, v2

    .line 12
    div-long v13, v2, v23

    add-long/2addr v15, v13

    div-long v13, v2, v25

    sub-long/2addr v15, v13

    div-long v13, v2, v17

    add-long/2addr v15, v13

    sub-long v21, v9, v15

    :cond_3
    move-wide/from16 v9, v21

    add-long v2, v2, v19

    long-to-int v5, v9

    mul-int/lit8 v9, v5, 0x5

    const/4 v10, 0x2

    add-int/2addr v9, v10

    .line 13
    div-int/lit16 v9, v9, 0x99

    add-int/lit8 v13, v9, 0x2

    .line 14
    rem-int/lit8 v13, v13, 0xc

    const/4 v14, 0x1

    add-int/2addr v13, v14

    mul-int/lit16 v15, v9, 0x132

    add-int/lit8 v15, v15, 0x5

    const/16 v10, 0xa

    .line 15
    div-int/2addr v15, v10

    sub-int/2addr v5, v15

    add-int/2addr v5, v14

    .line 16
    div-int/2addr v9, v10

    int-to-long v14, v9

    add-long/2addr v2, v14

    const-wide/32 v14, -0x3b9ac9ff

    cmp-long v9, v2, v14

    if-ltz v9, :cond_14

    const-wide/32 v14, 0x3b9ac9ff

    cmp-long v9, v2, v14

    if-gtz v9, :cond_14

    long-to-int v2, v2

    int-to-long v3, v4

    cmp-long v9, v3, v11

    if-ltz v9, :cond_13

    const-wide/32 v11, 0x1517f

    cmp-long v9, v3, v11

    if-gtz v9, :cond_13

    const-wide/16 v11, 0xe10

    .line 17
    div-long v11, v3, v11

    long-to-int v9, v11

    mul-int/lit16 v11, v9, 0xe10

    int-to-long v11, v11

    sub-long/2addr v3, v11

    .line 18
    div-long v7, v3, v7

    long-to-int v7, v7

    mul-int/lit8 v8, v7, 0x3c

    int-to-long v11, v8

    sub-long/2addr v3, v11

    long-to-int v3, v3

    const-wide/16 v11, 0x3e8

    .line 19
    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x4

    const/4 v4, 0x0

    if-nez v0, :cond_4

    move v8, v4

    goto :goto_3

    :cond_4
    if-ge v0, v10, :cond_6

    :cond_5
    move v8, v1

    goto :goto_3

    .line 20
    :cond_6
    rem-int/lit8 v8, v0, 0x64

    if-nez v8, :cond_7

    const/4 v8, 0x2

    goto :goto_3

    .line 21
    :cond_7
    rem-int/lit8 v8, v0, 0xa

    if-nez v8, :cond_5

    const/4 v8, 0x3

    :goto_3
    if-eqz p2, :cond_9

    if-nez v6, :cond_8

    const/4 v14, 0x1

    goto :goto_4

    :cond_8
    const/4 v14, 0x6

    goto :goto_4

    :cond_9
    move v14, v4

    :goto_4
    add-int/lit8 v11, v8, 0x13

    add-int/2addr v14, v11

    .line 22
    new-array v12, v14, [B

    .line 23
    invoke-static {v12, v4, v2, v13, v5}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([BIIII)I

    const/16 v2, 0x20

    .line 24
    aput-byte v2, v12, v10

    const/16 v2, 0xb

    .line 25
    invoke-static {v12, v2, v9, v7, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([BIIII)V

    const/16 v2, 0x30

    if-lez v8, :cond_e

    const/16 v3, 0x2e

    const/16 v5, 0x13

    .line 26
    aput-byte v3, v12, v5

    const/16 v3, 0x14

    :goto_5
    if-ge v3, v14, :cond_a

    .line 27
    aput-byte v2, v12, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    if-ge v0, v10, :cond_b

    .line 28
    invoke-static {v0, v11, v12}, Lcom/alibaba/fastjson2/util/IOUtils;->getChars(II[B)V

    goto :goto_6

    .line 29
    :cond_b
    rem-int/lit8 v3, v0, 0x64

    if-nez v3, :cond_c

    .line 30
    div-int/lit8 v0, v0, 0x64

    invoke-static {v0, v11, v12}, Lcom/alibaba/fastjson2/util/IOUtils;->getChars(II[B)V

    goto :goto_6

    .line 31
    :cond_c
    rem-int/lit8 v3, v0, 0xa

    if-nez v3, :cond_d

    .line 32
    div-int/2addr v0, v10

    invoke-static {v0, v11, v12}, Lcom/alibaba/fastjson2/util/IOUtils;->getChars(II[B)V

    goto :goto_6

    .line 33
    :cond_d
    invoke-static {v0, v11, v12}, Lcom/alibaba/fastjson2/util/IOUtils;->getChars(II[B)V

    :cond_e
    :goto_6
    if-eqz p2, :cond_12

    .line 34
    div-int/lit16 v0, v6, 0xe10

    if-nez v6, :cond_f

    const/16 v0, 0x5a

    .line 35
    aput-byte v0, v12, v11

    goto :goto_8

    .line 36
    :cond_f
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ltz v0, :cond_10

    const/16 v5, 0x2b

    .line 37
    aput-byte v5, v12, v11

    goto :goto_7

    :cond_10
    const/16 v5, 0x2d

    .line 38
    aput-byte v5, v12, v11

    :goto_7
    add-int/lit8 v5, v11, 0x1

    .line 39
    aput-byte v2, v12, v5

    add-int/lit8 v5, v11, 0x3

    .line 40
    invoke-static {v3, v5, v12}, Lcom/alibaba/fastjson2/util/IOUtils;->getChars(II[B)V

    const/16 v3, 0x3a

    .line 41
    aput-byte v3, v12, v5

    add-int/2addr v11, v1

    .line 42
    aput-byte v2, v12, v11

    mul-int/lit16 v0, v0, 0xe10

    sub-int/2addr v6, v0

    .line 43
    div-int/lit8 v6, v6, 0x3c

    if-gez v6, :cond_11

    neg-int v6, v6

    .line 44
    :cond_11
    invoke-static {v6, v14, v12}, Lcom/alibaba/fastjson2/util/IOUtils;->getChars(II[B)V

    .line 45
    :cond_12
    :goto_8
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v12, v4, v14, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    .line 46
    :cond_13
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid secondOfDay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_14
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid year "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toString(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const/4 p0, 0x0

    sget-object v2, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {v0, v1, p0, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->toString(JZLjava/time/ZoneId;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static utcSeconds(IIIIII)J
    .locals 4

    mul-int/lit16 v0, p0, 0x16d

    add-int/lit8 v1, p0, 0x3

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, p0, 0x63

    div-int/lit8 v2, v2, 0x64

    sub-int/2addr v1, v2

    add-int/lit16 v2, p0, 0x18f

    div-int/lit16 v2, v2, 0x190

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit16 v1, p1, 0x16f

    add-int/lit16 v1, v1, -0x16a

    div-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    add-int/2addr v0, p2

    int-to-long v2, v0

    const/4 p2, 0x2

    if-le p1, p2, :cond_2

    const-wide/16 p1, 0x1

    sub-long/2addr v2, p1

    and-int/lit8 v0, p0, 0x3

    if-nez v0, :cond_0

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_1

    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    sub-long/2addr v2, p1

    :cond_2
    const-wide/32 p0, 0xafaa8

    sub-long/2addr v2, p0

    const-wide/32 p0, 0x15180

    mul-long/2addr v2, p0

    mul-int/lit16 p3, p3, 0xe10

    int-to-long p0, p3

    add-long/2addr v2, p0

    mul-int/lit8 p4, p4, 0x3c

    int-to-long p0, p4

    add-long/2addr v2, p0

    int-to-long p0, p5

    add-long/2addr v2, p0

    return-wide v2
.end method
