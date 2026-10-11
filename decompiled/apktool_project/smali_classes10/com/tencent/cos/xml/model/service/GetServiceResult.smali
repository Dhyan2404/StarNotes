.class public final Lcom/tencent/cos/xml/model/service/GetServiceResult;
.super Lcom/tencent/cos/xml/model/CosXmlResult;
.source "SourceFile"


# instance fields
.field public listAllMyBuckets:Lcom/tencent/cos/xml/model/tag/ListAllMyBuckets;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/model/CosXmlResult;-><init>()V

    return-void
.end method


# virtual methods
.method public parseResponseBody(Lcom/tencent/qcloud/core/http/HttpResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;,
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/tencent/cos/xml/model/CosXmlResult;->parseResponseBody(Lcom/tencent/qcloud/core/http/HttpResponse;)V

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpResponse;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    const-class v0, Lcom/tencent/cos/xml/model/tag/ListAllMyBuckets;

    invoke-static {p1, v0}, Lcom/tencent/cos/xml/utils/QCloudXmlUtils;->fromXml(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/cos/xml/model/tag/ListAllMyBuckets;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/service/GetServiceResult;->listAllMyBuckets:Lcom/tencent/cos/xml/model/tag/ListAllMyBuckets;

    return-void
.end method

.method public printResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/model/service/GetServiceResult;->listAllMyBuckets:Lcom/tencent/cos/xml/model/tag/ListAllMyBuckets;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/cos/xml/model/tag/ListAllMyBuckets;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/tencent/cos/xml/model/CosXmlResult;->printResult()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
