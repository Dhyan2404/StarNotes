.class public final Lcom/tencent/cos/xml/model/object/UploadPartRequest;
.super Lcom/tencent/cos/xml/model/object/BaseMultipartUploadRequest;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/xml/model/object/TransferRequest;


# instance fields
.field private data:[B

.field private fileContentLength:J

.field private fileOffset:J

.field private inputStream:Ljava/io/InputStream;

.field private lastPart:Z

.field private partNumber:I

.field private progressListener:Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

.field private srcPath:Ljava/lang/String;

.field private uploadId:Ljava/lang/String;

.field private uri:Landroid/net/Uri;

.field private url:Ljava/net/URL;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/model/object/BaseMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    .line 2
    iput-wide p1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileOffset:J

    .line 3
    iput-wide p1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileContentLength:J

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setNeedMD5(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;JJLjava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iput p3, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->partNumber:I

    .line 23
    iput-object p4, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->uri:Landroid/net/Uri;

    .line 24
    iput-wide p5, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileOffset:J

    .line 25
    iput-wide p7, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileContentLength:J

    .line 26
    iput-object p9, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->uploadId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iput p3, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->partNumber:I

    .line 13
    iput-object p4, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->uri:Landroid/net/Uri;

    .line 14
    iput-object p5, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->uploadId:Ljava/lang/String;

    const-wide/16 p1, -0x1

    .line 15
    iput-wide p1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileOffset:J

    .line 16
    iput-wide p1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileContentLength:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/io/InputStream;JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iput p3, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->partNumber:I

    .line 41
    iput-object p4, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->inputStream:Ljava/io/InputStream;

    .line 42
    iput-object p7, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->uploadId:Ljava/lang/String;

    const-wide/16 p1, 0x0

    .line 43
    iput-wide p1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileOffset:J

    .line 44
    iput-wide p5, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileContentLength:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iput p3, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->partNumber:I

    .line 35
    iput-object p4, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->inputStream:Ljava/io/InputStream;

    .line 36
    iput-object p5, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->uploadId:Ljava/lang/String;

    const-wide/16 p1, -0x1

    .line 37
    iput-wide p1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileOffset:J

    .line 38
    iput-wide p1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileContentLength:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;)V
    .locals 6

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iput p3, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->partNumber:I

    move-object v0, p0

    move-object v1, p4

    move-wide v2, p5

    move-wide v4, p7

    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->setSrcPath(Ljava/lang/String;JJ)V

    .line 20
    iput-object p9, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->uploadId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iput p3, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->partNumber:I

    .line 7
    iput-object p4, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->srcPath:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->uploadId:Ljava/lang/String;

    const-wide/16 p1, -0x1

    .line 9
    iput-wide p1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileOffset:J

    .line 10
    iput-wide p1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileContentLength:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/net/URL;JJLjava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iput p3, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->partNumber:I

    .line 54
    iput-object p4, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->url:Ljava/net/URL;

    .line 55
    iput-wide p5, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileOffset:J

    .line 56
    iput-wide p7, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileContentLength:J

    .line 57
    iput-object p9, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->uploadId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setNeedMD5(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/net/URL;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iput p3, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->partNumber:I

    .line 47
    iput-object p4, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->url:Ljava/net/URL;

    .line 48
    iput-object p5, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->uploadId:Ljava/lang/String;

    const-wide/16 p1, -0x1

    .line 49
    iput-wide p1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileOffset:J

    .line 50
    iput-wide p1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileContentLength:J

    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setNeedMD5(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iput p3, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->partNumber:I

    .line 29
    iput-object p4, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->data:[B

    .line 30
    iput-object p5, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->uploadId:Ljava/lang/String;

    const-wide/16 p1, -0x1

    .line 31
    iput-wide p1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileOffset:J

    .line 32
    iput-wide p1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileContentLength:J

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

    iget-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->requestURL:Ljava/lang/String;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->partNumber:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->uploadId:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    const-string v1, "uploadID must not be null"

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    const-string v1, "partNumber must be >= 1"

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->srcPath:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->data:[B

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->inputStream:Ljava/io/InputStream;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->uri:Landroid/net/Uri;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->url:Ljava/net/URL;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    const-string v1, "Data Source must not be null"

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    const-string v1, "upload file does not exist"

    if-eqz v0, :cond_6

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->srcPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/tencent/qcloud/core/util/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/qcloud/core/util/QCloudUtils;->doesUriFileExist(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_8
    :goto_3
    return-void
.end method

.method public getData()[B
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->data:[B

    return-object p0
.end method

.method public getFileContentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileContentLength:J

    return-wide v0
.end method

.method public getFileLength()J
    .locals 4

    iget-object v0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->data:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileContentLength:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->srcPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileContentLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->srcPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileContentLength:J

    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileContentLength:J

    return-wide v0
.end method

.method public getFileOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileOffset:J

    return-wide v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0

    const-string p0, "PUT"

    return-object p0
.end method

.method public getPartNumber()I
    .locals 0

    iget p0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->partNumber:I

    return p0
.end method

.method public getProgressListener()Lcom/tencent/cos/xml/listener/CosXmlProgressListener;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->progressListener:Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

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

    iget v1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->partNumber:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "partNumber"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->queryParameters:Ljava/util/Map;

    const-string v1, "uploadId"

    iget-object v2, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->uploadId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getQueryString()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getSrcPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->srcPath:Ljava/lang/String;

    return-object p0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->uploadId:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public isLastPart()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->lastPart:Z

    return p0
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

    iput-object p1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->data:[B

    return-void
.end method

.method public setFileContentLength(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileContentLength:J

    return-void
.end method

.method public setFileOffset(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileOffset:J

    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method public setLastPart(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->lastPart:Z

    return-void
.end method

.method public setPartNumber(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->partNumber:I

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

    iput-object p1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->progressListener:Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

    return-void
.end method

.method public setSrcPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->srcPath:Ljava/lang/String;

    return-void
.end method

.method public setSrcPath(Ljava/lang/String;JJ)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->srcPath:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileOffset:J

    .line 4
    iput-wide p4, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileContentLength:J

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

.method public setUploadId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->uploadId:Ljava/lang/String;

    return-void
.end method

.method public xmlBuilder()Lcom/tencent/qcloud/core/http/RequestBodySerializer;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->srcPath:Ljava/lang/String;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileOffset:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->getContentType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->srcPath:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileOffset:J

    iget-wide v5, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileContentLength:J

    invoke-static/range {v1 .. v6}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->file(Ljava/lang/String;Ljava/io/File;JJ)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->getContentType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->srcPath:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->file(Ljava/lang/String;Ljava/io/File;)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->data:[B

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->getContentType()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->data:[B

    invoke-static {v0, p0}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->bytes(Ljava/lang/String;[B)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->getContentType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/tencent/cos/xml/CosXmlBaseService;->appCachePath:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->inputStream:Ljava/io/InputStream;

    invoke-static {v0, v1, p0}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->stream(Ljava/lang/String;Ljava/io/File;Ljava/io/InputStream;)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object v0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/tencent/qcloud/core/util/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->getContentType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->uri:Landroid/net/Uri;

    invoke-static {}, Lcom/tencent/qcloud/core/util/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object v5

    iget-wide v6, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileOffset:J

    iget-wide v8, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileContentLength:J

    invoke-static/range {v3 .. v9}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->uri(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;JJ)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object v0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->url:Ljava/net/URL;

    if-eqz v0, :cond_6

    iget-wide v3, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileOffset:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->getContentType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->url:Ljava/net/URL;

    iget-wide v3, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileOffset:J

    iget-wide v5, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->fileContentLength:J

    invoke-static/range {v1 .. v6}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->url(Ljava/lang/String;Ljava/net/URL;JJ)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->getContentType()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->url:Ljava/net/URL;

    invoke-static {v0, p0}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->url(Ljava/lang/String;Ljava/net/URL;)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method
