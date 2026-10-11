.class public final Lcom/sunia/HTREnginev2/mdk;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:J

.field public static final c:Lcom/sunia/HTREnginev2/mdk;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "[String"

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/sunia/HTREnginev2/mdk;->a:[B

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/sunia/HTREnginev2/mdk;->b:J

    new-instance v0, Lcom/sunia/HTREnginev2/mdk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/mdk;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/mdk;->c:Lcom/sunia/HTREnginev2/mdk;

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

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    :cond_0
    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString([Ljava/lang/String;)V

    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    :cond_0
    invoke-virtual {p1, p2, p4, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sunia/HTREnginev2/mdk;->a:[B

    sget-wide p3, Lcom/sunia/HTREnginev2/mdk;->b:J

    invoke-virtual {p1, p0, p3, p4}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    :cond_1
    check-cast p2, [Ljava/lang/String;

    array-length p0, p2

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    const/4 p0, 0x0

    :goto_0
    array-length p3, p2

    if-ge p0, p3, :cond_4

    aget-object p3, p2, p0

    if-nez p3, :cond_3

    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide p3, p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object p5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide p5, p5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr p3, p5

    invoke-virtual {p1, p3, p4}, Lcom/alibaba/fastjson2/JSONWriter;->isEnabled(J)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, ""

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
