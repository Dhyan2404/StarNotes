.class public Lcom/tencent/cos/xml/model/bucket/GetBucketVersioningResult;
.super Lcom/tencent/cos/xml/model/CosXmlResult;
.source "SourceFile"


# instance fields
.field public versioningConfiguration:Lcom/tencent/cos/xml/model/tag/VersioningConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/cos/xml/model/CosXmlResult;-><init>()V

    new-instance v0, Lcom/tencent/cos/xml/model/tag/VersioningConfiguration;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/tag/VersioningConfiguration;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketVersioningResult;->versioningConfiguration:Lcom/tencent/cos/xml/model/tag/VersioningConfiguration;

    return-void
.end method


# virtual methods
.method public printResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketVersioningResult;->versioningConfiguration:Lcom/tencent/cos/xml/model/tag/VersioningConfiguration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/cos/xml/model/tag/VersioningConfiguration;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/tencent/cos/xml/model/CosXmlResult;->printResult()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public xmlParser(Lcom/tencent/qcloud/core/http/HttpResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpResponse;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketVersioningResult;->versioningConfiguration:Lcom/tencent/cos/xml/model/tag/VersioningConfiguration;

    invoke-static {p1, p0}, Lcom/tencent/cos/xml/transfer/XmlParser;->parseVersioningConfiguration(Ljava/io/InputStream;Lcom/tencent/cos/xml/model/tag/VersioningConfiguration;)V

    return-void
.end method
