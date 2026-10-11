.class public final Lcom/tencent/qcloud/core/http/QCloudHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;,
        Lcom/tencent/qcloud/core/http/QCloudHttpClient$QCloudDnsFetch;
    }
.end annotation


# static fields
.field public static final HTTP_LOG_TAG:Ljava/lang/String; = "QCloudHttp"

.field public static final QUIC_LOG_TAG:Ljava/lang/String; = "QCloudQuic"

.field private static volatile gDefault:Lcom/tencent/qcloud/core/http/QCloudHttpClient;

.field private static networkClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/qcloud/core/http/NetworkClient;",
            ">;"
        }
    .end annotation
.end field

.field private static okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;


# instance fields
.field private final connectionRepository:Lcom/tencent/qcloud/core/http/ConnectionRepository;

.field private dnsCache:Z

.field private final dnsFetchs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/qcloud/core/http/QCloudHttpClient$QCloudDnsFetch;",
            ">;"
        }
    .end annotation
.end field

.field private final dnsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;>;"
        }
    .end annotation
.end field

.field private final httpLogger:Lcom/tencent/qcloud/core/http/HttpLogger;

.field private mDns:Lokhttp3/Dns;

.field private mEventListenerFactory:Lokhttp3/EventListener$Factory;

.field private mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private networkClientType:Ljava/lang/String;

.field private okhttpNetworkClient:Lcom/tencent/qcloud/core/http/OkHttpClientImpl;

.field private final taskManager:Lcom/tencent/qcloud/core/task/TaskManager;

