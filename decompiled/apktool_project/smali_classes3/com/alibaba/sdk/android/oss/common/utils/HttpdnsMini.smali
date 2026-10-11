.class public Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$b;,
        Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$a;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "HttpDnsMini"

.field public static final d:Ljava/lang/String; = "203.107.1.1"

.field public static final e:Ljava/lang/String; = "181345"

.field public static final f:I = 0x5

.field public static final g:I = 0xa

.field public static final h:I = 0x64

.field public static final i:I = 0x1e

.field public static j:Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;


# instance fields
.field public a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;->a:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a(Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;->a:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method public static getInstance()Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;
    .locals 2

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;->j:Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;

    if-nez v0, :cond_1

    const-class v0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;->j:Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;-><init>()V

    sput-object v1, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;->j:Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;

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
    sget-object v0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;->j:Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;

    return-object v0
.end method


# virtual methods
.method public getIpByHostAsync(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[httpdnsmini] - refresh host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$b;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$b;-><init>(Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_1
    const/4 p0, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$a;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$a;->b()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method
