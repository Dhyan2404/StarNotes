.class public Lcom/tencent/cos/xml/model/bucket/PutBucketRefererRequest;
.super Lcom/tencent/cos/xml/model/bucket/BucketRequest;
.source "SourceFile"


# instance fields
.field private final refererConfiguration:Lcom/tencent/cos/xml/model/tag/RefererConfiguration;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/model/bucket/BucketRequest;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/tencent/cos/xml/model/tag/RefererConfiguration;

    invoke-direct {p1}, Lcom/tencent/cos/xml/model/tag/RefererConfiguration;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketRefererRequest;->refererConfiguration:Lcom/tencent/cos/xml/model/tag/RefererConfiguration;

    invoke-virtual {p1, p2}, Lcom/tencent/cos/xml/model/tag/RefererConfiguration;->setEnabled(Z)V

    invoke-virtual {p1, p3}, Lcom/tencent/cos/xml/model/tag/RefererConfiguration;->setRefererType(Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/tencent/cos/xml/model/tag/RefererConfiguration;->setAllowEmptyRefer(Z)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, p1, Lcom/tencent/cos/xml/model/tag/RefererConfiguration;->domainList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public checkParameters()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    invoke-super {p0}, Lcom/tencent/cos/xml/model/bucket/BucketRequest;->checkParameters()V

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketRefererRequest;->refererConfiguration:Lcom/tencent/cos/xml/model/tag/RefererConfiguration;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/RefererConfiguration;->domainList:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    :cond_0
    return-void
.end method

.method public getAllowEmptyRefer()Z
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketRefererRequest;->refererConfiguration:Lcom/tencent/cos/xml/model/tag/RefererConfiguration;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/RefererConfiguration;->getAllowEmptyRefer()Z

    move-result p0

    return p0
.end method

.method public getEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketRefererRequest;->refererConfiguration:Lcom/tencent/cos/xml/model/tag/RefererConfiguration;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/RefererConfiguration;->getEnabled()Z

    move-result p0

    return p0
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

    const-string v1, "referer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getQueryString()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRefererType()Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketRefererRequest;->refererConfiguration:Lcom/tencent/cos/xml/model/tag/RefererConfiguration;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/RefererConfiguration;->getRefererType()Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;

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

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketRefererRequest;->refererConfiguration:Lcom/tencent/cos/xml/model/tag/RefererConfiguration;

    invoke-static {p0}, Lcom/tencent/cos/xml/utils/QCloudXmlUtils;->toXml(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "application/xml"

    invoke-static {v0, p0}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->string(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0

    return-object p0
.end method

.method public isNeedMD5()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setAllowEmptyRefer(Z)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketRefererRequest;->refererConfiguration:Lcom/tencent/cos/xml/model/tag/RefererConfiguration;

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/tag/RefererConfiguration;->setAllowEmptyRefer(Z)V

    return-void
.end method

.method public setDomainList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/tag/RefererConfiguration$Domain;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketRefererRequest;->refererConfiguration:Lcom/tencent/cos/xml/model/tag/RefererConfiguration;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/RefererConfiguration;->domainList:Ljava/util/List;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketRefererRequest;->refererConfiguration:Lcom/tencent/cos/xml/model/tag/RefererConfiguration;

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/tag/RefererConfiguration;->setEnabled(Z)V

    return-void
.end method

.method public setRefererType(Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;)V
    .locals 0
    .param p1    # Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketRefererRequest;->refererConfiguration:Lcom/tencent/cos/xml/model/tag/RefererConfiguration;

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/tag/RefererConfiguration;->setRefererType(Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;)V

    return-void
.end method
