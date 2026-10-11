.class public Lcom/tencent/cos/xml/transfer/COSUploadTask;
.super Lcom/tencent/cos/xml/transfer/COSTransferTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;,
        Lcom/tencent/cos/xml/transfer/COSUploadTask$SimpleUploadTask;,
        Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;,
        Lcom/tencent/cos/xml/transfer/COSUploadTask$UploadPart;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "QCloudUpload"

.field private static final UPLOAD_CONCURRENT:I = 0x2

.field private static uploadTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private mForceSimpleUpload:Z

.field private mMaxPartSize:J

.field private mPutObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

.field private multipartUploadThreshold:J

.field private uploadLength:J

.field private uploadTask:Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;

.field private verifyCRC64:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x2

    const/4 v2, 0x2

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const v0, 0x7fffffff

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v7, Lcom/tencent/cos/xml/transfer/COSTransferTask$TaskThreadFactory;

    const-string v0, "QCloudUpload-"

    const/16 v9, 0x8

    invoke-direct {v7, v0, v9}, Lcom/tencent/cos/xml/transfer/COSTransferTask$TaskThreadFactory;-><init>(Ljava/lang/String;I)V

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/tencent/cos/xml/transfer/COSUploadTask;->uploadTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/cos/xml/crypto/COSDirect;Lcom/tencent/cos/xml/model/object/PutObjectRequest;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/transfer/COSTransferTask;-><init>(Lcom/tencent/cos/xml/crypto/COSDirect;Lcom/tencent/cos/xml/model/object/ObjectRequest;)V

    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->multipartUploadThreshold:J

    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->mMaxPartSize:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->verifyCRC64:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->mForceSimpleUpload:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->uploadLength:J

    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->mPutObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    return-void
.end method

.method public static synthetic access$100(Lcom/tencent/cos/xml/transfer/COSUploadTask;)J
    .locals 2

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask;->getUploadLength()J

    move-result-wide v0

    return-wide v0
.end method

.method private buildPutObjectResult(Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;)Lcom/tencent/cos/xml/model/object/PutObjectResult;
    .locals 1

    new-instance p0, Lcom/tencent/cos/xml/model/object/PutObjectResult;

    invoke-direct {p0}, Lcom/tencent/cos/xml/model/object/PutObjectResult;-><init>()V

    iget v0, p1, Lcom/tencent/cos/xml/model/CosXmlResult;->httpCode:I

    iput v0, p0, Lcom/tencent/cos/xml/model/CosXmlResult;->httpCode:I

    iget-object v0, p1, Lcom/tencent/cos/xml/model/CosXmlResult;->httpMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlResult;->httpMessage:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/cos/xml/model/CosXmlResult;->headers:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlResult;->headers:Ljava/util/Map;

    iget-object v0, p1, Lcom/tencent/cos/xml/model/CosXmlResult;->accessUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlResult;->accessUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;->completeMultipartUpload:Lcom/tencent/cos/xml/model/tag/CompleteMultipartUploadResult;

    iget-object v0, p1, Lcom/tencent/cos/xml/model/tag/CompleteMultipartUploadResult;->eTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/cos/xml/model/object/BasePutObjectResult;->eTag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/tag/CompleteMultipartUploadResult;->getPicUploadResult()Lcom/tencent/cos/xml/model/tag/pic/PicUploadResult;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/model/object/PutObjectResult;->picUploadResult:Lcom/tencent/cos/xml/model/tag/pic/PicUploadResult;

    return-object p0
.end method

.method private getUploadLength()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->uploadLength:J

    return-wide v0
.end method

