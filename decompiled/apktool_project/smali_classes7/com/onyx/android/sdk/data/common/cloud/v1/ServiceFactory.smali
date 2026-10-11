.class public final Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u0005J\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u0005J\u0010\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J!\u0010\u0015\u001a\u0002H\u0016\"\u0004\u0008\u0000\u0010\u00162\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00160\u0018H\u0007\u00a2\u0006\u0002\u0010\u0019J!\u0010\u001a\u001a\u0002H\u0016\"\u0004\u0008\u0000\u0010\u00162\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00160\u0018H\u0007\u00a2\u0006\u0002\u0010\u0019J)\u0010\u001b\u001a\u0002H\u0016\"\u0004\u0008\u0000\u0010\u00162\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00160\u00182\u0006\u0010\u000b\u001a\u00020\u0005H\u0007\u00a2\u0006\u0002\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u000b\u001a\u00020\u0005J)\u0010 \u001a\u0002H\u0016\"\u0004\u0008\u0000\u0010\u00162\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00160\u00182\u0006\u0010\u000b\u001a\u00020\u0005H\u0007\u00a2\u0006\u0002\u0010\u001cJ\u0016\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00050\"2\u0008\u0008\u0002\u0010#\u001a\u00020\u0005J\u0016\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00050\"2\u0008\u0008\u0002\u0010#\u001a\u00020\u0005R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00080\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;",
        "",
        "()V",
        "clientMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "Lokhttp3/OkHttpClient;",
        "retrofitMap",
        "Lretrofit2/Retrofit;",
        "getAccountService",
        "Lcom/onyx/android/sdk/data/account/CloudAccountService;",
        "baseUrl",
        "getCertificatesService",
        "Lcom/onyx/android/sdk/data/common/cloud/v1/OnyxCertificatesService;",
        "getDocConvertServiceSync",
        "Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertService;",
        "getIndexService",
        "Lcom/onyx/android/sdk/data/cluster/OnyxIndexService;",
        "getOkHttpClient",
        "args",
        "Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;",
        "getOnyxApiV1Service",
        "T",
        "service",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Ljava/lang/Object;",
        "getOnyxApiV2Service",
        "getOnyxSpecifyService",
        "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;",
        "getRetrofit",
        "getSyncService",
        "Lcom/onyx/android/sdk/data/sync/OnyxSyncService;",
        "getThirdPartySpecifyService",
        "loadOnyxApiV1Url",
        "Lio/reactivex/rxjava3/core/Observable;",
        "path",
        "loadOnyxApiV2Url",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final clientMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final retrofitMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->clientMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->retrofitMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lokhttp3/OkHttpClient;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOkHttpClient$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method private final getOkHttpClient(Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;)Lokhttp3/OkHttpClient;
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->clientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory$getOkHttpClient$1;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory$getOkHttpClient$1;-><init>(Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;)V

    new-instance p1, Lcom/sunia/HTREnginev2/uhm;

    invoke-direct {p1, v1}, Lcom/sunia/HTREnginev2/uhm;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "computeIfAbsent(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method private static final getOkHttpClient$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lokhttp3/OkHttpClient;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method private final getRetrofit(Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;)Lretrofit2/Retrofit;
    .locals 3

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOkHttpClient(Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;)Lokhttp3/OkHttpClient;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->retrofitMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lretrofit2/Retrofit;

    if-nez v1, :cond_1

    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->getUseJsonConverter()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonConverterFactory;->Companion:Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonConverterFactory$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonConverterFactory$Companion;->create()Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonConverterFactory;

    move-result-object v1

    invoke-virtual {p0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    :cond_0
    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->getBaseUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public static synthetic loadOnyxApiV1Url$default(Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->loadOnyxApiV1Url(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic loadOnyxApiV2Url$default(Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->loadOnyxApiV2Url(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAccountService(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/CloudAccountService;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "baseUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxSpecifyService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    return-object p0
.end method

.method public final getCertificatesService(Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/cloud/v1/OnyxCertificatesService;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "baseUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/onyx/android/sdk/data/common/cloud/v1/OnyxCertificatesService;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxSpecifyService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/common/cloud/v1/OnyxCertificatesService;

    return-object p0
.end method

.method public final getDocConvertServiceSync()Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCurClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->loadOnyxApiV2()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->Companion:Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs$Companion;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs$Companion;->onyxServiceCreateArgs(Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;

    move-result-object v0

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->setOkhttpReadTimeoutSecond(I)V

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getRetrofit(Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;)Lretrofit2/Retrofit;

    move-result-object p0

    const-class v0, Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertService;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "create(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertService;

    return-object p0
.end method

.method public final getIndexService(Ljava/lang/String;)Lcom/onyx/android/sdk/data/cluster/OnyxIndexService;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "baseUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/onyx/android/sdk/data/cluster/OnyxIndexService;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getThirdPartySpecifyService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/cluster/OnyxIndexService;

    return-object p0
.end method

.method public final getOnyxApiV1Service(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCurClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->loadOnyxApiBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxSpecifyService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCurClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->loadOnyxApiV2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxSpecifyService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getOnyxSpecifyService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->Companion:Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs$Companion;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs$Companion;->onyxServiceCreateArgs(Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getRetrofit(Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;)Lretrofit2/Retrofit;

    move-result-object p0

    invoke-virtual {p0, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getSyncService(Ljava/lang/String;)Lcom/onyx/android/sdk/data/sync/OnyxSyncService;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "baseUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/onyx/android/sdk/data/sync/OnyxSyncService;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxSpecifyService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/sync/OnyxSyncService;

    return-object p0
.end method

.method public final getThirdPartySpecifyService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->Companion:Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs$Companion;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs$Companion;->thirdPartyServiceCreateArgs(Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getRetrofit(Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;)Lretrofit2/Retrofit;

    move-result-object p0

    invoke-virtual {p0, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final loadOnyxApiV1Url(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCurrentClusterObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory$loadOnyxApiV1Url$1;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory$loadOnyxApiV1Url$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final loadOnyxApiV2Url(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCurrentClusterObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory$loadOnyxApiV2Url$1;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory$loadOnyxApiV2Url$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
