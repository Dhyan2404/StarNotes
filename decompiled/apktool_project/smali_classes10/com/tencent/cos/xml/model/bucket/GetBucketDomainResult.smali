.class public Lcom/tencent/cos/xml/model/bucket/GetBucketDomainResult;
.super Lcom/tencent/cos/xml/model/CosXmlResult;
.source "SourceFile"


# instance fields
.field public domainConfiguration:Lcom/tencent/cos/xml/model/tag/DomainConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/cos/xml/model/CosXmlResult;-><init>()V

    new-instance v0, Lcom/tencent/cos/xml/model/tag/DomainConfiguration;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/tag/DomainConfiguration;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketDomainResult;->domainConfiguration:Lcom/tencent/cos/xml/model/tag/DomainConfiguration;

    return-void
.end method


# virtual methods
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

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketDomainResult;->domainConfiguration:Lcom/tencent/cos/xml/model/tag/DomainConfiguration;

    invoke-static {p1, p0}, Lcom/tencent/cos/xml/transfer/XmlParser;->parseDomainConfiguration(Ljava/io/InputStream;Lcom/tencent/cos/xml/model/tag/DomainConfiguration;)V

    return-void
.end method
