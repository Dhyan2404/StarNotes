.class public final Lcom/sunia/HTREnginev2/lck;
.super Lcom/alibaba/fastjson2/codec/DateTimeCodec;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/writer/ObjectWriter;


# static fields
.field public static final b:Lcom/sunia/HTREnginev2/lck;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/lck;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/sunia/HTREnginev2/lck;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sunia/HTREnginev2/lck;->b:Lcom/sunia/HTREnginev2/lck;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson2/codec/DateTimeCodec;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez p2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    :cond_0
    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-object v3, v0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getDateFormat()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object/from16 v4, p2

    check-cast v4, Ljava/time/Instant;

    if-nez v3, :cond_2

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson2/JSONWriter;->writeInstant(Ljava/time/Instant;)V

    return-void

    :cond_2
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->yyyyMMddhhmmss19:Z

    const/4 v5, 0x1

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isFormatyyyyMMddhhmmss19()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v3, v5

    :goto_2
    iget-boolean v6, v0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->yyyyMMddhhmmss14:Z

    if-nez v6, :cond_e

    if-nez v3, :cond_e

    iget-boolean v6, v0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->yyyyMMdd8:Z

    if-nez v6, :cond_e

    iget-boolean v6, v0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->yyyyMMdd10:Z

    if-eqz v6, :cond_5

    goto/16 :goto_6

    :cond_5
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    iget-boolean v4, v0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatUnixTime:Z

    if-nez v4, :cond_d

    iget-object v4, v0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    if-nez v4, :cond_6

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatUnixTime()Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_5

    :cond_6
    iget-boolean v4, v0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatMillis:Z

    if-nez v4, :cond_c

    iget-object v4, v0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    if-nez v4, :cond_7

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatMillis()Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->getYear()I

    move-result v4

    if-ltz v4, :cond_9

    const/16 v5, 0x270f

    if-gt v4, v5, :cond_9

    iget-boolean v5, v0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatISO8601:Z

    if-nez v5, :cond_8

    iget-object v5, v0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    if-nez v5, :cond_9

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatISO8601()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->getMonthValue()I

    move-result v2

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v5

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->getHour()I

    move-result v6

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->getMinute()I

    move-result v7

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->getSecond()I

    move-result v8

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->getNano()I

    move-result v0

    const v9, 0xf4240

    div-int v9, v0, v9

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v10

    const/4 v11, 0x1

    move-object/from16 v0, p1

    move v1, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTimeISO8601(IIIIIIIIZ)V

    return-void

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->getDateFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getDateFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    :cond_a
    if-nez v0, :cond_b

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeZonedDateTime(Ljava/time/ZonedDateTime;)V

    goto :goto_3

    :cond_b
    invoke-virtual {v0, v3}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_c
    :goto_4
    invoke-interface {v3}, Ljava/time/chrono/ChronoZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void

    :cond_d
    :goto_5
    invoke-interface {v3}, Ljava/time/chrono/ChronoZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void

    :cond_e
    :goto_6
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v4}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v6

    sget-object v8, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_ID:Ljava/time/ZoneId;

    if-eq v2, v8, :cond_10

    invoke-virtual {v2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_RULES:Ljava/time/zone/ZoneRules;

    if-ne v8, v9, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {v2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    goto :goto_8

    :cond_10
    :goto_7
    invoke-static {v6, v7}, Lcom/alibaba/fastjson2/util/DateUtils;->getShanghaiZoneOffsetTotalSeconds(J)I

    move-result v2

    :goto_8
    int-to-long v8, v2

    add-long/2addr v6, v8

    const-wide/32 v8, 0x15180

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v6

    long-to-int v2, v6

    const-wide/32 v6, 0xafaa8

    add-long/2addr v10, v6

    const-wide/16 v6, 0x3c

    sub-long/2addr v10, v6

    const-wide/16 v8, 0x0

    cmp-long v4, v10, v8

    const-wide/16 v12, 0x1

    const-wide/32 v14, 0x23ab1

    const-wide/16 v16, 0x190

    if-gez v4, :cond_11

    add-long v18, v10, v12

    div-long v18, v18, v14

    sub-long v6, v18, v12

    mul-long v18, v6, v16

    neg-long v6, v6

    mul-long/2addr v6, v14

    add-long/2addr v10, v6

    goto :goto_9

    :cond_11
    move-wide/from16 v18, v8

    :goto_9
    mul-long v6, v10, v16

    const-wide/16 v20, 0x24f

    add-long v6, v6, v20

    div-long/2addr v6, v14

    const-wide/16 v14, 0x16d

    mul-long v20, v6, v14

    const-wide/16 v22, 0x4

    div-long v24, v6, v22

    add-long v20, v20, v24

    const-wide/16 v24, 0x64

    div-long v26, v6, v24

    sub-long v20, v20, v26

    div-long v26, v6, v16

    add-long v20, v20, v26

    sub-long v20, v10, v20

    cmp-long v4, v20, v8

    if-gez v4, :cond_12

    sub-long/2addr v6, v12

    mul-long/2addr v14, v6

    div-long v12, v6, v22

    add-long/2addr v14, v12

    div-long v12, v6, v24

    sub-long/2addr v14, v12

    div-long v12, v6, v16

    add-long/2addr v14, v12

    sub-long v20, v10, v14

    :cond_12
    move-wide/from16 v10, v20

    add-long v6, v6, v18

    long-to-int v4, v10

    mul-int/lit8 v10, v4, 0x5

    add-int/lit8 v10, v10, 0x2

    div-int/lit16 v10, v10, 0x99

    add-int/lit8 v11, v10, 0x2

    rem-int/lit8 v11, v11, 0xc

    add-int/2addr v11, v5

    mul-int/lit16 v12, v10, 0x132

    add-int/lit8 v12, v12, 0x5

    div-int/lit8 v12, v12, 0xa

    sub-int/2addr v4, v12

    add-int/2addr v4, v5

    div-int/lit8 v10, v10, 0xa

    int-to-long v12, v10

    add-long/2addr v6, v12

    const-wide/32 v12, -0x3b9ac9ff

    cmp-long v5, v6, v12

    if-ltz v5, :cond_17

    const-wide/32 v12, 0x3b9ac9ff

    cmp-long v5, v6, v12

    if-gtz v5, :cond_17

    long-to-int v5, v6

    int-to-long v6, v2

    cmp-long v2, v6, v8

    if-ltz v2, :cond_16

    const-wide/32 v8, 0x1517f

    cmp-long v2, v6, v8

    if-gtz v2, :cond_16

    const-wide/16 v8, 0xe10

    div-long v8, v6, v8

    long-to-int v2, v8

    mul-int/lit16 v8, v2, 0xe10

    int-to-long v8, v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3c

    div-long v8, v6, v8

    long-to-int v8, v8

    mul-int/lit8 v9, v8, 0x3c

    int-to-long v9, v9

    sub-long/2addr v6, v9

    long-to-int v6, v6

    if-eqz v3, :cond_13

    move-object/from16 p0, p1

    move/from16 p1, v5

    move/from16 p2, v11

    move/from16 p3, v4

    move/from16 p4, v2

    move/from16 p5, v8

    move/from16 p6, v6

    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTime19(IIIIII)V

    return-void

    :cond_13
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->yyyyMMddhhmmss14:Z

    if-eqz v3, :cond_14

    move-object/from16 p0, p1

    move/from16 p1, v5

    move/from16 p2, v11

    move/from16 p3, v4

    move/from16 p4, v2

    move/from16 p5, v8

    move/from16 p6, v6

    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTime14(IIIIII)V

    return-void

    :cond_14
    iget-boolean v0, v0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->yyyyMMdd10:Z

    if-eqz v0, :cond_15

    invoke-virtual {v1, v5, v11, v4}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateYYYMMDD10(III)V

    return-void

    :cond_15
    invoke-virtual {v1, v5, v11, v4}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateYYYMMDD8(III)V

    return-void

    :cond_16
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid secondOfDay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid year "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    check-cast p2, Ljava/time/Instant;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInstant(Ljava/time/Instant;)V

    return-void
.end method
