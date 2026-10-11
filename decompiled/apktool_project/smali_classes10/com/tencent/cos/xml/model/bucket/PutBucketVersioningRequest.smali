.class public Lcom/tencent/cos/xml/model/bucket/PutBucketVersioningRequest;
.super Lcom/tencent/cos/xml/model/bucket/BucketRequest;
.source "SourceFile"


# instance fields
.field private versioningConfiguration:Lcom/tencent/cos/xml/model/tag/VersioningConfiguration;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/model/bucket/BucketRequest;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/tencent/cos/xml/model/tag/VersioningConfiguration;

    invoke-direct {p1}, Lcom/tencent/cos/xml/model/tag/VersioningConfiguration;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketVersioningRequest;->versioningConfiguration:Lcom/tencent/cos/xml/model/tag/VersioningConfiguration;

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

    const-string v1, "versioning"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getQueryString()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public setEnableVersion(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketVersioningRequest;->versioningConfiguration:Lcom/tencent/cos/xml/model/tag/VersioningConfiguration;

    const-string p1, "Enabled"

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/VersioningConfiguration;->status:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketVersioningRequest;->versioningConfiguration:Lcom/tencent/cos/xml/model/tag/VersioningConfiguration;

    const-string p1, "Suspended"

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/VersioningConfiguration;->status:Ljava/lang/String;

    :goto_0
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

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketVersioningRequest;->versioningConfiguration:Lcom/tencent/cos/xml/model/tag/VersioningConfiguration;

    invoke-static {p0}, Lcom/tencent/cos/xml/transfer/XmlBuilder;->buildVersioningConfiguration(Lcom/tencent/cos/xml/model/tag/VersioningConfiguration;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "application/xml"

    invoke-static {v0, p0}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->string(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0

    return-object p0
.end method
