.class public final Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;
.super Lcom/tencent/cos/xml/transfer/COSXMLTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$COSXMLUploadTaskResult;,
        Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$COSXMLUploadTaskRequest;,
        Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$MultiUploadsStateListener;,
        Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$WeightStrategy;,
        Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;
    }
.end annotation


# static fields
.field private static executor:Ljava/util/concurrent/Executor;


# instance fields
.field private ALREADY_SEND_DATA_LEN:Ljava/util/concurrent/atomic/AtomicLong;

.field private SYNC_UPLOAD_PART:Ljava/lang/Object;

.field private final TAG:Ljava/lang/String;

.field private UPLOAD_PART_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

.field private bytes:[B

.field private completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

.field private fileLength:J

.field forceSimpleUpload:Z

.field private headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

.field httpTaskMetrics:Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

.field private initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

.field private inputStream:Ljava/io/InputStream;

.field private isSliceUpload:Z

.field private listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

.field protected multiUploadSizeDivision:J

.field private multiUploadsStateListenerHandler:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$MultiUploadsStateListener;

.field private partStructMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;",
            ">;"
        }
    .end annotation
.end field

.field priorityLow:Z

.field private putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

.field private sendingCompleteRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private simpleAlreadySendDataLen:J

.field protected sliceSize:J

.field srcPath:Ljava/lang/String;

.field private startTime:J

.field private uploadId:Ljava/lang/String;

.field private uploadPartRequestLongMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tencent/cos/xml/model/object/UploadPartRequest;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private uri:Landroid/net/Uri;

.field private url:Ljava/net/URL;

.field private urlUploadPolicy:Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;

