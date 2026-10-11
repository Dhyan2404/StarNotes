.class public Lcom/tencent/cos/xml/transfer/Downloader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private bucket:Ljava/lang/String;

.field private cosPath:Ljava/lang/String;

.field private cosXmlServer:Lcom/tencent/cos/xml/CosXml;

.field private getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

.field private listenerHandler:Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;

.field private localFileName:Ljava/lang/String;

.field private localPath:Ljava/lang/String;

.field private rangeStart:J

.field private sharePreferedUtils:Lcom/tencent/cos/xml/utils/SharePreferenceUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/cos/xml/CosXml;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/Downloader;->rangeStart:J

    new-instance v0, Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;

    invoke-direct {v0, p0}, Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;-><init>(Lcom/tencent/cos/xml/transfer/Downloader;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/Downloader;->listenerHandler:Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;

    invoke-static {p1}, Lcom/tencent/cos/xml/utils/SharePreferenceUtils;->instance(Landroid/content/Context;)Lcom/tencent/cos/xml/utils/SharePreferenceUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/Downloader;->sharePreferedUtils:Lcom/tencent/cos/xml/utils/SharePreferenceUtils;

    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/Downloader;->cosXmlServer:Lcom/tencent/cos/xml/CosXml;

    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/cos/xml/transfer/Downloader;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/Downloader;->rangeStart:J

    return-wide v0
.end method

.method public static synthetic access$002(Lcom/tencent/cos/xml/transfer/Downloader;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/cos/xml/transfer/Downloader;->rangeStart:J

    return-wide p1
.end method

.method public static synthetic access$100(Lcom/tencent/cos/xml/transfer/Downloader;)Lcom/tencent/cos/xml/model/object/GetObjectRequest;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/Downloader;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/tencent/cos/xml/transfer/Downloader;)Lcom/tencent/cos/xml/utils/SharePreferenceUtils;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/Downloader;->sharePreferedUtils:Lcom/tencent/cos/xml/utils/SharePreferenceUtils;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/tencent/cos/xml/transfer/Downloader;Ljava/lang/String;)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/Downloader;->getRange(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$400(Lcom/tencent/cos/xml/transfer/Downloader;)Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/Downloader;->listenerHandler:Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/tencent/cos/xml/transfer/Downloader;)Lcom/tencent/cos/xml/CosXml;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/Downloader;->cosXmlServer:Lcom/tencent/cos/xml/CosXml;

    return-object p0
.end method

