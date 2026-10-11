.class public Lcom/tencent/cos/xml/model/bucket/PutBucketWebsiteRequest;
.super Lcom/tencent/cos/xml/model/bucket/BucketRequest;
.source "SourceFile"


# instance fields
.field private websiteConfiguration:Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/model/bucket/BucketRequest;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration;

    invoke-direct {p1}, Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketWebsiteRequest;->websiteConfiguration:Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration;

    return-void
.end method


# virtual methods
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

    const-string v1, "website"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getQueryString()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public setErrorDocument(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketWebsiteRequest;->websiteConfiguration:Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration;

    iget-object v1, v0, Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration;->errorDocument:Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$ErrorDocument;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$ErrorDocument;

    invoke-direct {v1}, Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$ErrorDocument;-><init>()V

    iput-object v1, v0, Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration;->errorDocument:Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$ErrorDocument;

    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketWebsiteRequest;->websiteConfiguration:Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration;->errorDocument:Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$ErrorDocument;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$ErrorDocument;->key:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setIndexDocument(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketWebsiteRequest;->websiteConfiguration:Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration;

    iget-object v1, v0, Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration;->indexDocument:Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$IndexDocument;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$IndexDocument;

    invoke-direct {v1}, Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$IndexDocument;-><init>()V

    iput-object v1, v0, Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration;->indexDocument:Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$IndexDocument;

    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketWebsiteRequest;->websiteConfiguration:Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration;->indexDocument:Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$IndexDocument;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$IndexDocument;->suffix:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setRedirectAllRequestTo(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketWebsiteRequest;->websiteConfiguration:Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration;

    iget-object v1, v0, Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration;->redirectAllRequestTo:Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$RedirectAllRequestTo;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$RedirectAllRequestTo;

    invoke-direct {v1}, Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$RedirectAllRequestTo;-><init>()V

    iput-object v1, v0, Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration;->redirectAllRequestTo:Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$RedirectAllRequestTo;

    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketWebsiteRequest;->websiteConfiguration:Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration;->redirectAllRequestTo:Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$RedirectAllRequestTo;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$RedirectAllRequestTo;->protocol:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setRoutingRules(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$RoutingRule;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketWebsiteRequest;->websiteConfiguration:Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration;

    iget-object v1, v0, Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration;->routingRules:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration;->routingRules:Ljava/util/List;

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration$RoutingRule;

    iget-object v1, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketWebsiteRequest;->websiteConfiguration:Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration;

    iget-object v1, v1, Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration;->routingRules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
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

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketWebsiteRequest;->websiteConfiguration:Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration;

    invoke-static {p0}, Lcom/tencent/cos/xml/transfer/XmlBuilder;->buildWebsiteConfiguration(Lcom/tencent/cos/xml/model/tag/WebsiteConfiguration;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "application/xml"

    invoke-static {v0, p0}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->string(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0

    return-object p0
.end method
