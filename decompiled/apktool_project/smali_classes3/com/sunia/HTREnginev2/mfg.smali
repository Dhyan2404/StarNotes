.class public abstract Lcom/sunia/HTREnginev2/mfg;
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
.field public final r:Ljava/lang/reflect/Type;

.field public final s:Ljava/lang/Class;

.field public final t:Z

.field public u:Lcom/alibaba/fastjson2/writer/ObjectWriter;

.field public v:Lcom/alibaba/fastjson2/writer/ObjectWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 13

    move-object v11, p0

    move-object/from16 v12, p6

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    if-nez p2, :cond_0

    const-class v0, Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, v11, Lcom/sunia/HTREnginev2/mfg;->r:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_3

    move-object v3, p2

    check-cast v3, Ljava/lang/Class;

    iput-object v3, v11, Lcom/sunia/HTREnginev2/mfg;->s:Ljava/lang/Class;

    if-eqz v3, :cond_4

    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sunia/HTREnginev2/yck;

    move-wide/from16 v5, p4

    move-object/from16 v1, p9

    invoke-direct {v0, v1, v3, v5, v6}, Lcom/sunia/HTREnginev2/yck;-><init>(Ljava/lang/Class;Ljava/lang/Class;J)V

    iput-object v0, v11, Lcom/sunia/HTREnginev2/mfg;->u:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    goto :goto_1

    :cond_1
    move-wide/from16 v5, p4

    move-object/from16 v1, p9

    const-class v0, Ljava/lang/String;

    if-ne v3, v0, :cond_2

    sget-object v0, Lcom/sunia/HTREnginev2/zck;->a:Lcom/sunia/HTREnginev2/zck;

    iput-object v0, v11, Lcom/sunia/HTREnginev2/mfg;->u:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    goto :goto_1

    :cond_2
    new-instance v7, Lcom/sunia/HTREnginev2/xck;

    move-object v0, v7

    move-object/from16 v1, p9

    move-object/from16 v2, p8

    move-object v4, p2

    move-wide/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/sunia/HTREnginev2/xck;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;J)V

    iput-object v7, v11, Lcom/sunia/HTREnginev2/mfg;->u:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, v11, Lcom/sunia/HTREnginev2/mfg;->s:Ljava/lang/Class;

    :cond_4
    :goto_1
    iget-object v0, v11, Lcom/sunia/HTREnginev2/mfg;->s:Ljava/lang/Class;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, v11, Lcom/sunia/HTREnginev2/mfg;->t:Z

    if-eqz v12, :cond_6

    iget-object v0, v11, Lcom/sunia/HTREnginev2/mfg;->s:Ljava/lang/Class;

    const-class v1, Ljava/util/Date;

    if-ne v0, v1, :cond_6

    new-instance v0, Lcom/sunia/HTREnginev2/fck;

    const/4 v1, 0x0

    invoke-direct {v0, v12, v1}, Lcom/sunia/HTREnginev2/fck;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, v11, Lcom/sunia/HTREnginev2/mfg;->v:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    :cond_6
    return-void
.end method


# virtual methods
.method public final c(Lcom/alibaba/fastjson2/JSONWriter;ZLjava/util/List;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    iget-wide v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    invoke-virtual {v8, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    move-result-wide v10

    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v1, v10

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_0

    move v13, v12

    goto :goto_0

    :cond_0
    move v13, v2

    :goto_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v10

    cmp-long v1, v5, v3

    if-eqz v1, :cond_1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v10

    cmp-long v1, v5, v3

    if-eqz v1, :cond_2

    move v1, v12

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    :cond_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v14

    iget-object v3, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v8, v9, v3}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    const/4 v3, 0x0

    move v15, v2

    move-object v2, v3

    :goto_2
    if-ge v15, v14, :cond_d

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto/16 :goto_8

    :cond_5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, v3, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    move-result v1

    iget-object v2, v0, Lcom/sunia/HTREnginev2/mfg;->r:Ljava/lang/reflect/Type;

    if-ne v4, v2, :cond_6

    iget-object v2, v0, Lcom/sunia/HTREnginev2/mfg;->v:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v8, v4}, Lcom/sunia/HTREnginev2/mfg;->getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    :goto_3
    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/sunia/HTREnginev2/mfg;->s:Ljava/lang/Class;

    if-ne v4, v1, :cond_7

    iget-boolean v1, v0, Lcom/sunia/HTREnginev2/mfg;->t:Z

    goto :goto_4

    :cond_7
    invoke-static {v4}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    move-result v1

    :goto_4
    xor-int/2addr v1, v12

    :cond_8
    move/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    goto :goto_5

    :cond_9
    move/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    :goto_5
    if-eqz v16, :cond_a

    invoke-virtual {v8, v15, v6}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    goto :goto_7

    :cond_a
    if-eqz v13, :cond_b

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Lcom/sunia/HTREnginev2/mfg;->r:Ljava/lang/reflect/Type;

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object v3, v6

    move-object/from16 p2, v6

    move-wide v6, v10

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_6

    :cond_b
    move-object/from16 p2, v6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Lcom/sunia/HTREnginev2/mfg;->r:Ljava/lang/reflect/Type;

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide v6, v10

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_6
    if-eqz v16, :cond_c

    move-object/from16 v1, p2

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    :cond_c
    :goto_7
    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    :goto_8
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    :cond_d
    return-void
