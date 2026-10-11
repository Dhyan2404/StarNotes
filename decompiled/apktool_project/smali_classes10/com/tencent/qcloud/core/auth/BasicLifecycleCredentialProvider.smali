.class public abstract Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;


# instance fields
.field private volatile credentials:Lcom/tencent/qcloud/core/auth/QCloudLifecycleCredentials;

.field private lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method private declared-synchronized safeGetCredentials()Lcom/tencent/qcloud/core/auth/QCloudLifecycleCredentials;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;->credentials:Lcom/tencent/qcloud/core/auth/QCloudLifecycleCredentials;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized safeSetCredentials(Lcom/tencent/qcloud/core/auth/QCloudLifecycleCredentials;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;->credentials:Lcom/tencent/qcloud/core/auth/QCloudLifecycleCredentials;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public abstract fetchNewCredentials()Lcom/tencent/qcloud/core/auth/QCloudLifecycleCredentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;
        }
    .end annotation
.end method

.method public declared-synchronized forceInvalidationCredential()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;->safeSetCredentials(Lcom/tencent/qcloud/core/auth/QCloudLifecycleCredentials;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCredentials()Lcom/tencent/qcloud/core/auth/QCloudCredentials;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;->safeGetCredentials()Lcom/tencent/qcloud/core/auth/QCloudLifecycleCredentials;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/tencent/qcloud/core/auth/QCloudLifecycleCredentials;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;->refresh()V

    invoke-direct {p0}, Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;->safeGetCredentials()Lcom/tencent/qcloud/core/auth/QCloudLifecycleCredentials;

    move-result-object p0

    return-object p0
.end method

.method public refresh()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x14

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;->safeGetCredentials()Lcom/tencent/qcloud/core/auth/QCloudLifecycleCredentials;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/tencent/qcloud/core/auth/QCloudLifecycleCredentials;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;->safeSetCredentials(Lcom/tencent/qcloud/core/auth/QCloudLifecycleCredentials;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;->fetchNewCredentials()Lcom/tencent/qcloud/core/auth/QCloudLifecycleCredentials;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;->safeSetCredentials(Lcom/tencent/qcloud/core/auth/QCloudLifecycleCredentials;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    return-void

    :catch_0
    move-exception v1

    :try_start_2
    instance-of v2, v1, Lcom/tencent/qcloud/core/common/QCloudClientException;

    if-eqz v2, :cond_3

    throw v1

    :cond_3
    new-instance v2, Lcom/tencent/qcloud/core/common/QCloudClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetch credentials error happens: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_4
    new-instance v1, Lcom/tencent/qcloud/core/common/QCloudClientException;

    new-instance v2, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;

    const-string v3, "lock timeout, no credential for sign"

    invoke-direct {v2, v3}, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    new-instance v2, Lcom/tencent/qcloud/core/common/QCloudClientException;

    const-string v3, "interrupt when try to get credential"

    new-instance v4, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_5
    throw v1
.end method