.field private weightStrategy:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$WeightStrategy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Lcom/tencent/cos/xml/model/object/PutObjectRequest;Ljava/lang/String;)V
    .locals 3

    .line 33
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getBucket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->getConfig()Lcom/tencent/cos/xml/CosXmlServiceConfig;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->getPath(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;-><init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->getUri()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uri:Landroid/net/Uri;

    .line 35
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->getUrl()Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->url:Ljava/net/URL;

    .line 36
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->getUrlUploadPolicy()Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->urlUploadPolicy:Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;

    .line 37
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->getSrcPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->srcPath:Ljava/lang/String;

    .line 38
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->getData()[B

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->bytes:[B

    .line 39
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->inputStream:Ljava/io/InputStream;

    .line 40
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getQueryString()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->queries:Ljava/util/Map;

    .line 41
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->headers:Ljava/util/Map;

    .line 42
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getNoSignHeaders()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->noSignHeaders:Ljava/util/Set;

    .line 43
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->isNeedMD5()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->isNeedMd5:Z

    .line 44
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getCredentialProvider()Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    .line 45
    iput-object p3, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uploadId:Ljava/lang/String;

    .line 46
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->isPriorityLow()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->priorityLow:Z

    return-void
.end method

.method private constructor <init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSXMLTask;-><init>()V

    const-string v0, "UploadTask"

    .line 2
    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->isSliceUpload:Z

    .line 4
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->SYNC_UPLOAD_PART:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->startTime:J

    .line 6
    iput-wide v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->simpleAlreadySendDataLen:J

    .line 7
    iput-boolean v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->priorityLow:Z

    .line 8
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->sendingCompleteRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    new-instance v0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$WeightStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$WeightStrategy;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$1;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->weightStrategy:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$WeightStrategy;

    .line 10
    new-instance v0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$1;

    invoke-direct {v0, p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$1;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->multiUploadsStateListenerHandler:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$MultiUploadsStateListener;

    .line 11
    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    .line 12
    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->region:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    .line 15
    new-instance p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    invoke-direct {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->httpTaskMetrics:Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;-><init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iput-object p5, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uri:Landroid/net/Uri;

    .line 21
    iput-object p6, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uploadId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;-><init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iput-object p5, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;-><init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iput-object p5, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->srcPath:Ljava/lang/String;

    .line 18
    iput-object p6, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uploadId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;-><init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iput-object p5, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->url:Ljava/net/URL;

    .line 24
    iput-object p6, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->urlUploadPolicy:Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;

    .line 25
    iput-object p7, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uploadId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;-><init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iput-object p5, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->url:Ljava/net/URL;

    .line 28
    iput-object p6, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uploadId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;-><init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-object p5, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->bytes:[B

    return-void
.end method

.method private abortMultiUpload(Lcom/tencent/cos/xml/CosXmlSimpleService;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uploadId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/tencent/cos/xml/model/object/AbortMultiUploadRequest;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/tencent/cos/xml/model/object/AbortMultiUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->region:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRegion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    invoke-virtual {v1, v0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setCredentialProvider(Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->onSignatureListener:Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;->onGetSign(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setSign(Ljava/lang/String;)V

    :cond_1
    const-string v0, "AbortMultiUploadRequest"

    invoke-virtual {p0, v1, v0}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->getHttpMetrics(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$14;

    invoke-direct {v0, p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$14;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)V

    invoke-virtual {p1, v1, v0}, Lcom/tencent/cos/xml/CosXmlSimpleService;->abortMultiUploadAsync(Lcom/tencent/cos/xml/model/object/AbortMultiUploadRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;Lcom/tencent/cos/xml/CosXmlSimpleService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->multiUploadPart(Lcom/tencent/cos/xml/CosXmlSimpleService;)V

    return-void
.end method

.method public static synthetic access$1002(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uploadId:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1100(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;Lcom/tencent/cos/xml/model/tag/InitiateMultipartUpload;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->dispatchInitMultipleUpload(Lcom/tencent/cos/xml/model/tag/InitiateMultipartUpload;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)Lcom/tencent/cos/xml/model/object/ListPartsRequest;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)Ljava/net/URL;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->url:Ljava/net/URL;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;Lcom/tencent/cos/xml/model/object/ListPartsResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->updateSlicePart(Lcom/tencent/cos/xml/model/object/ListPartsResult;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->openUploadFileStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;Lcom/tencent/cos/xml/model/tag/ListParts;Ljava/io/InputStream;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->verifyUploadParts(Lcom/tencent/cos/xml/model/tag/ListParts;Ljava/io/InputStream;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1700(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->reTrans()V

    return-void
.end method

.method public static synthetic access$1800()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static synthetic access$1900(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)Lcom/tencent/cos/xml/model/object/HeadObjectResult;
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->headObjectToCheckCRC64()Lcom/tencent/cos/xml/model/object/HeadObjectResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;Lcom/tencent/cos/xml/CosXmlSimpleService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->completeMultiUpload(Lcom/tencent/cos/xml/CosXmlSimpleService;)V

    return-void
.end method

.method public static synthetic access$2000(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->onTransferComplete(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V

    return-void
.end method

.method public static synthetic access$2100(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->ALREADY_SEND_DATA_LEN:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$WeightStrategy;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->weightStrategy:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$WeightStrategy;

    return-object p0
.end method

.method public static synthetic access$2400(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uploadPartRequestLongMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$2500(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->fileLength:J

    return-wide v0
.end method

.method public static synthetic access$2600(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->SYNC_UPLOAD_PART:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2700(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->UPLOAD_PART_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic access$2800(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    return-object p0
.end method

.method public static synthetic access$2900(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->sendingCompleteRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->reportException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->onUpdateInProgress()V

    return-void
.end method

.method public static synthetic access$502(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->simpleAlreadySendDataLen:J

    return-wide p1
.end method

.method public static synthetic access$600(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->dispatchProgressChange(JJ)V

    return-void
.end method

.method public static synthetic access$700(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)Lcom/tencent/cos/xml/model/object/PutObjectRequest;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$MultiUploadsStateListener;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->multiUploadsStateListenerHandler:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$MultiUploadsStateListener;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    return-object p0
.end method

.method private clear()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uploadPartRequestLongMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->partStructMap:Ljava/util/Map;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method private completeMultiUpload(Lcom/tencent/cos/xml/CosXmlSimpleService;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->sendingCompleteRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uploadId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRegion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->partStructMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    iget v3, v1, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->partNumber:I

    iget-object v1, v1, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->eTag:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;->setPartNumberAndETag(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    iget-boolean v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->isNeedMd5:Z

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setNeedMD5(Z)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->headers:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->getCustomCompleteHeaders(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRequestHeaders(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->noSignHeaders:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addNoSignHeader(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setCredentialProvider(Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->onSignatureListener:Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    invoke-interface {v0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;->onGetSign(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setSign(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    const-string v1, "CompleteMultiUploadRequest"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->getHttpMetrics(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    new-instance v1, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$13;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$13;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)V

    invoke-virtual {p1, v0, v1}, Lcom/tencent/cos/xml/CosXmlSimpleService;->completeMultiUploadAsync(Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method

.method private dispatchInitMultipleUpload(Lcom/tencent/cos/xml/model/tag/InitiateMultipartUpload;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->initMultipleUploadListener:Lcom/tencent/cos/xml/transfer/InitMultipleUploadListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tencent/cos/xml/transfer/InitMultipleUploadListener;->onSuccess(Lcom/tencent/cos/xml/model/tag/InitiateMultipartUpload;)V

    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->internalInitMultipleUploadListener:Lcom/tencent/cos/xml/transfer/InitMultipleUploadListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/tencent/cos/xml/transfer/InitMultipleUploadListener;->onSuccess(Lcom/tencent/cos/xml/model/tag/InitiateMultipartUpload;)V

    :cond_1
    return-void
.end method

.method private dispatchProgressChange(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlProgressListener:Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/qcloud/core/common/QCloudProgressListener;->onProgress(JJ)V

    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->internalProgressListener:Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/qcloud/core/common/QCloudProgressListener;->onProgress(JJ)V

    :cond_1
    return-void
.end method

.method private getCRCValue(Lcom/tencent/cos/xml/model/object/HeadObjectResult;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p1, Lcom/tencent/cos/xml/model/CosXmlResult;->headers:Ljava/util/Map;

    const-string p1, "x-cos-hash-crc64ecma"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCustomCompleteHeaders(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string p1, "Content-Type"

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private getIndexOfParts(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/tag/ListParts$Part;",
            ">;)I"
        }
    .end annotation

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/cos/xml/model/tag/ListParts$Part;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->partNumber:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v2, p0

    move p0, v1

    move v3, p0

    :goto_0
    if-ge p0, v0, :cond_2

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/cos/xml/model/tag/ListParts$Part;

    iget-object v5, v4, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->partNumber:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v3, v1

    if-eq v5, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v4, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->partNumber:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v2, p0, 0x1

    move v6, v2

    move v2, p0

    move p0, v6

    goto :goto_0

    :cond_2
    :goto_1
    return v2
.end method

.method private headObjectToCheckCRC64()Lcom/tencent/cos/xml/model/object/HeadObjectResult;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    new-instance v0, Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tencent/cos/xml/model/object/HeadObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setCredentialProvider(Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/CosXmlSimpleService;->headObject(Lcom/tencent/cos/xml/model/object/HeadObjectRequest;)Lcom/tencent/cos/xml/model/object/HeadObjectResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->getCRCValue(Lcom/tencent/cos/xml/model/object/HeadObjectResult;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/cos/xml/utils/DigestUtils;->getBigIntFromString(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->openUploadFileStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/xml/utils/DigestUtils;->getCRC64(Ljava/io/InputStream;)J

    move-result-wide v3

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private initMultiUpload(Lcom/tencent/cos/xml/CosXmlSimpleService;)V
    .locals 3

    new-instance v0, Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRegion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->headers:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRequestHeaders(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->noSignHeaders:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addNoSignHeader(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setCredentialProvider(Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->onSignatureListener:Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    invoke-interface {v0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;->onGetSign(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setSign(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->httpTaskMetrics:Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->getConfig()Lcom/tencent/cos/xml/CosXmlServiceConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRequestHost(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->setDomainName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    const-string v1, "InitMultipartUploadRequest"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->getHttpMetrics(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    new-instance v1, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$5;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$5;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)V

    invoke-virtual {p1, v0, v1}, Lcom/tencent/cos/xml/CosXmlSimpleService;->initMultipartUploadAsync(Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method

.method private initSlicePart(JJI)V
    .locals 9

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->sliceSize:J

    div-long v0, p3, v0

    long-to-int v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    new-instance v4, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;

    invoke-direct {v4, v3}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$1;)V

    iput-boolean v1, v4, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->isAlreadyUpload:Z

    add-int v3, p5, v2

    iput v3, v4, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->partNumber:I

    int-to-long v5, v2

    iget-wide v7, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->sliceSize:J

    mul-long/2addr v5, v7

    add-long/2addr v5, p1

    iput-wide v5, v4, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->offset:J

    iput-wide v7, v4, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->sliceSize:J

    iget-object v5, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->partStructMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->sliceSize:J

    rem-long v4, p3, v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    new-instance v2, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;

    invoke-direct {v2, v3}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$1;)V

    iput-boolean v1, v2, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->isAlreadyUpload:Z

    add-int v1, p5, v0

    iput v1, v2, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->partNumber:I

    int-to-long v3, v0

    iget-wide v5, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->sliceSize:J

    mul-long/2addr v3, v5

    add-long/2addr v3, p1

    iput-wide v3, v2, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->offset:J

    add-long/2addr p1, p3

    sub-long/2addr p1, v3

    iput-wide p1, v2, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->sliceSize:J

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->partStructMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->UPLOAD_PART_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/2addr p5, v0

    add-int/lit8 p5, p5, -0x1

    invoke-virtual {p1, p5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    return-void
.end method

.method private isFixSliceSize(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/tag/ListParts$Part;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/cos/xml/model/tag/ListParts$Part;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->partStructMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->partNumber:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->partStructMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->partNumber:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;

    iget-wide v1, v1, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->sliceSize:J

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->size:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private listMultiUpload(Lcom/tencent/cos/xml/CosXmlSimpleService;)V
    .locals 4

    new-instance v0, Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uploadId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/cos/xml/model/object/ListPartsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRegion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->headers:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRequestHeaders(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->noSignHeaders:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addNoSignHeader(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setCredentialProvider(Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->onSignatureListener:Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    invoke-interface {v0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;->onGetSign(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setSign(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->httpTaskMetrics:Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->getConfig()Lcom/tencent/cos/xml/CosXmlServiceConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRequestHost(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->setDomainName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    const-string v1, "ListPartsRequest"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->getHttpMetrics(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    new-instance v1, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$7;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$7;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)V

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setTaskStateListener(Lcom/tencent/qcloud/core/common/QCloudTaskStateListener;)V

    new-instance v0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;

    invoke-direct {v0, p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)V

    invoke-virtual {p0, p1, v0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->listAllPartsAsync(Lcom/tencent/cos/xml/CosXmlSimpleService;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method

.method private multiUpload(Lcom/tencent/cos/xml/CosXmlSimpleService;)V
    .locals 6

    const-wide/16 v1, 0x0

    iget-wide v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->fileLength:J

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->initSlicePart(JJI)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uploadId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->listMultiUpload(Lcom/tencent/cos/xml/CosXmlSimpleService;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->initMultiUpload(Lcom/tencent/cos/xml/CosXmlSimpleService;)V

    :goto_0
    return-void
.end method

.method private multiUploadPart(Lcom/tencent/cos/xml/CosXmlSimpleService;)V
    .locals 14

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->partStructMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;

    iget-boolean v3, v2, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->isAlreadyUpload:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v8, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->srcPath:Ljava/lang/String;

    if-eqz v8, :cond_1

    new-instance v1, Lcom/tencent/cos/xml/model/object/UploadPartRequest;

    iget-object v5, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    iget v7, v2, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->partNumber:I

    iget-wide v9, v2, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->offset:J

    iget-wide v11, v2, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->sliceSize:J

    iget-object v13, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uploadId:Ljava/lang/String;

    move-object v4, v1

    invoke-direct/range {v4 .. v13}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v7, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uri:Landroid/net/Uri;

    if-eqz v7, :cond_2

    new-instance v1, Lcom/tencent/cos/xml/model/object/UploadPartRequest;

    iget-object v4, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    iget v6, v2, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->partNumber:I

    iget-wide v8, v2, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->offset:J

    iget-wide v10, v2, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->sliceSize:J

    iget-object v12, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uploadId:Ljava/lang/String;

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;JJLjava/lang/String;)V

    :cond_2
    iget-object v7, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->url:Ljava/net/URL;

    if-eqz v7, :cond_3

    new-instance v1, Lcom/tencent/cos/xml/model/object/UploadPartRequest;

    iget-object v4, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    iget v6, v2, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->partNumber:I

    iget-wide v8, v2, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->offset:J

    iget-wide v10, v2, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->sliceSize:J

    iget-object v12, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uploadId:Ljava/lang/String;

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/net/URL;JJLjava/lang/String;)V

    :cond_3
    iget-boolean v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->priorityLow:Z

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->setPriorityLow()V

    :cond_4
    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->region:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRegion(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->url:Ljava/net/URL;

    const/4 v4, 0x0

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->isNeedMd5:Z

    invoke-virtual {v1, v3}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setNeedMD5(Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v4}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setNeedMD5(Z)V

    :goto_2
    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->headers:Ljava/util/Map;

    invoke-virtual {v1, v3}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRequestHeaders(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->noSignHeaders:Ljava/util/Set;

    invoke-virtual {v1, v3}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addNoSignHeader(Ljava/util/Set;)V

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    invoke-virtual {v1, v3}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setCredentialProvider(Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)V

    new-instance v3, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$10;

    invoke-direct {v3, p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$10;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)V

    invoke-virtual {v1, v3}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setOnRequestWeightListener(Lcom/tencent/cos/xml/model/CosXmlRequest$OnRequestWeightListener;)V

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->onSignatureListener:Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;

    if-eqz v3, :cond_6

    invoke-interface {v3, v1}, Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;->onGetSign(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setSign(Ljava/lang/String;)V

    :cond_6
    const-string v3, "UploadPartRequest"

    invoke-virtual {p0, v1, v3}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->getHttpMetrics(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uploadPartRequestLongMap:Ljava/util/Map;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$11;

    invoke-direct {v3, p0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$11;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;Lcom/tencent/cos/xml/model/object/UploadPartRequest;)V

    invoke-virtual {v1, v3}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->setProgressListener(Lcom/tencent/cos/xml/listener/CosXmlProgressListener;)V

    new-instance v3, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$12;

    invoke-direct {v3, p0, v1, v2}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$12;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;Lcom/tencent/cos/xml/model/object/UploadPartRequest;Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;)V

    invoke-virtual {p1, v1, v3}, Lcom/tencent/cos/xml/CosXmlBaseService;->uploadPartAsync(Lcom/tencent/cos/xml/model/object/UploadPartRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    move v1, v4

    goto/16 :goto_0

    :cond_7
    if-eqz v1, :cond_8

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_8

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->fileLength:J

    invoke-direct {p0, v0, v1, v0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->dispatchProgressChange(JJ)V

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->multiUploadsStateListenerHandler:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$MultiUploadsStateListener;

    invoke-interface {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$MultiUploadsStateListener;->onUploadParts()V

    :cond_8
    return-void
.end method

.method private onTransferComplete(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->httpTaskMetrics:Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    invoke-virtual {p1, v0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->attachMetrics(Lcom/tencent/qcloud/core/http/HttpTaskMetrics;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/tencent/cos/xml/CosTrackService;->getInstance()Lcom/tencent/cos/xml/CosTrackService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/cos/xml/CosTrackService;->reportUploadTaskSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->multiUploadsStateListenerHandler:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$MultiUploadsStateListener;

    invoke-interface {p0, p1, p2}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$MultiUploadsStateListener;->onCompleted(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V

    return-void
.end method

.method private onUpdateInProgress()V
    .locals 3

    sget-object v0, Lcom/tencent/cos/xml/transfer/TransferState;->IN_PROGRESS:Lcom/tencent/cos/xml/transfer/TransferState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->updateState(Lcom/tencent/cos/xml/transfer/TransferState;Ljava/lang/Exception;Lcom/tencent/cos/xml/model/CosXmlResult;Z)V

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->waitTimeoutTimer:Ljava/util/Timer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method private openUploadFileStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->srcPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/FileInputStream;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->srcPath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/qcloud/core/util/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/qcloud/core/util/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Open src file failed, Application context is null!"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "There is no src file path or uri!"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private reTrans()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uploadId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->startUpload()V

    return-void
.end method

.method private reportException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->buildCOSXMLTaskRequest()Lcom/tencent/cos/xml/model/CosXmlRequest;

    move-result-object p1

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/tencent/cos/xml/CosTrackService;->getInstance()Lcom/tencent/cos/xml/CosTrackService;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/cos/xml/CosTrackService;->reportUploadTaskClientException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/common/QCloudClientException;)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {}, Lcom/tencent/cos/xml/CosTrackService;->getInstance()Lcom/tencent/cos/xml/CosTrackService;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/tencent/cos/xml/CosTrackService;->reportUploadTaskServiceException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/common/QCloudServiceException;)V

    :cond_2
    return-void
.end method

.method private simpleUpload(Lcom/tencent/cos/xml/CosXmlSimpleService;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->bytes:[B

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/tencent/cos/xml/model/object/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    iput-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/tencent/cos/xml/model/object/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/tencent/cos/xml/model/object/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->url:Ljava/net/URL;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/tencent/cos/xml/model/object/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)V

    iput-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->srcPath:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/cos/xml/model/object/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    :goto_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRegion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->url:Ljava/net/URL;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setNeedMD5(Z)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    iget-boolean v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->isNeedMd5:Z

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setNeedMD5(Z)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->headers:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRequestHeaders(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->noSignHeaders:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addNoSignHeader(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setCredentialProvider(Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->onSignatureListener:Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-interface {v0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;->onGetSign(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setSign(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    const-string v1, "PutObjectRequest"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->getHttpMetrics(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    new-instance v1, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$2;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$2;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)V

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setTaskStateListener(Lcom/tencent/qcloud/core/common/QCloudTaskStateListener;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    new-instance v1, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$3;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$3;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)V

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->setProgressListener(Lcom/tencent/cos/xml/listener/CosXmlProgressListener;)V

    iget-boolean v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->priorityLow:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->setPriorityLow()V

    :cond_6
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    new-instance v1, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$4;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$4;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)V

    invoke-virtual {p1, v0, v1}, Lcom/tencent/cos/xml/CosXmlSimpleService;->internalPutObjectAsync(Lcom/tencent/cos/xml/model/object/PutObjectRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method

.method private updateSlicePart(Lcom/tencent/cos/xml/model/object/ListPartsResult;)V
    .locals 11

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/tencent/cos/xml/model/object/ListPartsResult;->listParts:Lcom/tencent/cos/xml/model/tag/ListParts;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/tencent/cos/xml/model/tag/ListParts;->parts:Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->isFixSliceSize(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/cos/xml/model/tag/ListParts$Part;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->partStructMap:Ljava/util/Map;

    iget-object v3, v0, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->partNumber:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->partStructMap:Ljava/util/Map;

    iget-object v3, v0, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->partNumber:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;

    iput-boolean v1, v2, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->isAlreadyUpload:Z

    iget-object v3, v0, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->eTag:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->eTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->UPLOAD_PART_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->ALREADY_SEND_DATA_LEN:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->size:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$15;

    invoke-direct {v0, p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$15;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->getIndexOfParts(Ljava/util/List;)I

    move-result v0

    if-gez v0, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->partStructMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-wide v6, v3

    move v3, v2

    :goto_1
    if-gt v3, v0, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/cos/xml/model/tag/ListParts$Part;

    new-instance v5, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$1;)V

    add-int/lit8 v3, v3, 0x1

    iput v3, v5, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->partNumber:I

    iput-wide v6, v5, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->offset:J

    iget-object v8, v4, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->size:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->sliceSize:J

    iget-object v4, v4, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->eTag:Ljava/lang/String;

    iput-object v4, v5, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->eTag:Ljava/lang/String;

    iput-boolean v1, v5, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->isAlreadyUpload:Z

    add-long/2addr v6, v8

    iget-object v4, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->partStructMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->ALREADY_SEND_DATA_LEN:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-wide v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->fileLength:J

    sub-long v8, v3, v6

    add-int/lit8 v10, v0, 0x2

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->initSlicePart(JJI)V

    :goto_2
    if-gt v2, v0, :cond_4

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->UPLOAD_PART_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private verifyUploadParts(Lcom/tencent/cos/xml/model/tag/ListParts;Ljava/io/InputStream;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p1, Lcom/tencent/cos/xml/model/tag/ListParts;->parts:Ljava/util/List;

    new-instance v0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$9;

    invoke-direct {v0, p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$9;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->isFixSliceSize(Ljava/util/List;)Z

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/cos/xml/model/tag/ListParts$Part;

    iget-object v6, v5, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->partNumber:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v3, :cond_0

    add-int/lit8 v3, v4, 0x1

    if-ne v3, v6, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    if-nez v0, :cond_1

    if-nez v3, :cond_1

    return v1

    :cond_1
    sub-int v4, v6, v4

    sub-int/2addr v4, v1

    int-to-long v7, v4

    iget-wide v9, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->sliceSize:J

    mul-long/2addr v7, v9

    iget-object v4, v5, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->size:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {p2, v7, v8, v9, v10}, Lcom/tencent/cos/xml/utils/DigestUtils;->getCOSMd5(Ljava/io/InputStream;JJ)Ljava/lang/String;

    move-result-object v4

    iget-object v7, v5, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->eTag:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "verify upload parts failed, part number "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v5, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->partNumber:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", etag "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v5, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->eTag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but local md5 is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "UploadTask"

    invoke-static {p2, p0, p1}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_2
    move v4, v6

    goto :goto_0

    :cond_3
    return v1
.end method


# virtual methods
.method public buildCOSXMLTaskRequest()Lcom/tencent/cos/xml/model/CosXmlRequest;
    .locals 8

    new-instance v7, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$COSXMLUploadTaskRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->region:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->srcPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->headers:Ljava/util/Map;

    iget-object v6, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->queries:Ljava/util/Map;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$COSXMLUploadTaskRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-object v7
.end method

.method public buildCOSXMLTaskResult(Lcom/tencent/cos/xml/model/CosXmlResult;)Lcom/tencent/cos/xml/model/CosXmlResult;
    .locals 2

    new-instance p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$COSXMLUploadTaskResult;

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$COSXMLUploadTaskResult;-><init>()V

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/tencent/cos/xml/model/CosXmlResult;->httpCode:I

    iput v0, p0, Lcom/tencent/cos/xml/model/CosXmlResult;->httpCode:I

    iget-object v0, p1, Lcom/tencent/cos/xml/model/CosXmlResult;->httpMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlResult;->httpMessage:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/cos/xml/model/CosXmlResult;->headers:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlResult;->headers:Ljava/util/Map;

    iget-object v0, p1, Lcom/tencent/cos/xml/model/CosXmlResult;->accessUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlResult;->accessUrl:Ljava/lang/String;

    :cond_0
    instance-of v0, p1, Lcom/tencent/cos/xml/model/object/PutObjectResult;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/tencent/cos/xml/model/object/PutObjectResult;

    iget-object v0, p1, Lcom/tencent/cos/xml/model/object/BasePutObjectResult;->eTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$COSXMLUploadTaskResult;->eTag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/PutObjectResult;->picUploadResult()Lcom/tencent/cos/xml/model/tag/pic/PicUploadResult;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$COSXMLUploadTaskResult;->picUploadResult:Lcom/tencent/cos/xml/model/tag/pic/PicUploadResult;

    iget-object p1, p1, Lcom/tencent/cos/xml/model/object/PutObjectResult;->callbackResult:Lcom/tencent/cos/xml/model/tag/CallbackResult;

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$COSXMLUploadTaskResult;->callbackResult:Lcom/tencent/cos/xml/model/tag/CallbackResult;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;

    iget-object v0, p1, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;->completeMultipartUpload:Lcom/tencent/cos/xml/model/tag/CompleteMultipartUploadResult;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/CompleteMultipartUploadResult;->eTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$COSXMLUploadTaskResult;->eTag:Ljava/lang/String;

    new-instance v0, Lcom/tencent/cos/xml/model/tag/pic/PicUploadResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/tag/pic/PicUploadResult;-><init>()V

    iget-object v1, p1, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;->completeMultipartUpload:Lcom/tencent/cos/xml/model/tag/CompleteMultipartUploadResult;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/model/tag/CompleteMultipartUploadResult;->getOriginInfo()Lcom/tencent/cos/xml/model/tag/pic/PicOriginalInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/cos/xml/model/tag/pic/PicUploadResult;->originalInfo:Lcom/tencent/cos/xml/model/tag/pic/PicOriginalInfo;

    iget-object p1, p1, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;->completeMultipartUpload:Lcom/tencent/cos/xml/model/tag/CompleteMultipartUploadResult;

    iget-object v1, p1, Lcom/tencent/cos/xml/model/tag/CompleteMultipartUploadResult;->processResults:Ljava/util/List;

    iput-object v1, v0, Lcom/tencent/cos/xml/model/tag/pic/PicUploadResult;->processResults:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$COSXMLUploadTaskResult;->picUploadResult:Lcom/tencent/cos/xml/model/tag/pic/PicUploadResult;

    iget-object p1, p1, Lcom/tencent/cos/xml/model/tag/CompleteMultipartUploadResult;->callbackResult:Lcom/tencent/cos/xml/model/tag/CallbackResult;

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$COSXMLUploadTaskResult;->callbackResult:Lcom/tencent/cos/xml/model/tag/CallbackResult;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/tencent/cos/xml/model/object/HeadObjectResult;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/tencent/cos/xml/model/object/HeadObjectResult;

    iget-object p1, p1, Lcom/tencent/cos/xml/model/object/HeadObjectResult;->eTag:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$COSXMLUploadTaskResult;->eTag:Ljava/lang/String;

    :cond_3
    :goto_0
    return-object p0
.end method

.method public cancelAllRequest(Lcom/tencent/cos/xml/CosXmlSimpleService;Z)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uploadPartRequestLongMap:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/cos/xml/model/CosXmlRequest;

    invoke-virtual {p1, v1, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    if-eqz p0, :cond_5

    invoke-virtual {p1, p0, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V

    :cond_5
    return-void
.end method

.method public checkParameter()Z
    .locals 10

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->bytes:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->srcPath:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uri:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->url:Ljava/net/URL;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->multiUploadsStateListenerHandler:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$MultiUploadsStateListener;

    new-instance v2, Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    iget-object v4, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v2, v4, p0, v5}, Lcom/tencent/cos/xml/model/object/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v4, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v4}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v4

    const-string v5, "source is is invalid: null"

    invoke-direct {p0, v4, v5}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2, p0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$MultiUploadsStateListener;->onFailed(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    return v3

    :cond_1
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->srcPath:Ljava/lang/String;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->srcPath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->fileLength:J

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    :cond_4
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->multiUploadsStateListenerHandler:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$MultiUploadsStateListener;

    new-instance v2, Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    iget-object v4, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->srcPath:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v6}, Lcom/tencent/cos/xml/model/object/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v5, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v5}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "srcPath is is invalid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->srcPath:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, v5, p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2, v4, v1}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$MultiUploadsStateListener;->onFailed(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    return v3

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/tencent/qcloud/core/util/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qcloud/core/util/QCloudUtils;->getUriContentLength(Landroid/net/Uri;Landroid/content/ContentResolver;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->fileLength:J

    :cond_6
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->url:Ljava/net/URL;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->urlUploadPolicy:Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;->getDownloadType()Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;

    move-result-object v0

    sget-object v1, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;->NOTSUPPORT:Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->urlUploadPolicy:Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;->getFileLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->fileLength:J

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8

    return v3

    :cond_8
    sget-object v4, Lcom/tencent/cos/xml/transfer/COSXMLTask;->monitor:Lcom/tencent/cos/xml/transfer/TaskStateMonitor;

    sget-object v6, Lcom/tencent/cos/xml/transfer/TransferState;->FAILED:Lcom/tencent/cos/xml/transfer/TransferState;

    new-instance v7, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    const-string v1, "url not support download"

    invoke-direct {v7, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v5, p0

    invoke-virtual/range {v4 .. v9}, Lcom/tencent/cos/xml/transfer/TaskStateMonitor;->sendStateMessage(Lcom/tencent/cos/xml/transfer/COSXMLTask;Lcom/tencent/cos/xml/transfer/TransferState;Ljava/lang/Exception;Lcom/tencent/cos/xml/model/CosXmlResult;I)V

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v3

    :cond_9
    :goto_2
    return v2
.end method

.method public encounterError(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
    .locals 2
    .param p1    # Lcom/tencent/cos/xml/model/CosXmlRequest;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->multiUploadsStateListenerHandler:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$MultiUploadsStateListener;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->buildCOSXMLTaskRequest()Lcom/tencent/cos/xml/model/CosXmlRequest;

    move-result-object p1

    :goto_0
    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$MultiUploadsStateListener;->onFailed(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    return-void
.end method

.method public getSendingCompleteRequest()Z
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->sendingCompleteRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uploadId:Ljava/lang/String;

    return-object p0
.end method

.method public internalCancel(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    invoke-virtual {p0, v0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->cancelAllRequest(Lcom/tencent/cos/xml/CosXmlSimpleService;Z)V

    iget-boolean p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->isSliceUpload:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->abortMultiUpload(Lcom/tencent/cos/xml/CosXmlSimpleService;)V

    :cond_0
    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->clear()V

    return-void
.end method

.method public internalCompleted()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->clear()V

    return-void
.end method

.method public internalFailed()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->cancelAllRequest(Lcom/tencent/cos/xml/CosXmlSimpleService;Z)V

    return-void
.end method

.method public internalPause(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->buildCOSXMLTaskRequest()Lcom/tencent/cos/xml/model/CosXmlRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->httpTaskMetrics:Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->attachMetrics(Lcom/tencent/qcloud/core/http/HttpTaskMetrics;)V

    invoke-static {}, Lcom/tencent/cos/xml/CosTrackService;->getInstance()Lcom/tencent/cos/xml/CosTrackService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/cos/xml/CosTrackService;->reportUploadTaskSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    invoke-virtual {p0, v0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->cancelAllRequest(Lcom/tencent/cos/xml/CosXmlSimpleService;Z)V

    return-void
.end method

.method public internalResume()V
    .locals 4

    sget-object v0, Lcom/tencent/cos/xml/transfer/TransferState;->WAITING:Lcom/tencent/cos/xml/transfer/TransferState;

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->multiUploadsStateListenerHandler:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$MultiUploadsStateListener;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->buildCOSXMLTaskRequest()Lcom/tencent/cos/xml/model/CosXmlRequest;

    move-result-object p0

    new-instance v1, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v2, Lcom/tencent/cos/xml/common/ClientErrorCode;->SINK_SOURCE_NOT_FOUND:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v2}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v2

    const-string v3, "inputStream closed"

    invoke-direct {v1, v2, v3}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$MultiUploadsStateListener;->onFailed(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->upload()V

    return-void
.end method

.method public listAllPartsAsync(Lcom/tencent/cos/xml/CosXmlSimpleService;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 7

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;Ljava/util/concurrent/atomic/AtomicReference;Lcom/tencent/cos/xml/CosXmlSimpleService;Ljava/util/ArrayList;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public pauseSafely()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->sendingCompleteRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->pause()V

    const/4 p0, 0x1

    return p0
.end method

.method public pauseSafely(Z)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->sendingCompleteRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->pause(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uploadId:Ljava/lang/String;

    return-void
.end method

.method public startUpload()V
    .locals 6

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->bytes:[B

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->fileLength:J

    iget-wide v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->multiUploadSizeDivision:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    iget-boolean v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->forceSimpleUpload:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->sliceSize:J

    long-to-double v0, v0

    long-to-double v4, v2

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide v4, 0x40c3880000000000L    # 10000.0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->fileLength:J

    long-to-double v0, v0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->sliceSize:J

    goto :goto_0

    :cond_2
    iput-wide v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->sliceSize:J

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->isSliceUpload:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->UPLOAD_PART_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->ALREADY_SEND_DATA_LEN:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->partStructMap:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->uploadPartRequestLongMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->multiUpload(Lcom/tencent/cos/xml/CosXmlSimpleService;)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->simpleUpload(Lcom/tencent/cos/xml/CosXmlSimpleService;)V

    :goto_2
    return-void

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->simpleUpload(Lcom/tencent/cos/xml/CosXmlSimpleService;)V

    return-void
.end method

.method public upload()V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->checkParameter()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->startTime:J

    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->startUpload()V

    return-void
.end method
