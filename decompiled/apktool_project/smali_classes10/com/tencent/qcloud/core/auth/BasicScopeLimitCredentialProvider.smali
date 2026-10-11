.class public abstract Lcom/tencent/qcloud/core/auth/BasicScopeLimitCredentialProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qcloud/core/auth/ScopeLimitCredentialProvider;


# static fields
.field private static final MAX_CACHE_CREDENTIAL_SIZE:I = 0x64


# instance fields
.field private credentialPairs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/qcloud/core/auth/BasicScopeLimitCredentialProvider;->credentialPairs:Ljava/util/Map;

    return-void
.end method

.method private declared-synchronized cacheCredentialsAndCleanUp(ILcom/tencent/qcloud/core/auth/SessionQCloudCredentials;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qcloud/core/auth/BasicScopeLimitCredentialProvider;->credentialPairs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;

    invoke-virtual {v1}, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qcloud/core/auth/BasicScopeLimitCredentialProvider;->credentialPairs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/qcloud/core/auth/BasicScopeLimitCredentialProvider;->credentialPairs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/qcloud/core/auth/BasicScopeLimitCredentialProvider;->credentialPairs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/qcloud/core/auth/BasicScopeLimitCredentialProvider;->credentialPairs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized lookupValidCredentials(I)Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qcloud/core/auth/BasicScopeLimitCredentialProvider;->credentialPairs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;->isValid()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object p1

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public abstract fetchNewCredentials([Lcom/tencent/qcloud/core/auth/STSCredentialScope;)Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;
        }
    .end annotation
.end method

.method public getCredentials()Lcom/tencent/qcloud/core/auth/QCloudCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;
        }
    .end annotation

    .line 5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not support ths op"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCredentials([Lcom/tencent/qcloud/core/auth/STSCredentialScope;)Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/tencent/qcloud/core/auth/STSCredentialScope;->jsonify([Lcom/tencent/qcloud/core/auth/STSCredentialScope;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 2
    invoke-direct {p0, v0}, Lcom/tencent/qcloud/core/auth/BasicScopeLimitCredentialProvider;->lookupValidCredentials(I)Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/tencent/qcloud/core/auth/BasicScopeLimitCredentialProvider;->fetchNewCredentials([Lcom/tencent/qcloud/core/auth/STSCredentialScope;)Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;

    move-result-object v1

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/tencent/qcloud/core/auth/BasicScopeLimitCredentialProvider;->cacheCredentialsAndCleanUp(ILcom/tencent/qcloud/core/auth/SessionQCloudCredentials;)V

    :cond_0
    return-object v1
.end method

.method public refresh()V
    .locals 0

    return-void
.end method
