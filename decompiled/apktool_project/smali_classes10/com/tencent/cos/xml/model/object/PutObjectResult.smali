.class public final Lcom/tencent/cos/xml/model/object/PutObjectResult;
.super Lcom/tencent/cos/xml/model/object/BasePutObjectResult;
.source "SourceFile"


# instance fields
.field public callbackResult:Lcom/tencent/cos/xml/model/tag/CallbackResult;

.field public picUploadResult:Lcom/tencent/cos/xml/model/tag/pic/PicUploadResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/model/object/BasePutObjectResult;-><init>()V

    return-void
.end method


# virtual methods
.method public parseResponseBody(Lcom/tencent/qcloud/core/http/HttpResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;,
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/tencent/cos/xml/model/object/BasePutObjectResult;->parseResponseBody(Lcom/tencent/qcloud/core/http/HttpResponse;)V

    :try_start_0
    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lcom/tencent/qcloud/core/http/HttpResponse;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/xml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tencent/cos/xml/model/CosXmlResult;->httpCode:I

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpResponse;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    const-class v0, Lcom/tencent/cos/xml/model/tag/CallbackResult$Error;

    invoke-static {p1, v0}, Lcom/tencent/cos/xml/utils/QCloudXmlUtils;->fromXml(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/cos/xml/model/tag/CallbackResult$Error;

    new-instance v0, Lcom/tencent/cos/xml/model/tag/CallbackResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/tag/CallbackResult;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/object/PutObjectResult;->callbackResult:Lcom/tencent/cos/xml/model/tag/CallbackResult;

    const-string p0, "203"

    iput-object p0, v0, Lcom/tencent/cos/xml/model/tag/CallbackResult;->status:Ljava/lang/String;

    iput-object p1, v0, Lcom/tencent/cos/xml/model/tag/CallbackResult;->error:Lcom/tencent/cos/xml/model/tag/CallbackResult$Error;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpResponse;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    const-class v0, Lcom/tencent/cos/xml/model/tag/pic/PicUploadResult;

    invoke-static {p1, v0}, Lcom/tencent/cos/xml/utils/QCloudXmlUtils;->fromXml(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/cos/xml/model/tag/pic/PicUploadResult;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/object/PutObjectResult;->picUploadResult:Lcom/tencent/cos/xml/model/tag/pic/PicUploadResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpResponse;->string()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/cos/xml/model/tag/CallbackResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/tag/CallbackResult;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/object/PutObjectResult;->callbackResult:Lcom/tencent/cos/xml/model/tag/CallbackResult;

    const-string p0, "200"

    iput-object p0, v0, Lcom/tencent/cos/xml/model/tag/CallbackResult;->status:Ljava/lang/String;

    iput-object p1, v0, Lcom/tencent/cos/xml/model/tag/CallbackResult;->callbackBody:Ljava/lang/String;

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/tencent/cos/xml/model/tag/CallbackResult;->callbackBodyNotBase64:Z

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->POOR_NETWORK:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    invoke-direct {p1, v0, p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    instance-of p1, p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    if-eqz p1, :cond_3

    throw p0

    :cond_3
    new-instance p1, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->SERVERERROR:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    invoke-direct {p1, v0, p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method public picUploadResult()Lcom/tencent/cos/xml/model/tag/pic/PicUploadResult;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/PutObjectResult;->picUploadResult:Lcom/tencent/cos/xml/model/tag/pic/PicUploadResult;

    return-object p0
.end method
