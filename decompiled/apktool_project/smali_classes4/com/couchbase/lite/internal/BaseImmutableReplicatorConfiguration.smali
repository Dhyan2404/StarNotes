.class public Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final acceptParentCookies:Z

.field private final authenticator:Lcom/couchbase/lite/Authenticator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final configs:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/Collection;",
            "Lcom/couchbase/lite/CollectionConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final continuous:Z

.field private final database:Lcom/couchbase/lite/Database;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final enableAutoPurge:Z

.field private final headers:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final heartbeat:I

.field private final maxAttemptWaitTime:I

.field private final maxAttempts:I

.field private options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final pinnedServerCertificate:Ljava/security/cert/X509Certificate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final proxyAuthenticator:Lcom/couchbase/lite/ProxyAuthenticator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final target:Lcom/couchbase/lite/Endpoint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final type:Lcom/couchbase/lite/ReplicatorType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/ReplicatorConfiguration;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/ReplicatorConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/BaseReplicatorConfiguration;->getCollectionConfigurations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->configs:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getTarget()Lcom/couchbase/lite/Endpoint;

    move-result-object v0

    const-string v1, "replication target"

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/Endpoint;

    iput-object v0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->target:Lcom/couchbase/lite/Endpoint;

    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getType()Lcom/couchbase/lite/ReplicatorType;

    move-result-object v0

    const-string v1, "replicator type"

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/ReplicatorType;

    iput-object v0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->type:Lcom/couchbase/lite/ReplicatorType;

    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->isContinuous()Z

    move-result v0

    iput-boolean v0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->continuous:Z

    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getAuthenticator()Lcom/couchbase/lite/Authenticator;

    move-result-object v0

    iput-object v0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->authenticator:Lcom/couchbase/lite/Authenticator;

    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getProxyAuthenticator()Lcom/couchbase/lite/ProxyAuthenticator;

    move-result-object v0

    iput-object v0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->proxyAuthenticator:Lcom/couchbase/lite/ProxyAuthenticator;

    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->headers:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->isAcceptParentDomainCookies()Z

    move-result v0

    iput-boolean v0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->acceptParentCookies:Z

    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getPinnedServerX509Certificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->pinnedServerCertificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getMaxAttempts()I

    move-result v0

    iput v0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->maxAttempts:I

    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getMaxAttemptWaitTime()I

    move-result v0

    iput v0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->maxAttemptWaitTime:I

    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getHeartbeat()I

    move-result v0

    iput v0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->heartbeat:I

    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->isAutoPurgeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->enableAutoPurge:Z

    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p1

    const-string v0, "replications source database"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/Database;

    iput-object p1, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->database:Lcom/couchbase/lite/Database;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attempt to configure a replicator with no source collections"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getAuthenticator()Lcom/couchbase/lite/Authenticator;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->authenticator:Lcom/couchbase/lite/Authenticator;

    return-object p0
.end method

.method public final getCollectionConfigs()Ljava/util/Map;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/Collection;",
            "Lcom/couchbase/lite/CollectionConfiguration;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->configs:Ljava/util/Map;

    return-object p0
.end method

.method public getConnectionOptions()Ljava/util/Map;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->authenticator:Lcom/couchbase/lite/Authenticator;

    if-eqz v1, :cond_0

    check-cast v1, Lcom/couchbase/lite/internal/BaseAuthenticator;

    invoke-virtual {v1, v0}, Lcom/couchbase/lite/internal/BaseAuthenticator;->authenticate(Ljava/util/Map;)V

    :cond_0
    iget-object v1, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->proxyAuthenticator:Lcom/couchbase/lite/ProxyAuthenticator;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/couchbase/lite/internal/BaseAuthenticator;->authenticate(Ljava/util/Map;)V

    :cond_1
    iget-object v1, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->pinnedServerCertificate:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_2

    :try_start_0
    const-string v2, "pinnedCert"

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/couchbase/lite/LogDomain;->NETWORK:Lcom/couchbase/lite/LogDomain;

    const-string v3, "Unable to encode pinned certificate.  Ignoring"

    invoke-static {v2, v3, v1}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    iget v1, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->heartbeat:I

    const/16 v2, 0x12c

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "heartbeat"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->maxAttemptWaitTime:I

    if-lez v1, :cond_4

    move v2, v1

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "maxRetryInterval"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->maxAttempts:I

    if-lez v1, :cond_5

    goto :goto_2

    :cond_5
    iget-boolean v1, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->continuous:Z

    if-eqz v1, :cond_6

    const v1, 0x7fffffff

    goto :goto_2

    :cond_6
    const/16 v1, 0xa

    :goto_2
    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "maxRetries"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->acceptParentCookies:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "acceptParentDomainCookies"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->enableAutoPurge:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "autoPurge"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->headers:Ljava/util/Map;

    if-eqz v2, :cond_9

    const-string v3, "Cookies"

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_8

    const-string v3, "cookies"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_7
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v2, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->headers:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_9
    const-string v2, "User-Agent"

    invoke-static {}, Lcom/couchbase/lite/internal/core/CBLVersion;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "headers"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->options:Ljava/util/Map;

    return-object v0
.end method

.method public final getDatabase()Lcom/couchbase/lite/Database;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->database:Lcom/couchbase/lite/Database;

    return-object p0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->headers:Ljava/util/Map;

    return-object p0
.end method

.method public final getHeartbeat()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->heartbeat:I

    return p0
.end method

.method public final getMaxRetryAttemptWaitTime()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->maxAttemptWaitTime:I

    return p0
.end method

.method public final getMaxRetryAttempts()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->maxAttempts:I

    return p0
.end method

.method public final getPinnedServerCertificate()Ljava/security/cert/X509Certificate;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->pinnedServerCertificate:Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public final getProxyAuthenticator()Lcom/couchbase/lite/ProxyAuthenticator;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->proxyAuthenticator:Lcom/couchbase/lite/ProxyAuthenticator;

    return-object p0
.end method

.method public final getTarget()Lcom/couchbase/lite/Endpoint;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->target:Lcom/couchbase/lite/Endpoint;

    return-object p0
.end method

.method public final getType()Lcom/couchbase/lite/ReplicatorType;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->type:Lcom/couchbase/lite/ReplicatorType;

    return-object p0
.end method

.method public isAcceptParentCookies()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->acceptParentCookies:Z

    return p0
.end method

.method public final isAutoPurgeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->enableAutoPurge:Z

    return p0
.end method

.method public final isContinuous()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->continuous:Z

    return p0
.end method

.method public final isPull()Z
    .locals 1

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->type:Lcom/couchbase/lite/ReplicatorType;

    sget-object v0, Lcom/couchbase/lite/ReplicatorType;->PUSH_AND_PULL:Lcom/couchbase/lite/ReplicatorType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/couchbase/lite/ReplicatorType;->PULL:Lcom/couchbase/lite/ReplicatorType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isPush()Z
    .locals 1

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->type:Lcom/couchbase/lite/ReplicatorType;

    sget-object v0, Lcom/couchbase/lite/ReplicatorType;->PUSH_AND_PULL:Lcom/couchbase/lite/ReplicatorType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/couchbase/lite/ReplicatorType;->PUSH:Lcom/couchbase/lite/ReplicatorType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
