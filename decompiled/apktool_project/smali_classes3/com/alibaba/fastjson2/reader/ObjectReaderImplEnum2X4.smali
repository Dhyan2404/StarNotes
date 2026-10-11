.class public final Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# static fields
.field public static final c:J

.field public static final d:J


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:J

.field protected final enum0:Ljava/lang/Enum;

.field protected final enum1:Ljava/lang/Enum;

.field protected enumNameHashCode00:J

.field protected enumNameHashCode01:J

.field protected enumNameHashCode10:J

.field protected enumNameHashCode11:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "0"

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->c:J

    const-string v0, "1"

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->d:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;[Ljava/lang/Enum;[J)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->a:Ljava/lang/Class;

    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->b:J

    const/4 p1, 0x0

    aget-object v0, p3, p1

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enum0:Ljava/lang/Enum;

    const/4 v0, 0x1

    aget-object p3, p3, v0

    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enum1:Ljava/lang/Enum;

    move p3, p1

    move v0, p3

    :goto_0
    array-length v1, p4

    if-ge p1, v1, :cond_4

    aget-wide v1, p4, p1

    aget-object v3, p2, p1

    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enum0:Ljava/lang/Enum;

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, p3, 0x1

    if-nez p3, :cond_0

    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enumNameHashCode00:J

    goto :goto_1

    :cond_0
    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enumNameHashCode01:J

    :goto_1
    move p3, v3

    goto :goto_3

    :cond_1
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enum1:Ljava/lang/Enum;

    if-ne v3, v4, :cond_3

    add-int/lit8 v3, v0, 0x1

    if-nez v0, :cond_2

    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enumNameHashCode10:J

    goto :goto_2

    :cond_2
    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enumNameHashCode11:J

    :goto_2
    move v0, v3

    :cond_3
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public getEnum(Ljava/lang/String;)Ljava/lang/Enum;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method

.method public getEnumByHashCode(J)Ljava/lang/Enum;
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enumNameHashCode00:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enumNameHashCode01:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enumNameHashCode10:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enumNameHashCode11:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enum1:Ljava/lang/Enum;

    return-object p0

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enum0:Ljava/lang/Enum;

    return-object p0
.end method

.method public getEnumByOrdinal(I)Ljava/lang/Enum;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enum1:Ljava/lang/Enum;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enum0:Ljava/lang/Enum;

    return-object p0
.end method

.method public getObjectClass()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->a:Ljava/lang/Class;

    return-object p0
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getOffset()I

    move-result p3

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    move-result p4

    const/16 p5, -0x6e

    if-ne p4, p5, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->b:J

    cmp-long p5, v0, v2

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "not support enumType : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/16 p5, -0x10

    const/4 v0, 0x1

    if-lt p4, p5, :cond_2

    const/16 p5, 0x48

    if-gt p4, p5, :cond_2

    move p5, v0

    goto :goto_1

    :cond_2
    const/4 p5, 0x0

    :goto_1
    const/4 v1, 0x0

    if-eqz p5, :cond_5

    const/16 p5, 0x2f

    if-gt p4, p5, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    move-result p4

    :goto_2
    if-nez p4, :cond_4

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enum0:Ljava/lang/Enum;

    goto :goto_6

    :cond_4
    if-ne p4, v0, :cond_d

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enum1:Ljava/lang/Enum;

    goto :goto_6

    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readValueHashCode()J

    move-result-wide p4

    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enumNameHashCode00:J

    cmp-long v0, v2, p4

    if-eqz v0, :cond_c

    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enumNameHashCode01:J

    cmp-long v0, v2, p4

    if-eqz v0, :cond_c

    sget-wide v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->c:J

    cmp-long v0, v2, p4

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enumNameHashCode10:J

    cmp-long v0, v2, p4

    if-eqz v0, :cond_b

    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enumNameHashCode11:J

    cmp-long v0, v2, p4

    if-eqz v0, :cond_b

    sget-wide v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->d:J

    cmp-long p4, v2, p4

    if-nez p4, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    move-result-wide p4

    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enumNameHashCode00:J

    cmp-long v0, v2, p4

    if-eqz v0, :cond_a

    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enumNameHashCode01:J

    cmp-long v0, v2, p4

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enumNameHashCode10:J

    cmp-long v0, v2, p4

    if-eqz v0, :cond_9

    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enumNameHashCode11:J

    cmp-long p4, v2, p4

    if-nez p4, :cond_d

    :cond_9
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enum1:Ljava/lang/Enum;

    goto :goto_6

    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enum0:Ljava/lang/Enum;

    goto :goto_6

    :cond_b
    :goto_4
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enum1:Ljava/lang/Enum;

    goto :goto_6

    :cond_c
    :goto_5
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enum0:Ljava/lang/Enum;

    :cond_d
    :goto_6
    if-nez v1, :cond_f

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getOffset()I

    move-result p0

    if-ne p0, p3, :cond_f

    instance-of p0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p0, :cond_f

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    const-class p1, Ljava/util/List;

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_7

    :cond_e
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class p2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " parses error, JSONReader not forward when field type belongs to collection to avoid OOM"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_7
    return-object v1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getOffset()I

    move-result p3

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isInt()Z

    move-result p4

    const/4 p5, 0x0

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    move-result p4

    if-nez p4, :cond_0

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enum0:Ljava/lang/Enum;

    :goto_0
    move-object p5, p0

    goto :goto_4

    :cond_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_a

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enum1:Ljava/lang/Enum;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readValueHashCode()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enumNameHashCode00:J

    cmp-long p4, v2, v0

    if-eqz p4, :cond_9

    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enumNameHashCode01:J

    cmp-long p4, v2, v0

    if-eqz p4, :cond_9

    sget-wide v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->c:J

    cmp-long p4, v2, v0

    if-nez p4, :cond_3

    goto :goto_3

    :cond_3
    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enumNameHashCode10:J

    cmp-long p4, v2, v0

    if-eqz p4, :cond_8

    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enumNameHashCode11:J

    cmp-long p4, v2, v0

    if-eqz p4, :cond_8

    sget-wide v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->d:J

    cmp-long p4, v2, v0

    if-nez p4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enumNameHashCode00:J

    cmp-long p4, v2, v0

    if-eqz p4, :cond_7

    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enumNameHashCode01:J

    cmp-long p4, v2, v0

    if-nez p4, :cond_5

    goto :goto_1

    :cond_5
    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enumNameHashCode10:J

    cmp-long p4, v2, v0

    if-eqz p4, :cond_6

    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enumNameHashCode11:J

    cmp-long p4, v2, v0

    if-nez p4, :cond_a

    :cond_6
    iget-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enum1:Ljava/lang/Enum;

    goto :goto_4

    :cond_7
    :goto_1
    iget-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enum0:Ljava/lang/Enum;

    goto :goto_4

    :cond_8
    :goto_2
    iget-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enum1:Ljava/lang/Enum;

    goto :goto_4

    :cond_9
    :goto_3
    iget-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;->enum0:Ljava/lang/Enum;

    :cond_a
    :goto_4
    if-nez p5, :cond_c

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getOffset()I

    move-result p0

    if-ne p0, p3, :cond_c

    instance-of p0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p0, :cond_c

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    const-class p1, Ljava/util/List;

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_5

    :cond_b
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class p2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum2X4;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " parses error, JSONReader not forward when field type belongs to collection to avoid OOM"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_5
    return-object p5
.end method
