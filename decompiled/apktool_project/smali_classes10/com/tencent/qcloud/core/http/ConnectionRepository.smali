.class public Lcom/tencent/qcloud/core/http/ConnectionRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qcloud/core/http/ConnectionRepository$AsyncExecuteCompleteListener;,
        Lcom/tencent/qcloud/core/http/ConnectionRepository$DnsFetcher;,
        Lcom/tencent/qcloud/core/http/ConnectionRepository$LocalDnsCache;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/tencent/qcloud/core/http/ConnectionRepository;


# instance fields
.field private dnsFetcher:Lcom/tencent/qcloud/core/http/ConnectionRepository$DnsFetcher;

.field private dnsRecords:Ljava/util/Map;
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

.field private localDnsCache:Lcom/tencent/qcloud/core/http/ConnectionRepository$LocalDnsCache;

.field private singleExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/qcloud/core/http/ConnectionRepository$LocalDnsCache;

    invoke-static {}, Lcom/tencent/qcloud/core/util/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/qcloud/core/http/ConnectionRepository$LocalDnsCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository;->localDnsCache:Lcom/tencent/qcloud/core/http/ConnectionRepository$LocalDnsCache;

    new-instance v0, Lcom/tencent/qcloud/core/http/ConnectionRepository$DnsFetcher;

    invoke-direct {v0}, Lcom/tencent/qcloud/core/http/ConnectionRepository$DnsFetcher;-><init>()V

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository;->dnsFetcher:Lcom/tencent/qcloud/core/http/ConnectionRepository$DnsFetcher;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository;->dnsRecords:Ljava/util/Map;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository;->singleExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/qcloud/core/http/ConnectionRepository;)Lcom/tencent/qcloud/core/http/ConnectionRepository$LocalDnsCache;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository;->localDnsCache:Lcom/tencent/qcloud/core/http/ConnectionRepository$LocalDnsCache;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/tencent/qcloud/core/http/ConnectionRepository;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qcloud/core/http/ConnectionRepository;->addDnsRecordsMap(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/tencent/qcloud/core/http/ConnectionRepository;)Lcom/tencent/qcloud/core/http/ConnectionRepository$DnsFetcher;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository;->dnsFetcher:Lcom/tencent/qcloud/core/http/ConnectionRepository$DnsFetcher;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/tencent/qcloud/core/http/ConnectionRepository;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository;->dnsRecords:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/tencent/qcloud/core/http/ConnectionRepository;Ljava/util/List;Ljava/util/List;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/qcloud/core/http/ConnectionRepository;->sameInetAddresses(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private addDnsRecordsMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository;->dnsRecords:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/tencent/qcloud/core/http/ConnectionRepository;
    .locals 2

    sget-object v0, Lcom/tencent/qcloud/core/http/ConnectionRepository;->instance:Lcom/tencent/qcloud/core/http/ConnectionRepository;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/qcloud/core/http/ConnectionRepository;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/qcloud/core/http/ConnectionRepository;->instance:Lcom/tencent/qcloud/core/http/ConnectionRepository;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/qcloud/core/http/ConnectionRepository;

    invoke-direct {v1}, Lcom/tencent/qcloud/core/http/ConnectionRepository;-><init>()V

    sput-object v1, Lcom/tencent/qcloud/core/http/ConnectionRepository;->instance:Lcom/tencent/qcloud/core/http/ConnectionRepository;

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
    sget-object v0, Lcom/tencent/qcloud/core/http/ConnectionRepository;->instance:Lcom/tencent/qcloud/core/http/ConnectionRepository;

    return-object v0
.end method

.method private sameInetAddresses(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    move v0, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :cond_3
    :goto_1
    return p0
.end method


# virtual methods
.method public addPrefetchHosts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository;->dnsFetcher:Lcom/tencent/qcloud/core/http/ConnectionRepository$DnsFetcher;

    invoke-virtual {p0, p1}, Lcom/tencent/qcloud/core/http/ConnectionRepository$DnsFetcher;->addHosts(Ljava/util/List;)V

    return-void
.end method

.method public getDnsRecord(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository;->dnsRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository;->dnsRecords:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p0, Ljava/net/UnknownHostException;

    invoke-direct {p0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/tencent/qcloud/core/http/ConnectionRepository;->init(Lcom/tencent/qcloud/core/http/ConnectionRepository$AsyncExecuteCompleteListener;)V

    return-void
.end method

.method public init(Lcom/tencent/qcloud/core/http/ConnectionRepository$AsyncExecuteCompleteListener;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository;->singleExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/tencent/qcloud/core/http/ConnectionRepository$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/qcloud/core/http/ConnectionRepository$1;-><init>(Lcom/tencent/qcloud/core/http/ConnectionRepository;Lcom/tencent/qcloud/core/http/ConnectionRepository$AsyncExecuteCompleteListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertDnsRecordCache(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/qcloud/core/http/ConnectionRepository;->insertDnsRecordCache(Ljava/lang/String;Ljava/util/List;Lcom/tencent/qcloud/core/http/ConnectionRepository$AsyncExecuteCompleteListener;)V

    return-void
.end method

.method public insertDnsRecordCache(Ljava/lang/String;Ljava/util/List;Lcom/tencent/qcloud/core/http/ConnectionRepository$AsyncExecuteCompleteListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Lcom/tencent/qcloud/core/http/ConnectionRepository$AsyncExecuteCompleteListener;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository;->singleExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/tencent/qcloud/core/http/ConnectionRepository$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/qcloud/core/http/ConnectionRepository$2;-><init>(Lcom/tencent/qcloud/core/http/ConnectionRepository;Ljava/lang/String;Ljava/util/List;Lcom/tencent/qcloud/core/http/ConnectionRepository$AsyncExecuteCompleteListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
