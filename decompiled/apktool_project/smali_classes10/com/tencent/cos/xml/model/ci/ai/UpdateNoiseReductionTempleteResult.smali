.class public final Lcom/tencent/cos/xml/model/ci/ai/UpdateNoiseReductionTempleteResult;
.super Lcom/tencent/cos/xml/model/CosXmlResult;
.source "SourceFile"


# instance fields
.field public response:Lcom/tencent/cos/xml/model/ci/ai/UpdateNoiseReductionTempleteResponse;


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

    const-class v0, Lcom/tencent/cos/xml/model/ci/ai/UpdateNoiseReductionTempleteResponse;

    invoke-static {p1, v0}, Lcom/tencent/cos/xml/utils/QCloudXmlUtils;->fromXml(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/cos/xml/model/ci/ai/UpdateNoiseReductionTempleteResponse;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/ai/UpdateNoiseReductionTempleteResult;->response:Lcom/tencent/cos/xml/model/ci/ai/UpdateNoiseReductionTempleteResponse;

    return-void
.end method
