.class public final Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;
.super Lcom/tencent/cos/xml/transfer/COSXMLTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$COSXMLCopyTaskRequest;,
        Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$COSXMLCopyTaskResult;,
        Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;,
        Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$LargeCopyStateListener;
    }
.end annotation


# instance fields
.field private IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private SYNC_UPLOAD_PART:Ljava/lang/Object;

.field private UPLOAD_PART_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

.field private completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

.field private copyObjectRequest:Lcom/tencent/cos/xml/model/object/CopyObjectRequest;

.field private copyPartStructMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;",
            ">;"
        }
    .end annotation
.end field

.field private copySourceStruct:Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;

.field private fileLength:J

.field private headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

.field private httpTaskMetrics:Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

.field private initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

.field private isLargeCopy:Z

.field private largeCopyStateListenerHandler:Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$LargeCopyStateListener;

.field private listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

.field protected multiCopySizeDivision:J

.field protected sliceSize:J

.field private uploadId:Ljava/lang/String;

.field private uploadPartCopyRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/object/UploadPartCopyRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Lcom/tencent/cos/xml/model/object/CopyObjectRequest;)V
    .locals 6

    .line 12
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getBucket()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->getConfig()Lcom/tencent/cos/xml/CosXmlServiceConfig;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->getPath(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/object/CopyObjectRequest;->getCopySource()Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;-><init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;)V

    .line 15
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getQueryString()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->queries:Ljava/util/Map;

    .line 16
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->headers:Ljava/util/Map;

    .line 17
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getNoSignHeaders()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->noSignHeaders:Ljava/util/Set;

    .line 18
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getCredentialProvider()Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    .line 19
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->isNeedMD5()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->isNeedMd5:Z

    return-void
.end method

