.class Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;
.super Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/transfer/COSUploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultipartUploadTask"
.end annotation


# instance fields
.field private bucket:Ljava/lang/String;

.field private volatile completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

.field private cosService:Lcom/tencent/cos/xml/CosXmlSimpleService;

.field private volatile initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

.field private key:Ljava/lang/String;

.field private volatile listMultiUploadsRequest:Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsRequest;

.field private volatile listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

.field private mCryptoContext:Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;

.field private mMaxPartSize:J

.field private mUploadId:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private uploadParts:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/tencent/cos/xml/transfer/COSUploadTask$UploadPart;",
            ">;"
        }
    .end annotation
.end field

.field private uploadPartsTask:Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;

.field private verifyCRC64:Z


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/crypto/COSDirect;Lcom/tencent/cos/xml/model/object/PutObjectRequest;Lbolts/CancellationTokenSource;J)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;-><init>(Lcom/tencent/cos/xml/crypto/COSDirect;Lcom/tencent/cos/xml/model/object/PutObjectRequest;Lbolts/CancellationTokenSource;J)V

    const-wide/32 p3, 0x100000

    iput-wide p3, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->mMaxPartSize:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->verifyCRC64:Z

    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    new-instance p1, Lbolts/TaskCompletionSource;

    invoke-direct {p1}, Lbolts/TaskCompletionSource;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getBucket()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->bucket:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRegion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->region:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->getCosPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->key:Ljava/lang/String;

    new-instance p1, Ljava/util/TreeSet;

    new-instance p2, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask$1;

    invoke-direct {p2, p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask$1;-><init>(Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;)V

    invoke-direct {p1, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->uploadParts:Ljava/util/TreeSet;

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    invoke-interface {p1}, Lcom/tencent/cos/xml/crypto/COSDirect;->getCosService()Lcom/tencent/cos/xml/CosXmlSimpleService;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->cosService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    return-void
.end method

.method private abort()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->mUploadId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/cos/xml/model/object/AbortMultiUploadRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->bucket:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->mUploadId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/cos/xml/model/object/AbortMultiUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRegion(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->cosService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    new-instance v2, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask$2;

    invoke-direct {v2, p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask$2;-><init>(Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/cos/xml/CosXmlSimpleService;->abortMultiUploadAsync(Lcom/tencent/cos/xml/model/object/AbortMultiUploadRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->abort()V

    return-void
.end method

.method public static synthetic access$202(Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->mMaxPartSize:J

    return-wide p1
.end method

.method public static synthetic access$302(Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->verifyCRC64:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;Ljava/lang/String;)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->parseInitiatedDate(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private assetNotNull(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object p1, Lcom/tencent/cos/xml/common/ClientErrorCode;->INTERNAL_ERROR:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private checkoutManualCanceled()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->mTransferTaskCts:Lbolts/CancellationTokenSource;

    invoke-virtual {p0}, Lbolts/CancellationTokenSource;->isCancellationRequested()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->manualCancelException()Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
.end method

.method private checkoutUploadId(Ljava/lang/String;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "QCloudUpload"

    iget-object v3, v1, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->uploadParts:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->clear()V

    iget-object v3, v1, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    invoke-interface {v3}, Lcom/tencent/cos/xml/crypto/COSDirect;->isTransferSecurely()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    invoke-interface {v3}, Lcom/tencent/cos/xml/crypto/COSDirect;->getCryptoModule()Lcom/tencent/cos/xml/crypto/CryptoModuleBase;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    invoke-interface {v3}, Lcom/tencent/cos/xml/crypto/COSDirect;->getCryptoModule()Lcom/tencent/cos/xml/crypto/CryptoModuleBase;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->hasMultipartUploadContext(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return v4

    :cond_0
    const-string v0, "cannot client size encryption, crypto module is null"

    invoke-static {v0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object v0

    throw v0

    :cond_1
    new-instance v3, Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    iget-object v5, v1, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->bucket:Ljava/lang/String;

    iget-object v6, v1, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->key:Ljava/lang/String;

    invoke-direct {v3, v5, v6, v0}, Lcom/tencent/cos/xml/model/object/ListPartsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    iget-object v0, v1, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    iget-object v3, v1, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->region:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRegion(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->cosService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    iget-object v3, v1, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    invoke-virtual {v0, v3}, Lcom/tencent/cos/xml/CosXmlSimpleService;->listParts(Lcom/tencent/cos/xml/model/object/ListPartsRequest;)Lcom/tencent/cos/xml/model/object/ListPartsResult;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/cos/xml/model/object/ListPartsResult;->listParts:Lcom/tencent/cos/xml/model/tag/ListParts;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/ListParts;->parts:Ljava/util/List;

    new-instance v3, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask$4;

    invoke-direct {v3, v1}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask$4;-><init>(Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->openInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v4

    move v7, v6

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tencent/cos/xml/model/tag/ListParts$Part;

    iget-object v10, v8, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->partNumber:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iget-object v10, v8, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->size:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    add-int/lit8 v6, v6, 0x1

    if-eq v6, v13, :cond_2

    iget-object v5, v1, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->taskId:Ljava/lang/String;

    const-string v8, "part number %d not continuous"

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static {v2, v5, v8, v10}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const-wide/16 v10, 0x0

    invoke-static {v3, v10, v11, v14, v15}, Lcom/tencent/cos/xml/utils/DigestUtils;->getCOSMd5(Ljava/io/InputStream;JJ)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    iget-object v11, v8, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->eTag:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_1

    :cond_3
    iget-object v10, v1, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->taskId:Ljava/lang/String;

    const-string v11, "check part %d success"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v4

    invoke-static {v2, v10, v11, v9}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v9, v1, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->uploadParts:Ljava/util/TreeSet;

    new-instance v10, Lcom/tencent/cos/xml/transfer/COSUploadTask$UploadPart;

    iget-object v12, v8, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->eTag:Ljava/lang/String;

    int-to-long v7, v7

    move-object v11, v10

    move-wide/from16 v18, v14

    move-wide v14, v7

    move-wide/from16 v16, v18

    invoke-direct/range {v11 .. v17}, Lcom/tencent/cos/xml/transfer/COSUploadTask$UploadPart;-><init>(Ljava/lang/String;IJJ)V

    invoke-virtual {v9, v10}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-long v7, v7, v18

    long-to-int v7, v7

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v5, v1, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->taskId:Ljava/lang/String;

    const-string v11, "part number %d md5 not the same, local md5=%s, part md5=%s"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v4

    aput-object v10, v12, v9

    iget-object v4, v8, Lcom/tencent/cos/xml/model/tag/ListParts$Part;->eTag:Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v4, v12, v8

    invoke-static {v2, v5, v11, v12}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, v1, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->taskId:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "you have uploaded %d parts of it, upload offset: %s, partNumber: %d"

    invoke-static {v2, v1, v3, v0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v9

    :catch_0
    move-exception v0

    iget-object v1, v1, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->taskId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "check parts encounter exception: %s"

    invoke-static {v2, v1, v4, v3}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object v0

    throw v0
.end method

.method private completeMultipartUpload(Ljava/lang/String;)Lcom/tencent/cos/xml/model/CosXmlResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    const-string v0, "QCloudUpload"

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->uploadParts:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/cos/xml/transfer/COSUploadTask$UploadPart;

    iget v4, v3, Lcom/tencent/cos/xml/transfer/COSUploadTask$UploadPart;->number:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v3, v3, Lcom/tencent/cos/xml/transfer/COSUploadTask$UploadPart;->etag:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v2, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->bucket:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->key:Ljava/lang/String;

    invoke-direct {v2, v3, v4, p1, v1}, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v2, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-direct {p0, v2}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->getCompleteHeaders(Lcom/tencent/cos/xml/model/object/PutObjectRequest;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRequestHeaders(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    invoke-interface {v1, v2}, Lcom/tencent/cos/xml/crypto/COSDirect;->completeMultipartUpload(Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;)Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->taskId:Ljava/lang/String;

    const-string v3, "complete upload task"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->key:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/tencent/cos/xml/exception/CosXmlServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "NoSuchUpload"

    invoke-virtual {v1}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_1
    new-instance v2, Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->bucket:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->key:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/tencent/cos/xml/model/object/HeadObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->region:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRegion(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->taskId:Ljava/lang/String;

    const-string v4, "complete uploadId [%s] failed with NoSuchUpload. check if it has been uploaded by HeadObjectRequest."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v3, v4, p1}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->cosService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    invoke-virtual {p0, v2}, Lcom/tencent/cos/xml/CosXmlSimpleService;->headObject(Lcom/tencent/cos/xml/model/object/HeadObjectRequest;)Lcom/tencent/cos/xml/model/object/HeadObjectResult;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    throw v1

    :cond_1
    throw v1
.end method

.method private crc64Verify(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {p1}, Lcom/tencent/cos/xml/utils/DigestUtils;->getBigIntFromString(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->openInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/cos/xml/utils/DigestUtils;->getCRC64(Ljava/io/InputStream;)J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    cmp-long v2, v0, v3

    if-nez v2, :cond_0

    const-string v0, "QCloudUpload"

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->taskId:Ljava/lang/String;

    const-string v1, "verify crc64 %s success"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, v1, p1}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object p1, Lcom/tencent/cos/xml/common/ClientErrorCode;->INTERNAL_ERROR:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result p1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "crc64 verify failed, remote crc 64bit value is %d, but local crc 64bit value is %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v6, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v6, v1

    invoke-static {v2, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->IO_ERROR:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "failed open inputStream to verify crc64: %s"

    invoke-static {v1, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object p1, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result p1

    const-string v0, "unable to verify with crc64 is null"

    invoke-direct {p0, p1, v0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private getCompleteHeaders(Lcom/tencent/cos/xml/model/object/PutObjectRequest;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/cos/xml/model/object/PutObjectRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string p0, "Content-Type"

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private getInitHeaders(Lcom/tencent/cos/xml/model/object/PutObjectRequest;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/cos/xml/model/object/PutObjectRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method private getStorageClass()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p0

    const-string v0, "x-cos-storage-class"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "STANDARD"

    return-object p0
.end method

.method private initUploadId()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->bucket:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->key:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRegion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-direct {p0, v1}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->getInitHeaders(Lcom/tencent/cos/xml/model/object/PutObjectRequest;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRequestHeaders(Ljava/util/Map;)V

    new-instance v0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    invoke-direct {v0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;-><init>()V

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    invoke-virtual {v1, v0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->attachMetrics(Lcom/tencent/qcloud/core/http/HttpTaskMetrics;)V

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    invoke-interface {v1}, Lcom/tencent/cos/xml/crypto/COSDirect;->isTransferSecurely()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/tencent/cos/xml/crypto/ObjectMetadata;

    invoke-direct {v1}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;-><init>()V

    iget-wide v2, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->totalUploadSize:J

    invoke-virtual {v1, v2, v3}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->setContentLength(J)V

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->openUnencryptedInputStream()Ljava/io/InputStream;

    move-result-object v2

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->totalUploadSize:J

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tencent/cos/xml/utils/DigestUtils;->getCOSMd5(Ljava/io/InputStream;JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->setContentMD5(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    invoke-virtual {v2, v1}, Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;->setMetadata(Lcom/tencent/cos/xml/crypto/ObjectMetadata;)V

    :cond_0
    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    invoke-interface {v1, v2}, Lcom/tencent/cos/xml/crypto/COSDirect;->initMultipartUpload(Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;)Lcom/tencent/cos/xml/model/object/InitMultipartUploadResult;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->mTransferMetrics:Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;

    invoke-virtual {v0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->getConnectAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->connectAddress:Ljava/net/InetAddress;

    iget-object v0, v1, Lcom/tencent/cos/xml/model/object/InitMultipartUploadResult;->initMultipartUpload:Lcom/tencent/cos/xml/model/tag/InitiateMultipartUpload;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/InitiateMultipartUpload;->uploadId:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    invoke-interface {v1}, Lcom/tencent/cos/xml/crypto/COSDirect;->isTransferSecurely()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    invoke-interface {v1}, Lcom/tencent/cos/xml/crypto/COSDirect;->getCryptoModule()Lcom/tencent/cos/xml/crypto/CryptoModuleBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->getCryptoContext(Ljava/lang/String;)Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->mCryptoContext:Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;

    :cond_1
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->taskId:Ljava/lang/String;

    const-string v1, "create a new uploadId %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "QCloudUpload"

    invoke-static {v3, p0, v1, v2}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private isParallelUpload()Z
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    invoke-interface {p0}, Lcom/tencent/cos/xml/crypto/COSDirect;->isTransferSecurely()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private listObjectUploadIds()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->key:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->key:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->key:Ljava/lang/String;

    :goto_0
    new-instance v1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    invoke-direct {v1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;-><init>()V

    new-instance v2, Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsRequest;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->bucket:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsRequest;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->listMultiUploadsRequest:Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsRequest;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->listMultiUploadsRequest:Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsRequest;

    invoke-virtual {v2, v0}, Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsRequest;->setPrefix(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->listMultiUploadsRequest:Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsRequest;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->region:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRegion(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->listMultiUploadsRequest:Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsRequest;

    invoke-virtual {v2, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->attachMetrics(Lcom/tencent/qcloud/core/http/HttpTaskMetrics;)V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->cosService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    iget-object v4, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->listMultiUploadsRequest:Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsRequest;

    invoke-virtual {v3, v4}, Lcom/tencent/cos/xml/CosXmlSimpleService;->listMultiUploads(Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsRequest;)Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsResult;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->mTransferMetrics:Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;

    invoke-virtual {v1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->getConnectAddress()Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->connectAddress:Ljava/net/InetAddress;

    iget-object v1, v3, Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsResult;->listMultipartUploads:Lcom/tencent/cos/xml/model/tag/ListMultipartUploads;

    const-string v3, "QCloudUpload"

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads;->uploads:Ljava/util/List;

    iget-object v4, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->taskId:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "find %d uploadIds with prefix %s"

    invoke-static {v3, v4, v6, v5}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask$3;

    invoke-direct {v4, p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask$3;-><init>(Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;)V

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Upload;

    iget-object v5, v4, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Upload;->key:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Upload;->storageClass:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->getStorageClass()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v4, v4, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Upload;->uploadID:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->taskId:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "find %d plan uploadId"

    invoke-static {v3, p0, v1, v0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method

.method private openInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->openUnencryptedInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    invoke-interface {v1}, Lcom/tencent/cos/xml/crypto/COSDirect;->isTransferSecurely()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->mCryptoContext:Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    invoke-interface {v0}, Lcom/tencent/cos/xml/crypto/COSDirect;->getCryptoModule()Lcom/tencent/cos/xml/crypto/CryptoModuleBase;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->mCryptoContext:Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;

    invoke-virtual {v2}, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->getCipherLite()Lcom/tencent/cos/xml/crypto/CipherLite;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->newCOSCipherLiteInputStream(Lcom/tencent/cos/xml/model/object/PutObjectRequest;Lcom/tencent/cos/xml/crypto/CipherLite;)Lcom/tencent/cos/xml/crypto/CipherLiteInputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " crypto context not found"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->assetNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private openUnencryptedInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->getSrcPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tencent/cos/xml/crypto/ResettableInputStream;

    invoke-direct {v1, v0}, Lcom/tencent/cos/xml/crypto/ResettableInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/tencent/qcloud/core/util/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/qcloud/core/util/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->assetNotNull(Ljava/lang/Object;)V

    return-object v1

    :catch_0
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INTERNAL_ERROR:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    const-string v1, "open InputStream failed"

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private parseInitiatedDate(Ljava/lang/String;)J
    .locals 2

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private uploadParts(Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->totalUploadSize:J

    iget-object v3, v0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->uploadParts:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->uploadParts:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/cos/xml/transfer/COSUploadTask$UploadPart;

    :goto_0
    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    iget-wide v7, v3, Lcom/tencent/cos/xml/transfer/COSUploadTask$UploadPart;->offset:J

    iget-wide v9, v3, Lcom/tencent/cos/xml/transfer/COSUploadTask$UploadPart;->size:J

    add-long/2addr v7, v9

    sub-long/2addr v1, v7

    iget v3, v3, Lcom/tencent/cos/xml/transfer/COSUploadTask$UploadPart;->number:I

    add-int/2addr v6, v3

    move-wide v14, v1

    move/from16 v16, v6

    move-wide v12, v7

    goto :goto_1

    :cond_1
    move-wide v14, v1

    move-wide v12, v4

    move/from16 v16, v6

    :goto_1
    iget-object v1, v0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->mTransferMetrics:Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;

    iput-wide v14, v1, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->size:J

    cmp-long v1, v14, v4

    if-lez v1, :cond_3

    iget-object v1, v0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->taskId:Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "QCloudUpload"

    const-string v4, "start upload parts, offset=%s, size=%d, startNumber=%d"

    invoke-static {v3, v1, v4, v2}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->isParallelUpload()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;

    iget-object v10, v0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    iget-object v11, v0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    move-object v9, v1

    move-object/from16 v17, p1

    invoke-direct/range {v9 .. v17}, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;-><init>(Lcom/tencent/cos/xml/crypto/COSDirect;Lcom/tencent/cos/xml/model/object/PutObjectRequest;JJILjava/lang/String;)V

    iput-object v1, v0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->uploadPartsTask:Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/tencent/cos/xml/transfer/SerialUploadPartsTask;

    iget-object v10, v0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    iget-object v11, v0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    move-object v9, v1

    move-object/from16 v17, p1

    invoke-direct/range {v9 .. v17}, Lcom/tencent/cos/xml/transfer/SerialUploadPartsTask;-><init>(Lcom/tencent/cos/xml/crypto/COSDirect;Lcom/tencent/cos/xml/model/object/PutObjectRequest;JJILjava/lang/String;)V

    iput-object v1, v0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->uploadPartsTask:Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;

    :goto_2
    iget-object v1, v0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->uploadPartsTask:Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;

    iget-wide v2, v0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->mMaxPartSize:J

    iput-wide v2, v1, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mMaxPartSize:J

    iget-object v2, v0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->taskId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->setTaskId(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->uploadPartsTask:Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;

    iget-object v2, v0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->getProgressListener()Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->setProgressListener(Lcom/tencent/cos/xml/listener/CosXmlProgressListener;)V

    iget-object v1, v0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->uploadParts:Ljava/util/TreeSet;

    iget-object v0, v0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->uploadPartsTask:Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->upload()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->listMultiUploadsRequest:Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsRequest;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->listMultiUploadsRequest:Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsRequest;

    invoke-interface {v0, v1}, Lcom/tencent/cos/xml/crypto/COSDirect;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    invoke-interface {v0, v1}, Lcom/tencent/cos/xml/crypto/COSDirect;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    invoke-interface {v0, v1}, Lcom/tencent/cos/xml/crypto/COSDirect;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    invoke-interface {v0, v1}, Lcom/tencent/cos/xml/crypto/COSDirect;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    .line 9
    :cond_3
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->uploadPartsTask:Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;

    if-eqz p0, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->cancel()V

    :cond_4
    return-void
.end method

.method public cancel(Z)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->listMultiUploadsRequest:Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsRequest;

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->listMultiUploadsRequest:Lcom/tencent/cos/xml/model/bucket/ListMultiUploadsRequest;

    invoke-interface {v0, v1, p1}, Lcom/tencent/cos/xml/crypto/COSDirect;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->initMultipartUploadRequest:Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    invoke-interface {v0, v1, p1}, Lcom/tencent/cos/xml/crypto/COSDirect;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->listPartsRequest:Lcom/tencent/cos/xml/model/object/ListPartsRequest;

    invoke-interface {v0, v1, p1}, Lcom/tencent/cos/xml/crypto/COSDirect;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->completeMultiUploadRequest:Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    invoke-interface {v0, v1, p1}, Lcom/tencent/cos/xml/crypto/COSDirect;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V

    .line 19
    :cond_3
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->uploadPartsTask:Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;

    if-eqz p0, :cond_4

    .line 20
    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->cancel(Z)V

    :cond_4
    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->taskId:Ljava/lang/String;

    return-void
.end method

.method public upload(Lcom/tencent/cos/xml/model/object/PutObjectRequest;)Lcom/tencent/cos/xml/model/CosXmlResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    invoke-interface {p1}, Lcom/tencent/cos/xml/crypto/COSDirect;->isTransferSecurely()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->checkoutManualCanceled()V

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->listObjectUploadIds()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->checkoutManualCanceled()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->checkoutUploadId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->mUploadId:Ljava/lang/String;

    :cond_1
    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->checkoutManualCanceled()V

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->mUploadId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->initUploadId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->mUploadId:Ljava/lang/String;

    :cond_2
    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->checkoutManualCanceled()V

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->mUploadId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->uploadParts(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->checkoutManualCanceled()V

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->mUploadId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->completeMultipartUpload(Ljava/lang/String;)Lcom/tencent/cos/xml/model/CosXmlResult;

    move-result-object p1

    iget-boolean v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->verifyCRC64:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->checkoutManualCanceled()V

    const-string v0, "x-cos-hash-crc64ecma"

    invoke-virtual {p1, v0}, Lcom/tencent/cos/xml/model/CosXmlResult;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->crc64Verify(Ljava/lang/String;)V

    :cond_3
    return-object p1
.end method
