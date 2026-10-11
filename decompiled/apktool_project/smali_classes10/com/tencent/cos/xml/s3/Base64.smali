.class public final enum Lcom/tencent/cos/xml/s3/Base64;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/cos/xml/s3/Base64;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/cos/xml/s3/Base64;

.field private static final codec:Lcom/tencent/cos/xml/s3/Base64Codec;

.field private static final isJaxbAvailable:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/tencent/cos/xml/s3/Base64;

    sput-object v1, Lcom/tencent/cos/xml/s3/Base64;->$VALUES:[Lcom/tencent/cos/xml/s3/Base64;

    new-instance v1, Lcom/tencent/cos/xml/s3/Base64Codec;

    invoke-direct {v1}, Lcom/tencent/cos/xml/s3/Base64Codec;-><init>()V

    sput-object v1, Lcom/tencent/cos/xml/s3/Base64;->codec:Lcom/tencent/cos/xml/s3/Base64Codec;

    :try_start_0
    const-string v1, "javax.xml.bind.DatatypeConverter"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move v1, v0

    :goto_0
    sput-boolean v1, Lcom/tencent/cos/xml/s3/Base64;->isJaxbAvailable:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "org.apache.ws.jaxme.impl.JAXBContextImpl"

    const-string v2, "Apache JaxMe"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string v1, "JAXB is unavailable. Will fallback to SDK implementation which may be less performant.If you are using Java 9+, you will need to include javax.xml.bind:jaxb-api as a dependency."

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "S3"

    invoke-static {v2, v1, v0}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    .line 2
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 3
    invoke-static {p0, v0}, Lcom/tencent/cos/xml/s3/CodecUtils;->sanitize(Ljava/lang/String;[B)I

    move-result p0

    .line 4
    sget-object v1, Lcom/tencent/cos/xml/s3/Base64;->codec:Lcom/tencent/cos/xml/s3/Base64Codec;

    invoke-virtual {v1, v0, p0}, Lcom/tencent/cos/xml/s3/Base64Codec;->decode([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([B)[B
    .locals 2

    if-eqz p0, :cond_1

    .line 5
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tencent/cos/xml/s3/Base64;->codec:Lcom/tencent/cos/xml/s3/Base64Codec;

    array-length v1, p0

    invoke-virtual {v0, p0, v1}, Lcom/tencent/cos/xml/s3/Base64Codec;->decode([BI)[B

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static encode([B)[B
    .locals 1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tencent/cos/xml/s3/Base64;->codec:Lcom/tencent/cos/xml/s3/Base64Codec;

    invoke-virtual {v0, p0}, Lcom/tencent/cos/xml/s3/Base64Codec;->encode([B)[B

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static varargs encodeAsString([B)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/cos/xml/s3/Base64;->codec:Lcom/tencent/cos/xml/s3/Base64Codec;

    invoke-virtual {v0, p0}, Lcom/tencent/cos/xml/s3/Base64Codec;->encode([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/xml/s3/CodecUtils;->toStringDirect([B)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/cos/xml/s3/Base64;
    .locals 1

    const-class v0, Lcom/tencent/cos/xml/s3/Base64;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/s3/Base64;

    return-object p0
.end method

.method public static values()[Lcom/tencent/cos/xml/s3/Base64;
    .locals 1

    sget-object v0, Lcom/tencent/cos/xml/s3/Base64;->$VALUES:[Lcom/tencent/cos/xml/s3/Base64;

    invoke-virtual {v0}, [Lcom/tencent/cos/xml/s3/Base64;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/cos/xml/s3/Base64;

    return-object v0
.end method