.field private final verifiedHost:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->networkClientMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;)V
    .locals 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-class v0, Lcom/tencent/qcloud/core/http/OkHttpClientImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->networkClientType:Ljava/lang/String;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->dnsCache:Z

    .line 5
    new-instance v1, Lcom/tencent/qcloud/core/http/QCloudHttpClient$1;

    invoke-direct {v1, p0}, Lcom/tencent/qcloud/core/http/QCloudHttpClient$1;-><init>(Lcom/tencent/qcloud/core/http/QCloudHttpClient;)V

    iput-object v1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 6
    new-instance v1, Lcom/tencent/qcloud/core/http/QCloudHttpClient$2;

    invoke-direct {v1, p0}, Lcom/tencent/qcloud/core/http/QCloudHttpClient$2;-><init>(Lcom/tencent/qcloud/core/http/QCloudHttpClient;)V

    iput-object v1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->mDns:Lokhttp3/Dns;

    .line 7
    new-instance v1, Lcom/tencent/qcloud/core/http/QCloudHttpClient$3;

    invoke-direct {v1, p0}, Lcom/tencent/qcloud/core/http/QCloudHttpClient$3;-><init>(Lcom/tencent/qcloud/core/http/QCloudHttpClient;)V

    iput-object v1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->mEventListenerFactory:Lokhttp3/EventListener$Factory;

    .line 8
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->verifiedHost:Ljava/util/Set;

    .line 9
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->dnsMap:Ljava/util/Map;

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->dnsFetchs:Ljava/util/ArrayList;

    .line 11
    invoke-static {}, Lcom/tencent/qcloud/core/task/TaskManager;->getInstance()Lcom/tencent/qcloud/core/task/TaskManager;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->taskManager:Lcom/tencent/qcloud/core/task/TaskManager;

    .line 12
    invoke-static {}, Lcom/tencent/qcloud/core/http/ConnectionRepository;->getInstance()Lcom/tencent/qcloud/core/http/ConnectionRepository;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->connectionRepository:Lcom/tencent/qcloud/core/http/ConnectionRepository;

    .line 13
    new-instance v2, Lcom/tencent/qcloud/core/http/HttpLogger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/tencent/qcloud/core/http/HttpLogger;-><init>(Z)V

    iput-object v2, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->httpLogger:Lcom/tencent/qcloud/core/http/HttpLogger;

    .line 14
    invoke-virtual {p0, v3}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->setDebuggable(Z)V

    .line 15
    iget-object v3, p1, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->networkClient:Lcom/tencent/qcloud/core/http/NetworkClient;

    if-nez v3, :cond_0

    .line 16
    new-instance v3, Lcom/tencent/qcloud/core/http/OkHttpClientImpl;

    invoke-direct {v3}, Lcom/tencent/qcloud/core/http/OkHttpClientImpl;-><init>()V

    .line 17
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->networkClientType:Ljava/lang/String;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->networkClientType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, v3, Lcom/tencent/qcloud/core/http/OkHttpClientImpl;

    if-eqz v0, :cond_1

    .line 19
    check-cast v3, Lcom/tencent/qcloud/core/http/OkHttpClientImpl;

    iput-object v3, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->okhttpNetworkClient:Lcom/tencent/qcloud/core/http/OkHttpClientImpl;

    .line 20
    invoke-direct {p0}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->mDns:Lokhttp3/Dns;

    invoke-virtual {v3, p1, v0, p0, v2}, Lcom/tencent/qcloud/core/http/OkHttpClientImpl;->init(Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/Dns;Lcom/tencent/qcloud/core/http/HttpLogger;)V

    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->networkClientType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 22
    sget-object v4, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->networkClientMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 23
    invoke-direct {p0}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v4

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->mDns:Lokhttp3/Dns;

    invoke-virtual {v3, p1, v4, p0, v2}, Lcom/tencent/qcloud/core/http/NetworkClient;->init(Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/Dns;Lcom/tencent/qcloud/core/http/HttpLogger;)V

    .line 24
    sget-object p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->networkClientMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_2
    :goto_0
    iget-object p0, p1, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->prefetchHost:Ljava/util/List;

    invoke-virtual {v1, p0}, Lcom/tencent/qcloud/core/http/ConnectionRepository;->addPrefetchHosts(Ljava/util/List;)V

    .line 26
    invoke-virtual {v1}, Lcom/tencent/qcloud/core/http/ConnectionRepository;->init()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;Lcom/tencent/qcloud/core/http/QCloudHttpClient$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;-><init>(Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/qcloud/core/http/QCloudHttpClient;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->verifiedHost:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/tencent/qcloud/core/http/QCloudHttpClient;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->dnsMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/tencent/qcloud/core/http/QCloudHttpClient;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->dnsFetchs:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/tencent/qcloud/core/http/QCloudHttpClient;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->dnsCache:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/tencent/qcloud/core/http/QCloudHttpClient;)Lcom/tencent/qcloud/core/http/ConnectionRepository;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->connectionRepository:Lcom/tencent/qcloud/core/http/ConnectionRepository;

    return-object p0
.end method

.method public static synthetic access$500()Lokhttp3/OkHttpClient$Builder;
    .locals 1

    sget-object v0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    return-object v0
.end method

