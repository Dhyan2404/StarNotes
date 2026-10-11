.class public final Lcom/sunia/HTREnginev2/pck;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field public static final a:Lcom/sunia/HTREnginev2/pck;

.field public static final b:[B

.field public static final c:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/pck;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/pck;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/pck;->a:Lcom/sunia/HTREnginev2/pck;

    const-string v0, "[Integer"

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/sunia/HTREnginev2/pck;->b:[B

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/sunia/HTREnginev2/pck;->c:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_1

    sget-object p0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide p2, p0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object p0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide p4, p0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr p2, p4

    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriter;->isEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    :goto_0
    return-void

    :cond_1
    check-cast p2, [Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    const/4 p0, 0x0

    :goto_1
    array-length p3, p2

    if-ge p0, p3, :cond_4

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    :cond_2
    aget-object p3, p2, p0

    if-nez p3, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(Ljava/lang/Integer;)V

    :goto_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    :cond_0
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sunia/HTREnginev2/pck;->b:[B

    sget-wide p3, Lcom/sunia/HTREnginev2/pck;->c:J

    invoke-virtual {p1, p0, p3, p4}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    :cond_1
    check-cast p2, [Ljava/lang/Integer;

    array-length p0, p2

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    const/4 p0, 0x0

    :goto_0
    array-length p3, p2

    if-ge p0, p3, :cond_3

    aget-object p3, p2, p0

    if-nez p3, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(Ljava/lang/Integer;)V

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
