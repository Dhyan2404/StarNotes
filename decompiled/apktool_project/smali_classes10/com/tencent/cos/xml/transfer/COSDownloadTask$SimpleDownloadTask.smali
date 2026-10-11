.class Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/transfer/COSDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimpleDownloadTask"
.end annotation


# instance fields
.field private bucket:Ljava/lang/String;

.field private cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

.field private crc64ecma:Ljava/lang/String;

.field private eTag:Ljava/lang/String;

.field private volatile getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

.field private volatile headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

.field private key:Ljava/lang/String;

.field private lastModified:Ljava/lang/String;

.field private mTransferMetrics:Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;

.field private mTransferTaskCts:Lbolts/CancellationTokenSource;

.field private region:Ljava/lang/String;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private taskId:Ljava/lang/String;

.field private tcs:Lbolts/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/TaskCompletionSource<",
            "Lcom/tencent/cos/xml/model/object/GetObjectResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tencent/cos/xml/transfer/COSDownloadTask;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/transfer/COSDownloadTask;Lcom/tencent/cos/xml/crypto/COSDirect;Lcom/tencent/cos/xml/model/object/GetObjectRequest;Lbolts/CancellationTokenSource;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->this$0:Lcom/tencent/cos/xml/transfer/COSDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    iput-object p3, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    const-string p2, "Range"

    invoke-virtual {p1, p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addNoSignHeader(Ljava/lang/String;)V

    new-instance p1, Lbolts/TaskCompletionSource;

    invoke-direct {p1}, Lbolts/TaskCompletionSource;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->tcs:Lbolts/TaskCompletionSource;

    iput-object p4, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->mTransferTaskCts:Lbolts/CancellationTokenSource;

    return-void
.end method

.method public static synthetic access$002(Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->bucket:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$102(Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->key:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->region:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$302(Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;)Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->mTransferMetrics:Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;

    return-object p1
.end method

.method private checkCRC64(Ljava/lang/String;Ljava/io/File;JJ)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p3, p4, p5, p6}, Lcom/tencent/cos/xml/utils/DigestUtils;->getCRC64(Ljava/io/InputStream;JJ)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1}, Lcom/tencent/cos/xml/utils/DigestUtils;->getBigIntFromString(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->taskId:Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "QCloudDownload"

    const-string p3, "check offset=%d, size=%d, crc64=%s success"

    invoke-static {p2, p0, p3, p1}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "verify CRC64 failed, local crc64: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", remote crc64: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "verify CRC64 failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
.end method

.method private checkMd5(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/cos/xml/utils/DigestUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\""

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->taskId:Ljava/lang/String;

    const-string p2, "check md5=%s success"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "QCloudDownload"

    invoke-static {v0, p0, p2, p1}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "verify MD5 failed, local MD5: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", remote MD5: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
.end method

.method private checking()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    invoke-static {}, Lcom/tencent/qcloud/core/util/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "QCloudDownload"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->sharedPreferences:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->bucket:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->key:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/tencent/cos/xml/model/object/HeadObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    new-instance v0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    invoke-direct {v0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;-><init>()V

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    invoke-virtual {v1, v0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->attachMetrics(Lcom/tencent/qcloud/core/http/HttpTaskMetrics;)V

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->region:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRegion(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    invoke-direct {p0, v3}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->getHeadHeaders(Lcom/tencent/cos/xml/model/object/GetObjectRequest;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRequestHeaders(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    invoke-interface {v1, v3}, Lcom/tencent/cos/xml/crypto/COSDirect;->headObject(Lcom/tencent/cos/xml/model/object/HeadObjectRequest;)Lcom/tencent/cos/xml/model/object/HeadObjectResult;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->mTransferMetrics:Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;

    invoke-virtual {v0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->getConnectAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->connectAddress:Ljava/net/InetAddress;

    const-string v0, "Last-Modified"

    invoke-virtual {v1, v0}, Lcom/tencent/cos/xml/model/CosXmlResult;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->lastModified:Ljava/lang/String;

    const-string v0, "ETag"

    invoke-virtual {v1, v0}, Lcom/tencent/cos/xml/model/CosXmlResult;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->eTag:Ljava/lang/String;

    const-string v0, "x-cos-hash-crc64ecma"

    invoke-virtual {v1, v0}, Lcom/tencent/cos/xml/model/CosXmlResult;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->crc64ecma:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->taskId:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "start download to %s"

    invoke-static {v2, v0, v3, v1}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->taskId:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->this$0:Lcom/tencent/cos/xml/transfer/COSDownloadTask;

    invoke-static {v1}, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->access$500(Lcom/tencent/cos/xml/transfer/COSDownloadTask;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->this$0:Lcom/tencent/cos/xml/transfer/COSDownloadTask;

    invoke-static {v3}, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->access$600(Lcom/tencent/cos/xml/transfer/COSDownloadTask;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->crc64ecma:Ljava/lang/String;

    filled-new-array {v1, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "checkout remoteStart=%d, remoteEnd=%d, crc64ecma=%s"

    invoke-static {v2, v0, v1, p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p0, "context is null"

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
.end method

.method private checkoutManualCanceled()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->mTransferTaskCts:Lbolts/CancellationTokenSource;

    invoke-virtual {p0}, Lbolts/CancellationTokenSource;->isCancellationRequested()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->manualCancelException()Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
.end method

.method private download()Lcom/tencent/cos/xml/model/object/GetObjectResult;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    const-string v0, "QCloudDownload"

    :try_start_0
    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->key:Ljava/lang/String;

    new-instance v11, Lcom/tencent/cos/xml/transfer/COSDownloadTask$DownloadRecord;

    iget-object v4, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->lastModified:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->eTag:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->crc64ecma:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->this$0:Lcom/tencent/cos/xml/transfer/COSDownloadTask;

    invoke-static {v3}, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->access$500(Lcom/tencent/cos/xml/transfer/COSDownloadTask;)J

    move-result-wide v7

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->this$0:Lcom/tencent/cos/xml/transfer/COSDownloadTask;

    invoke-static {v3}, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->access$600(Lcom/tencent/cos/xml/transfer/COSDownloadTask;)J

    move-result-wide v9

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$DownloadRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-static {v11}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$DownloadRecord;->flatJson(Lcom/tencent/cos/xml/transfer/COSDownloadTask$DownloadRecord;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->taskId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "save DownloadRecord failed: %s"

    invoke-static {v0, v2, v3, v1}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->getRange()Lcom/tencent/cos/xml/common/Range;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->taskId:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/cos/xml/common/Range;->getStart()J

    move-result-wide v4

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0x0

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/tencent/cos/xml/common/Range;->getEnd()J

    move-result-wide v6

    goto :goto_2

    :cond_1
    const-wide/16 v6, -0x1

    :goto_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->getFileOffset()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const-string v1, "start download [%d,%d] with fileOffset=%d"

    invoke-static {v0, v2, v1, v3}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    invoke-interface {v1, v2}, Lcom/tencent/cos/xml/crypto/COSDirect;->getObject(Lcom/tencent/cos/xml/model/object/GetObjectRequest;)Lcom/tencent/cos/xml/model/object/GetObjectResult;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->key:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->taskId:Ljava/lang/String;

    const-string v2, "download complete"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, p0, v2, v3}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method private getHeadHeaders(Lcom/tencent/cos/xml/model/object/GetObjectRequest;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/cos/xml/model/object/GetObjectRequest;",
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

.method private hasDownloadPart()Z
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->key:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "QCloudDownload"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->taskId:Ljava/lang/String;

    const-string v0, "not find DownloadRecord"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, v0, v1}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->taskId:Ljava/lang/String;

    const-string v4, "find DownloadRecord: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v1, v4, v5}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-static {v0}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$DownloadRecord;->toJson(Ljava/lang/String;)Lcom/tencent/cos/xml/transfer/COSDownloadTask$DownloadRecord;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$DownloadRecord;->lastModified:Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->lastModified:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$DownloadRecord;->eTag:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->eTag:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$DownloadRecord;->crc64ecma:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->crc64ecma:Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-wide v5, v0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$DownloadRecord;->remoteStart:J

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->this$0:Lcom/tencent/cos/xml/transfer/COSDownloadTask;

    invoke-static {v1}, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->access$500(Lcom/tencent/cos/xml/transfer/COSDownloadTask;)J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-nez v1, :cond_3

    iget-wide v0, v0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$DownloadRecord;->remoteEnd:J

    iget-object v5, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->this$0:Lcom/tencent/cos/xml/transfer/COSDownloadTask;

    invoke-static {v5}, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->access$600(Lcom/tencent/cos/xml/transfer/COSDownloadTask;)J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v4

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->taskId:Ljava/lang/String;

    const-string v1, "verify DownloadRecord failed: lastModified:%s, eTag:%s, crc64ecma:%s, remoteStart:%d, remoteEnd:%d"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->lastModified:Ljava/lang/String;

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->eTag:Ljava/lang/String;

    aput-object v6, v5, v4

    iget-object v4, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->crc64ecma:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v4, v5, v6

    iget-object v4, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->this$0:Lcom/tencent/cos/xml/transfer/COSDownloadTask;

    invoke-static {v4}, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->access$500(Lcom/tencent/cos/xml/transfer/COSDownloadTask;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v5, v6

    iget-object v4, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->this$0:Lcom/tencent/cos/xml/transfer/COSDownloadTask;

    invoke-static {v4}, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->access$600(Lcom/tencent/cos/xml/transfer/COSDownloadTask;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x4

    aput-object v4, v5, v6

    invoke-static {v2, v0, v1, v5}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->taskId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "parse DownloadRecord failed: %s"

    invoke-static {v2, p0, v1, v0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method private isRangeDownload()Z
    .locals 4

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->this$0:Lcom/tencent/cos/xml/transfer/COSDownloadTask;

    invoke-static {v0}, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->access$500(Lcom/tencent/cos/xml/transfer/COSDownloadTask;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->this$0:Lcom/tencent/cos/xml/transfer/COSDownloadTask;

    invoke-static {p0}, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->access$600(Lcom/tencent/cos/xml/transfer/COSDownloadTask;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

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

.method private prepareDownloadContext(Z)V
    .locals 6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    invoke-virtual {p1, v0, v1}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->setFileOffset(J)V

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->this$0:Lcom/tencent/cos/xml/transfer/COSDownloadTask;

    invoke-static {v2}, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->access$500(Lcom/tencent/cos/xml/transfer/COSDownloadTask;)J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-object v4, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->this$0:Lcom/tencent/cos/xml/transfer/COSDownloadTask;

    invoke-static {v4}, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->access$600(Lcom/tencent/cos/xml/transfer/COSDownloadTask;)J

    move-result-wide v4

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->setRange(JJ)V

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->taskId:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "QCloudDownload"

    const-string v1, "has download part %d"

    invoke-static {v0, p0, v1, p1}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/xml/utils/FileUtils;->deleteFileIfExist(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method private verifyContent(Lcom/tencent/cos/xml/model/object/GetObjectResult;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    const-string v0, "x-cos-hash-crc64ecma"

    invoke-virtual {p1, v0}, Lcom/tencent/cos/xml/model/CosXmlResult;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "x-cos-meta-client-side-encryption-unencrypted-content-md5"

    invoke-virtual {p1, v0}, Lcom/tencent/cos/xml/model/CosXmlResult;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->mTransferMetrics:Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->getFileOffset()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->size:J

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->isRangeDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->getFileOffset()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->getFileOffset()J

    move-result-wide v6

    sub-long v6, v0, v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->checkCRC64(Ljava/lang/String;Ljava/io/File;JJ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    invoke-interface {v0}, Lcom/tencent/cos/xml/crypto/COSDirect;->isTransferSecurely()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v3}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->checkMd5(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->checkCRC64(Ljava/lang/String;Ljava/io/File;JJ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancel(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    invoke-interface {v0, v1, p1}, Lcom/tencent/cos/xml/crypto/COSDirect;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    invoke-interface {v0, p0, p1}, Lcom/tencent/cos/xml/crypto/COSDirect;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V

    :cond_1
    return-void
.end method

.method public getTask()Lbolts/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task<",
            "Lcom/tencent/cos/xml/model/object/GetObjectResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {p0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public run()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->checkoutManualCanceled()V

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->checking()V

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->checkoutManualCanceled()V

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->hasDownloadPart()Z

    move-result v0

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->checkoutManualCanceled()V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    invoke-interface {v0}, Lcom/tencent/cos/xml/crypto/COSDirect;->isTransferSecurely()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->prepareDownloadContext(Z)V

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->checkoutManualCanceled()V

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->download()Lcom/tencent/cos/xml/model/object/GetObjectResult;

    move-result-object v0

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->checkoutManualCanceled()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->verifyContent(Lcom/tencent/cos/xml/model/object/GetObjectResult;)V
    :try_end_1
    .catch Lcom/tencent/cos/xml/exception/CosXmlClientException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v1, v0}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/cos/xml/utils/FileUtils;->deleteFileIfExist(Ljava/lang/String;)Z

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {p0, v0}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->taskId:Ljava/lang/String;

    return-void
.end method
