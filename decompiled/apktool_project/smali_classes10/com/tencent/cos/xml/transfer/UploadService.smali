.class public Lcom/tencent/cos/xml/transfer/UploadService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/transfer/UploadService$OnGetHttpTaskMetrics;,
        Lcom/tencent/cos/xml/transfer/UploadService$OnSignatureListener;,
        Lcom/tencent/cos/xml/transfer/UploadService$OnUploadInfoListener;,
        Lcom/tencent/cos/xml/transfer/UploadService$EncryptionType;,
        Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;,
        Lcom/tencent/cos/xml/transfer/UploadService$SlicePartStruct;,
        Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SIZE_LIMIT:J = 0x200000L

.field private static TAG:Ljava/lang/String; = "UploadService"


# instance fields
.field private ALREADY_SEND_DATA_LEN:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile ERROR_EXIT_FLAG:I

.field private UPLOAD_PART_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

.field private bucket:Ljava/lang/String;

.field private completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

.field private cosPath:Ljava/lang/String;

.field private cosXmlProgressListener:Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

.field private cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

.field private encryptionType:Lcom/tencent/cos/xml/transfer/UploadService$EncryptionType;

.field private endTime:J

.field private fileLength:J

.field private headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

.field private isNeedMd5:Z

.field private isSupportAccelerate:Z

.field private listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

.field private mException:Ljava/lang/Exception;

.field private objectSync:[B

.field private onGetHttpTaskMetrics:Lcom/tencent/cos/xml/transfer/UploadService$OnGetHttpTaskMetrics;

.field private onSignatureListener:Lcom/tencent/cos/xml/transfer/UploadService$OnSignatureListener;

.field private onUploadInfoListener:Lcom/tencent/cos/xml/transfer/UploadService$OnUploadInfoListener;

.field private partStructMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/cos/xml/transfer/UploadService$SlicePartStruct;",
            ">;"
        }
    .end annotation
.end field

.field private putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

.field resumeData:Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;

.field private sharePreferenceUtils:Lcom/tencent/cos/xml/utils/SharePreferenceUtils;

.field private sliceSize:J

.field private srcPath:Ljava/lang/String;

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

