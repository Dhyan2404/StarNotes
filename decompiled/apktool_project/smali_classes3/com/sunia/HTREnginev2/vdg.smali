.class public abstract Lcom/sunia/HTREnginev2/vdg;
.super Lcom/alibaba/fastjson2/writer/FieldWriter;
.source "SourceFile"


# instance fields
.field public final r:[B

.field public final s:[B

.field public final t:[B

.field public final u:[B

.field public final v:[C

.field public final w:[C

.field public final x:[C

.field public final y:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 3

    invoke-direct/range {p0 .. p10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->f:[B

    array-length p2, p1

    add-int/lit8 p2, p2, 0x4

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->f:[B

    array-length p3, p2

    const/16 p4, 0x74

    aput-byte p4, p1, p3

    array-length p3, p2

    add-int/lit8 p3, p3, 0x1

    const/16 p5, 0x72

    aput-byte p5, p1, p3

    array-length p3, p2

    add-int/lit8 p3, p3, 0x2

    const/16 p6, 0x75

    aput-byte p6, p1, p3

    array-length p3, p2

    add-int/lit8 p3, p3, 0x3

    const/16 p7, 0x65

    aput-byte p7, p1, p3

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vdg;->r:[B

    array-length p1, p2

    add-int/lit8 p1, p1, 0x5

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->f:[B

    array-length p3, p2

    const/16 p8, 0x66

    aput-byte p8, p1, p3

    array-length p3, p2

    add-int/lit8 p3, p3, 0x1

    const/16 p9, 0x61

    aput-byte p9, p1, p3

    array-length p3, p2

    add-int/lit8 p3, p3, 0x2

    const/16 p10, 0x6c

    aput-byte p10, p1, p3

    array-length p3, p2

    add-int/lit8 p3, p3, 0x3

    const/16 v0, 0x73

    aput-byte v0, p1, p3

    array-length p3, p2

    add-int/lit8 p3, p3, 0x4

    aput-byte p7, p1, p3

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vdg;->s:[B

    array-length p1, p2

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->f:[B

    array-length p3, p2

    const/16 v1, 0x31

    aput-byte v1, p1, p3

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vdg;->t:[B

    array-length p1, p2

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->f:[B

    array-length p2, p2

    const/16 p3, 0x30

    aput-byte p3, p1, p2

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vdg;->u:[B

    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->g:[C

    array-length p2, p1

    add-int/lit8 p2, p2, 0x4

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->g:[C

    array-length v2, p2

    aput-char p4, p1, v2

    array-length p4, p2

    add-int/lit8 p4, p4, 0x1

    aput-char p5, p1, p4

    array-length p4, p2

    add-int/lit8 p4, p4, 0x2

    aput-char p6, p1, p4

    array-length p4, p2

    add-int/lit8 p4, p4, 0x3

    aput-char p7, p1, p4

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vdg;->v:[C

    array-length p1, p2

    add-int/lit8 p1, p1, 0x5

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->g:[C

    array-length p4, p2

    aput-char p8, p1, p4

    array-length p4, p2

    add-int/lit8 p4, p4, 0x1

    aput-char p9, p1, p4

    array-length p4, p2

    add-int/lit8 p4, p4, 0x2

    aput-char p10, p1, p4

    array-length p4, p2

    add-int/lit8 p4, p4, 0x3

    aput-char v0, p1, p4

    array-length p4, p2

    add-int/lit8 p4, p4, 0x4

    aput-char p7, p1, p4

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vdg;->w:[C

    array-length p1, p2

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->g:[C

    array-length p4, p2

    aput-char v1, p1, p4

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vdg;->x:[C

    array-length p1, p2

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->g:[C

    array-length p2, p2

    aput-char p3, p1, p2

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vdg;->y:[C

    return-void
.end method


# virtual methods
.method public getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 0

    sget-object p0, Lcom/sunia/HTREnginev2/ybk;->a:Lcom/sunia/HTREnginev2/ybk;

    return-object p0
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-nez p2, :cond_1

    iget-wide v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    move-result-wide v6

    or-long/2addr v4, v6

    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v6, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v6, v8

    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v6, v8

    and-long/2addr v4, v6

    cmp-long p2, v4, v2

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeBooleanNull()V

    return v1

    :cond_1
    iget-object v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    iget-wide v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    invoke-virtual {p1, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    move-result-wide v4

    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, v6

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/vdg;->writeBool(Lcom/alibaba/fastjson2/JSONWriter;Z)V

    return v1

    :catch_0
    move-exception p0

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isIgnoreErrorGetter()Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    throw p0
.end method

.method public final writeBool(Lcom/alibaba/fastjson2/JSONWriter;Z)V
    .locals 6

    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    move-result-wide v0

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    if-eqz p2, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v2, p1, Lcom/alibaba/fastjson2/JSONWriter;->utf8:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteBooleanAsNumber:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vdg;->t:[B

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/vdg;->u:[B

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vdg;->r:[B

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/sunia/HTREnginev2/vdg;->s:[B

    :goto_1
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([B)V

    return-void

    :cond_5
    iget-boolean v2, p1, Lcom/alibaba/fastjson2/JSONWriter;->utf16:Z

    if-eqz v2, :cond_9

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteBooleanAsNumber:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vdg;->x:[C

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/sunia/HTREnginev2/vdg;->y:[C

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_8

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vdg;->v:[C

    goto :goto_2

    :cond_8
    iget-object p0, p0, Lcom/sunia/HTREnginev2/vdg;->w:[C

    :goto_2
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([C)V

    return-void

    :cond_9
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    return-void
.end method

.method public writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    return-void
.end method
