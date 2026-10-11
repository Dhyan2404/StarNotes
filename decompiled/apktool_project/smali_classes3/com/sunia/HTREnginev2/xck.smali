.class public final Lcom/sunia/HTREnginev2/xck;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field public static final h:Lcom/sunia/HTREnginev2/xck;

.field public static final i:Lcom/sunia/HTREnginev2/xck;

.field public static final j:Lcom/sunia/HTREnginev2/xck;

.field public static final k:Ljava/lang/Class;

.field public static final l:Ljava/lang/String;

.field public static final m:[B

.field public static final n:J


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/lang/reflect/Type;

.field public final c:Ljava/lang/Class;

.field public final d:Ljava/lang/reflect/Type;

.field public final e:J

.field public final f:Z

.field public volatile g:Lcom/alibaba/fastjson2/writer/ObjectWriter;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v7, Lcom/sunia/HTREnginev2/xck;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sunia/HTREnginev2/xck;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;J)V

    sput-object v7, Lcom/sunia/HTREnginev2/xck;->h:Lcom/sunia/HTREnginev2/xck;

    new-instance v0, Lcom/sunia/HTREnginev2/xck;

    const-class v9, Lcom/alibaba/fastjson2/JSONArray;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sunia/HTREnginev2/xck;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;J)V

    sput-object v0, Lcom/sunia/HTREnginev2/xck;->i:Lcom/sunia/HTREnginev2/xck;

    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getClassJSONArray1x()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/sunia/HTREnginev2/xck;->j:Lcom/sunia/HTREnginev2/xck;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/xck;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sunia/HTREnginev2/xck;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;J)V

    sput-object v0, Lcom/sunia/HTREnginev2/xck;->j:Lcom/sunia/HTREnginev2/xck;

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/xck;->k:Ljava/lang/Class;

    const-class v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/xck;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/sunia/HTREnginev2/xck;->m:[B

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/sunia/HTREnginev2/xck;->n:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;J)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xck;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/xck;->b:Ljava/lang/reflect/Type;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/xck;->c:Ljava/lang/Class;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/xck;->d:Ljava/lang/reflect/Type;

    iput-wide p5, p0, Lcom/sunia/HTREnginev2/xck;->e:J

    if-eqz p3, :cond_0

    invoke-static {p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/xck;->f:Z

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    if-nez p2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    :cond_0
    move-object/from16 v9, p2

    check-cast v9, Ljava/util/List;

    iget-boolean v1, v8, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    move-object v1, v10

    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_3

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, v10, :cond_2

    move-object v12, v10

    move-object v10, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v8, v2}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    move-object v10, v1

    move-object v12, v2

    :goto_1
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Lcom/sunia/HTREnginev2/xck;->d:Ljava/lang/reflect/Type;

    move-object v1, v10

    move-object/from16 v2, p1

    move-wide/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    move-object v10, v12

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    iget-object v12, v8, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-object v13, v12, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    move-object v6, v10

    move-object/from16 v16, v6

    move v15, v11

    const/16 v17, 0x1

    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v15, v1, :cond_1a

    if-eqz v15, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    :cond_5
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    :goto_4
    move-object v14, v6

    move/from16 p3, v15

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-class v2, Ljava/lang/Integer;

    const-wide/16 v3, 0x2

    const-wide/16 v18, 0x0

    if-ne v1, v2, :cond_9

    move/from16 p3, v15

    iget-wide v14, v13, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->f:J

    and-long v2, v14, v3

    cmp-long v2, v2, v18

    if-nez v2, :cond_8

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(Ljava/lang/Integer;)V

    move-object v14, v6

    goto/16 :goto_5

    :cond_8
    invoke-virtual {v13, v1, v1, v11}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-class v5, Ljava/lang/Integer;

    move-object/from16 v2, p1

    move-object v3, v7

    move-object v14, v6

    move-wide/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto/16 :goto_5

    :cond_9
    move-object v14, v6

    move/from16 p3, v15

    const-class v2, Ljava/lang/Long;

    if-ne v1, v2, :cond_b

    iget-wide v2, v13, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->f:J

    const-wide/16 v4, 0x4

    and-long/2addr v2, v4

    cmp-long v2, v2, v18

    if-nez v2, :cond_a

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(Ljava/lang/Long;)V

    goto/16 :goto_5

    :cond_a
    invoke-virtual {v13, v1, v1, v11}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-class v5, Ljava/lang/Long;

    move-object/from16 v2, p1

    move-object v3, v7

    move-wide/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_5

    :cond_b
    const-class v2, Ljava/lang/Boolean;

    if-ne v1, v2, :cond_d

    iget-wide v5, v13, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->f:J

    and-long v2, v5, v3

    cmp-long v2, v2, v18

    if-nez v2, :cond_c

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    goto :goto_5

    :cond_c
    invoke-virtual {v13, v1, v1, v11}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-class v5, Ljava/lang/Boolean;

    move-object/from16 v2, p1

    move-object v3, v7

    move-wide/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_5

    :cond_d
    const-class v2, Ljava/math/BigDecimal;

    if-ne v1, v2, :cond_f

    iget-wide v2, v13, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->f:J

    const-wide/16 v4, 0x8

    and-long/2addr v2, v4

    cmp-long v2, v2, v18

    if-nez v2, :cond_e

    check-cast v7, Ljava/math/BigDecimal;

    move-wide/from16 v5, p5

    invoke-virtual {v8, v7, v5, v6, v10}, Lcom/alibaba/fastjson2/JSONWriter;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    goto :goto_5

    :cond_e
    move-wide/from16 v5, p5

    invoke-virtual {v13, v1, v1, v11}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-class v15, Ljava/math/BigDecimal;

    move-object/from16 v2, p1

    move-object v3, v7

    move-object v5, v15

    move-wide/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_5
    move/from16 v20, p3

    move-object v6, v14

    goto/16 :goto_c

    :cond_f
    iget-object v2, v0, Lcom/sunia/HTREnginev2/xck;->c:Ljava/lang/Class;

    if-ne v1, v2, :cond_11

    iget-object v2, v0, Lcom/sunia/HTREnginev2/xck;->g:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    if-eqz v2, :cond_11

    iget-object v1, v0, Lcom/sunia/HTREnginev2/xck;->g:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    iget-boolean v2, v0, Lcom/sunia/HTREnginev2/xck;->f:Z

    if-eqz v2, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_6

    :cond_10
    move v2, v11

    :goto_6
    move/from16 v15, v17

    move/from16 v17, v2

    goto :goto_a

    :cond_11
    if-ne v1, v14, :cond_12

    move-object/from16 v1, v16

    :goto_7
    move/from16 v15, v17

    goto :goto_a

    :cond_12
    const-class v2, Lcom/alibaba/fastjson2/JSONObject;

    if-ne v1, v2, :cond_13

    sget-object v2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->r:Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    move-result v3

    :goto_8
    move/from16 v17, v3

    goto :goto_9

    :cond_13
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getClassJSONObject1x()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_14

    invoke-static {}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->getINSTANCE1()Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    move-result v3

    goto :goto_8

    :cond_14
    const-class v2, Lcom/alibaba/fastjson2/JSONArray;

    if-ne v1, v2, :cond_15

    sget-object v2, Lcom/sunia/HTREnginev2/xck;->i:Lcom/sunia/HTREnginev2/xck;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    move-result v3

    goto :goto_8

    :cond_15
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getClassJSONArray1x()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_16

    sget-object v2, Lcom/sunia/HTREnginev2/xck;->j:Lcom/sunia/HTREnginev2/xck;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    move-result v3

    goto :goto_8

    :cond_16
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_8

    :goto_9
    iget-object v3, v0, Lcom/sunia/HTREnginev2/xck;->c:Ljava/lang/Class;

    if-ne v1, v3, :cond_17

    iput-object v2, v0, Lcom/sunia/HTREnginev2/xck;->g:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    :cond_17
    move-object v14, v1

    move-object v1, v2

    move-object/from16 v16, v1

    goto :goto_7

    :goto_a
    move/from16 v6, p3

    if-eqz v17, :cond_18

    invoke-virtual {v8, v6, v7}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual {v8, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    move/from16 v20, v6

    goto :goto_b

    :cond_18
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Lcom/sunia/HTREnginev2/xck;->d:Ljava/lang/reflect/Type;

    iget-wide v2, v0, Lcom/sunia/HTREnginev2/xck;->e:J

    move-wide/from16 v18, v2

    move-object/from16 v2, p1

    move-object v3, v7

    move/from16 v20, v6

    move-object v10, v7

    move-wide/from16 v6, v18

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    if-eqz v17, :cond_19

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    :cond_19
    :goto_b
    move-object v6, v14

    move/from16 v17, v15

    :goto_c
    add-int/lit8 v15, v20, 0x1

    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method

.method public writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 9

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    :cond_0
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    const/4 p3, 0x0

    const/4 p4, 0x0

    move v0, p4

    move-object p4, p3

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p4

    move-object p3, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/sunia/HTREnginev2/xck;->d:Ljava/lang/reflect/Type;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/xck;->e:J

    or-long v7, v1, p5

    move-object v2, p4

    move-object v3, p1

    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    :cond_0
    instance-of v3, v2, Ljava/lang/Class;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    check-cast v2, Ljava/lang/Class;

    :goto_0
    move-object v7, v4

    goto :goto_2

    :cond_1
    iget-object v3, v0, Lcom/sunia/HTREnginev2/xck;->b:Ljava/lang/reflect/Type;

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Lcom/sunia/HTREnginev2/xck;->c:Ljava/lang/Class;

    goto :goto_0

    :cond_2
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_5

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    array-length v5, v3

    if-ne v5, v10, :cond_3

    aget-object v3, v3, v9

    instance-of v5, v3, Ljava/lang/Class;

    if-eqz v5, :cond_3

    check-cast v3, Ljava/lang/Class;

    goto :goto_1

    :cond_3
    move-object v3, v4

    :goto_1
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v5, v2, Ljava/lang/Class;

    if-eqz v5, :cond_4

    check-cast v2, Ljava/lang/Class;

    move-object v7, v3

    goto :goto_2

    :cond_4
    move-object v7, v3

    move-object v2, v4

    goto :goto_2

    :cond_5
    move-object v2, v4

    move-object v7, v2

    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-wide/from16 v11, p5

    invoke-virtual {v8, v1, v2, v11, v12}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/Class;J)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/sunia/HTREnginev2/xck;->k:Ljava/lang/Class;

    if-eq v3, v2, :cond_7

    const-class v2, Ljava/util/ArrayList;

    if-ne v3, v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {v3}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    :goto_3
    sget-object v2, Lcom/sunia/HTREnginev2/xck;->m:[B

    sget-wide v5, Lcom/sunia/HTREnginev2/xck;->n:J

    invoke-virtual {v8, v2, v5, v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    :cond_8
    :goto_4
    move-object v13, v1

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_9

    const/16 v0, -0x6c

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(B)V

    return-void

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->isBeanToArray()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    move-object v0, v4

    :goto_5
    if-ge v9, v14, :cond_c

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_7

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, v4, :cond_b

    move-object v10, v0

    move-object v15, v4

    goto :goto_6

    :cond_b
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    move-object v10, v0

    move-object v15, v1

    :goto_6
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v10

    move-object/from16 v1, p1

    move-object v4, v7

    move-wide/from16 v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    move-object v4, v15

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void

    :cond_d
    iget-object v11, v8, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    move-object v1, v4

    move v12, v9

    :goto_8
    if-ge v12, v14, :cond_1b

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto/16 :goto_e

    :cond_e
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_f

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_f
    iget-object v3, v0, Lcom/sunia/HTREnginev2/xck;->c:Ljava/lang/Class;

    if-ne v2, v3, :cond_11

    iget-boolean v3, v0, Lcom/sunia/HTREnginev2/xck;->f:Z

    if-eqz v3, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    move-result v3

    if-eqz v3, :cond_10

    move/from16 v16, v10

    goto :goto_9

    :cond_10
    move/from16 v16, v9

    goto :goto_9

    :cond_11
    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect(Ljava/lang/Object;)Z

    move-result v3

    move/from16 v16, v3

    :goto_9
    iget-object v3, v0, Lcom/sunia/HTREnginev2/xck;->c:Ljava/lang/Class;

    if-ne v2, v3, :cond_12

    iget-object v3, v0, Lcom/sunia/HTREnginev2/xck;->g:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    if-eqz v3, :cond_12

    iget-object v2, v0, Lcom/sunia/HTREnginev2/xck;->g:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-object/from16 v17, v1

    move-object v1, v2

    goto :goto_a

    :cond_12
    if-ne v2, v4, :cond_13

    move-object/from16 v17, v1

    :goto_a
    move-object/from16 v18, v4

    goto :goto_c

    :cond_13
    const-class v1, Lcom/alibaba/fastjson2/JSONObject;

    if-ne v2, v1, :cond_14

    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->r:Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    goto :goto_b

    :cond_14
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getClassJSONObject1x()Ljava/lang/Class;

    move-result-object v1

    if-ne v2, v1, :cond_15

    invoke-static {}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->getINSTANCE1()Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    move-result-object v1

    goto :goto_b

    :cond_15
    const-class v1, Lcom/alibaba/fastjson2/JSONArray;

    if-ne v2, v1, :cond_16

    sget-object v1, Lcom/sunia/HTREnginev2/xck;->i:Lcom/sunia/HTREnginev2/xck;

    goto :goto_b

    :cond_16
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getClassJSONArray1x()Ljava/lang/Class;

    move-result-object v1

    if-ne v2, v1, :cond_17

    sget-object v1, Lcom/sunia/HTREnginev2/xck;->j:Lcom/sunia/HTREnginev2/xck;

    goto :goto_b

    :cond_17
    invoke-virtual {v11, v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    :goto_b
    iget-object v3, v0, Lcom/sunia/HTREnginev2/xck;->c:Ljava/lang/Class;

    if-ne v2, v3, :cond_18

    iput-object v1, v0, Lcom/sunia/HTREnginev2/xck;->g:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    :cond_18
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    :goto_c
    if-eqz v16, :cond_19

    invoke-virtual {v8, v12, v15}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual {v8, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    goto :goto_d

    :cond_19
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Lcom/sunia/HTREnginev2/xck;->d:Ljava/lang/reflect/Type;

    iget-wide v6, v0, Lcom/sunia/HTREnginev2/xck;->e:J

    move-object/from16 v2, p1

    move-object v3, v15

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    if-eqz v16, :cond_1a

    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    :cond_1a
    :goto_d
    move-object/from16 v1, v17

    move-object/from16 v4, v18

    :goto_e
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_8

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method
