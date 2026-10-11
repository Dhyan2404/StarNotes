.class public abstract Lcom/sunia/HTREnginev2/beg;
.super Lcom/alibaba/fastjson2/writer/FieldWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/writer/FieldWriter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public r:Ljava/time/format/DateTimeFormatter;

.field public final s:Z

.field public final t:Z

.field public final u:Z

.field public final v:Z

.field public final w:Z

.field public final x:Z

.field public y:Lcom/alibaba/fastjson2/writer/ObjectWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    const/4 p1, 0x0

    if-eqz p5, :cond_6

    invoke-virtual {p5}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 p3, 0x1

    const/4 p4, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "iso8601"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x5

    goto :goto_0

    :sswitch_1
    const-string p2, "yyyyMMddHHmmss"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x4

    goto :goto_0

    :sswitch_2
    const-string p2, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p4, 0x3

    goto :goto_0

    :sswitch_3
    const-string p2, "yyyyMMdd"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p4, 0x2

    goto :goto_0

    :sswitch_4
    const-string p2, "unixtime"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    move p4, p3

    goto :goto_0

    :sswitch_5
    const-string p2, "millis"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    move p4, p1

    :goto_0
    packed-switch p4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    move p2, p1

    move p4, p2

    goto :goto_3

    :pswitch_1
    move p2, p1

    move p4, p2

    move p6, p4

    move p5, p3

    goto :goto_1

    :pswitch_2
    move p2, p1

    move p4, p2

    move p5, p4

    move p6, p3

    move p3, p5

    goto :goto_4

    :pswitch_3
    move p2, p1

    move p5, p2

    move p6, p5

    move p4, p3

    goto :goto_1

    :pswitch_4
    move p4, p1

    move p5, p4

    move p6, p5

    move p2, p3

    goto :goto_1

    :pswitch_5
    move p2, p1

    move p4, p2

    move p5, p4

    move p6, p5

    move p1, p3

    :goto_1
    move p3, p6

    goto :goto_4

    :cond_6
    :goto_2
    move p2, p1

    move p3, p2

    move p4, p3

    :goto_3
    move p5, p4

    move p6, p5

    :goto_4
    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/beg;->s:Z

    iput-boolean p3, p0, Lcom/sunia/HTREnginev2/beg;->t:Z

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/beg;->x:Z

    iput-boolean p4, p0, Lcom/sunia/HTREnginev2/beg;->u:Z

    iput-boolean p5, p0, Lcom/sunia/HTREnginev2/beg;->v:Z

    iput-boolean p6, p0, Lcom/sunia/HTREnginev2/beg;->w:Z

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x400565ba -> :sswitch_5
        -0x112ad7ab -> :sswitch_4
        -0x10781ba0 -> :sswitch_3
        0x4f76f1a0 -> :sswitch_2
        0x5069d960 -> :sswitch_1
        0x7ce21384 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public c()Ljava/time/format/DateTimeFormatter;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/beg;->r:Ljava/time/format/DateTimeFormatter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sunia/HTREnginev2/beg;->s:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sunia/HTREnginev2/beg;->t:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sunia/HTREnginev2/beg;->x:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/beg;->r:Ljava/time/format/DateTimeFormatter;

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/beg;->r:Ljava/time/format/DateTimeFormatter;

    return-object p0
.end method

.method public getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    if-ne p2, v0, :cond_3

    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/beg;->y:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    if-nez v0, :cond_2

    iget-wide v0, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->f:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/beg;->y:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    if-nez p1, :cond_1

    sget-object p1, Lcom/sunia/HTREnginev2/fck;->b:Lcom/sunia/HTREnginev2/fck;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/beg;->y:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p1

    :cond_1
    new-instance p1, Lcom/sunia/HTREnginev2/fck;

    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/sunia/HTREnginev2/fck;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/beg;->y:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/beg;->y:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p0

    :cond_3
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public isDateFormatISO8601()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/beg;->t:Z

    return p0
.end method

.method public isDateFormatMillis()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/beg;->s:Z

    return p0
.end method

