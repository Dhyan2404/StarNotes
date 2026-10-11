.class public final Lcom/sunia/HTREnginev2/ick;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Member;

.field public final b:Ljava/lang/Class;

.field public final c:Ljava/lang/Class;

.field public final d:J

.field public e:[B

.field public f:J

.field public final g:[Ljava/lang/Enum;

.field public final h:[Ljava/lang/String;

.field public final i:[J

.field public j:[[B

.field public k:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Member;[Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ick;->b:Ljava/lang/Class;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ick;->c:Ljava/lang/Class;

    iput-wide p5, p0, Lcom/sunia/HTREnginev2/ick;->d:J

    iput-object p3, p0, Lcom/sunia/HTREnginev2/ick;->a:Ljava/lang/reflect/Member;

    instance-of p1, p3, Ljava/lang/reflect/AccessibleObject;

    if-eqz p1, :cond_0

    :try_start_0
    check-cast p3, Ljava/lang/reflect/AccessibleObject;

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Enum;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ick;->g:[Ljava/lang/Enum;

    array-length p2, p1

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ick;->h:[Ljava/lang/String;

    array-length p1, p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ick;->i:[J

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/sunia/HTREnginev2/ick;->g:[Ljava/lang/Enum;

    array-length p3, p2

    if-ge p1, p3, :cond_1

    aget-object p2, p2, p1

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/sunia/HTREnginev2/ick;->h:[Ljava/lang/String;

    aput-object p2, p3, p1

    iget-object p3, p0, Lcom/sunia/HTREnginev2/ick;->i:[J

    invoke-static {p2}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide p5

    aput-wide p5, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iput-object p4, p0, Lcom/sunia/HTREnginev2/ick;->k:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    move-object p3, p2

    check-cast p3, Ljava/lang/Enum;

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    :cond_0
    iget-object p4, p0, Lcom/sunia/HTREnginev2/ick;->a:Ljava/lang/reflect/Member;

    if-eqz p4, :cond_2

    :try_start_0
    instance-of p5, p4, Ljava/lang/reflect/Field;

    if-eqz p5, :cond_1

    check-cast p4, Ljava/lang/reflect/Field;

    invoke-virtual {p4, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    goto :goto_0

    :cond_1
    check-cast p4, Ljava/lang/reflect/Method;

    const/4 p5, 0x0

    new-array p5, p5, [Ljava/lang/Object;

    invoke-virtual {p4, p2, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    :goto_0
    if-eq p4, p2, :cond_2

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "getEnumValue error"

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->isEnabled(Lcom/alibaba/fastjson2/JSONWriter$Feature;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p2, p0, Lcom/sunia/HTREnginev2/ick;->k:[Ljava/lang/String;

    if-eqz p2, :cond_4

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ick;->k:[Ljava/lang/String;

    array-length p4, p0

    if-ge p2, p4, :cond_4

    aget-object p0, p0, p2

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_5

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    :cond_5
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    invoke-virtual {p1, p2, p4, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/sunia/HTREnginev2/ick;->e:[B

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/sunia/HTREnginev2/ick;->c:Ljava/lang/Class;

    invoke-static {p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object p4

    iput-object p4, p0, Lcom/sunia/HTREnginev2/ick;->e:[B

    invoke-static {p3}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/sunia/HTREnginev2/ick;->f:J

    :cond_0
    iget-object p3, p0, Lcom/sunia/HTREnginev2/ick;->e:[B

    iget-wide p4, p0, Lcom/sunia/HTREnginev2/ick;->f:J

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    :cond_1
    check-cast p2, Ljava/lang/Enum;

    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->isEnabled(Lcom/alibaba/fastjson2/JSONWriter$Feature;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/sunia/HTREnginev2/ick;->j:[[B

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/sunia/HTREnginev2/ick;->h:[Ljava/lang/String;

    array-length p3, p3

    new-array p3, p3, [[B

    iput-object p3, p0, Lcom/sunia/HTREnginev2/ick;->j:[[B

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    iget-object p3, p0, Lcom/sunia/HTREnginev2/ick;->j:[[B

    aget-object p3, p3, p2

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/sunia/HTREnginev2/ick;->h:[Ljava/lang/String;

    aget-object p3, p3, p2

    invoke-static {p3}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object p3

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ick;->j:[[B

    aput-object p3, p0, p2

    :cond_4
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw([B)V

    :goto_0
    return-void
.end method