.method private checkParameters()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/Downloader;->bucket:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/Downloader;->cosPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/Downloader;->localPath:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    const-string v1, "localPath must not be null "

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    const-string v1, "cosPath must not be null "

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    const-string v1, "bucket must not be null "

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private getRange(Ljava/lang/String;)J
    .locals 0

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/Downloader;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/Downloader;->cosXmlServer:Lcom/tencent/cos/xml/CosXml;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/tencent/cos/xml/BaseCosXml;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    :cond_0
    return-void
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/cos/xml/model/object/GetObjectResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/Downloader;->bucket:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/Downloader;->cosPath:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/tencent/cos/xml/transfer/Downloader;->localPath:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/tencent/cos/xml/transfer/Downloader;->localFileName:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/Downloader;->checkParameters()V

    .line 6
    new-instance v0, Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    invoke-direct {v0, p1, p2}, Lcom/tencent/cos/xml/model/object/HeadObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/Downloader;->cosXmlServer:Lcom/tencent/cos/xml/CosXml;

    invoke-interface {v1, v0}, Lcom/tencent/cos/xml/SimpleCosXml;->headObject(Lcom/tencent/cos/xml/model/object/HeadObjectRequest;)Lcom/tencent/cos/xml/model/object/HeadObjectResult;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->headers:Ljava/util/Map;

    const-string v1, "ETag"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    new-instance v1, Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/cos/xml/transfer/Downloader;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    const-wide/16 p1, 0x0

    .line 12
    iput-wide p1, p0, Lcom/tencent/cos/xml/transfer/Downloader;->rangeStart:J

    .line 13
    invoke-virtual {v1}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_3

    .line 14
    iget-object p2, p0, Lcom/tencent/cos/xml/transfer/Downloader;->sharePreferedUtils:Lcom/tencent/cos/xml/utils/SharePreferenceUtils;

    invoke-virtual {p2, p1}, Lcom/tencent/cos/xml/utils/SharePreferenceUtils;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/Downloader;->getRange(Ljava/lang/String;)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/tencent/cos/xml/transfer/Downloader;->rangeStart:J

    goto :goto_2

    .line 17
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/tencent/cos/xml/transfer/Downloader;->sharePreferedUtils:Lcom/tencent/cos/xml/utils/SharePreferenceUtils;

    invoke-virtual {p2, p1, v0}, Lcom/tencent/cos/xml/utils/SharePreferenceUtils;->updateValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 18
    :cond_3
    :goto_2
    iget-object p2, p0, Lcom/tencent/cos/xml/transfer/Downloader;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    iget-wide p3, p0, Lcom/tencent/cos/xml/transfer/Downloader;->rangeStart:J

    invoke-virtual {p2, p3, p4}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->setRange(J)V

    .line 19
    iget-object p2, p0, Lcom/tencent/cos/xml/transfer/Downloader;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    iget-object p3, p0, Lcom/tencent/cos/xml/transfer/Downloader;->listenerHandler:Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;

    invoke-virtual {p2, p3}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->setProgressListener(Lcom/tencent/cos/xml/listener/CosXmlProgressListener;)V

    .line 20
    iget-object p2, p0, Lcom/tencent/cos/xml/transfer/Downloader;->cosXmlServer:Lcom/tencent/cos/xml/CosXml;

    iget-object p3, p0, Lcom/tencent/cos/xml/transfer/Downloader;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    invoke-interface {p2, p3}, Lcom/tencent/cos/xml/BaseCosXml;->getObject(Lcom/tencent/cos/xml/model/object/GetObjectRequest;)Lcom/tencent/cos/xml/model/object/GetObjectResult;

    move-result-object p2

    .line 21
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/Downloader;->sharePreferedUtils:Lcom/tencent/cos/xml/utils/SharePreferenceUtils;

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/utils/SharePreferenceUtils;->clear(Ljava/lang/String;)Z

    return-object p2
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 1

    .line 22
    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/Downloader;->bucket:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/Downloader;->cosPath:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/tencent/cos/xml/transfer/Downloader;->localPath:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/tencent/cos/xml/transfer/Downloader;->localFileName:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/Downloader;->listenerHandler:Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;

    invoke-virtual {v0, p5}, Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;->setCosXmlResultListener(Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    .line 27
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/Downloader;->checkParameters()V
    :try_end_0
    .catch Lcom/tencent/cos/xml/exception/CosXmlClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    new-instance p5, Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    invoke-direct {p5, p1, p2, p3, p4}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p5, p0, Lcom/tencent/cos/xml/transfer/Downloader;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    .line 29
    new-instance p3, Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    invoke-direct {p3, p1, p2}, Lcom/tencent/cos/xml/model/object/HeadObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/Downloader;->cosXmlServer:Lcom/tencent/cos/xml/CosXml;

    new-instance p2, Lcom/tencent/cos/xml/transfer/Downloader$1;

    invoke-direct {p2, p0}, Lcom/tencent/cos/xml/transfer/Downloader$1;-><init>(Lcom/tencent/cos/xml/transfer/Downloader;)V

    invoke-interface {p1, p3, p2}, Lcom/tencent/cos/xml/SimpleCosXml;->headObjectAsync(Lcom/tencent/cos/xml/model/object/HeadObjectRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void

    :catch_0
    move-exception p1

    .line 31
    iget-object p2, p0, Lcom/tencent/cos/xml/transfer/Downloader;->listenerHandler:Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/Downloader;->getObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    const/4 p3, 0x0

    invoke-virtual {p2, p0, p1, p3}, Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;->onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    return-void
.end method

.method public setProgress(Lcom/tencent/cos/xml/listener/CosXmlProgressListener;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/Downloader;->listenerHandler:Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;->setCosXmlProgressListener(Lcom/tencent/cos/xml/listener/CosXmlProgressListener;)V

    return-void
.end method