.method public writeDate(Lcom/alibaba/fastjson2/JSONWriter;J)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget-boolean v4, v1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v4, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    invoke-virtual/range {p1 .. p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeMillis(J)V

    return-void

    :cond_0
    iget-object v4, v1, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-boolean v5, v0, Lcom/sunia/HTREnginev2/beg;->x:Z

    const-wide/16 v6, 0x3e8

    if-nez v5, :cond_17

    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatUnixTime()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-boolean v5, v0, Lcom/sunia/HTREnginev2/beg;->s:Z

    if-nez v5, :cond_16

    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatMillis()Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object v5

    iget-object v8, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    if-eqz v8, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getDateFormat()Ljava/lang/String;

    move-result-object v8

    :goto_0
    iget-boolean v9, v0, Lcom/sunia/HTREnginev2/beg;->w:Z

    const/4 v10, 0x1

    if-nez v9, :cond_5

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isFormatyyyyMMddhhmmss19()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    if-nez v9, :cond_4

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    move v9, v10

    :goto_2
    if-eqz v8, :cond_6

    iget-boolean v8, v0, Lcom/sunia/HTREnginev2/beg;->v:Z

    if-nez v8, :cond_6

    if-eqz v9, :cond_e

    :cond_6
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v12

    sget-object v8, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_ID:Ljava/time/ZoneId;

    if-eq v5, v8, :cond_8

    invoke-virtual {v5}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v8

    sget-object v14, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_RULES:Ljava/time/zone/ZoneRules;

    if-ne v8, v14, :cond_7

    goto :goto_3

    :cond_7
    invoke-static/range {p2 .. p3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v5}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v8

    goto :goto_4

    :cond_8
    :goto_3
    invoke-static {v12, v13}, Lcom/alibaba/fastjson2/util/DateUtils;->getShanghaiZoneOffsetTotalSeconds(J)I

    move-result v8

    :goto_4
    int-to-long v14, v8

    add-long/2addr v12, v14

    const-wide/32 v14, 0x15180

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v16

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v12

    long-to-int v8, v12

    const-wide/32 v12, 0xafaa8

    add-long v16, v16, v12

    const-wide/16 v12, 0x3c

    sub-long v16, v16, v12

    const-wide/16 v14, 0x0

    cmp-long v18, v16, v14

    const-wide/16 v19, 0x1

    const-wide/32 v21, 0x23ab1

    const-wide/16 v23, 0x190

    if-gez v18, :cond_9

    add-long v25, v16, v19

    div-long v25, v25, v21

    sub-long v6, v25, v19

    mul-long v25, v6, v23

    neg-long v6, v6

    mul-long v6, v6, v21

    add-long v16, v16, v6

    goto :goto_5

    :cond_9
    move-wide/from16 v25, v14

    :goto_5
    mul-long v6, v16, v23

    const-wide/16 v27, 0x24f

    add-long v6, v6, v27

    div-long v6, v6, v21

    const-wide/16 v21, 0x16d

    mul-long v27, v6, v21

    const-wide/16 v29, 0x4

    div-long v31, v6, v29

    add-long v27, v27, v31

    const-wide/16 v31, 0x64

    div-long v33, v6, v31

    sub-long v27, v27, v33

    div-long v33, v6, v23

    add-long v27, v27, v33

    sub-long v27, v16, v27

    cmp-long v18, v27, v14

    if-gez v18, :cond_a

    sub-long v6, v6, v19

    mul-long v21, v21, v6

    div-long v18, v6, v29

    add-long v21, v21, v18

    div-long v18, v6, v31

    sub-long v21, v21, v18

    div-long v18, v6, v23

    add-long v21, v21, v18

    sub-long v27, v16, v21

    :cond_a
    move-wide/from16 v11, v27

    add-long v6, v6, v25

    long-to-int v11, v11

    mul-int/lit8 v12, v11, 0x5

    add-int/lit8 v12, v12, 0x2

    div-int/lit16 v12, v12, 0x99

    add-int/lit8 v13, v12, 0x2

    rem-int/lit8 v13, v13, 0xc

    add-int/2addr v13, v10

    mul-int/lit16 v14, v12, 0x132

    add-int/lit8 v14, v14, 0x5

    div-int/lit8 v14, v14, 0xa

    sub-int/2addr v11, v14

    add-int/2addr v10, v11

    div-int/lit8 v12, v12, 0xa

    int-to-long v11, v12

    add-long/2addr v6, v11

    const-wide/32 v11, -0x3b9ac9ff

    cmp-long v11, v6, v11

    if-ltz v11, :cond_15

    const-wide/32 v11, 0x3b9ac9ff

    cmp-long v11, v6, v11

    if-gtz v11, :cond_15

    long-to-int v6, v6

    int-to-long v7, v8

    const-wide/16 v11, 0x0

    cmp-long v11, v7, v11

    if-ltz v11, :cond_14

    const-wide/32 v11, 0x1517f

    cmp-long v11, v7, v11

    if-gtz v11, :cond_14

    const-wide/16 v11, 0xe10

    div-long v11, v7, v11

    long-to-int v11, v11

    mul-int/lit16 v12, v11, 0xe10

    int-to-long v14, v12

    sub-long/2addr v7, v14

    const-wide/16 v14, 0x3c

    div-long v14, v7, v14

    long-to-int v12, v14

    mul-int/lit8 v14, v12, 0x3c

    int-to-long v14, v14

    sub-long/2addr v7, v14

    long-to-int v7, v7

    if-ltz v6, :cond_e

    const/16 v8, 0x270f

    if-gt v6, v8, :cond_e

    iget-boolean v5, v0, Lcom/sunia/HTREnginev2/beg;->v:Z

    if-eqz v5, :cond_b

    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    move-object/from16 v0, p1

    move v1, v6

    move v2, v13

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTime14(IIIIII)V

    return-void

    :cond_b
    if-eqz v9, :cond_c

    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    move-object/from16 v0, p1

    move v1, v6

    move v2, v13

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTime19(IIIIII)V

    return-void

    :cond_c
    const-wide/16 v8, 0x3e8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    if-eqz v8, :cond_d

    invoke-static/range {p2 .. p3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v9

    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v13

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v14

    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTimeISO8601(IIIIIIIIZ)V

    return-void

    :cond_d
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    move-object/from16 v0, p1

    move v1, v6

    move v2, v13

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTime19(IIIIII)V

    return-void

    :cond_e
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    invoke-static/range {p2 .. p3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    iget-boolean v3, v0, Lcom/sunia/HTREnginev2/beg;->t:Z

    if-nez v3, :cond_f

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatISO8601()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    if-nez v3, :cond_10

    :cond_f
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getYear()I

    move-result v3

    if-ltz v3, :cond_10

    const/16 v5, 0x270f

    if-gt v3, v5, :cond_10

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getMonthValue()I

    move-result v4

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v5

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getHour()I

    move-result v6

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getMinute()I

    move-result v7

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getSecond()I

    move-result v8

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getNano()I

    move-result v0

    const v9, 0xf4240

    div-int v9, v0, v9

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v10

    const/4 v11, 0x1

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTimeISO8601(IIIIIIIIZ)V

    return-void

    :cond_10
    iget-boolean v3, v0, Lcom/sunia/HTREnginev2/beg;->u:Z

    if-eqz v3, :cond_11

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getYear()I

    move-result v3

    if-ltz v3, :cond_11

    const/16 v5, 0x270f

    if-gt v3, v5, :cond_11

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getMonthValue()I

    move-result v0

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v1, v3, v0, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateYYYMMDD8(III)V

    return-void

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/sunia/HTREnginev2/beg;->c()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    if-nez v0, :cond_12

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getDateFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    :cond_12
    if-eqz v0, :cond_13

    invoke-virtual {v0, v2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto :goto_6

    :cond_13
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeZonedDateTime(Ljava/time/ZonedDateTime;)V

    :goto_6
    return-void

    :cond_14
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

    :cond_15
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

    :cond_16
    :goto_7
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    invoke-virtual/range {p1 .. p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void

    :cond_17
    :goto_8
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void
.end method
