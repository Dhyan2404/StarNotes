.class public final Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;
.super Lcom/tencent/cos/xml/transfer/COSXMLTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask$COSXMLDownloadTaskResult;,
        Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask$COSXMLDownloadTaskRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private eTag:Ljava/lang/String;

.field private fileOffset:J

.field private getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

.field private hasWriteDataLen:J

.field private headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

.field private localSaveDirPath:Ljava/lang/String;

.field private localSaveFileName:Ljava/lang/String;

.field private objectKeySimplifyCheck:Z

.field private rangeEnd:J

.field private rangeStart:J

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private startTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/cos/xml/CosXmlSimpleService;Lcom/tencent/cos/xml/model/object/GetObjectRequest;)V
    .locals 8

    .line 15
    invoke-virtual {p3}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getBucket()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->getConfig()Lcom/tencent/cos/xml/CosXmlServiceConfig;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->getPath(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->getSavePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;-><init>(Landroid/content/Context;Lcom/tencent/cos/xml/CosXmlSimpleService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p3}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->getQueryString()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->queries:Ljava/util/Map;

    .line 19
    invoke-virtual {p3}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->headers:Ljava/util/Map;

    .line 20
    invoke-virtual {p3}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getNoSignHeaders()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->noSignHeaders:Ljava/util/Set;

    .line 21
    invoke-virtual {p3}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getCredentialProvider()Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    .line 22
    invoke-virtual {p3}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->isObjectKeySimplifyCheck()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->objectKeySimplifyCheck:Z

    .line 23
    invoke-virtual {p3}, Lcom/tencent/cos/xml/model/CosXmlRequest;->isNeedMD5()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->isNeedMd5:Z

    .line 24
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->headers:Ljava/util/Map;

    if-eqz p1, :cond_0

    const-string p2, "Range"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->headers:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 p2, 0x0

    .line 26
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "="

    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const-string v0, "-"

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 p2, p2, 0x1

    .line 29
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->rangeStart:J

    add-int/lit8 v0, v0, 0x1

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 32
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->rangeEnd:J

    .line 33
    :cond_0
    invoke-virtual {p3}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->getFileOffset()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->fileOffset:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/cos/xml/CosXmlSimpleService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSXMLTask;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->rangeStart:J

    const-wide/16 v2, -0x1

    .line 3
    iput-wide v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->rangeEnd:J

    .line 4
    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->fileOffset:J

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->objectKeySimplifyCheck:Z

    .line 6
    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->hasWriteDataLen:J

    .line 7
    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->startTime:J

    .line 8
    iput-object p3, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->region:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    .line 10
    iput-object p5, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    .line 11
    iput-object p6, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->localSaveDirPath:Ljava/lang/String;

    .line 12
    iput-object p7, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->localSaveFileName:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    if-eqz p1, :cond_0

    const-string p2, "COSXMLDOWNLOADTASK"

    const/4 p3, 0x0

    .line 14
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->sharedPreferences:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->hasWriteDataLen:J

    return-wide v0
.end method

.method public static synthetic access$002(Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->hasWriteDataLen:J

    return-wide p1
.end method

.method public static synthetic access$100(Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;)Lcom/tencent/cos/xml/model/object/GetObjectRequest;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->save(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;)Lcom/tencent/cos/xml/model/object/HeadObjectRequest;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->eTag:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->hasExisted()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->fileOffset:J

    return-wide v0
.end method

.method public static synthetic access$600(Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->rangeStart:J

    return-wide v0
.end method

.method public static synthetic access$700(Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->rangeEnd:J

    return-wide v0
.end method

.method public static synthetic access$800(Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;JJJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->realDownload(JJJ)V

    return-void
.end method

.method public static synthetic access$900(Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private cancelAllRequest(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    invoke-virtual {v1, v0, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    invoke-virtual {p0, v0, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V

    return-void
.end method

.method private checkParameter()Z
    .locals 5

    const-string v0, "/"

    iget-boolean v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->objectKeySimplifyCheck:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/cos/xml/transfer/TransferState;->FAILED:Lcom/tencent/cos/xml/transfer/TransferState;

    new-instance v1, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v2, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v2}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v2

    const-string v3, "The key in the getobject is illegal"

    invoke-direct {v1, v2, v3}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->updateState(Lcom/tencent/cos/xml/transfer/TransferState;Ljava/lang/Exception;Lcom/tencent/cos/xml/model/CosXmlResult;Z)V

    return v3

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getDownloadPath()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->localSaveDirPath:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->localSaveDirPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->localSaveDirPath:Ljava/lang/String;

    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_1
    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->localSaveFileName:Ljava/lang/String;

    if-eqz v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->localSaveFileName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_1
    return-object v0
.end method

.method private getKey()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->region:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->rangeStart:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->rangeEnd:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->fileOffset:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->localSaveDirPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->localSaveFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->eTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/xml/utils/DigestUtils;->getSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/tencent/cos/xml/exception/CosXmlClientException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized hasExisted()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private realDownload(JJJ)V
    .locals 5

    new-instance v0, Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->localSaveDirPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->localSaveFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRegion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    invoke-virtual {v0, p5, p6}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->setFileOffset(J)V

    iget-object p5, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    iget-object p6, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->queries:Ljava/util/Map;

    invoke-virtual {p5, p6}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setQueryParameters(Ljava/util/Map;)V

    iget-object p5, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    iget-object p6, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->headers:Ljava/util/Map;

    invoke-virtual {p5, p6}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRequestHeaders(Ljava/util/Map;)V

    iget-object p5, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    iget-boolean p6, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->objectKeySimplifyCheck:Z

    invoke-virtual {p5, p6}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->setObjectKeySimplifyCheck(Z)V

    iget-object p5, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    iget-object p6, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->noSignHeaders:Ljava/util/Set;

    invoke-virtual {p5, p6}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addNoSignHeader(Ljava/util/Set;)V

    iget-object p5, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    iget-object p6, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    invoke-virtual {p5, p6}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setCredentialProvider(Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)V

    const-wide/16 p5, 0x0

    cmp-long v0, p3, p5

    if-gtz v0, :cond_0

    cmp-long p5, p1, p5

    if-lez p5, :cond_1

    :cond_0
    iget-object p5, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->setRange(JJ)V

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    const-string p2, "Range"

    invoke-virtual {p1, p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addNoSignHeader(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->onSignatureListener:Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    invoke-interface {p1, p2}, Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;->onGetSign(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setSign(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    const-string p2, "GetObjectRequest"

    invoke-virtual {p0, p1, p2}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->getHttpMetrics(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    new-instance p2, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask$1;

    invoke-direct {p2, p0}, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask$1;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;)V

    invoke-virtual {p1, p2}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->setProgressListener(Lcom/tencent/cos/xml/listener/CosXmlProgressListener;)V

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    iget-object p2, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    new-instance p3, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask$2;

    invoke-direct {p3, p0}, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask$2;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;)V

    invoke-virtual {p1, p2, p3}, Lcom/tencent/cos/xml/CosXmlBaseService;->internalGetObjectAsync(Lcom/tencent/cos/xml/model/object/GetObjectRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method

.method private declared-synchronized save(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public buildCOSXMLTaskRequest()Lcom/tencent/cos/xml/model/CosXmlRequest;
    .locals 9

    new-instance v8, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask$COSXMLDownloadTaskRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->region:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->localSaveDirPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->localSaveFileName:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->headers:Ljava/util/Map;

    iget-object v7, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->queries:Ljava/util/Map;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask$COSXMLDownloadTaskRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-object v8
.end method

.method public buildCOSXMLTaskResult(Lcom/tencent/cos/xml/model/CosXmlResult;)Lcom/tencent/cos/xml/model/CosXmlResult;
    .locals 2

    new-instance v0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask$COSXMLDownloadTaskResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask$COSXMLDownloadTaskResult;-><init>()V

    if-eqz p1, :cond_0

    iget v1, p1, Lcom/tencent/cos/xml/model/CosXmlResult;->httpCode:I

    iput v1, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->httpCode:I

    iget-object v1, p1, Lcom/tencent/cos/xml/model/CosXmlResult;->httpMessage:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->httpMessage:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/cos/xml/model/CosXmlResult;->headers:Ljava/util/Map;

    iput-object v1, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->headers:Ljava/util/Map;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->eTag:Ljava/lang/String;

    iput-object p0, v0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask$COSXMLDownloadTaskResult;->eTag:Ljava/lang/String;

    iget-object p0, p1, Lcom/tencent/cos/xml/model/CosXmlResult;->accessUrl:Ljava/lang/String;

    iput-object p0, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->accessUrl:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public download()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->checkParameter()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->startTime:J

    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->run()V

    return-void
.end method

.method public encounterError(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
    .locals 1
    .param p1    # Lcom/tencent/cos/xml/model/CosXmlRequest;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p1, Lcom/tencent/cos/xml/transfer/TransferState;->FAILED:Lcom/tencent/cos/xml/transfer/TransferState;

    invoke-static {p2, p3}, Lcom/tencent/cos/xml/utils/COSUtils;->mergeException(Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)Ljava/lang/Exception;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->updateState(Lcom/tencent/cos/xml/transfer/TransferState;Ljava/lang/Exception;Lcom/tencent/cos/xml/model/CosXmlResult;Z)V

    return-void
.end method

.method public internalCancel(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->cancelAllRequest(Z)V

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->clear()V

    return-void
.end method

.method public internalCompleted()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->clear()V

    return-void
.end method

.method public internalFailed()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->cancelAllRequest(Z)V

    return-void
.end method

.method public internalPause(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/cos/xml/CosTrackService;->getInstance()Lcom/tencent/cos/xml/CosTrackService;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/CosTrackService;->reportDownloadTaskSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->cancelAllRequest(Z)V

    return-void
.end method

.method public internalResume()V
    .locals 2

    sget-object v0, Lcom/tencent/cos/xml/transfer/TransferState;->WAITING:Lcom/tencent/cos/xml/transfer/TransferState;

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->download()V

    return-void
.end method

.method public run()V
    .locals 4

    new-instance v0, Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->bucket:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosPath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tencent/cos/xml/model/object/HeadObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->headers:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRequestHeaders(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->noSignHeaders:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addNoSignHeader(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setCredentialProvider(Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->queries:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setQueryParameters(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRegion(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->onSignatureListener:Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    invoke-interface {v1, v2}, Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;->onGetSign(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setSign(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    const-string v2, "HeadObjectRequest"

    invoke-virtual {p0, v1, v2}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->getHttpMetrics(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    new-instance v2, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask$3;

    invoke-direct {v2, p0}, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask$3;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;)V

    invoke-virtual {v1, v2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setTaskStateListener(Lcom/tencent/qcloud/core/common/QCloudTaskStateListener;)V

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;->headObjectRequest:Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    new-instance v3, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask$4;

    invoke-direct {v3, p0, v0}, Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask$4;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/tencent/cos/xml/CosXmlSimpleService;->headObjectAsync(Lcom/tencent/cos/xml/model/object/HeadObjectRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method
