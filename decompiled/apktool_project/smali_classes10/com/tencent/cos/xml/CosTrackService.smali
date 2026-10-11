.class public Lcom/tencent/cos/xml/CosTrackService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/CosTrackService$ReturnClientException;,
        Lcom/tencent/cos/xml/CosTrackService$ReturnServiceException;
    }
.end annotation


# static fields
.field private static final EVENT_CODE_NEW_TRANSFER:Ljava/lang/String; = "qcloud_track_cos_sdk_transfer"

.field private static final EVENT_CODE_QCLOUD_TRACK_COS_SDK:Ljava/lang/String; = "qcloud_track_cos_sdk"

.field private static final EVENT_PARAMS_CLIENT:Ljava/lang/String; = "Client"

.field private static final EVENT_PARAMS_FAILURE:Ljava/lang/String; = "Failure"

.field private static final EVENT_PARAMS_SERVER:Ljava/lang/String; = "Server"

.field private static final EVENT_PARAMS_SUCCESS:Ljava/lang/String; = "Success"

.field private static final IS_DEBUG:Z = false

.field private static final SDK_NAME:Ljava/lang/String; = "cos"

.field private static final TAG:Ljava/lang/String; = "CosTrackService"

.field private static instance:Lcom/tencent/cos/xml/CosTrackService;


# instance fields
.field private bridge:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convertClientException(Lcom/tencent/qcloud/core/common/QCloudClientException;)Lcom/tencent/cos/xml/exception/CosXmlClientException;
    .locals 1

    instance-of p0, p1, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/tencent/cos/xml/utils/ThrowableUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_1

    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/Throwable;)V

    :goto_0
    move-object p1, p0

    goto :goto_1

    :cond_1
    instance-of v0, p0, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;

    if-eqz v0, :cond_2

    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_CREDENTIALS:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    instance-of p0, p0, Ljava/io/IOException;

    if-eqz p0, :cond_3

    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->IO_ERROR:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INTERNAL_ERROR:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/Throwable;)V

    goto :goto_0

    :goto_1
    return-object p1
.end method

