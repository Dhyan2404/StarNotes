.class public final Lcom/tencent/cos/xml/model/bucket/PutBucketLifecycleRequest;
.super Lcom/tencent/cos/xml/model/bucket/BucketRequest;
.source "SourceFile"


# instance fields
.field private lifecycleConfiguration:Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/model/bucket/BucketRequest;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration;

    invoke-direct {p1}, Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketLifecycleRequest;->lifecycleConfiguration:Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, p1, Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration;->rules:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getLifecycleConfiguration()Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketLifecycleRequest;->lifecycleConfiguration:Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration;

    return-object p0
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

    const-string v1, "lifecycle"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getQueryString()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public isNeedMD5()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setRuleList(Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$Rule;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketLifecycleRequest;->lifecycleConfiguration:Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration;->rules:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setRuleList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$Rule;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketLifecycleRequest;->lifecycleConfiguration:Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration;->rules:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public xmlBuilder()Lcom/tencent/qcloud/core/http/RequestBodySerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketLifecycleRequest;->lifecycleConfiguration:Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration;

    invoke-static {p0}, Lcom/tencent/cos/xml/transfer/XmlBuilder;->buildLifecycleConfigurationXML(Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "application/xml"

    invoke-static {v0, p0}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->string(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0

    return-object p0
.end method
