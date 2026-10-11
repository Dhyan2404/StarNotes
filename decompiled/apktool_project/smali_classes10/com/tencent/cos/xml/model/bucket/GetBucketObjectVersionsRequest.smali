.class public Lcom/tencent/cos/xml/model/bucket/GetBucketObjectVersionsRequest;
.super Lcom/tencent/cos/xml/model/bucket/BucketRequest;
.source "SourceFile"


# instance fields
.field private delimiter:Ljava/lang/String;

.field private encodingType:Ljava/lang/String;

.field private keyMarker:Ljava/lang/String;

.field private maxKeys:I

.field private prefix:Ljava/lang/String;

.field private versionIdMarker:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/model/bucket/BucketRequest;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x3e8

    .line 2
    iput p1, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketObjectVersionsRequest;->maxKeys:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v2, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/tencent/cos/xml/model/bucket/GetBucketObjectVersionsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/model/bucket/BucketRequest;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x3e8

    .line 4
    iput p1, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketObjectVersionsRequest;->maxKeys:I

    .line 5
    iput-object p2, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketObjectVersionsRequest;->prefix:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketObjectVersionsRequest;->delimiter:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketObjectVersionsRequest;->keyMarker:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketObjectVersionsRequest;->versionIdMarker:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDelimiter()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketObjectVersionsRequest;->delimiter:Ljava/lang/String;

    return-object p0
.end method

.method public getKeyMarker()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketObjectVersionsRequest;->keyMarker:Ljava/lang/String;

    return-object p0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0

    const-string p0, "GET"

    return-object p0
.end method

.method public getQueryString()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->queryParameters:Ljava/util/Map;

    const-string v1, "versions"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "prefix"

    iget-object v1, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketObjectVersionsRequest;->prefix:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "delimiter"

    iget-object v1, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketObjectVersionsRequest;->delimiter:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "encoding-type"

    iget-object v1, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketObjectVersionsRequest;->encodingType:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key-marker"

    iget-object v1, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketObjectVersionsRequest;->keyMarker:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "version-id-marker"

    iget-object v1, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketObjectVersionsRequest;->versionIdMarker:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketObjectVersionsRequest;->maxKeys:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "max-keys"

    invoke-virtual {p0, v1, v0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getQueryString()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRequestBody()Lcom/tencent/qcloud/core/http/RequestBodySerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVersionIdMarker()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketObjectVersionsRequest;->versionIdMarker:Ljava/lang/String;

    return-object p0
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketObjectVersionsRequest;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketObjectVersionsRequest;->encodingType:Ljava/lang/String;

    return-void
.end method

.method public setKeyMarker(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketObjectVersionsRequest;->keyMarker:Ljava/lang/String;

    return-void
.end method

.method public setMaxKeys(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketObjectVersionsRequest;->maxKeys:I

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketObjectVersionsRequest;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setVersionIdMarker(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketObjectVersionsRequest;->versionIdMarker:Ljava/lang/String;

    return-void
.end method
