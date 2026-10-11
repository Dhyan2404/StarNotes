.class public Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;
.super Lcom/tencent/cos/xml/model/object/UploadRequest;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/xml/model/object/TransferRequest;


# instance fields
.field protected data:[B

.field protected fileLength:J

.field protected inputStream:Ljava/io/InputStream;

.field protected progressListener:Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

.field protected srcPath:Ljava/lang/String;

.field protected strData:Ljava/lang/String;

.field protected uri:Landroid/net/Uri;

.field protected url:Ljava/net/URL;

.field protected urlUploadPolicy:Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/model/object/UploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setNeedMD5(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iput-object p3, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->uri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iput-object p3, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput-object p3, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->srcPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->strData:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iput-object p3, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->url:Ljava/net/URL;

    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setNeedMD5(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iput-object p3, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->data:[B

    return-void
.end method


# virtual methods
.method public checkParameters()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    invoke-super {p0}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->checkParameters()V

    iget-object v0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->srcPath:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->data:[B

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->inputStream:Ljava/io/InputStream;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->strData:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->uri:Landroid/net/Uri;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->url:Ljava/net/URL;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    const-string v1, "Data Source must not be null"

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-string v1, "upload file does not exist"

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->srcPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/tencent/qcloud/core/util/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/qcloud/core/util/QCloudUtils;->doesUriFileExist(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    return-void
.end method

.method public getData()[B
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->data:[B

    return-object p0
.end method

.method public getFileLength()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->srcPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->srcPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->fileLength:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->data:[B

    if-eqz v0, :cond_1

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->fileLength:J

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->strData:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->fileLength:J

    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->fileLength:J

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->inputStream:Ljava/io/InputStream;

    return-object p0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0

    const-string p0, "PUT"

    return-object p0
.end method

.method public getProgressListener()Lcom/tencent/cos/xml/listener/CosXmlProgressListener;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->progressListener:Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

    return-object p0
.end method

.method public getSrcPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->srcPath:Ljava/lang/String;

    return-object p0
.end method

.method public getStrData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->strData:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->url:Ljava/net/URL;

    return-object p0
.end method

.method public getUrlUploadPolicy()Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->urlUploadPolicy:Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;

    return-object p0
.end method

.method public isPriorityLow()Z
    .locals 1

    iget p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->priority:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->data:[B

    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method public setPriorityLow()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->priority:I

    return-void
.end method

.method public setProgressListener(Lcom/tencent/cos/xml/listener/CosXmlProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->progressListener:Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

    return-void
.end method

.method public setSrcPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->srcPath:Ljava/lang/String;

    return-void
.end method

.method public setStrData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->strData:Ljava/lang/String;

    return-void
.end method

.method public setTrafficLimit(J)V
    .locals 1

    const-string v0, "x-cos-traffic-limit"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->uri:Landroid/net/Uri;

    return-void
.end method

.method public setUrl(Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->url:Ljava/net/URL;

    return-void
.end method

.method public setUrlUploadPolicy(Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->urlUploadPolicy:Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;

    return-void
.end method

.method public xmlBuilder()Lcom/tencent/qcloud/core/http/RequestBodySerializer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->srcPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->getContentType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->srcPath:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->file(Ljava/lang/String;Ljava/io/File;)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->data:[B

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->getContentType()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->data:[B

    invoke-static {v0, p0}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->bytes(Ljava/lang/String;[B)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->getContentType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/tencent/cos/xml/CosXmlBaseService;->appCachePath:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->inputStream:Ljava/io/InputStream;

    invoke-static {v0, v1, p0}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->stream(Ljava/lang/String;Ljava/io/File;Ljava/io/InputStream;)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->strData:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->getContentType()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->strData:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->bytes(Ljava/lang/String;[B)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object v0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->url:Ljava/net/URL;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->getContentType()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->url:Ljava/net/URL;

    invoke-static {v0, p0}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->url(Ljava/lang/String;Ljava/net/URL;)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object v0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/tencent/qcloud/core/util/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->getContentType()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->uri:Landroid/net/Uri;

    invoke-static {}, Lcom/tencent/qcloud/core/util/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->uri(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method
