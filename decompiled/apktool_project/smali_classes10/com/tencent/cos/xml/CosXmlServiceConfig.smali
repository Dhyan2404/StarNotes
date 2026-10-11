.class public Lcom/tencent/cos/xml/CosXmlServiceConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;
    }
.end annotation


# static fields
.field public static final ACCELERATE_ENDPOINT_SUFFIX:Ljava/lang/String; = "cos.accelerate"

.field public static final ACCELERATE_HOST_FORMAT:Ljava/lang/String; = "${bucket}.cos.accelerate.myqcloud.com"

.field public static final CI_APPID_HOST_FORMAT:Ljava/lang/String; = "${appid}.ci.${region}.myqcloud.com"

.field public static final CI_HOST_FORMAT:Ljava/lang/String; = "${bucket}.ci.${region}.myqcloud.com"

.field public static final CI_REGION_HOST_FORMAT:Ljava/lang/String; = "ci.${region}.myqcloud.com"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/cos/xml/CosXmlServiceConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_HOST_FORMAT:Ljava/lang/String; = "${bucket}.cos.${region}.myqcloud.com"

.field public static final HTTPS_PROTOCOL:Ljava/lang/String; = "https"

.field public static final HTTP_PROTOCOL:Ljava/lang/String; = "http"

.field public static final PATH_STYLE_HOST_FORMAT:Ljava/lang/String; = "cos.${region}.myqcloud.com"

.field public static final PIC_HOST_FORMAT:Ljava/lang/String; = "${bucket}.pic.${region}.myqcloud.com"


# instance fields
.field private final accelerate:Z

.field private final appid:Ljava/lang/String;

.field private final bucketInPath:Z

.field private final commonHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final connectionTimeout:I

.field private final dnsCache:Z

.field private final domainSwitch:Z

.field private final downloadMaxThreadCount:I

.field private final endpointSuffix:Ljava/lang/String;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final host:Ljava/lang/String;

.field private hostFormat:Ljava/lang/String;

.field private hostHeaderFormat:Ljava/lang/String;

.field private final isDebuggable:Z

.field private final isQuic:Z

.field private final noSignHeaders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final observeExecutor:Ljava/util/concurrent/Executor;

.field private final port:I

.field private prefetchHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final protocol:Ljava/lang/String;

.field private final qCloudHttpRetryHandler:Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler;

.field private final region:Ljava/lang/String;

.field private final retryStrategy:Lcom/tencent/qcloud/core/task/RetryStrategy;

.field private final signInUrl:Z

.field private final socketTimeout:I

.field private final transferThreadControl:Z

.field private final uploadMaxThreadCount:I

