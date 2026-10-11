.class public Lcom/tencent/cos/xml/model/object/PutObjectTaggingRequest;
.super Lcom/tencent/cos/xml/model/object/ObjectRequest;
.source "SourceFile"


# instance fields
.field private tagging:Lcom/tencent/cos/xml/model/tag/Tagging;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/model/object/ObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/tencent/cos/xml/model/tag/Tagging;

    invoke-direct {p1}, Lcom/tencent/cos/xml/model/tag/Tagging;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/model/object/PutObjectTaggingRequest;->tagging:Lcom/tencent/cos/xml/model/tag/Tagging;

    return-void
.end method


# virtual methods
.method public addTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/PutObjectTaggingRequest;->tagging:Lcom/tencent/cos/xml/model/tag/Tagging;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/Tagging;->tagSet:Lcom/tencent/cos/xml/model/tag/Tagging$TagSet;

    new-instance v0, Lcom/tencent/cos/xml/model/tag/Tagging$Tag;

    invoke-direct {v0, p1, p2}, Lcom/tencent/cos/xml/model/tag/Tagging$Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/cos/xml/model/tag/Tagging$TagSet;->addTag(Lcom/tencent/cos/xml/model/tag/Tagging$Tag;)V

    return-void
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0

    const-string p0, "PUT"

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

    const-string v1, "tagging"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/object/PutObjectTaggingRequest;->versionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->queryParameters:Ljava/util/Map;

    const-string v2, "versionId"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-super {p0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getQueryString()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRequestBody()Lcom/tencent/qcloud/core/http/RequestBodySerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/PutObjectTaggingRequest;->tagging:Lcom/tencent/cos/xml/model/tag/Tagging;

    invoke-static {p0}, Lcom/tencent/cos/xml/utils/QCloudXmlUtils;->toXml(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "application/xml"

    invoke-static {v0, p0}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->string(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0

    return-object p0
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/object/PutObjectTaggingRequest;->versionId:Ljava/lang/String;

    return-void
.end method
