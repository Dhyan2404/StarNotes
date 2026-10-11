.class public Lcom/tencent/cos/xml/transfer/SelectObjectContentConverter;
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
.field private contentListener:Lcom/tencent/cos/xml/listener/SelectObjectContentListener;

.field private localPath:Ljava/lang/String;

.field private messageDecoder:Lcom/tencent/cos/xml/model/tag/eventstreaming/MessageDecoder;

.field private selectObjectContentResult:Lcom/tencent/cos/xml/model/object/SelectObjectContentResult;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/model/object/SelectObjectContentResult;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qcloud/core/http/ResponseBodyConverter;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/SelectObjectContentConverter;->selectObjectContentResult:Lcom/tencent/cos/xml/model/object/SelectObjectContentResult;

    new-instance p1, Lcom/tencent/cos/xml/model/tag/eventstreaming/MessageDecoder;

    invoke-direct {p1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/MessageDecoder;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/SelectObjectContentConverter;->messageDecoder:Lcom/tencent/cos/xml/model/tag/eventstreaming/MessageDecoder;

    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/SelectObjectContentConverter;->localPath:Ljava/lang/String;

    return-void
.end method

.method private closeFileOutputStream(Ljava/io/FileOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Lcom/tencent/qcloud/core/common/QCloudClientException;

    invoke-direct {p1, p0}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method private newFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Lcom/tencent/qcloud/core/common/QCloudClientException;

    invoke-direct {p1, p0}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/Throwable;)V

    throw p1
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

    if-eqz p0, :cond_4

    new-instance p1, Lcom/tencent/cos/xml/model/tag/CosError;

    invoke-direct {p1}, Lcom/tencent/cos/xml/model/tag/CosError;-><init>()V

    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/cos/xml/utils/BaseXmlSlimParser;->parseError(Ljava/io/InputStream;Lcom/tencent/cos/xml/model/tag/CosError;)V

    iget-object p0, p1, Lcom/tencent/cos/xml/model/tag/CosError;->code:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {v1, p0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->setErrorCode(Ljava/lang/String;)Lcom/tencent/qcloud/core/common/QCloudServiceException;

    :cond_1
    iget-object p0, p1, Lcom/tencent/cos/xml/model/tag/CosError;->message:Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-virtual {v1, p0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->setErrorMessage(Ljava/lang/String;)V

    :cond_2
    iget-object p0, p1, Lcom/tencent/cos/xml/model/tag/CosError;->requestId:Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-virtual {v1, p0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->setRequestId(Ljava/lang/String;)V

    :cond_3
    iget-object p0, p1, Lcom/tencent/cos/xml/model/tag/CosError;->resource:Ljava/lang/String;

    if-eqz p0, :cond_4

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

    :cond_4
    :goto_0
    throw v1
.end method


# virtual methods
.method public convert(Lcom/tencent/qcloud/core/http/HttpResponse;)Ljava/lang/Object;
    .locals 5
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

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/SelectObjectContentConverter;->parseCOSXMLError(Lcom/tencent/qcloud/core/http/HttpResponse;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/SelectObjectContentConverter;->selectObjectContentResult:Lcom/tencent/cos/xml/model/object/SelectObjectContentResult;

    invoke-virtual {v0, p1}, Lcom/tencent/cos/xml/model/object/SelectObjectContentResult;->parseResponseBody(Lcom/tencent/qcloud/core/http/HttpResponse;)V

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpResponse;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    const/16 v0, 0x100

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/SelectObjectContentConverter;->localPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/tencent/cos/xml/transfer/SelectObjectContentConverter;->newFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_3

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/SelectObjectContentConverter;->messageDecoder:Lcom/tencent/cos/xml/model/tag/eventstreaming/MessageDecoder;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Lcom/tencent/cos/xml/model/tag/eventstreaming/MessageDecoder;->feed([BII)Ljava/util/List;

    move-result-object v3

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/cos/xml/model/tag/eventstreaming/Message;

    invoke-static {v3}, Lcom/tencent/cos/xml/model/tag/eventstreaming/SelectObjectContentEventUnmarshaller;->unmarshalMessage(Lcom/tencent/cos/xml/model/tag/eventstreaming/Message;)Lcom/tencent/cos/xml/model/tag/eventstreaming/SelectObjectContentEvent;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/cos/xml/transfer/SelectObjectContentConverter;->contentListener:Lcom/tencent/cos/xml/listener/SelectObjectContentListener;

    if-eqz v4, :cond_2

    invoke-interface {v4, v3}, Lcom/tencent/cos/xml/listener/SelectObjectContentListener;->onProcess(Lcom/tencent/cos/xml/model/tag/eventstreaming/SelectObjectContentEvent;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lcom/tencent/cos/xml/transfer/SelectObjectContentConverter;->closeFileOutputStream(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/SelectObjectContentConverter;->selectObjectContentResult:Lcom/tencent/cos/xml/model/object/SelectObjectContentResult;

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Lcom/tencent/qcloud/core/common/QCloudClientException;

    invoke-direct {p1, p0}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setContentListener(Lcom/tencent/cos/xml/listener/SelectObjectContentListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/SelectObjectContentConverter;->contentListener:Lcom/tencent/cos/xml/listener/SelectObjectContentListener;

    return-void
.end method
