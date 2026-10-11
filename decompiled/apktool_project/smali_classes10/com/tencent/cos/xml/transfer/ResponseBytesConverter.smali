.class public Lcom/tencent/cos/xml/transfer/ResponseBytesConverter;
.super Lcom/tencent/qcloud/core/http/ResponseBodyConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tencent/qcloud/core/http/ResponseBodyConverter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private getObjectBytesResult:Lcom/tencent/cos/xml/model/object/GetObjectBytesResult;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/model/object/GetObjectBytesResult;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qcloud/core/http/ResponseBodyConverter;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/ResponseBytesConverter;->getObjectBytesResult:Lcom/tencent/cos/xml/model/object/GetObjectBytesResult;

    return-void
.end method

.method private parseCOSXMLError(Lcom/tencent/qcloud/core/http/HttpResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;,
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpResponse;->code()I

    move-result p0

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpResponse;->message()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/cos/xml/exception/CosXmlServiceException;

    invoke-direct {v1, v0}, Lcom/tencent/cos/xml/exception/CosXmlServiceException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->setStatusCode(I)V

    const-string p0, "x-cos-request-id"

    invoke-virtual {p1, p0}, Lcom/tencent/qcloud/core/http/HttpResponse;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->setRequestId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpResponse;->byteStream()Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Lcom/tencent/cos/xml/model/tag/CosError;

    invoke-direct {p1}, Lcom/tencent/cos/xml/model/tag/CosError;-><init>()V

    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/cos/xml/utils/BaseXmlSlimParser;->parseError(Ljava/io/InputStream;Lcom/tencent/cos/xml/model/tag/CosError;)V

    iget-object p0, p1, Lcom/tencent/cos/xml/model/tag/CosError;->code:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->setErrorCode(Ljava/lang/String;)Lcom/tencent/qcloud/core/common/QCloudServiceException;

    iget-object p0, p1, Lcom/tencent/cos/xml/model/tag/CosError;->message:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->setErrorMessage(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/tencent/cos/xml/model/tag/CosError;->requestId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->setRequestId(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/tencent/cos/xml/model/tag/CosError;->resource:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->setServiceName(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->POOR_NETWORK:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    invoke-direct {p1, v0, p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->SERVERERROR:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    invoke-direct {p1, v0, p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    throw v1
.end method


# virtual methods
.method public convert(Lcom/tencent/qcloud/core/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/http/HttpResponse<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;,
            Lcom/tencent/qcloud/core/common/QCloudServiceException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/ResponseBytesConverter;->parseCOSXMLError(Lcom/tencent/qcloud/core/http/HttpResponse;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/ResponseBytesConverter;->getObjectBytesResult:Lcom/tencent/cos/xml/model/object/GetObjectBytesResult;

    invoke-virtual {v0, p1}, Lcom/tencent/cos/xml/model/object/GetObjectBytesResult;->parseResponseBody(Lcom/tencent/qcloud/core/http/HttpResponse;)V

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/ResponseBytesConverter;->getObjectBytesResult:Lcom/tencent/cos/xml/model/object/GetObjectBytesResult;

    return-object p0
.end method
