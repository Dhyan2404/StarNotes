.class public final Lcom/tencent/cos/xml/model/bucket/GetBucketAccelerateResult;
.super Lcom/tencent/cos/xml/model/CosXmlResult;
.source "SourceFile"


# instance fields
.field public accelerateConfiguration:Lcom/tencent/cos/xml/model/tag/AccelerateConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/cos/xml/model/CosXmlResult;-><init>()V

    new-instance v0, Lcom/tencent/cos/xml/model/tag/AccelerateConfiguration;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/tag/AccelerateConfiguration;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketAccelerateResult;->accelerateConfiguration:Lcom/tencent/cos/xml/model/tag/AccelerateConfiguration;

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

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketAccelerateResult;->accelerateConfiguration:Lcom/tencent/cos/xml/model/tag/AccelerateConfiguration;

    invoke-static {p1, p0}, Lcom/tencent/cos/xml/transfer/XmlParser;->parseAccelerateConfiguration(Ljava/io/InputStream;Lcom/tencent/cos/xml/model/tag/AccelerateConfiguration;)V

    return-void
.end method