.field private uploadServiceResult:Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x100000

    .line 2
    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->sliceSize:J

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 3
    iput-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->objectSync:[B

    const-wide/16 v1, -0x1

    .line 4
    iput-wide v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->startTime:J

    .line 5
    iput-wide v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->endTime:J

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->headers:Ljava/util/List;

    .line 7
    iput-boolean v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->isNeedMd5:Z

    .line 8
    sget-object v1, Lcom/tencent/cos/xml/transfer/UploadService$EncryptionType;->NONE:Lcom/tencent/cos/xml/transfer/UploadService$EncryptionType;

    iput-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->encryptionType:Lcom/tencent/cos/xml/transfer/UploadService$EncryptionType;

    .line 9
    iput-boolean v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->isSupportAccelerate:Z

    .line 10
    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    .line 11
    invoke-virtual {p0, p2}, Lcom/tencent/cos/xml/transfer/UploadService;->init(Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/content/Context;)V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x100000

    .line 13
    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->sliceSize:J

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 14
    iput-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->objectSync:[B

    const-wide/16 v1, -0x1

    .line 15
    iput-wide v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->startTime:J

    .line 16
    iput-wide v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->endTime:J

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->headers:Ljava/util/List;

    .line 18
    iput-boolean v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->isNeedMd5:Z

    .line 19
    sget-object v1, Lcom/tencent/cos/xml/transfer/UploadService$EncryptionType;->NONE:Lcom/tencent/cos/xml/transfer/UploadService$EncryptionType;

    iput-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->encryptionType:Lcom/tencent/cos/xml/transfer/UploadService$EncryptionType;

    .line 20
    iput-boolean v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->isSupportAccelerate:Z

    if-eqz p7, :cond_0

    .line 21
    invoke-virtual {p7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p7

    invoke-static {p7}, Lcom/tencent/cos/xml/utils/SharePreferenceUtils;->instance(Landroid/content/Context;)Lcom/tencent/cos/xml/utils/SharePreferenceUtils;

    move-result-object p7

    iput-object p7, p0, Lcom/tencent/cos/xml/transfer/UploadService;->sharePreferenceUtils:Lcom/tencent/cos/xml/utils/SharePreferenceUtils;

    .line 22
    invoke-virtual/range {p0 .. p6}, Lcom/tencent/cos/xml/transfer/UploadService;->getKey(Lcom/tencent/cos/xml/CosXmlSimpleService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p7

    if-eqz p7, :cond_0

    .line 23
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->sharePreferenceUtils:Lcom/tencent/cos/xml/utils/SharePreferenceUtils;

    invoke-virtual {v0, p7}, Lcom/tencent/cos/xml/utils/SharePreferenceUtils;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    goto :goto_0

    :cond_0
    const/4 p7, 0x0

    .line 24
    :goto_0
    new-instance v0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;

    invoke-direct {v0}, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;-><init>()V

    .line 25
    iput-object p2, v0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->bucket:Ljava/lang/String;

    .line 26
    iput-object p3, v0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->cosPath:Ljava/lang/String;

    .line 27
    iput-wide p5, v0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->sliceSize:J

    .line 28
    iput-object p4, v0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->srcPath:Ljava/lang/String;

    .line 29
    iput-object p7, v0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->uploadId:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    .line 31
    invoke-virtual {p0, v0}, Lcom/tencent/cos/xml/transfer/UploadService;->init(Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;)V

    return-void
.end method

.method private abortMultiUpload(Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->uploadId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/tencent/cos/xml/model/object/AbortMultiUploadRequest;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/UploadService;->bucket:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosPath:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/tencent/cos/xml/model/object/AbortMultiUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->onSignatureListener:Lcom/tencent/cos/xml/transfer/UploadService$OnSignatureListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lcom/tencent/cos/xml/transfer/UploadService$OnSignatureListener;->onGetSign(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setSign(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/tencent/cos/xml/transfer/UploadService;->setSignTime(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    :goto_0
    const-string v0, "AbortMultiUploadRequest"

    invoke-direct {p0, v1, v0}, Lcom/tencent/cos/xml/transfer/UploadService;->getHttpMetrics(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, v1}, Lcom/tencent/cos/xml/transfer/UploadService;->setRequestHeaders(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    invoke-direct {p0, v1}, Lcom/tencent/cos/xml/transfer/UploadService;->setSupportAccelerate(Lcom/tencent/cos/xml/model/CosXmlRequest;)V
    :try_end_0
    .catch Lcom/tencent/cos/xml/exception/CosXmlClientException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    new-instance v2, Lcom/tencent/cos/xml/transfer/UploadService$5;

    invoke-direct {v2, p0, p1}, Lcom/tencent/cos/xml/transfer/UploadService$5;-><init>(Lcom/tencent/cos/xml/transfer/UploadService;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/cos/xml/CosXmlSimpleService;->abortMultiUploadAsync(Lcom/tencent/cos/xml/model/object/AbortMultiUploadRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void

    :catch_0
    move-exception p0

    const/4 v0, 0x0

    invoke-interface {p1, v1, p0, v0}, Lcom/tencent/cos/xml/listener/CosXmlResultListener;->onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/cos/xml/transfer/UploadService;)Lcom/tencent/cos/xml/transfer/UploadService$OnGetHttpTaskMetrics;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->onGetHttpTaskMetrics:Lcom/tencent/cos/xml/transfer/UploadService$OnGetHttpTaskMetrics;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/tencent/cos/xml/transfer/UploadService;)[B
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->objectSync:[B

    return-object p0
.end method

.method public static synthetic access$1000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/cos/xml/transfer/UploadService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1100(Lcom/tencent/cos/xml/transfer/UploadService;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/UploadService;->realCancel()V

    return-void
.end method

.method public static synthetic access$1200(Lcom/tencent/cos/xml/transfer/UploadService;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/UploadService;->clear()V

    return-void
.end method

.method public static synthetic access$200(Lcom/tencent/cos/xml/transfer/UploadService;)Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->uploadServiceResult:Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/tencent/cos/xml/transfer/UploadService;Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;)Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->uploadServiceResult:Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/tencent/cos/xml/transfer/UploadService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->UPLOAD_PART_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/tencent/cos/xml/transfer/UploadService;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->mException:Ljava/lang/Exception;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/tencent/cos/xml/transfer/UploadService;)I
    .locals 0

    iget p0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->ERROR_EXIT_FLAG:I

    return p0
.end method

.method public static synthetic access$502(Lcom/tencent/cos/xml/transfer/UploadService;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->ERROR_EXIT_FLAG:I

    return p1
.end method

.method public static synthetic access$600(Lcom/tencent/cos/xml/transfer/UploadService;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->uploadPartRequestLongMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/tencent/cos/xml/transfer/UploadService;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->ALREADY_SEND_DATA_LEN:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/tencent/cos/xml/transfer/UploadService;)Lcom/tencent/cos/xml/listener/CosXmlProgressListener;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosXmlProgressListener:Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/tencent/cos/xml/transfer/UploadService;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->fileLength:J

    return-wide v0
.end method

.method private checkParameter()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->srcPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->srcPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->fileLength:J

    return-void

    :cond_0
    new-instance v0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v1, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "srcPath :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->srcPath:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is invalid or is not exist"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->partStructMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->uploadPartRequestLongMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private completeMultiUpload()Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;,
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    new-instance v0, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->bucket:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/UploadService;->uploadId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->partStructMap:Ljava/util/Map;

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

    check-cast v1, Lcom/tencent/cos/xml/transfer/UploadService$SlicePartStruct;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/UploadService;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    iget v3, v1, Lcom/tencent/cos/xml/transfer/UploadService$SlicePartStruct;->partNumber:I

    iget-object v1, v1, Lcom/tencent/cos/xml/transfer/UploadService$SlicePartStruct;->eTag:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;->setPartNumberAndETag(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->onSignatureListener:Lcom/tencent/cos/xml/transfer/UploadService$OnSignatureListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    invoke-interface {v0, v1}, Lcom/tencent/cos/xml/transfer/UploadService$OnSignatureListener;->onGetSign(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setSign(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/UploadService;->setSignTime(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    const-string v1, "CompleteMultiUploadResult"

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/transfer/UploadService;->getHttpMetrics(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/UploadService;->setRequestHeaders(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/UploadService;->setSupportAccelerate(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    iget-boolean v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->isNeedMd5:Z

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setNeedMD5(Z)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    invoke-virtual {v0, p0}, Lcom/tencent/cos/xml/CosXmlSimpleService;->completeMultiUpload(Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;)Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;

    move-result-object p0

    return-object p0
.end method

.method private getHttpMetrics(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->onGetHttpTaskMetrics:Lcom/tencent/cos/xml/transfer/UploadService$OnGetHttpTaskMetrics;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/cos/xml/transfer/UploadService$1;

    invoke-direct {v0, p0, p2}, Lcom/tencent/cos/xml/transfer/UploadService$1;-><init>(Lcom/tencent/cos/xml/transfer/UploadService;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->attachMetrics(Lcom/tencent/qcloud/core/http/HttpTaskMetrics;)V

    :cond_0
    return-void
.end method

.method private initMultiUpload()Lcom/tencent/cos/xml/model/object/InitMultipartUploadResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;,
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    new-instance v0, Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->bucket:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosPath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->onSignatureListener:Lcom/tencent/cos/xml/transfer/UploadService$OnSignatureListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/tencent/cos/xml/transfer/UploadService$OnSignatureListener;->onGetSign(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setSign(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/UploadService;->setSignTime(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    const-string v1, "InitMultipartUploadRequest"

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/transfer/UploadService;->getHttpMetrics(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/UploadService;->setRequestHeaders(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/UploadService;->setSupportAccelerate(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/UploadService;->setEncryption(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    invoke-virtual {v0, p0}, Lcom/tencent/cos/xml/CosXmlSimpleService;->initMultipartUpload(Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;)Lcom/tencent/cos/xml/model/object/InitMultipartUploadResult;

    move-result-object p0

    return-object p0
.end method

.method private initSlicePart()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->srcPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->srcPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->fileLength:J

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    const-string v1, "upload file does not exist"

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->fileLength:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    iget-wide v4, p0, Lcom/tencent/cos/xml/transfer/UploadService;->sliceSize:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_3

    div-long/2addr v0, v4

    long-to-int v0, v0

    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ge v1, v0, :cond_2

    new-instance v4, Lcom/tencent/cos/xml/transfer/UploadService$SlicePartStruct;

    invoke-direct {v4, v3}, Lcom/tencent/cos/xml/transfer/UploadService$SlicePartStruct;-><init>(Lcom/tencent/cos/xml/transfer/UploadService$1;)V

    iput-boolean v2, v4, Lcom/tencent/cos/xml/transfer/UploadService$SlicePartStruct;->isAlreadyUpload:Z

    iput v1, v4, Lcom/tencent/cos/xml/transfer/UploadService$SlicePartStruct;->partNumber:I

    add-int/lit8 v2, v1, -0x1

    int-to-long v2, v2

    iget-wide v5, p0, Lcom/tencent/cos/xml/transfer/UploadService;->sliceSize:J

    mul-long/2addr v2, v5

    iput-wide v2, v4, Lcom/tencent/cos/xml/transfer/UploadService$SlicePartStruct;->offset:J

    iput-wide v5, v4, Lcom/tencent/cos/xml/transfer/UploadService$SlicePartStruct;->sliceSize:J

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/UploadService;->partStructMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/tencent/cos/xml/transfer/UploadService$SlicePartStruct;

    invoke-direct {v0, v3}, Lcom/tencent/cos/xml/transfer/UploadService$SlicePartStruct;-><init>(Lcom/tencent/cos/xml/transfer/UploadService$1;)V

    iput-boolean v2, v0, Lcom/tencent/cos/xml/transfer/UploadService$SlicePartStruct;->isAlreadyUpload:Z

    iput v1, v0, Lcom/tencent/cos/xml/transfer/UploadService$SlicePartStruct;->partNumber:I

    add-int/lit8 v2, v1, -0x1

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/tencent/cos/xml/transfer/UploadService;->sliceSize:J

    mul-long/2addr v2, v4

    iput-wide v2, v0, Lcom/tencent/cos/xml/transfer/UploadService$SlicePartStruct;->offset:J

    iget-wide v4, p0, Lcom/tencent/cos/xml/transfer/UploadService;->fileLength:J

    sub-long/2addr v4, v2

    iput-wide v4, v0, Lcom/tencent/cos/xml/transfer/UploadService$SlicePartStruct;->sliceSize:J

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/UploadService;->partStructMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->UPLOAD_PART_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :cond_3
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    const-string v1, "file size or slice size less than 0"

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private listPart()Lcom/tencent/cos/xml/model/object/ListPartsResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;,
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    new-instance v0, Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->bucket:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/UploadService;->uploadId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/cos/xml/model/object/ListPartsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->onSignatureListener:Lcom/tencent/cos/xml/transfer/UploadService$OnSignatureListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/tencent/cos/xml/transfer/UploadService$OnSignatureListener;->onGetSign(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setSign(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/UploadService;->setSignTime(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    const-string v1, "ListPartsRequest"

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/transfer/UploadService;->getHttpMetrics(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/UploadService;->setRequestHeaders(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/UploadService;->setSupportAccelerate(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    invoke-virtual {v0, p0}, Lcom/tencent/cos/xml/CosXmlSimpleService;->listParts(Lcom/tencent/cos/xml/model/object/ListPartsRequest;)Lcom/tencent/cos/xml/model/object/ListPartsResult;

    move-result-object p0

    return-object p0
.end method

.method private multiUploadParts()Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/UploadService;->initSlicePart()V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->uploadId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/UploadService;->listPart()Lcom/tencent/cos/xml/model/object/ListPartsResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/UploadService;->updateSlicePart(Lcom/tencent/cos/xml/model/object/ListPartsResult;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/UploadService;->initMultiUpload()Lcom/tencent/cos/xml/model/object/InitMultipartUploadResult;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/cos/xml/model/object/InitMultipartUploadResult;->initMultipartUpload:Lcom/tencent/cos/xml/model/tag/InitiateMultipartUpload;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/InitiateMultipartUpload;->uploadId:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->uploadId:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->onUploadInfoListener:Lcom/tencent/cos/xml/transfer/UploadService$OnUploadInfoListener;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;

    invoke-direct {v0}, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;-><init>()V

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->bucket:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->bucket:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->cosPath:Ljava/lang/String;

    iget-wide v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->sliceSize:J

    iput-wide v1, v0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->sliceSize:J

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->srcPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->srcPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->uploadId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->uploadId:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->resumeData:Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;

    iget-object v2, v1, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->customerKeyForSSEC:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->customerKeyForSSEC:Ljava/lang/String;

    iget-object v2, v1, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->customerKeyIdForSSEKMS:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->customerKeyIdForSSEKMS:Ljava/lang/String;

    iget-object v1, v1, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->jsonContentForSSEKMS:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->jsonContentForSSEKMS:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->onUploadInfoListener:Lcom/tencent/cos/xml/transfer/UploadService$OnUploadInfoListener;

    invoke-interface {v1, v0}, Lcom/tencent/cos/xml/transfer/UploadService$OnUploadInfoListener;->onInfo(Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->uploadId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/cos/xml/transfer/UploadService;->updateSharePreference(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->partStructMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/cos/xml/transfer/UploadService$SlicePartStruct;

    iget-boolean v2, v1, Lcom/tencent/cos/xml/transfer/UploadService$SlicePartStruct;->isAlreadyUpload:Z

    if-nez v2, :cond_2

    iget v4, v1, Lcom/tencent/cos/xml/transfer/UploadService$SlicePartStruct;->partNumber:I

    iget-wide v5, v1, Lcom/tencent/cos/xml/transfer/UploadService$SlicePartStruct;->offset:J

    iget-wide v7, v1, Lcom/tencent/cos/xml/transfer/UploadService$SlicePartStruct;->sliceSize:J

    new-instance v9, Lcom/tencent/cos/xml/transfer/UploadService$3;

    invoke-direct {v9, p0, v1}, Lcom/tencent/cos/xml/transfer/UploadService$3;-><init>(Lcom/tencent/cos/xml/transfer/UploadService;Lcom/tencent/cos/xml/transfer/UploadService$SlicePartStruct;)V

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/tencent/cos/xml/transfer/UploadService;->uploadPart(IJJLcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->UPLOAD_PART_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_4

    iget v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->ERROR_EXIT_FLAG:I

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/UploadService;->clearSharePreference()V

    iget v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->ERROR_EXIT_FLAG:I

    if-lez v0, :cond_b

    iget v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->ERROR_EXIT_FLAG:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->USER_CANCELLED:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    const-string v1, "request is cancelled by abort request"

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_6
    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/UploadService;->realCancel()V

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/UploadService;->clear()V

    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->USER_CANCELLED:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    const-string v1, "request is cancelled by manual pause"

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_7
    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/UploadService;->realCancel()V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_a

    instance-of v1, v0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    if-nez v1, :cond_9

    instance-of v1, v0, Lcom/tencent/cos/xml/exception/CosXmlServiceException;

    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    check-cast v0, Lcom/tencent/cos/xml/exception/CosXmlServiceException;

    throw v0

    :cond_9
    check-cast v0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    throw v0

    :cond_a
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INTERNAL_ERROR:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    const-string v1, "unknown exception"

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_b
    :goto_3
    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/UploadService;->completeMultiUpload()Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->uploadServiceResult:Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;

    if-nez v1, :cond_c

    new-instance v1, Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;

    invoke-direct {v1}, Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;-><init>()V

    iput-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->uploadServiceResult:Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;

    :cond_c
    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->uploadServiceResult:Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;

    iget v2, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->httpCode:I

    iput v2, v1, Lcom/tencent/cos/xml/model/CosXmlResult;->httpCode:I

    iget-object v2, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->httpMessage:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/cos/xml/model/CosXmlResult;->httpMessage:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->headers:Ljava/util/Map;

    iput-object v2, v1, Lcom/tencent/cos/xml/model/CosXmlResult;->headers:Ljava/util/Map;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;->completeMultipartUpload:Lcom/tencent/cos/xml/model/tag/CompleteMultipartUploadResult;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/CompleteMultipartUploadResult;->eTag:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;->eTag:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/UploadService;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    invoke-virtual {v0, v2}, Lcom/tencent/cos/xml/CosXmlBaseService;->getAccessUrl(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/cos/xml/model/CosXmlResult;->accessUrl:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->uploadServiceResult:Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;

    return-object p0
.end method

.method private putObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->UPLOAD_PART_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance v0, Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/tencent/cos/xml/model/object/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosXmlProgressListener:Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

    invoke-virtual {v0, p1}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->setProgressListener(Lcom/tencent/cos/xml/listener/CosXmlProgressListener;)V

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->onSignatureListener:Lcom/tencent/cos/xml/transfer/UploadService$OnSignatureListener;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/tencent/cos/xml/transfer/UploadService;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-interface {p1, p2}, Lcom/tencent/cos/xml/transfer/UploadService$OnSignatureListener;->onGetSign(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setSign(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/UploadService;->setSignTime(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    :goto_0
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    const-string p2, "PutObjectRequest"

    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/transfer/UploadService;->getHttpMetrics(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/UploadService;->setRequestHeaders(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/UploadService;->setSupportAccelerate(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/UploadService;->setEncryption(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    iget-boolean p2, p0, Lcom/tencent/cos/xml/transfer/UploadService;->isNeedMd5:Z

    invoke-virtual {p1, p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setNeedMD5(Z)V

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    iget-object p2, p0, Lcom/tencent/cos/xml/transfer/UploadService;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    new-instance p3, Lcom/tencent/cos/xml/transfer/UploadService$2;

    invoke-direct {p3, p0}, Lcom/tencent/cos/xml/transfer/UploadService$2;-><init>(Lcom/tencent/cos/xml/transfer/UploadService;)V

    invoke-virtual {p1, p2, p3}, Lcom/tencent/cos/xml/CosXmlSimpleService;->putObjectAsync(Lcom/tencent/cos/xml/model/object/PutObjectRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    :goto_1
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->UPLOAD_PART_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_1

    iget p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->ERROR_EXIT_FLAG:I

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->ERROR_EXIT_FLAG:I

    if-lez p1, :cond_8

    iget p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->ERROR_EXIT_FLAG:I

    if-eq p1, v1, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object p1, Lcom/tencent/cos/xml/common/ClientErrorCode;->USER_CANCELLED:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result p1

    const-string p2, "request is cancelled by abort request"

    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_3
    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/UploadService;->realCancel()V

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/UploadService;->clear()V

    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object p1, Lcom/tencent/cos/xml/common/ClientErrorCode;->USER_CANCELLED:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result p1

    const-string p2, "request is cancelled by manual pause"

    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/UploadService;->realCancel()V

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->mException:Ljava/lang/Exception;

    if-eqz p1, :cond_7

    instance-of p2, p1, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    if-nez p2, :cond_6

    instance-of p2, p1, Lcom/tencent/cos/xml/exception/CosXmlServiceException;

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    check-cast p1, Lcom/tencent/cos/xml/exception/CosXmlServiceException;

    throw p1

    :cond_6
    check-cast p1, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    throw p1

    :cond_7
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object p1, Lcom/tencent/cos/xml/common/ClientErrorCode;->INTERNAL_ERROR:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result p1

    const-string p2, "unknown exception"

    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->uploadServiceResult:Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;

    iget-object p2, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    iget-object p3, p0, Lcom/tencent/cos/xml/transfer/UploadService;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-virtual {p2, p3}, Lcom/tencent/cos/xml/CosXmlBaseService;->getAccessUrl(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/cos/xml/model/CosXmlResult;->accessUrl:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->uploadServiceResult:Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;

    return-object p0
.end method

.method private realCancel()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/CosXmlBaseService;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/CosXmlBaseService;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/CosXmlBaseService;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/CosXmlBaseService;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->uploadPartRequestLongMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/cos/xml/model/CosXmlRequest;

    invoke-virtual {v1, v2}, Lcom/tencent/cos/xml/CosXmlBaseService;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setEncryption(Lcom/tencent/cos/xml/model/CosXmlRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/cos/xml/transfer/UploadService$6;->$SwitchMap$com$tencent$cos$xml$transfer$UploadService$EncryptionType:[I

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->encryptionType:Lcom/tencent/cos/xml/transfer/UploadService$EncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/tencent/cos/xml/model/object/ObjectRequest;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->resumeData:Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->customerKeyIdForSSEKMS:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->jsonContentForSSEKMS:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->setCOSServerSideEncryptionWithKMS(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/tencent/cos/xml/model/object/ObjectRequest;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->resumeData:Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->customerKeyForSSEC:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->setCOSServerSideEncryptionWithCustomerKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/tencent/cos/xml/model/object/ObjectRequest;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->setCOSServerSideEncryption()V

    :goto_0
    return-void
.end method

.method private setRequestHeaders(Lcom/tencent/cos/xml/model/CosXmlRequest;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    add-int/lit8 v3, v0, -0x2

    if-ge v2, v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/UploadService;->headers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/cos/xml/transfer/UploadService;->headers:Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRequestHeaders(Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setSignTime(Lcom/tencent/cos/xml/model/CosXmlRequest;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/tencent/cos/xml/transfer/UploadService;->endTime:J

    cmp-long p0, v2, v0

    if-ltz p0, :cond_0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setSign(JJ)V

    :cond_0
    return-void
.end method

.method private setSupportAccelerate(Lcom/tencent/cos/xml/model/CosXmlRequest;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->isSupportAccelerate:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->isSupportAccelerate(Z)V

    :cond_0
    return-void
.end method

.method private updateSlicePart(Lcom/tencent/cos/xml/model/object/ListPartsResult;)V
    .locals 4

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

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->partStructMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->partNumber:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->partStructMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->partNumber:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/cos/xml/transfer/UploadService$SlicePartStruct;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/tencent/cos/xml/transfer/UploadService$SlicePartStruct;->isAlreadyUpload:Z

    iget-object v2, v0, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->eTag:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/cos/xml/transfer/UploadService$SlicePartStruct;->eTag:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->UPLOAD_PART_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->ALREADY_SEND_DATA_LEN:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->size:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    goto :goto_0

    :cond_1
    return-void
.end method

.method private uploadPart(IJJLcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 13

    move-object v1, p0

    move-object/from16 v2, p6

    new-instance v0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;

    iget-object v4, v1, Lcom/tencent/cos/xml/transfer/UploadService;->bucket:Ljava/lang/String;

    iget-object v5, v1, Lcom/tencent/cos/xml/transfer/UploadService;->cosPath:Ljava/lang/String;

    iget-object v7, v1, Lcom/tencent/cos/xml/transfer/UploadService;->srcPath:Ljava/lang/String;

    iget-object v12, v1, Lcom/tencent/cos/xml/transfer/UploadService;->uploadId:Ljava/lang/String;

    move-object v3, v0

    move v6, p1

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v3 .. v12}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;)V

    iget-object v3, v1, Lcom/tencent/cos/xml/transfer/UploadService;->uploadPartRequestLongMap:Ljava/util/Map;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v3, v1, Lcom/tencent/cos/xml/transfer/UploadService;->isNeedMd5:Z

    invoke-virtual {v0, v3}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setNeedMD5(Z)V

    iget-object v3, v1, Lcom/tencent/cos/xml/transfer/UploadService;->onSignatureListener:Lcom/tencent/cos/xml/transfer/UploadService$OnSignatureListener;

    if-eqz v3, :cond_0

    invoke-interface {v3, v0}, Lcom/tencent/cos/xml/transfer/UploadService$OnSignatureListener;->onGetSign(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setSign(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/UploadService;->setSignTime(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    :goto_0
    const-string v3, "UploadPartRequest"

    invoke-direct {p0, v0, v3}, Lcom/tencent/cos/xml/transfer/UploadService;->getHttpMetrics(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/UploadService;->setRequestHeaders(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/UploadService;->setSupportAccelerate(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/UploadService;->setEncryption(Lcom/tencent/cos/xml/model/CosXmlRequest;)V
    :try_end_0
    .catch Lcom/tencent/cos/xml/exception/CosXmlClientException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v3, Lcom/tencent/cos/xml/transfer/UploadService$4;

    invoke-direct {v3, p0, v0}, Lcom/tencent/cos/xml/transfer/UploadService$4;-><init>(Lcom/tencent/cos/xml/transfer/UploadService;Lcom/tencent/cos/xml/model/object/UploadPartRequest;)V

    invoke-virtual {v0, v3}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->setProgressListener(Lcom/tencent/cos/xml/listener/CosXmlProgressListener;)V

    iget-object v1, v1, Lcom/tencent/cos/xml/transfer/UploadService;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    invoke-virtual {v1, v0, v2}, Lcom/tencent/cos/xml/CosXmlBaseService;->uploadPartAsync(Lcom/tencent/cos/xml/model/object/UploadPartRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, v1, Lcom/tencent/cos/xml/transfer/UploadService;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3}, Lcom/tencent/cos/xml/listener/CosXmlResultListener;->onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    return-void
.end method


# virtual methods
.method public abort(Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->ERROR_EXIT_FLAG:I

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/UploadService;->abortMultiUpload(Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method

.method public clearSharePreference()V
    .locals 8

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->sharePreferenceUtils:Lcom/tencent/cos/xml/utils/SharePreferenceUtils;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/UploadService;->bucket:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/cos/xml/transfer/UploadService;->srcPath:Ljava/lang/String;

    iget-wide v6, p0, Lcom/tencent/cos/xml/transfer/UploadService;->sliceSize:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/cos/xml/transfer/UploadService;->getKey(Lcom/tencent/cos/xml/CosXmlSimpleService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/cos/xml/utils/SharePreferenceUtils;->clear(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public getKey(Lcom/tencent/cos/xml/CosXmlSimpleService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->getAppid()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public init(Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;)V
    .locals 4

    iget-object v0, p1, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->bucket:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->bucket:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->cosPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosPath:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->srcPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->srcPath:Ljava/lang/String;

    iget-wide v0, p1, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->sliceSize:J

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->sliceSize:J

    iget-object v0, p1, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->uploadId:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->uploadId:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->UPLOAD_PART_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->ALREADY_SEND_DATA_LEN:Ljava/util/concurrent/atomic/AtomicLong;

    iput v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->ERROR_EXIT_FLAG:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->partStructMap:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->uploadPartRequestLongMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->resumeData:Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;

    return-void
.end method

.method public isSupportAccelerate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->isSupportAccelerate:Z

    return-void
.end method

.method public pause()Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;
    .locals 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->ERROR_EXIT_FLAG:I

    new-instance v0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;

    invoke-direct {v0}, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;-><init>()V

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->bucket:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->bucket:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->cosPath:Ljava/lang/String;

    iget-wide v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->sliceSize:J

    iput-wide v1, v0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->sliceSize:J

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->srcPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->srcPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->uploadId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->uploadId:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->resumeData:Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->customerKeyForSSEC:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->customerKeyForSSEC:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->customerKeyIdForSSEKMS:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->customerKeyIdForSSEKMS:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->jsonContentForSSEKMS:Ljava/lang/String;

    iput-object p0, v0, Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;->jsonContentForSSEKMS:Ljava/lang/String;

    return-object v0
.end method

.method public resume(Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;)Lcom/tencent/cos/xml/model/CosXmlResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;,
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/transfer/UploadService;->init(Lcom/tencent/cos/xml/transfer/UploadService$ResumeData;)V

    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/UploadService;->upload()Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;

    move-result-object p0

    return-object p0
.end method

.method public setCOSServerSideEncryptionType(Lcom/tencent/cos/xml/transfer/UploadService$EncryptionType;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->encryptionType:Lcom/tencent/cos/xml/transfer/UploadService$EncryptionType;

    return-void
.end method

.method public setNeedMd5(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->isNeedMd5:Z

    return-void
.end method

.method public setOnGetHttpTaskMetrics(Lcom/tencent/cos/xml/transfer/UploadService$OnGetHttpTaskMetrics;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->onGetHttpTaskMetrics:Lcom/tencent/cos/xml/transfer/UploadService$OnGetHttpTaskMetrics;

    return-void
.end method

.method public setOnSignatureListener(Lcom/tencent/cos/xml/transfer/UploadService$OnSignatureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->onSignatureListener:Lcom/tencent/cos/xml/transfer/UploadService$OnSignatureListener;

    return-void
.end method

.method public setOnUploadInfoListener(Lcom/tencent/cos/xml/transfer/UploadService$OnUploadInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->onUploadInfoListener:Lcom/tencent/cos/xml/transfer/UploadService$OnUploadInfoListener;

    return-void
.end method

.method public setProgressListener(Lcom/tencent/cos/xml/listener/CosXmlProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosXmlProgressListener:Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

    return-void
.end method

.method public setRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->headers:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setSign(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->startTime:J

    iput-wide p3, p0, Lcom/tencent/cos/xml/transfer/UploadService;->endTime:J

    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->uploadId:Ljava/lang/String;

    return-void
.end method

.method public updateSharePreference(Ljava/lang/String;)Z
    .locals 8

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->sharePreferenceUtils:Lcom/tencent/cos/xml/utils/SharePreferenceUtils;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/UploadService;->bucket:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/cos/xml/transfer/UploadService;->srcPath:Ljava/lang/String;

    iget-wide v6, p0, Lcom/tencent/cos/xml/transfer/UploadService;->sliceSize:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/cos/xml/transfer/UploadService;->getKey(Lcom/tencent/cos/xml/CosXmlSimpleService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/cos/xml/utils/SharePreferenceUtils;->updateValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public upload()Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/UploadService;->checkParameter()V

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->fileLength:J

    const-wide/32 v2, 0x200000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService;->bucket:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService;->cosPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/UploadService;->srcPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/cos/xml/transfer/UploadService;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/UploadService;->multiUploadParts()Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;

    move-result-object p0

    return-object p0
.end method
