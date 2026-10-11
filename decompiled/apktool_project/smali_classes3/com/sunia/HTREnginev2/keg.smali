.class public Lcom/sunia/HTREnginev2/keg;
.super Lcom/alibaba/fastjson2/writer/FieldWriter;
.source "SourceFile"


# instance fields
.field public final r:[[B

.field public final s:[[C

.field public final t:[[B

.field public final u:[[C

.field public final v:Ljava/lang/Class;

.field public final w:[Ljava/lang/Enum;

.field public final x:[J

.field public final y:[J


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum;",
            ">;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    iput-object p8, p0, Lcom/sunia/HTREnginev2/keg;->v:Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Enum;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/keg;->w:[Ljava/lang/Enum;

    array-length p2, p1

    new-array p2, p2, [J

    iput-object p2, p0, Lcom/sunia/HTREnginev2/keg;->x:[J

    array-length p1, p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/sunia/HTREnginev2/keg;->y:[J

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/sunia/HTREnginev2/keg;->w:[Ljava/lang/Enum;

    array-length p3, p2

    if-ge p1, p3, :cond_0

    iget-object p3, p0, Lcom/sunia/HTREnginev2/keg;->x:[J

    aget-object p2, p2, p1

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide p4

    aput-wide p4, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    array-length p1, p2

    new-array p1, p1, [[B

    iput-object p1, p0, Lcom/sunia/HTREnginev2/keg;->r:[[B

    array-length p1, p2

    new-array p1, p1, [[C

    iput-object p1, p0, Lcom/sunia/HTREnginev2/keg;->s:[[C

    array-length p1, p2

    new-array p1, p1, [[B

    iput-object p1, p0, Lcom/sunia/HTREnginev2/keg;->t:[[B

    array-length p1, p2

    new-array p1, p1, [[C

    iput-object p1, p0, Lcom/sunia/HTREnginev2/keg;->u:[[C

    return-void
.end method


# virtual methods
.method public final c(I)[B
    .locals 3

    invoke-static {p1}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->f:[B

    array-length v2, v1

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->f:[B

    array-length p0, p0

    invoke-static {v0, p0, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([BII)I

    return-object v0
.end method

.method public final d(I)[C
    .locals 2

    invoke-static {p1}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(I)I

    move-result v0

    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->g:[C

    array-length v1, p0

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p0

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([CII)I

    return-object p0
.end method

.method public final e(I)[B
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/keg;->w:[Ljava/lang/Enum;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->f:[B

    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->f:[B

    array-length v1, p0

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    array-length p0, p0

    add-int/lit8 p0, p0, 0x1

    array-length v1, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p1, v3

    add-int/lit8 v5, p0, 0x1

    aput-byte v4, v0, p0

    add-int/lit8 v3, v3, 0x1

    move p0, v5

    goto :goto_0

    :cond_0
    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    aput-byte v2, v0, p0

    return-object v0
.end method

.method public final f(I)[C
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/keg;->w:[Ljava/lang/Enum;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->g:[C

    array-length v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->g:[C

    array-length v1, v1

    const/16 v2, 0x22

    aput-char v2, v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->g:[C

    array-length p0, p0

    add-int/lit8 p0, p0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1, v0, p0}, Ljava/lang/String;->getChars(II[CI)V

    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    aput-char v2, v0, p0

    return-object v0
.end method

.method public final g(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;Lcom/alibaba/fastjson2/SymbolTable;)V
    .locals 6

    const/4 v0, -0x1

    if-eqz p3, :cond_2

    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->i:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    const/16 v5, 0x20

    if-nez v4, :cond_0

    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->e:J

    invoke-virtual {p3, v2, v3}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result p3

    int-to-long v2, p3

    shl-long/2addr v2, v5

    int-to-long v4, v1

    or-long v1, v2, v4

    iput-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->i:J

    goto :goto_0

    :cond_0
    long-to-int v4, v2

    if-ne v4, v1, :cond_1

    shr-long v1, v2, v5

    long-to-int p3, v1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->e:J

    invoke-virtual {p3, v2, v3}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result p3

    int-to-long v2, p3

    shl-long/2addr v2, v5

    int-to-long v4, v1

    or-long v1, v2, v4

    iput-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->i:J

    goto :goto_0

    :cond_2
    move p3, v0

    :goto_0
    if-eq p3, v0, :cond_3

    neg-int p0, p3

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeSymbol(I)V

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->h:[B

    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->e:J

    invoke-virtual {p1, p3, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([BJ)V

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public final h(Lcom/alibaba/fastjson2/JSONWriter;ILcom/alibaba/fastjson2/SymbolTable;)Z
    .locals 11

    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/keg;->y:[J

    aget-wide v1, v1, p2

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/16 v6, 0x20

    if-nez v5, :cond_0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/keg;->x:[J

    aget-wide v1, v1, p2

    invoke-virtual {p3, v1, v2}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result v1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/keg;->y:[J

    int-to-long v7, v1

    shl-long/2addr v7, v6

    int-to-long v9, v0

    or-long/2addr v7, v9

    aput-wide v7, v2, p2

    goto :goto_0

    :cond_0
    long-to-int v5, v1

    if-ne v5, v0, :cond_1

    shr-long/2addr v1, v6

    long-to-int v1, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sunia/HTREnginev2/keg;->x:[J

    aget-wide v1, v1, p2

    invoke-virtual {p3, v1, v2}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result v1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/keg;->y:[J

    int-to-long v7, v1

    shl-long/2addr v7, v6

    int-to-long v9, v0

    or-long/2addr v7, v9

    aput-wide v7, v2, p2

    :goto_0
    if-ltz v1, :cond_6

    iget-wide v7, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->i:J

    cmp-long p2, v7, v3

    const/4 v2, -0x1

    if-nez p2, :cond_2

    iget-wide v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->e:J

    invoke-virtual {p3, v3, v4}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result p2

    if-eq p2, v2, :cond_4

    int-to-long v3, p2

    shl-long/2addr v3, v6

    int-to-long v5, v0

    or-long/2addr v3, v5

    iput-wide v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->i:J

    goto :goto_1

    :cond_2
    long-to-int p2, v7

    if-ne p2, v0, :cond_3

    shr-long p2, v7, v6

    long-to-int p2, p2

    goto :goto_1

    :cond_3
    iget-wide v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->e:J

    invoke-virtual {p3, v3, v4}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result p2

    int-to-long v3, p2

    shl-long/2addr v3, v6

    int-to-long v5, v0

    or-long/2addr v3, v5

    iput-wide v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->i:J

    :cond_4
    :goto_1
    if-eq p2, v2, :cond_5

    neg-int p0, p2

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeSymbol(I)V

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->h:[B

    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->e:J

    invoke-virtual {p1, p2, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([BJ)V

    :goto_2
    const/16 p0, 0x79

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(B)V

    neg-int p0, v1

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 5

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Enum;

    const/4 v0, 0x1

    if-nez p2, :cond_1

    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    move-result-wide v3

    or-long/2addr v1, v3

    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget-boolean v1, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/keg;->writeEnumJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/keg;->writeEnum(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;)V

    :goto_0
    return v0
.end method

.method public final writeEnum(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;)V
    .locals 10

    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    move-result-wide v0

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    iget-boolean v2, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/keg;->writeEnumJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;)V

    return-void

    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->UnquoteFieldName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v6

    :goto_0
    iget-boolean v7, p1, Lcom/alibaba/fastjson2/JSONWriter;->utf8:Z

    if-nez v7, :cond_2

    iget-boolean v8, p1, Lcom/alibaba/fastjson2/JSONWriter;->utf16:Z

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    move v3, v6

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    sget-object v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingOrdinal:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v8

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    if-nez v2, :cond_6

    if-eqz v7, :cond_4

    iget-object p2, p0, Lcom/sunia/HTREnginev2/keg;->t:[[B

    aget-object v0, p2, v6

    if-nez v0, :cond_3

    invoke-virtual {p0, v6}, Lcom/sunia/HTREnginev2/keg;->c(I)[B

    move-result-object v0

    aput-object v0, p2, v6

    :cond_3
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([B)V

    return-void

    :cond_4
    if-eqz v3, :cond_6

    iget-object p2, p0, Lcom/sunia/HTREnginev2/keg;->u:[[C

    aget-object v0, p2, v6

    if-nez v0, :cond_5

    invoke-virtual {p0, v6}, Lcom/sunia/HTREnginev2/keg;->d(I)[C

    move-result-object v0

    aput-object v0, p2, v6

    :cond_5
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([C)V

    return-void

    :cond_6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    return-void

    :cond_7
    if-nez v2, :cond_b

    if-eqz v7, :cond_9

    iget-object p2, p0, Lcom/sunia/HTREnginev2/keg;->r:[[B

    aget-object v0, p2, v6

    if-nez v0, :cond_8

    invoke-virtual {p0, v6}, Lcom/sunia/HTREnginev2/keg;->e(I)[B

    move-result-object v0

    aput-object v0, p2, v6

    :cond_8
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([B)V

    return-void

    :cond_9
    if-eqz v3, :cond_b

    iget-object p2, p0, Lcom/sunia/HTREnginev2/keg;->s:[[C

    aget-object v0, p2, v6

    if-nez v0, :cond_a

    invoke-virtual {p0, v6}, Lcom/sunia/HTREnginev2/keg;->f(I)[C

    move-result-object v0

    aput-object v0, p2, v6

    :cond_a
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([C)V

    return-void

    :cond_b
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public final writeEnumJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    move-result-wide v0

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumsUsingName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v4, v2

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    const/4 v8, 0x0

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v8

    :goto_0
    and-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v5, v8

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p1, Lcom/alibaba/fastjson2/JSONWriter;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    if-nez v5, :cond_3

    invoke-virtual {p0, p1, v0, v1}, Lcom/sunia/HTREnginev2/keg;->h(Lcom/alibaba/fastjson2/JSONWriter;ILcom/alibaba/fastjson2/SymbolTable;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {p0, p1, p2, v1}, Lcom/sunia/HTREnginev2/keg;->g(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;Lcom/alibaba/fastjson2/SymbolTable;)V

    return-void

    :cond_4
    if-eqz v4, :cond_9

    const/4 p2, -0x1

    if-eqz v1, :cond_7

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    iget-wide v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->i:J

    cmp-long v5, v3, v6

    const/16 v6, 0x20

    if-nez v5, :cond_5

    iget-wide v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->e:J

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result v1

    int-to-long v3, v1

    shl-long/2addr v3, v6

    int-to-long v5, v2

    or-long v2, v3, v5

    iput-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->i:J

    goto :goto_2

    :cond_5
    long-to-int v5, v3

    if-ne v5, v2, :cond_6

    shr-long v1, v3, v6

    long-to-int v1, v1

    goto :goto_2

    :cond_6
    iget-wide v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->e:J

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result v1

    int-to-long v3, v1

    shl-long/2addr v3, v6

    int-to-long v5, v2

    or-long v2, v3, v5

    iput-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->i:J

    goto :goto_2

    :cond_7
    move v1, p2

    :goto_2
    if-eq v1, p2, :cond_8

    neg-int p0, v1

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeSymbol(I)V

    goto :goto_3

    :cond_8
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->h:[B

    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->e:J

    invoke-virtual {p1, p2, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([BJ)V

    :goto_3
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    return-void

    :cond_9
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public final writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeEnum(Ljava/lang/Enum;)V

    return-void
.end method