.method public static synthetic access$502(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;
    .locals 0

    sput-object p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public static getDefault()Lcom/tencent/qcloud/core/http/QCloudHttpClient;
    .locals 2

    sget-object v0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->gDefault:Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->gDefault:Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;

    invoke-direct {v1}, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->build()Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    move-result-object v1

    sput-object v1, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->gDefault:Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->gDefault:Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    return-object v0
.end method

.method private handleRequest(Lcom/tencent/qcloud/core/http/HttpRequest;Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)Lcom/tencent/qcloud/core/http/HttpTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/qcloud/core/http/HttpRequest<",
            "TT;>;",
            "Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;",
            ")",
            "Lcom/tencent/qcloud/core/http/HttpTask<",
            "TT;>;"
        }
    .end annotation

    const-class v0, Lcom/tencent/qcloud/core/http/OkHttpClientImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->networkClientType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/qcloud/core/http/HttpTask;

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->okhttpNetworkClient:Lcom/tencent/qcloud/core/http/OkHttpClientImpl;

    invoke-direct {v0, p1, p2, p0}, Lcom/tencent/qcloud/core/http/HttpTask;-><init>(Lcom/tencent/qcloud/core/http/HttpRequest;Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;Lcom/tencent/qcloud/core/http/NetworkClient;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/tencent/qcloud/core/http/HttpTask;

    sget-object v1, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->networkClientMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->networkClientType:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/qcloud/core/http/NetworkClient;

    invoke-direct {v0, p1, p2, p0}, Lcom/tencent/qcloud/core/http/HttpTask;-><init>(Lcom/tencent/qcloud/core/http/HttpRequest;Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;Lcom/tencent/qcloud/core/http/NetworkClient;)V

    return-object v0
.end method

.method private hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method


# virtual methods
.method public addDnsFetch(Lcom/tencent/qcloud/core/http/QCloudHttpClient$QCloudDnsFetch;)V
    .locals 0
    .param p1    # Lcom/tencent/qcloud/core/http/QCloudHttpClient$QCloudDnsFetch;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->dnsFetchs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDnsRecord(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    array-length v0, p2

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->dnsMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public addVerifiedHost(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->verifiedHost:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getTasksByTag(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/tencent/qcloud/core/http/HttpTask;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->taskManager:Lcom/tencent/qcloud/core/task/TaskManager;

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/task/TaskManager;->snapshot()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qcloud/core/task/QCloudTask;

    instance-of v2, v1, Lcom/tencent/qcloud/core/http/HttpTask;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/tencent/qcloud/core/task/QCloudTask;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v1, Lcom/tencent/qcloud/core/http/HttpTask;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public resolveRequest(Lcom/tencent/qcloud/core/http/HttpRequest;)Lcom/tencent/qcloud/core/http/HttpTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/qcloud/core/http/HttpRequest<",
            "TT;>;)",
            "Lcom/tencent/qcloud/core/http/HttpTask<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->handleRequest(Lcom/tencent/qcloud/core/http/HttpRequest;Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)Lcom/tencent/qcloud/core/http/HttpTask;

    move-result-object p0

    return-object p0
.end method

.method public resolveRequest(Lcom/tencent/qcloud/core/http/QCloudHttpRequest;Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)Lcom/tencent/qcloud/core/http/HttpTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/qcloud/core/http/QCloudHttpRequest<",
            "TT;>;",
            "Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;",
            ")",
            "Lcom/tencent/qcloud/core/http/HttpTask<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->handleRequest(Lcom/tencent/qcloud/core/http/HttpRequest;Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)Lcom/tencent/qcloud/core/http/HttpTask;

    move-result-object p0

    return-object p0
.end method

.method public setDebuggable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->httpLogger:Lcom/tencent/qcloud/core/http/HttpLogger;

    invoke-virtual {p0, p1}, Lcom/tencent/qcloud/core/http/HttpLogger;->setDebug(Z)V

    return-void
.end method

.method public setNetworkClientType(Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;)V
    .locals 4

    iget-object v0, p1, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->networkClient:Lcom/tencent/qcloud/core/http/NetworkClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->networkClientType:Ljava/lang/String;

    const-class v1, Lcom/tencent/qcloud/core/http/OkHttpClientImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->networkClientType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/tencent/qcloud/core/http/OkHttpClientImpl;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tencent/qcloud/core/http/OkHttpClientImpl;

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->okhttpNetworkClient:Lcom/tencent/qcloud/core/http/OkHttpClientImpl;

    invoke-direct {p0}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->mDns:Lokhttp3/Dns;

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->httpLogger:Lcom/tencent/qcloud/core/http/HttpLogger;

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/tencent/qcloud/core/http/OkHttpClientImpl;->init(Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/Dns;Lcom/tencent/qcloud/core/http/HttpLogger;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->networkClientType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sget-object v2, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->networkClientMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->mDns:Lokhttp3/Dns;

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->httpLogger:Lcom/tencent/qcloud/core/http/HttpLogger;

    invoke-virtual {v0, p1, v2, v3, p0}, Lcom/tencent/qcloud/core/http/NetworkClient;->init(Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/Dns;Lcom/tencent/qcloud/core/http/HttpLogger;)V

    sget-object p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->networkClientMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