.method public constructor <init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Lcom/tencent/cos/xml/model/object/CopyObjectRequest;Ljava/lang/String;)V
    .locals 6

    .line 20
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getBucket()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->getConfig()Lcom/tencent/cos/xml/CosXmlServiceConfig;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->getPath(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/object/CopyObjectRequest;->getCopySource()Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;-><init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;)V

    .line 23
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getQueryString()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->queries:Ljava/util/Map;

    .line 24
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->headers:Ljava/util/Map;

    .line 25
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getNoSignHeaders()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->noSignHeaders:Ljava/util/Set;

    .line 26
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getCredentialProvider()Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    .line 27
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->isNeedMD5()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->isNeedMd5:Z

    .line 28
    iput-object p3, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->uploadId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSXMLTask;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->isLargeCopy:Z

    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->SYNC_UPLOAD_PART:Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    invoke-direct {v0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->httpTaskMetrics:Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    .line 6
    new-instance v0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$1;

    invoke-direct {v0, p0}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$1;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->largeCopyStateListenerHandler:Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$LargeCopyStateListener;

    .line 7
    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    .line 8
    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->region:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->copySourceStruct:Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;

    return-void
.end method

.method private abortMultiUpload(Lcom/tencent/cos/xml/CosXmlSimpleService;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->uploadId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/tencent/cos/xml/model/object/AbortMultiUploadRequest;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/tencent/cos/xml/model/object/AbortMultiUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    new-instance v0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$7;

    invoke-direct {v0, p0}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$7;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)V

    invoke-virtual {p1, v1, v0}, Lcom/tencent/cos/xml/CosXmlSimpleService;->abortMultiUploadAsync(Lcom/tencent/cos/xml/model/object/AbortMultiUploadRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;Lcom/tencent/cos/xml/CosXmlSimpleService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->uploadPartCopy(Lcom/tencent/cos/xml/CosXmlSimpleService;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;Lcom/tencent/cos/xml/CosXmlSimpleService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->completeMultiUpload(Lcom/tencent/cos/xml/CosXmlSimpleService;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;Lcom/tencent/cos/xml/model/object/ListPartsResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->updateSlicePart(Lcom/tencent/cos/xml/model/object/ListPartsResult;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)Lcom/tencent/qcloud/core/http/HttpTaskMetrics;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->httpTaskMetrics:Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->SYNC_UPLOAD_PART:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->UPLOAD_PART_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic access$1302(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->UPLOAD_PART_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p1
.end method

.method public static synthetic access$1400(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->fileLength:J

    return-wide v0
.end method

.method public static synthetic access$1502(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->fileLength:J

    return-wide p1
.end method

.method public static synthetic access$1602(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->isLargeCopy:Z

    return p1
.end method

.method public static synthetic access$1700(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->copyPartStructMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$1702(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->copyPartStructMap:Ljava/util/Map;

    return-object p1
.end method

.method public static synthetic access$1800(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->uploadPartCopyRequestList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1802(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->uploadPartCopyRequestList:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$1900(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;Lcom/tencent/cos/xml/CosXmlSimpleService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->largeFileCopy(Lcom/tencent/cos/xml/CosXmlSimpleService;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->reportException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    return-void
.end method

.method public static synthetic access$2000(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->smallFileCopy()V

    return-void
.end method

.method public static synthetic access$300(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)Lcom/tencent/cos/xml/model/object/CopyObjectRequest;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->copyObjectRequest:Lcom/tencent/cos/xml/model/object/CopyObjectRequest;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$LargeCopyStateListener;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->largeCopyStateListenerHandler:Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$LargeCopyStateListener;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    return-object p0
.end method

.method public static synthetic access$702(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->uploadId:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$900(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)Lcom/tencent/cos/xml/model/object/ListPartsRequest;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    return-object p0
.end method

.method private cancelAllRequest(Lcom/tencent/cos/xml/CosXmlSimpleService;Z)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->copyObjectRequest:Lcom/tencent/cos/xml/model/object/CopyObjectRequest;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->uploadPartCopyRequestList:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    if-eqz p0, :cond_5

    invoke-virtual {p1, p0, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V

    :cond_5
    return-void
.end method

.method private clear()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->uploadPartCopyRequestList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->copyPartStructMap:Ljava/util/Map;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method private completeMultiUpload(Lcom/tencent/cos/xml/CosXmlSimpleService;)V
    .locals 5

    new-instance v0, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->uploadId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->copyPartStructMap:Ljava/util/Map;

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

    check-cast v1, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    iget v3, v1, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;->partNumber:I

    iget-object v1, v1, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;->eTag:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;->setPartNumberAndETag(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    iget-boolean v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->isNeedMd5:Z

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setNeedMD5(Z)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->headers:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRequestHeaders(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->noSignHeaders:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addNoSignHeader(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setCredentialProvider(Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->onSignatureListener:Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    invoke-interface {v0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;->onGetSign(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setSign(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    const-string v1, "CompleteMultiUploadRequest"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->getHttpMetrics(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    new-instance v1, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$6;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$6;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)V

    invoke-virtual {p1, v0, v1}, Lcom/tencent/cos/xml/CosXmlSimpleService;->completeMultiUploadAsync(Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method

.method private declared-synchronized initCopyPart()V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->fileLength:J

    iget-wide v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->sliceSize:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x1

    :goto_0
    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ge v1, v0, :cond_0

    new-instance v6, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;

    invoke-direct {v6, v5}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$1;)V

    iput-boolean v4, v6, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;->isAlreadyUpload:Z

    iput v1, v6, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;->partNumber:I

    add-int/lit8 v4, v1, -0x1

    int-to-long v4, v4

    iget-wide v7, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->sliceSize:J

    mul-long/2addr v4, v7

    iput-wide v4, v6, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;->start:J

    int-to-long v4, v1

    mul-long/2addr v4, v7

    sub-long/2addr v4, v2

    iput-wide v4, v6, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;->end:J

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->copyPartStructMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;

    invoke-direct {v0, v5}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$1;)V

    iput-boolean v4, v0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;->isAlreadyUpload:Z

    iput v1, v0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;->partNumber:I

    add-int/lit8 v4, v1, -0x1

    int-to-long v4, v4

    iget-wide v6, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->sliceSize:J

    mul-long/2addr v4, v6

    iput-wide v4, v0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;->start:J

    iget-wide v4, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->fileLength:J

    sub-long/2addr v4, v2

    iput-wide v4, v0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;->end:J

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->copyPartStructMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->UPLOAD_PART_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initMultiUpload(Lcom/tencent/cos/xml/CosXmlSimpleService;)V
    .locals 3

    new-instance v0, Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRegion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->headers:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRequestHeaders(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->noSignHeaders:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addNoSignHeader(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setCredentialProvider(Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->onSignatureListener:Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    invoke-interface {v0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;->onGetSign(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setSign(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    const-string v1, "InitMultipartUploadRequest"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->getHttpMetrics(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    new-instance v1, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$3;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$3;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)V

    invoke-virtual {p1, v0, v1}, Lcom/tencent/cos/xml/CosXmlSimpleService;->initMultipartUploadAsync(Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method

.method private largeFileCopy(Lcom/tencent/cos/xml/CosXmlSimpleService;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->initCopyPart()V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->uploadId:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->initMultiUpload(Lcom/tencent/cos/xml/CosXmlSimpleService;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->listMultiUpload(Lcom/tencent/cos/xml/CosXmlSimpleService;)V

    :goto_0
    return-void
.end method

.method private listMultiUpload(Lcom/tencent/cos/xml/CosXmlSimpleService;)V
    .locals 4

    new-instance v0, Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->uploadId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/cos/xml/model/object/ListPartsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->headers:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRequestHeaders(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->noSignHeaders:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addNoSignHeader(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setCredentialProvider(Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->onSignatureListener:Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    invoke-interface {v0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;->onGetSign(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setSign(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    const-string v1, "ListPartsRequest"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->getHttpMetrics(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    new-instance v1, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$4;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$4;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)V

    invoke-virtual {p1, v0, v1}, Lcom/tencent/cos/xml/CosXmlSimpleService;->listPartsAsync(Lcom/tencent/cos/xml/model/object/ListPartsRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method

.method private reportException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/tencent/cos/xml/CosTrackService;->getInstance()Lcom/tencent/cos/xml/CosTrackService;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/cos/xml/CosTrackService;->reportCopyTaskClientException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {}, Lcom/tencent/cos/xml/CosTrackService;->getInstance()Lcom/tencent/cos/xml/CosTrackService;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/tencent/cos/xml/CosTrackService;->reportCopyTaskServiceException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    :cond_1
    return-void
.end method

.method private smallFileCopy()V
    .locals 4

    new-instance v0, Lcom/tencent/cos/xml/model/object/CopyObjectRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->copySourceStruct:Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/cos/xml/model/object/CopyObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->copyObjectRequest:Lcom/tencent/cos/xml/model/object/CopyObjectRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRegion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->copyObjectRequest:Lcom/tencent/cos/xml/model/object/CopyObjectRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->headers:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRequestHeaders(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->copyObjectRequest:Lcom/tencent/cos/xml/model/object/CopyObjectRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->noSignHeaders:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addNoSignHeader(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->copyObjectRequest:Lcom/tencent/cos/xml/model/object/CopyObjectRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setCredentialProvider(Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->onSignatureListener:Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->copyObjectRequest:Lcom/tencent/cos/xml/model/object/CopyObjectRequest;

    invoke-interface {v0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;->onGetSign(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setSign(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->copyObjectRequest:Lcom/tencent/cos/xml/model/object/CopyObjectRequest;

    const-string v1, "CopyObjectRequest"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->getHttpMetrics(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->copyObjectRequest:Lcom/tencent/cos/xml/model/object/CopyObjectRequest;

    new-instance v2, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$2;

    invoke-direct {v2, p0}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$2;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/cos/xml/CosXmlSimpleService;->internalCopyObjectAsync(Lcom/tencent/cos/xml/model/object/CopyObjectRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method

.method private updateSlicePart(Lcom/tencent/cos/xml/model/object/ListPartsResult;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/tencent/cos/xml/model/object/ListPartsResult;->listParts:Lcom/tencent/cos/xml/model/tag/ListParts;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/tencent/cos/xml/model/tag/ListParts;->parts:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/cos/xml/model/tag/ListParts$Part;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->copyPartStructMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->partNumber:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->copyPartStructMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->partNumber:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;->isAlreadyUpload:Z

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->eTag:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;->eTag:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->UPLOAD_PART_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private uploadPartCopy(Lcom/tencent/cos/xml/CosXmlSimpleService;)V
    .locals 14

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->copyPartStructMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;

    iget-boolean v3, v2, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;->isAlreadyUpload:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v1, Lcom/tencent/cos/xml/model/object/UploadPartCopyRequest;

    iget-object v5, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    iget v7, v2, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;->partNumber:I

    iget-object v8, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->uploadId:Ljava/lang/String;

    iget-object v9, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->copySourceStruct:Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;

    iget-wide v10, v2, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;->start:J

    iget-wide v12, v2, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;->end:J

    move-object v4, v1

    invoke-direct/range {v4 .. v13}, Lcom/tencent/cos/xml/model/object/UploadPartCopyRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;JJ)V

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->region:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRegion(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->headers:Ljava/util/Map;

    invoke-virtual {v1, v3}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRequestHeaders(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->noSignHeaders:Ljava/util/Set;

    invoke-virtual {v1, v3}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addNoSignHeader(Ljava/util/Set;)V

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    invoke-virtual {v1, v3}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setCredentialProvider(Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)V

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->onSignatureListener:Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;

    if-eqz v3, :cond_1

    invoke-interface {v3, v1}, Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;->onGetSign(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setSign(Ljava/lang/String;)V

    :cond_1
    const-string v3, "UploadPartCopyRequest"

    invoke-virtual {p0, v1, v3}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->getHttpMetrics(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->uploadPartCopyRequestList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$5;

    invoke-direct {v3, p0, v1, v2}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$5;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;Lcom/tencent/cos/xml/model/object/UploadPartCopyRequest;Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$CopyPartStruct;)V

    invoke-virtual {p1, v1, v3}, Lcom/tencent/cos/xml/CosXmlSimpleService;->copyObjectAsync(Lcom/tencent/cos/xml/model/object/UploadPartCopyRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->largeCopyStateListenerHandler:Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$LargeCopyStateListener;

    invoke-interface {p0}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$LargeCopyStateListener;->onUploadPartCopy()V

    :cond_3
    return-void
.end method


# virtual methods
.method public buildCOSXMLTaskRequest()Lcom/tencent/cos/xml/model/CosXmlRequest;
    .locals 8

    new-instance v7, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$COSXMLCopyTaskRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->region:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->copySourceStruct:Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;

    iget-object v5, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->headers:Ljava/util/Map;

    iget-object v6, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->queries:Ljava/util/Map;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$COSXMLCopyTaskRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;Ljava/util/Map;Ljava/util/Map;)V

    return-object v7
.end method

.method public buildCOSXMLTaskResult(Lcom/tencent/cos/xml/model/CosXmlResult;)Lcom/tencent/cos/xml/model/CosXmlResult;
    .locals 1

    new-instance p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$COSXMLCopyTaskResult;

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$COSXMLCopyTaskResult;-><init>()V

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/tencent/cos/xml/model/object/CopyObjectResult;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tencent/cos/xml/model/object/CopyObjectResult;

    iget v0, p1, Lcom/tencent/cos/xml/model/CosXmlResult;->httpCode:I

    iput v0, p0, Lcom/tencent/cos/xml/model/CosXmlResult;->httpCode:I

    iget-object v0, p1, Lcom/tencent/cos/xml/model/CosXmlResult;->httpMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlResult;->httpMessage:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/cos/xml/model/CosXmlResult;->headers:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlResult;->headers:Ljava/util/Map;

    iget-object v0, p1, Lcom/tencent/cos/xml/model/object/CopyObjectResult;->copyObject:Lcom/tencent/cos/xml/model/tag/CopyObject;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/CopyObject;->eTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$COSXMLCopyTaskResult;->eTag:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/cos/xml/model/CosXmlResult;->accessUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/CosXmlResult;->accessUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;

    iget v0, p1, Lcom/tencent/cos/xml/model/CosXmlResult;->httpCode:I

    iput v0, p0, Lcom/tencent/cos/xml/model/CosXmlResult;->httpCode:I

    iget-object v0, p1, Lcom/tencent/cos/xml/model/CosXmlResult;->httpMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlResult;->httpMessage:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/cos/xml/model/CosXmlResult;->headers:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlResult;->headers:Ljava/util/Map;

    iget-object v0, p1, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;->completeMultipartUpload:Lcom/tencent/cos/xml/model/tag/CompleteMultipartUploadResult;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/CompleteMultipartUploadResult;->eTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$COSXMLCopyTaskResult;->eTag:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/cos/xml/model/CosXmlResult;->accessUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/CosXmlResult;->accessUrl:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public copy()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->run()V

    return-void
.end method

.method public encounterError(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
    .locals 1
    .param p1    # Lcom/tencent/cos/xml/model/CosXmlRequest;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->largeCopyStateListenerHandler:Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$LargeCopyStateListener;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->copyObjectRequest:Lcom/tencent/cos/xml/model/object/CopyObjectRequest;

    invoke-interface {p1, p0, p2, p3}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$LargeCopyStateListener;->onFailed(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    return-void
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->uploadId:Ljava/lang/String;

    return-object p0
.end method

.method public internalCancel(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    invoke-direct {p0, v0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->cancelAllRequest(Lcom/tencent/cos/xml/CosXmlSimpleService;Z)V

    iget-boolean p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->isLargeCopy:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->abortMultiUpload(Lcom/tencent/cos/xml/CosXmlSimpleService;)V

    :cond_0
    return-void
.end method

.method public internalCompleted()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->clear()V

    return-void
.end method

.method public internalFailed()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->cancelAllRequest(Lcom/tencent/cos/xml/CosXmlSimpleService;Z)V

    return-void
.end method

.method public internalPause(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->buildCOSXMLTaskRequest()Lcom/tencent/cos/xml/model/CosXmlRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->httpTaskMetrics:Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->attachMetrics(Lcom/tencent/qcloud/core/http/HttpTaskMetrics;)V

    invoke-static {}, Lcom/tencent/cos/xml/CosTrackService;->getInstance()Lcom/tencent/cos/xml/CosTrackService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/cos/xml/CosTrackService;->reportCopyTaskSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    invoke-direct {p0, v0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->cancelAllRequest(Lcom/tencent/cos/xml/CosXmlSimpleService;Z)V

    return-void
.end method

.method public internalResume()V
    .locals 2

    sget-object v0, Lcom/tencent/cos/xml/transfer/TransferState;->WAITING:Lcom/tencent/cos/xml/transfer/TransferState;

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->copy()V

    return-void
.end method

.method public run()V
    .locals 3

    new-instance v0, Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->copySourceStruct:Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;

    iget-object v2, v1, Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;->bucket:Ljava/lang/String;

    iget-object v1, v1, Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;->cosPath:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/tencent/cos/xml/model/object/HeadObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->copySourceStruct:Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;

    iget-object v1, v1, Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRegion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setCredentialProvider(Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->onSignatureListener:Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    invoke-interface {v0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;->onGetSign(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setSign(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    const-string v1, "HeadObjectRequest"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->getHttpMetrics(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    new-instance v1, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$8;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$8;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)V

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setTaskStateListener(Lcom/tencent/qcloud/core/common/QCloudTaskStateListener;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    new-instance v2, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$9;

    invoke-direct {v2, p0}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$9;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/cos/xml/CosXmlSimpleService;->headObjectAsync(Lcom/tencent/cos/xml/model/object/HeadObjectRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method