.end method

.method public getItemClass()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mfg;->s:Ljava/lang/Class;

    return-object p0
.end method

.method public getItemType()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mfg;->r:Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mfg;->r:Ljava/lang/reflect/Type;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/mfg;->v:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-class v0, Ljava/lang/Double;

    if-ne p2, v0, :cond_3

    new-instance p1, Lcom/sunia/HTREnginev2/gck;

    new-instance p2, Ljava/text/DecimalFormat;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/sunia/HTREnginev2/gck;-><init>(Ljava/text/DecimalFormat;)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mfg;->v:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p1

    :cond_3
    const-class v0, Ljava/lang/Float;

    if-ne p2, v0, :cond_4

    new-instance p1, Lcom/sunia/HTREnginev2/jck;

    new-instance p2, Ljava/text/DecimalFormat;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/sunia/HTREnginev2/jck;-><init>(Ljava/text/DecimalFormat;)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mfg;->v:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p1

    :cond_4
    const-class v0, Ljava/math/BigDecimal;

    if-ne p2, v0, :cond_5

    new-instance p1, Lcom/sunia/HTREnginev2/vbk;

    new-instance p2, Ljava/text/DecimalFormat;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/sunia/HTREnginev2/vbk;-><init>(Ljava/text/DecimalFormat;Ljava/util/function/Function;)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mfg;->v:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p1

    :cond_5
    iget-object p2, p0, Lcom/sunia/HTREnginev2/mfg;->r:Ljava/lang/reflect/Type;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mfg;->s:Ljava/lang/Class;

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mfg;->v:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p1
.end method

.method public getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mfg;->u:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    if-ne p2, v0, :cond_1

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mfg;->u:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p1

    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public writeList(Lcom/alibaba/fastjson2/JSONWriter;ZLjava/util/List;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iget-boolean v1, v8, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p3}, Lcom/sunia/HTREnginev2/mfg;->c(Lcom/alibaba/fastjson2/JSONWriter;ZLjava/util/List;)V

    return-void

    :cond_0
    iget-wide v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    invoke-virtual {v8, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    move-result-wide v9

    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v1, v9

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v1, v9

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_2

    move v1, v11

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    const/4 v3, 0x0

    move v12, v2

    move-object v2, v3

    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v12, v4, :cond_b

    if-eqz v12, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    :cond_4
    move-object/from16 v13, p3

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_4

    :cond_5
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_6

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    if-ne v4, v3, :cond_7

    move v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    goto :goto_2

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    move-result v1

    invoke-virtual {v0, v8, v4}, Lcom/sunia/HTREnginev2/mfg;->getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    if-eqz v1, :cond_8

    invoke-static {v4}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    move-result v1

    xor-int/2addr v1, v11

    :cond_8
    move v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    :goto_2
    if-eqz v15, :cond_9

    invoke-virtual {v8, v12, v14}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    iget-object v5, v0, Lcom/sunia/HTREnginev2/mfg;->r:Ljava/lang/reflect/Type;

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide v6, v9

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    if-eqz v15, :cond_a

    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    :cond_a
    :goto_3
    move v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method

.method public writeListStr(Lcom/alibaba/fastjson2/JSONWriter;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    :cond_0
    iget-boolean p2, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    invoke-virtual {p1, p3, p0}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/util/List;)V

    return-void
.end method