.method private isMultipartUploadLength()Z
    .locals 4

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->uploadLength:J

    iget-wide v2, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->multipartUploadThreshold:J

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMultipartUploadRequest()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->mPutObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->getSrcPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->mPutObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->getUri()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private shouldMultipartUpload()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->mForceSimpleUpload:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask;->isMultipartUploadRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask;->isMultipartUploadLength()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cancel()V

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->uploadTask:Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cancel()V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->uploadTask:Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;

    instance-of v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;

    invoke-static {p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->access$000(Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;)V

    :cond_1
    return-void
.end method

.method public cancel(Z)V
    .locals 1

    .line 6
    invoke-super {p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cancel()V

    .line 7
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->uploadTask:Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cancel(Z)V

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->uploadTask:Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;

    instance-of p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;

    if-eqz p1, :cond_1

    .line 10
    check-cast p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;

    invoke-static {p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->access$000(Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;)V

    :cond_1
    return-void
.end method

.method public checking()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    invoke-super {p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->checking()V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->mPutObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    new-instance v1, Lcom/tencent/cos/xml/transfer/COSUploadTask$1;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask$1;-><init>(Lcom/tencent/cos/xml/transfer/COSUploadTask;)V

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->setProgressListener(Lcom/tencent/cos/xml/listener/CosXmlProgressListener;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->mPutObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->getData()[B

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->mPutObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->getInputStream()Ljava/io/InputStream;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->mPutObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->getSrcPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->mPutObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->getUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->mPutObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-virtual {v3}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->getUrl()Ljava/net/URL;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->mPutObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-virtual {v3}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->getStrData()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->mPutObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-virtual {v4}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->getUrlUploadPolicy()Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    const-string v1, "Only support upload file path, uri, bytes array and string"

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->uploadLength:J

    goto/16 :goto_1

    :cond_2
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed, please check permission to read this file."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is directory."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not exist."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    if-eqz v2, :cond_7

    invoke-static {}, Lcom/tencent/qcloud/core/util/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qcloud/core/util/QCloudUtils;->doesUriFileExist(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qcloud/core/util/QCloudUtils;->getUriContentLength(Landroid/net/Uri;Landroid/content/ContentResolver;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->uploadLength:J

    goto :goto_1

    :cond_6
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_7
    if-eqz v0, :cond_8

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->uploadLength:J

    goto :goto_1

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->uploadLength:J

    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskId:Ljava/lang/String;

    iget-wide v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->uploadLength:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "QCloudUpload"

    const-string v2, "checkout upload length=%d"

    invoke-static {v1, v0, v2, p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public execute()Lcom/tencent/cos/xml/model/CosXmlResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask;->shouldMultipartUpload()Z

    move-result v0

    const-string v1, "QCloudUpload"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskId:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "start upload with multipart upload"

    invoke-static {v1, v0, v3, v2}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;

    iget-object v5, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    iget-object v6, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->mPutObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    iget-object v7, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->mTransferTaskCts:Lbolts/CancellationTokenSource;

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask;->getUploadLength()J

    move-result-wide v8

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;-><init>(Lcom/tencent/cos/xml/crypto/COSDirect;Lcom/tencent/cos/xml/model/object/PutObjectRequest;Lbolts/CancellationTokenSource;J)V

    iget-wide v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->mMaxPartSize:J

    invoke-static {v0, v1, v2}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->access$202(Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;J)J

    iget-boolean v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->verifyCRC64:Z

    invoke-static {v0, v1}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->access$302(Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;Z)Z

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->uploadTask:Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskId:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->key:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "start upload with simple upload."

    invoke-static {v1, v0, v3, v2}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/tencent/cos/xml/transfer/COSUploadTask$SimpleUploadTask;

    iget-object v5, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    iget-object v6, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->mPutObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    iget-object v7, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->mTransferTaskCts:Lbolts/CancellationTokenSource;

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask;->getUploadLength()J

    move-result-wide v8

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/tencent/cos/xml/transfer/COSUploadTask$SimpleUploadTask;-><init>(Lcom/tencent/cos/xml/crypto/COSDirect;Lcom/tencent/cos/xml/model/object/PutObjectRequest;Lbolts/CancellationTokenSource;J)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->uploadTask:Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;

    :goto_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->uploadTask:Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->transferTaskMetrics:Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;

    iput-object v1, v0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->mTransferMetrics:Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->uploadTask:Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->setTaskId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->uploadTask:Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->mPutObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->upload(Lcom/tencent/cos/xml/model/object/PutObjectRequest;)Lcom/tencent/cos/xml/model/CosXmlResult;

    move-result-object v0

    instance-of v1, v0, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;

    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/COSUploadTask;->buildPutObjectResult(Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;)Lcom/tencent/cos/xml/model/object/PutObjectResult;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public executor()Ljava/util/concurrent/Executor;
    .locals 0

    sget-object p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->uploadTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public forceSimpleUpload(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->mForceSimpleUpload:Z

    return-void
.end method

.method public pause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->pause()V

    .line 2
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->uploadTask:Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cancel()V

    :cond_0
    return-void
.end method

.method public pause(Z)V
    .locals 0

    .line 4
    invoke-super {p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->pause()V

    .line 5
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->uploadTask:Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cancel(Z)V

    :cond_0
    return-void
.end method

.method public setPartSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->mMaxPartSize:J

    return-void
.end method

.method public setSliceSizeThreshold(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->multipartUploadThreshold:J

    return-void
.end method

.method public setVerifyCRC64(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask;->verifyCRC64:Z

    return-void
.end method

.method public tag()Ljava/lang/String;
    .locals 0

    const-string p0, "QCloudUpload"

    return-object p0
.end method