.method private convertServerException(Lcom/tencent/qcloud/core/common/QCloudServiceException;)Lcom/tencent/cos/xml/exception/CosXmlServiceException;
    .locals 0

    instance-of p0, p1, Lcom/tencent/cos/xml/exception/CosXmlServiceException;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/tencent/cos/xml/exception/CosXmlServiceException;

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlServiceException;

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/exception/CosXmlServiceException;-><init>(Lcom/tencent/qcloud/core/common/QCloudServiceException;)V

    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method private createTransferExtra(Ljava/lang/String;Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/cos/xml/model/CosXmlRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "request_name"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "null"

    :goto_0
    const-string p2, "error_node"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private getClientExceptionParams(Lcom/tencent/qcloud/core/common/QCloudClientException;)Lcom/tencent/cos/xml/CosTrackService$ReturnClientException;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/CosTrackService;->convertClientException(Lcom/tencent/qcloud/core/common/QCloudClientException;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/xml/utils/ThrowableUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    iget v1, p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;->errorCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error_code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error_message"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_type"

    const-string v1, "Client"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/tencent/cos/xml/CosTrackService$ReturnClientException;

    invoke-direct {p1, p0, v0}, Lcom/tencent/cos/xml/CosTrackService$ReturnClientException;-><init>(Lcom/tencent/cos/xml/exception/CosXmlClientException;Ljava/util/Map;)V

    return-object p1
.end method

.method private getCommonParams()Ljava/util/Map;
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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sdk_version_name"

    const-string v2, "5.9.30"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xc6f2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk_version_code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/cos/xml/CosTrackService;->bridge:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sdk_bridge"

    iget-object p0, p0, Lcom/tencent/cos/xml/CosTrackService;->bridge:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/tencent/cos/xml/CosTrackService;
    .locals 1

    sget-object v0, Lcom/tencent/cos/xml/CosTrackService;->instance:Lcom/tencent/cos/xml/CosTrackService;

    return-object v0
.end method

.method private getServiceExceptionParams(Lcom/tencent/qcloud/core/common/QCloudServiceException;)Lcom/tencent/cos/xml/CosTrackService$ReturnServiceException;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/CosTrackService;->convertServerException(Lcom/tencent/qcloud/core/common/QCloudServiceException;)Lcom/tencent/cos/xml/exception/CosXmlServiceException;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, "null"

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->getStatusCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v2, "error_code"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/cos/xml/exception/CosXmlServiceException;->getHttpMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string v1, "error_message"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->getStatusCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "error_http_code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_http_message"

    invoke-virtual {p0}, Lcom/tencent/cos/xml/exception/CosXmlServiceException;->getHttpMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_service_name"

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_request_id"

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_type"

    const-string v1, "Server"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/tencent/cos/xml/CosTrackService$ReturnServiceException;

    invoke-direct {p1, p0, v0}, Lcom/tencent/cos/xml/CosTrackService$ReturnServiceException;-><init>(Lcom/tencent/cos/xml/exception/CosXmlServiceException;Ljava/util/Map;)V

    return-object p1
.end method

.method public static init(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 3

    const-class v0, Lcom/tencent/cos/xml/CosTrackService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/cos/xml/CosTrackService;->instance:Lcom/tencent/cos/xml/CosTrackService;

    if-nez v1, :cond_1

    new-instance v1, Lcom/tencent/cos/xml/CosTrackService;

    invoke-direct {v1}, Lcom/tencent/cos/xml/CosTrackService;-><init>()V

    sput-object v1, Lcom/tencent/cos/xml/CosTrackService;->instance:Lcom/tencent/cos/xml/CosTrackService;

    iput-object p2, v1, Lcom/tencent/cos/xml/CosTrackService;->bridge:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qcloud/track/service/BeaconTrackService;->isInclude()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/tencent/qcloud/track/service/BeaconTrackService;

    invoke-direct {p2}, Lcom/tencent/qcloud/track/service/BeaconTrackService;-><init>()V

    invoke-virtual {p2, p0}, Lcom/tencent/qcloud/track/service/BeaconTrackService;->setContext(Landroid/content/Context;)V

    const-string v1, "0AND05O9HW5YY29Z"

    invoke-virtual {p2, v1}, Lcom/tencent/qcloud/track/service/BeaconTrackService;->init(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/qcloud/track/QCloudTrackService;->getInstance()Lcom/tencent/qcloud/track/QCloudTrackService;

    move-result-object v1

    const-string v2, "qcloud_track_cos_sdk"

    invoke-virtual {v1, v2, p2}, Lcom/tencent/qcloud/track/QCloudTrackService;->addTrackService(Ljava/lang/String;Lcom/tencent/qcloud/track/service/ATrackService;)V

    new-instance p2, Lcom/tencent/qcloud/track/service/BeaconTrackService;

    invoke-direct {p2}, Lcom/tencent/qcloud/track/service/BeaconTrackService;-><init>()V

    invoke-virtual {p2, p0}, Lcom/tencent/qcloud/track/service/BeaconTrackService;->setContext(Landroid/content/Context;)V

    const-string v1, "0AND05O9HW5YY29Z"

    invoke-virtual {p2, v1}, Lcom/tencent/qcloud/track/service/BeaconTrackService;->init(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/qcloud/track/QCloudTrackService;->getInstance()Lcom/tencent/qcloud/track/QCloudTrackService;

    move-result-object v1

    const-string v2, "qcloud_track_cos_sdk_transfer"

    invoke-virtual {v1, v2, p2}, Lcom/tencent/qcloud/track/QCloudTrackService;->addTrackService(Ljava/lang/String;Lcom/tencent/qcloud/track/service/ATrackService;)V

    :cond_0
    invoke-static {}, Lcom/tencent/qcloud/track/QCloudTrackService;->getInstance()Lcom/tencent/qcloud/track/QCloudTrackService;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/tencent/qcloud/track/QCloudTrackService;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/tencent/qcloud/track/QCloudTrackService;->getInstance()Lcom/tencent/qcloud/track/QCloudTrackService;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/tencent/qcloud/track/QCloudTrackService;->setDebug(Z)V

    invoke-static {}, Lcom/tencent/qcloud/track/QCloudTrackService;->getInstance()Lcom/tencent/qcloud/track/QCloudTrackService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/qcloud/track/QCloudTrackService;->setIsCloseReport(Z)V

    invoke-static {}, Lcom/tencent/cos/xml/CosTrackService;->getInstance()Lcom/tencent/cos/xml/CosTrackService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/cos/xml/CosTrackService;->reportSdkStart()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static initCLs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/qcloud/track/service/ClsTrackService;->isInclude()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/tencent/qcloud/track/service/ClsTrackService;

    invoke-direct {v0}, Lcom/tencent/qcloud/track/service/ClsTrackService;-><init>()V

    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/tencent/qcloud/track/service/ClsTrackService;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "secretId"

    const-string p1, "secretKey"

    .line 4
    invoke-virtual {v0, p0, p1}, Lcom/tencent/qcloud/track/service/ClsTrackService;->setSecurityCredential(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/tencent/qcloud/track/QCloudTrackService;->getInstance()Lcom/tencent/qcloud/track/QCloudTrackService;

    move-result-object p0

    const-string p1, "qcloud_track_cos_sdk"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qcloud/track/QCloudTrackService;->addTrackService(Ljava/lang/String;Lcom/tencent/qcloud/track/service/ATrackService;)V

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Please quote the cls library first: com.tencentcloudapi.cls:tencentcloud-cls-sdk-android:x.x.x"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static initCLs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qcloud/track/cls/ClsLifecycleCredentialProvider;)V
    .locals 1

    .line 13
    invoke-static {}, Lcom/tencent/qcloud/track/service/ClsTrackService;->isInclude()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    new-instance v0, Lcom/tencent/qcloud/track/service/ClsTrackService;

    invoke-direct {v0}, Lcom/tencent/qcloud/track/service/ClsTrackService;-><init>()V

    .line 15
    invoke-virtual {v0, p0, p1, p2}, Lcom/tencent/qcloud/track/service/ClsTrackService;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p3}, Lcom/tencent/qcloud/track/service/ClsTrackService;->setCredentialProvider(Lcom/tencent/qcloud/track/cls/ClsLifecycleCredentialProvider;)V

    .line 17
    invoke-static {}, Lcom/tencent/qcloud/track/QCloudTrackService;->getInstance()Lcom/tencent/qcloud/track/QCloudTrackService;

    move-result-object p0

    const-string p1, "qcloud_track_cos_sdk"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qcloud/track/QCloudTrackService;->addTrackService(Ljava/lang/String;Lcom/tencent/qcloud/track/service/ATrackService;)V

    return-void

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Please quote the cls library first: com.tencentcloudapi.cls:tencentcloud-cls-sdk-android:x.x.x"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static initCLs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-static {}, Lcom/tencent/qcloud/track/service/ClsTrackService;->isInclude()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Lcom/tencent/qcloud/track/service/ClsTrackService;

    invoke-direct {v0}, Lcom/tencent/qcloud/track/service/ClsTrackService;-><init>()V

    .line 9
    invoke-virtual {v0, p0, p1, p2}, Lcom/tencent/qcloud/track/service/ClsTrackService;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p3, p4}, Lcom/tencent/qcloud/track/service/ClsTrackService;->setSecurityCredential(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/tencent/qcloud/track/QCloudTrackService;->getInstance()Lcom/tencent/qcloud/track/QCloudTrackService;

    move-result-object p0

    const-string p1, "qcloud_track_cos_sdk"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qcloud/track/QCloudTrackService;->addTrackService(Ljava/lang/String;Lcom/tencent/qcloud/track/service/ATrackService;)V

    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Please quote the cls library first: com.tencentcloudapi.cls:tencentcloud-cls-sdk-android:x.x.x"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isReport(Lcom/tencent/cos/xml/exception/CosXmlClientException;)Z
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "canceled"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method

.method private isReport(Lcom/tencent/cos/xml/exception/CosXmlServiceException;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method private parseClientExceptionParams(Lcom/tencent/cos/xml/exception/CosXmlClientException;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/cos/xml/exception/CosXmlClientException;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_message"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p1, Lcom/tencent/cos/xml/exception/CosXmlClientException;->errorCode:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "error_code"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_type"

    const-string v0, "Client"

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private parseCosXmlRequestParams(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/cos/xml/model/CosXmlRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "accelerate"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    const-string v2, "bucket"

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getBucket()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRegion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "region"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getHttpTask()Lcom/tencent/qcloud/core/http/HttpTask;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getHttpTask()Lcom/tencent/qcloud/core/http/HttpTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qcloud/core/http/HttpTask;->request()Lcom/tencent/qcloud/core/http/HttpRequest;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getHttpTask()Lcom/tencent/qcloud/core/http/HttpTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qcloud/core/http/HttpTask;->request()Lcom/tencent/qcloud/core/http/HttpRequest;

    move-result-object v2

    const-string v4, "User-Agent"

    invoke-virtual {v2, v4}, Lcom/tencent/qcloud/core/http/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "android-quic-sdk"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "quic"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getHttpTask()Lcom/tencent/qcloud/core/http/HttpTask;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/qcloud/core/http/HttpTask;->request()Lcom/tencent/qcloud/core/http/HttpRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/qcloud/core/http/HttpRequest;->url()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-string v5, "network_protocol"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getHttpTask()Lcom/tencent/qcloud/core/http/HttpTask;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/qcloud/core/http/HttpTask;->request()Lcom/tencent/qcloud/core/http/HttpRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/qcloud/core/http/HttpRequest;->method()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http_method"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getHttpTask()Lcom/tencent/qcloud/core/http/HttpTask;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/qcloud/core/http/HttpTask;->request()Lcom/tencent/qcloud/core/http/HttpRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/qcloud/core/http/HttpRequest;->url()Ljava/net/URL;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getHttpTask()Lcom/tencent/qcloud/core/http/HttpTask;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/qcloud/core/http/HttpTask;->request()Lcom/tencent/qcloud/core/http/HttpRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/qcloud/core/http/HttpRequest;->url()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "url"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "user_agent"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    instance-of v2, p1, Lcom/tencent/cos/xml/model/object/ObjectRequest;

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, Lcom/tencent/cos/xml/model/object/ObjectRequest;

    invoke-virtual {v2}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->getCosPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "request_path"

    invoke-virtual {v2}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->getCosPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/CosTrackService;->parseHost(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "host"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string p1, ".*\\.cos\\.(.*)\\.myqcloud.com"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :try_start_1
    const-string p1, "cos.accelerate.myqcloud.com"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_1
    return-object v1
.end method

.method private parseHost(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getHttpTask()Lcom/tencent/qcloud/core/http/HttpTask;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/HttpTask;->request()Lcom/tencent/qcloud/core/http/HttpRequest;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/HttpRequest;->host()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getMetrics()Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getMetrics()Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->getDomainName()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private parseHttpTaskMetricsParams(Lcom/tencent/qcloud/core/http/HttpTaskMetrics;Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p1    # Lcom/tencent/qcloud/core/http/HttpTaskMetrics;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/http/HttpTaskMetrics;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->httpTaskFullTime()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http_took_time"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->dnsLookupTookTime()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http_dns"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->connectTookTime()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http_connect"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->secureConnectTookTime()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http_secure_connect"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->calculateMD5STookTime()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http_md5"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->signRequestTookTime()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http_sign"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->readResponseHeaderTookTime()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http_read_header"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->readResponseBodyTookTime()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http_read_body"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->writeRequestHeaderTookTime()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http_write_header"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->writeRequestBodyTookTime()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http_write_body"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->fullTaskTookTime()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http_full_time"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "UploadTask"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-wide/high16 v1, 0x4090000000000000L    # 1024.0

    const-string v3, "http_speed"

    const-string v4, "http_size"

    if-nez v0, :cond_3

    const-string v0, "CopyTask"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "DownloadTask"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->responseBodyByteCount()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->responseBodyByteCount()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v1

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->httpTaskFullTime()D

    move-result-wide v0

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->requestBodyByteCount()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->responseBodyByteCount()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->requestBodyByteCount()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->responseBodyByteCount()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-double v4, v4

    div-double/2addr v4, v1

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->httpTaskFullTime()D

    move-result-wide v0

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->requestBodyByteCount()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->requestBodyByteCount()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v1

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->httpTaskFullTime()D

    move-result-wide v0

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->getRetryCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "http_retry_times"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->getDomainName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "null"

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->getDomainName()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_4
    move-object p2, v0

    :goto_2
    const-string v1, "http_domain"

    invoke-interface {p0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->getConnectAddress()Ljava/net/InetAddress;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->getConnectAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_5
    move-object p2, v0

    :goto_3
    const-string v1, "http_connect_ip"

    invoke-interface {p0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->getRemoteAddress()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->getRemoteAddress()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    const-string p1, "http_dns_ips"

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private parseServiceExceptionParams(Lcom/tencent/cos/xml/exception/CosXmlServiceException;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/cos/xml/exception/CosXmlServiceException;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_message"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "error_code"

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "request_id"

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_type"

    const-string v0, "Server"

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private parseSimplePerfParams(Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;)Ljava/util/Map;
    .locals 2
    .param p1    # Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->getSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "transfer_size"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->getConnectAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->getConnectAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    const-string v1, "ip"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->getTookTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "took_time"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->getWaitTookTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wait_took_time"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->getFirstProgressTookTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "first_progress_took_time"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private reportClientException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/common/QCloudClientException;Ljava/util/Map;Z)Lcom/tencent/cos/xml/exception/CosXmlClientException;
    .locals 4
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/cos/xml/model/CosXmlRequest;",
            "Lcom/tencent/qcloud/core/common/QCloudClientException;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/tencent/cos/xml/exception/CosXmlClientException;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/tencent/cos/xml/CosTrackService;->getClientExceptionParams(Lcom/tencent/qcloud/core/common/QCloudClientException;)Lcom/tencent/cos/xml/CosTrackService$ReturnClientException;

    move-result-object p2

    :try_start_0
    invoke-static {p2}, Lcom/tencent/cos/xml/CosTrackService$ReturnClientException;->access$000(Lcom/tencent/cos/xml/CosTrackService$ReturnClientException;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/CosTrackService;->isReport(Lcom/tencent/cos/xml/exception/CosXmlClientException;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getMetrics()Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/CosTrackService;->parseCosXmlRequestParams(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0}, Lcom/tencent/cos/xml/CosTrackService;->getCommonParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {p2}, Lcom/tencent/cos/xml/CosTrackService$ReturnClientException;->access$100(Lcom/tencent/cos/xml/CosTrackService$ReturnClientException;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "request_name"

    if-eqz p3, :cond_0

    :try_start_1
    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p1, "request_result"

    const-string v3, "Failure"

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    invoke-interface {v1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/tencent/cos/xml/CosTrackService;->parseHttpTaskMetricsParams(Lcom/tencent/qcloud/core/http/HttpTaskMetrics;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-nez p4, :cond_3

    invoke-static {}, Lcom/tencent/qcloud/track/QCloudTrackService;->getInstance()Lcom/tencent/qcloud/track/QCloudTrackService;

    move-result-object p0

    const-string p1, "qcloud_track_cos_sdk"

    invoke-virtual {p0, p1, v1}, Lcom/tencent/qcloud/track/QCloudTrackService;->report(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    invoke-static {p2}, Lcom/tencent/cos/xml/CosTrackService$ReturnClientException;->access$000(Lcom/tencent/cos/xml/CosTrackService$ReturnClientException;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    return-object p0
.end method

.method private reportRequestSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/util/Map;Z)V
    .locals 4
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/cos/xml/model/CosXmlRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 9
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getMetrics()Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    move-result-object v0

    .line 10
    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/CosTrackService;->parseCosXmlRequestParams(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/util/Map;

    move-result-object v1

    .line 11
    invoke-direct {p0}, Lcom/tencent/cos/xml/CosTrackService;->getCommonParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "request_name"

    if-eqz p2, :cond_0

    .line 12
    :try_start_1
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 13
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p1, "request_result"

    const-string v3, "Success"

    .line 14
    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    .line 15
    invoke-interface {v1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 16
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/tencent/cos/xml/CosTrackService;->parseHttpTaskMetricsParams(Lcom/tencent/qcloud/core/http/HttpTaskMetrics;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-nez p3, :cond_3

    .line 17
    invoke-static {}, Lcom/tencent/qcloud/track/QCloudTrackService;->getInstance()Lcom/tencent/qcloud/track/QCloudTrackService;

    move-result-object p0

    const-string p1, "qcloud_track_cos_sdk"

    invoke-virtual {p0, p1, v1}, Lcom/tencent/qcloud/track/QCloudTrackService;->report(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method private reportServiceException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/common/QCloudServiceException;Ljava/util/Map;Z)Lcom/tencent/cos/xml/exception/CosXmlServiceException;
    .locals 4
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/cos/xml/model/CosXmlRequest;",
            "Lcom/tencent/qcloud/core/common/QCloudServiceException;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/tencent/cos/xml/exception/CosXmlServiceException;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/tencent/cos/xml/CosTrackService;->getServiceExceptionParams(Lcom/tencent/qcloud/core/common/QCloudServiceException;)Lcom/tencent/cos/xml/CosTrackService$ReturnServiceException;

    move-result-object p2

    :try_start_0
    invoke-static {p2}, Lcom/tencent/cos/xml/CosTrackService$ReturnServiceException;->access$200(Lcom/tencent/cos/xml/CosTrackService$ReturnServiceException;)Lcom/tencent/cos/xml/exception/CosXmlServiceException;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/CosTrackService;->isReport(Lcom/tencent/cos/xml/exception/CosXmlServiceException;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/CosTrackService;->parseCosXmlRequestParams(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0}, Lcom/tencent/cos/xml/CosTrackService;->getCommonParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {p2}, Lcom/tencent/cos/xml/CosTrackService$ReturnServiceException;->access$300(Lcom/tencent/cos/xml/CosTrackService$ReturnServiceException;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "request_name"

    if-eqz p3, :cond_0

    :try_start_1
    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "request_result"

    const-string v3, "Failure"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getMetrics()Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    move-result-object p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p0, p1, p3}, Lcom/tencent/cos/xml/CosTrackService;->parseHttpTaskMetricsParams(Lcom/tencent/qcloud/core/http/HttpTaskMetrics;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-nez p4, :cond_3

    invoke-static {}, Lcom/tencent/qcloud/track/QCloudTrackService;->getInstance()Lcom/tencent/qcloud/track/QCloudTrackService;

    move-result-object p0

    const-string p1, "qcloud_track_cos_sdk"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qcloud/track/QCloudTrackService;->report(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    invoke-static {p2}, Lcom/tencent/cos/xml/CosTrackService$ReturnServiceException;->access$200(Lcom/tencent/cos/xml/CosTrackService$ReturnServiceException;)Lcom/tencent/cos/xml/exception/CosXmlServiceException;

    move-result-object p0

    return-object p0
.end method

.method private reportTransferTask(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;ZZLjava/util/Map;)V
    .locals 2
    .param p5    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/cos/xml/model/CosXmlRequest;",
            "Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;",
            "ZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/CosTrackService;->parseCosXmlRequestParams(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "request_name"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/tencent/cos/xml/CosTrackService;->getCommonParams()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-direct {p0, p2}, Lcom/tencent/cos/xml/CosTrackService;->parseSimplePerfParams(Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string p0, "encrypted"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "request_result"

    if-eqz p4, :cond_0

    const-string p1, "Success"

    goto :goto_0

    :cond_0
    const-string p1, "Failure"

    :goto_0
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_1

    invoke-interface {v0, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    invoke-static {}, Lcom/tencent/qcloud/track/QCloudTrackService;->getInstance()Lcom/tencent/qcloud/track/QCloudTrackService;

    move-result-object p0

    const-string p1, "qcloud_track_cos_sdk_transfer"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qcloud/track/QCloudTrackService;->report(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public reportCopyTaskClientException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;)V
    .locals 2

    const-string v0, "CopyTask"

    invoke-direct {p0, v0, p1}, Lcom/tencent/cos/xml/CosTrackService;->createTransferExtra(Ljava/lang/String;Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/tencent/cos/xml/CosTrackService;->reportClientException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/common/QCloudClientException;Ljava/util/Map;Z)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    return-void
.end method

.method public reportCopyTaskServiceException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
    .locals 2

    const-string v0, "CopyTask"

    invoke-direct {p0, v0, p1}, Lcom/tencent/cos/xml/CosTrackService;->createTransferExtra(Ljava/lang/String;Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/tencent/cos/xml/CosTrackService;->reportServiceException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/common/QCloudServiceException;Ljava/util/Map;Z)Lcom/tencent/cos/xml/exception/CosXmlServiceException;

    return-void
.end method

.method public reportCopyTaskSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;)V
    .locals 2

    const-string v0, "request_name"

    const-string v1, "CopyTask"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/cos/xml/CosTrackService;->reportRequestSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/util/Map;Z)V

    return-void
.end method

.method public reportDownloadTaskClientException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/common/QCloudClientException;)V
    .locals 2

    const-string v0, "DownloadTask"

    invoke-direct {p0, v0, p1}, Lcom/tencent/cos/xml/CosTrackService;->createTransferExtra(Ljava/lang/String;Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/tencent/cos/xml/CosTrackService;->reportClientException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/common/QCloudClientException;Ljava/util/Map;Z)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    return-void
.end method

.method public reportDownloadTaskServiceException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/common/QCloudServiceException;)V
    .locals 2

    const-string v0, "DownloadTask"

    invoke-direct {p0, v0, p1}, Lcom/tencent/cos/xml/CosTrackService;->createTransferExtra(Ljava/lang/String;Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/tencent/cos/xml/CosTrackService;->reportServiceException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/common/QCloudServiceException;Ljava/util/Map;Z)Lcom/tencent/cos/xml/exception/CosXmlServiceException;

    return-void
.end method

.method public reportDownloadTaskSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;)V
    .locals 2

    const-string v0, "request_name"

    const-string v1, "DownloadTask"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/cos/xml/CosTrackService;->reportRequestSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/util/Map;Z)V

    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-static {p2}, Lcom/tencent/cos/xml/utils/ThrowableUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    const-string v1, "sdk_name"

    const-string v2, "cos"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "qcloud_error_source"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "qcloud_error_name"

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "qcloud_error_message"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/tencent/cos/xml/CosTrackService;->getCommonParams()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/tencent/qcloud/track/QCloudTrackService;->getInstance()Lcom/tencent/qcloud/track/QCloudTrackService;

    move-result-object p0

    const-string p1, "qcloud_track_sd_sdk_error"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qcloud/track/QCloudTrackService;->reportSimpleData(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public reportRequestClientException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/common/QCloudClientException;)Lcom/tencent/cos/xml/exception/CosXmlClientException;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/cos/xml/CosTrackService;->reportRequestClientException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/common/QCloudClientException;Z)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    return-object p0
.end method

.method public reportRequestClientException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/common/QCloudClientException;Z)Lcom/tencent/cos/xml/exception/CosXmlClientException;
    .locals 3

    .line 2
    instance-of v0, p1, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;

    const-string v1, "request_name"

    if-eqz v0, :cond_0

    const-string v0, "UploadTask"

    .line 3
    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/tencent/cos/xml/model/object/GetObjectBytesRequest;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CopyObjectRequest"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CopyTask"

    .line 6
    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "DownloadTask"

    .line 7
    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 8
    :goto_1
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tencent/cos/xml/CosTrackService;->reportClientException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/common/QCloudClientException;Ljava/util/Map;Z)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    return-object p0
.end method

.method public reportRequestServiceException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/common/QCloudServiceException;)Lcom/tencent/cos/xml/exception/CosXmlServiceException;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/cos/xml/CosTrackService;->reportRequestServiceException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/common/QCloudServiceException;Z)Lcom/tencent/cos/xml/exception/CosXmlServiceException;

    move-result-object p0

    return-object p0
.end method

.method public reportRequestServiceException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/common/QCloudServiceException;Z)Lcom/tencent/cos/xml/exception/CosXmlServiceException;
    .locals 3

    .line 2
    instance-of v0, p1, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;

    const-string v1, "request_name"

    if-eqz v0, :cond_0

    const-string v0, "UploadTask"

    .line 3
    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/tencent/cos/xml/model/object/GetObjectBytesRequest;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CopyObjectRequest"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CopyTask"

    .line 6
    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "DownloadTask"

    .line 7
    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 8
    :goto_1
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tencent/cos/xml/CosTrackService;->reportServiceException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/common/QCloudServiceException;Ljava/util/Map;Z)Lcom/tencent/cos/xml/exception/CosXmlServiceException;

    move-result-object p0

    return-object p0
.end method

.method public reportRequestSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/tencent/cos/xml/CosTrackService;->reportRequestSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V

    return-void
.end method

.method public reportRequestSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V
    .locals 3

    .line 2
    instance-of v0, p1, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;

    const-string v1, "request_name"

    if-eqz v0, :cond_0

    const-string v0, "UploadTask"

    .line 3
    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/tencent/cos/xml/model/object/GetObjectBytesRequest;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CopyObjectRequest"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CopyTask"

    .line 6
    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "DownloadTask"

    .line 7
    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 8
    :goto_1
    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/cos/xml/CosTrackService;->reportRequestSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/util/Map;Z)V

    return-void
.end method

.method public reportSdkStart()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "sdk_name"

    const-string v2, "cos"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/tencent/cos/xml/CosTrackService;->getCommonParams()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/tencent/qcloud/track/QCloudTrackService;->getInstance()Lcom/tencent/qcloud/track/QCloudTrackService;

    move-result-object p0

    const-string v1, "qcloud_track_sd_sdk_start"

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qcloud/track/QCloudTrackService;->reportSimpleData(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public reportTransferClientException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;Lcom/tencent/cos/xml/exception/CosXmlClientException;Z)V
    .locals 7

    invoke-direct {p0, p3}, Lcom/tencent/cos/xml/CosTrackService;->isReport(Lcom/tencent/cos/xml/exception/CosXmlClientException;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    invoke-direct {p0, p3}, Lcom/tencent/cos/xml/CosTrackService;->parseClientExceptionParams(Lcom/tencent/cos/xml/exception/CosXmlClientException;)Ljava/util/Map;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/tencent/cos/xml/CosTrackService;->reportTransferTask(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;ZZLjava/util/Map;)V

    :cond_0
    return-void
.end method

.method public reportTransferServiceException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;Lcom/tencent/cos/xml/exception/CosXmlServiceException;Z)V
    .locals 7

    invoke-direct {p0, p3}, Lcom/tencent/cos/xml/CosTrackService;->isReport(Lcom/tencent/cos/xml/exception/CosXmlServiceException;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    invoke-direct {p0, p3}, Lcom/tencent/cos/xml/CosTrackService;->parseServiceExceptionParams(Lcom/tencent/cos/xml/exception/CosXmlServiceException;)Ljava/util/Map;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/tencent/cos/xml/CosTrackService;->reportTransferTask(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;ZZLjava/util/Map;)V

    :cond_0
    return-void
.end method

.method public reportTransferSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;Z)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/cos/xml/CosTrackService;->reportTransferTask(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;ZZLjava/util/Map;)V

    return-void
.end method

.method public reportUploadTaskClientException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/common/QCloudClientException;)V
    .locals 2

    const-string v0, "UploadTask"

    invoke-direct {p0, v0, p1}, Lcom/tencent/cos/xml/CosTrackService;->createTransferExtra(Ljava/lang/String;Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/tencent/cos/xml/CosTrackService;->reportClientException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/common/QCloudClientException;Ljava/util/Map;Z)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    return-void
.end method

.method public reportUploadTaskServiceException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/common/QCloudServiceException;)V
    .locals 2

    const-string v0, "UploadTask"

    invoke-direct {p0, v0, p1}, Lcom/tencent/cos/xml/CosTrackService;->createTransferExtra(Ljava/lang/String;Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/tencent/cos/xml/CosTrackService;->reportServiceException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/common/QCloudServiceException;Ljava/util/Map;Z)Lcom/tencent/cos/xml/exception/CosXmlServiceException;

    return-void
.end method

.method public reportUploadTaskSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;)V
    .locals 2

    const-string v0, "request_name"

    const-string v1, "UploadTask"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/cos/xml/CosTrackService;->reportRequestSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/util/Map;Z)V

    return-void
.end method