.field private final userAgentExtended:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/cos/xml/CosXmlServiceConfig$1;

    invoke-direct {v0}, Lcom/tencent/cos/xml/CosXmlServiceConfig$1;-><init>()V

    sput-object v0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 35
    new-instance v0, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;

    invoke-direct {v0}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->isHttps(Z)Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->setRegion(Ljava/lang/String;)Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->setDebuggable(Z)Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;

    move-result-object p1

    .line 39
    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig;-><init>(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/tencent/cos/xml/CosXmlServiceConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "${bucket}.cos.${region}.myqcloud.com"

    .line 3
    iput-object v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->hostFormat:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->hostHeaderFormat:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->access$000(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->protocol:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->access$100(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->userAgentExtended:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->access$200(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->isDebuggable:Z

    .line 8
    invoke-static {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->access$300(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->appid:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->access$400(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->region:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->access$500(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->host:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->access$600(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)I

    move-result v2

    iput v2, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->port:I

    .line 12
    invoke-static {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->access$700(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->endpointSuffix:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->access$800(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->bucketInPath:Z

    .line 14
    invoke-static {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->access$900(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->commonHeaders:Ljava/util/Map;

    .line 15
    invoke-static {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->access$1000(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->noSignHeaders:Ljava/util/Set;

    .line 16
    iget-object v2, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->hostFormat:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "please set host or endpointSuffix or region !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->access$1100(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)Lcom/tencent/qcloud/core/task/RetryStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->retryStrategy:Lcom/tencent/qcloud/core/task/RetryStrategy;

    .line 20
    invoke-static {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->access$1200(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->qCloudHttpRetryHandler:Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler;

    .line 21
    invoke-static {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->access$1300(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->socketTimeout:I

    .line 22
    invoke-static {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->access$1400(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->connectionTimeout:I

    .line 23
    invoke-static {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->access$1500(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->hostFormat:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->access$1600(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->hostHeaderFormat:Ljava/lang/String;

    .line 25
    invoke-static {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->access$1700(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->executor:Ljava/util/concurrent/Executor;

    .line 26
    invoke-static {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->access$1800(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->observeExecutor:Ljava/util/concurrent/Executor;

    .line 27
    invoke-static {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->access$1900(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->isQuic:Z

    .line 28
    invoke-static {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->access$2000(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->accelerate:Z

    .line 29
    invoke-static {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->access$2100(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->dnsCache:Z

    .line 30
    invoke-static {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->access$2200(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->signInUrl:Z

    .line 31
    invoke-static {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->access$2300(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->transferThreadControl:Z

    .line 32
    invoke-static {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->access$2400(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->uploadMaxThreadCount:I

    .line 33
    invoke-static {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->access$2500(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->downloadMaxThreadCount:I

    .line 34
    invoke-static {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->access$2600(Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->domainSwitch:Z

    return-void
.end method

.method public static synthetic access$2800(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->protocol:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2900(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->region:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3000(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->appid:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3100(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->host:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3200(Lcom/tencent/cos/xml/CosXmlServiceConfig;)I
    .locals 0

    iget p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->port:I

    return p0
.end method

.method public static synthetic access$3300(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->endpointSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3400(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->bucketInPath:Z

    return p0
.end method

.method public static synthetic access$3500(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->isDebuggable:Z

    return p0
.end method

.method public static synthetic access$3600(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Lcom/tencent/qcloud/core/task/RetryStrategy;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->retryStrategy:Lcom/tencent/qcloud/core/task/RetryStrategy;

    return-object p0
.end method

.method public static synthetic access$3700(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->qCloudHttpRetryHandler:Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler;

    return-object p0
.end method

.method public static synthetic access$3800(Lcom/tencent/cos/xml/CosXmlServiceConfig;)I
    .locals 0

    iget p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->connectionTimeout:I

    return p0
.end method

.method public static synthetic access$3900(Lcom/tencent/cos/xml/CosXmlServiceConfig;)I
    .locals 0

    iget p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->socketTimeout:I

    return p0
.end method

.method public static synthetic access$4000(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic access$4100(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->observeExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic access$4200(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->isQuic:Z

    return p0
.end method

.method public static synthetic access$4300(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->dnsCache:Z

    return p0
.end method

.method public static synthetic access$4400(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->commonHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$4500(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->noSignHeaders:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$4600(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->hostFormat:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$4700(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->hostHeaderFormat:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$4800(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->accelerate:Z

    return p0
.end method

.method public static synthetic access$4900(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->signInUrl:Z

    return p0
.end method

.method public static synthetic access$5000(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->transferThreadControl:Z

    return p0
.end method

.method public static synthetic access$5100(Lcom/tencent/cos/xml/CosXmlServiceConfig;)I
    .locals 0

    iget p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->uploadMaxThreadCount:I

    return p0
.end method

.method public static synthetic access$5200(Lcom/tencent/cos/xml/CosXmlServiceConfig;)I
    .locals 0

    iget p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->downloadMaxThreadCount:I

    return p0
.end method

.method public static synthetic access$5300(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->domainSwitch:Z

    return p0
.end method

.method private getFormatHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    const-string p0, "${region}"

    .line 4
    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "please set request or config region !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getFormatHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    const-string p0, "${bucket}"

    .line 1
    invoke-virtual {p1, p0, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "${region}"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "please set request bucket !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "please set request or config region !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getFormatHostByAppId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    const-string p0, "${appid}"

    invoke-virtual {p1, p0, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "${region}"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "please set request appid !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "please set request or config region !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getHostFormat(ZZ)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->hostFormat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->hostFormat:Ljava/lang/String;

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    const-string p2, "${bucket}.cos.accelerate.myqcloud.com"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string p2, "cos.${region}.myqcloud.com"

    goto :goto_0

    :cond_2
    const-string p2, "${bucket}.cos.${region}.myqcloud.com"

    :goto_0
    iget-object v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->endpointSuffix:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-boolean p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->bucketInPath:Z

    if-eqz p0, :cond_3

    move-object p2, v0

    goto :goto_1

    :cond_3
    const-string p0, "${bucket}."

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object p2, p0

    :goto_1
    if-eqz p1, :cond_4

    const-string p0, "cos.${region}"

    const-string p1, "cos.accelerate"

    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_4
    return-object p2
.end method

.method private substituteEndpointSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz p2, :cond_0

    const-string p0, "${region}"

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAppid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->appid:Ljava/lang/String;

    return-object p0
.end method

.method public getBucket(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->appid:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getBucket(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBucket(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getCommonHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->commonHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public getConnectionTimeout()I
    .locals 0

    iget p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->connectionTimeout:I

    return p0
.end method

.method public getDefaultRequestHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "${bucket}.cos.${region}.myqcloud.com"

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getFormatHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultRequestHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getBucket(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getDefaultRequestHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDownloadMaxThreadCount()I
    .locals 0

    iget p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->downloadMaxThreadCount:I

    return p0
.end method

.method public getEndpointSuffix()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->region:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getEndpointSuffix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEndpointSuffix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getRegion()Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->endpointSuffix:Ljava/lang/String;

    const-string v1, "cos."

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".myqcloud.com"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->substituteEndpointSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "cos.accelerate"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public getHeaderHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->hostHeaderFormat:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getFormatHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p5, :cond_0

    .line 4
    iget-object p5, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->host:Ljava/lang/String;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_0

    .line 5
    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->host:Ljava/lang/String;

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getBucket(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-boolean p3, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->bucketInPath:Z

    const-string p5, ""

    if-nez p3, :cond_1

    .line 8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p4}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getEndpointSuffix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHost(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->appid:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHost(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    iget-object v3, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->appid:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHost(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getHost(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNoSignHeaders()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->noSignHeaders:Ljava/util/Set;

    return-object p0
.end method

.method public getObserveExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->observeExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public getPort()I
    .locals 0

    iget p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->port:I

    return p0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->protocol:Ljava/lang/String;

    return-object p0
.end method

.method public getQCloudHttpRetryHandler()Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->qCloudHttpRetryHandler:Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler;

    return-object p0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->region:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->host:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->host:Ljava/lang/String;

    return-object p0

    .line 12
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->region:Ljava/lang/String;

    .line 13
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getFormatHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRequestHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->host:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->host:Ljava/lang/String;

    return-object p0

    .line 7
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->region:Ljava/lang/String;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->appid:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getBucket(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-direct {p0, p3, p1, p2}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getFormatHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRequestHost(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    if-nez p3, :cond_1

    .line 2
    iget-boolean p3, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->accelerate:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    .line 3
    :goto_1
    iget-boolean v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->bucketInPath:Z

    .line 4
    invoke-direct {p0, p3, v0}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getHostFormat(ZZ)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getRequestHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRequestHost(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getRequestHost(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRequestHostByAppId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->host:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->host:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->region:Ljava/lang/String;

    :cond_1
    invoke-direct {p0, p3, p1, p2}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getFormatHostByAppId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRetryStrategy()Lcom/tencent/qcloud/core/task/RetryStrategy;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->retryStrategy:Lcom/tencent/qcloud/core/task/RetryStrategy;

    return-object p0
.end method

.method public getSocketTimeout()I
    .locals 0

    iget p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->socketTimeout:I

    return p0
.end method

.method public getUploadMaxThreadCount()I
    .locals 0

    iget p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->uploadMaxThreadCount:I

    return p0
.end method

.method public getUrlPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->bucketInPath:Z

    const-string v2, "/"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->appid:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->appid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->appid:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserAgentExtended()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->userAgentExtended:Ljava/lang/String;

    return-object p0
.end method

.method public isDebuggable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->isDebuggable:Z

    return p0
.end method

.method public isDnsCache()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->dnsCache:Z

    return p0
.end method

.method public isDomainSwitch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->domainSwitch:Z

    return p0
.end method

.method public isEnableQuic()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->isQuic:Z

    return p0
.end method

.method public isSignInUrl()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->signInUrl:Z

    return p0
.end method

.method public isTransferThreadControl()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->transferThreadControl:Z

    return p0
.end method

.method public newBuilder()Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;
    .locals 1

    new-instance v0, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;

    invoke-direct {v0, p0}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;-><init>(Lcom/tencent/cos/xml/CosXmlServiceConfig;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->protocol:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->region:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/tencent/cos/xml/CosXmlServiceConfig;->isDebuggable:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
