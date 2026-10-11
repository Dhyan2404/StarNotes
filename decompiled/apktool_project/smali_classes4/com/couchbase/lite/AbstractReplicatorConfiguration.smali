.class public abstract Lcom/couchbase/lite/AbstractReplicatorConfiguration;
.super Lcom/couchbase/lite/internal/BaseReplicatorConfiguration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/AbstractReplicatorConfiguration$ReplicatorType;
    }
.end annotation


# static fields
.field public static final DISABLE_HEARTBEAT:I = 0x20c49b


# instance fields
.field private acceptParentCookies:Z

.field private authenticator:Lcom/couchbase/lite/Authenticator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private continuous:Z

.field private database:Lcom/couchbase/lite/Database;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private enableAutoPurge:Z

.field private headers:Ljava/util/Map;
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

.field private heartbeat:I

.field private maxAttemptWaitTime:I

.field private maxAttempts:I

.field private pinnedServerCertificate:Ljava/security/cert/X509Certificate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private proxyAuthenticator:Lcom/couchbase/lite/ProxyAuthenticator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final target:Lcom/couchbase/lite/Endpoint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private type:Lcom/couchbase/lite/ReplicatorType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/AbstractReplicatorConfiguration;)V
    .locals 15
    .param p1    # Lcom/couchbase/lite/AbstractReplicatorConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p1

    .line 2
    iget-object v1, v0, Lcom/couchbase/lite/internal/BaseReplicatorConfiguration;->collectionConfigurations:Ljava/util/Map;

    iget-object v2, v0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->target:Lcom/couchbase/lite/Endpoint;

    iget-object v3, v0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->type:Lcom/couchbase/lite/ReplicatorType;

    iget-boolean v4, v0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->continuous:Z

    iget-object v5, v0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->authenticator:Lcom/couchbase/lite/Authenticator;

    iget-object v6, v0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->proxyAuthenticator:Lcom/couchbase/lite/ProxyAuthenticator;

    iget-object v7, v0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->headers:Ljava/util/Map;

    iget-boolean v8, v0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->acceptParentCookies:Z

    iget-object v9, v0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->pinnedServerCertificate:Ljava/security/cert/X509Certificate;

    iget v10, v0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->maxAttempts:I

    iget v11, v0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->maxAttemptWaitTime:I

    iget v12, v0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->heartbeat:I

    iget-boolean v13, v0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->enableAutoPurge:Z

    iget-object v14, v0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->database:Lcom/couchbase/lite/Database;

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;-><init>(Ljava/util/Map;Lcom/couchbase/lite/Endpoint;Lcom/couchbase/lite/ReplicatorType;ZLcom/couchbase/lite/Authenticator;Lcom/couchbase/lite/ProxyAuthenticator;Ljava/util/Map;ZLjava/security/cert/X509Certificate;IIIZLcom/couchbase/lite/Database;)V

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/Database;Ljava/util/Map;Lcom/couchbase/lite/Endpoint;)V
    .locals 15
    .param p1    # Lcom/couchbase/lite/Database;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/Endpoint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/Database;",
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/Collection;",
            "Lcom/couchbase/lite/CollectionConfiguration;",
            ">;",
            "Lcom/couchbase/lite/Endpoint;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v3, Lcom/couchbase/lite/Defaults$Replicator;->TYPE:Lcom/couchbase/lite/ReplicatorType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xa

    const/16 v11, 0x12c

    const/16 v12, 0x12c

    const/4 v13, 0x1

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v14, p1

    invoke-direct/range {v0 .. v14}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;-><init>(Ljava/util/Map;Lcom/couchbase/lite/Endpoint;Lcom/couchbase/lite/ReplicatorType;ZLcom/couchbase/lite/Authenticator;Lcom/couchbase/lite/ProxyAuthenticator;Ljava/util/Map;ZLjava/security/cert/X509Certificate;IIIZLcom/couchbase/lite/Database;)V

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;)V
    .locals 15
    .param p1    # Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->getCollectionConfigs()Ljava/util/Map;

    move-result-object v1

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->getTarget()Lcom/couchbase/lite/Endpoint;

    move-result-object v2

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->getType()Lcom/couchbase/lite/ReplicatorType;

    move-result-object v3

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->isContinuous()Z

    move-result v4

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->getAuthenticator()Lcom/couchbase/lite/Authenticator;

    move-result-object v5

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->getProxyAuthenticator()Lcom/couchbase/lite/ProxyAuthenticator;

    move-result-object v6

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->getHeaders()Ljava/util/Map;

    move-result-object v7

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->isAcceptParentCookies()Z

    move-result v8

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->getPinnedServerCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v9

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->getMaxRetryAttempts()I

    move-result v10

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->getMaxRetryAttemptWaitTime()I

    move-result v11

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->getHeartbeat()I

    move-result v12

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->isAutoPurgeEnabled()Z

    move-result v13

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v14

    move-object v0, p0

    .line 17
    invoke-direct/range {v0 .. v14}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;-><init>(Ljava/util/Map;Lcom/couchbase/lite/Endpoint;Lcom/couchbase/lite/ReplicatorType;ZLcom/couchbase/lite/Authenticator;Lcom/couchbase/lite/ProxyAuthenticator;Ljava/util/Map;ZLjava/security/cert/X509Certificate;IIIZLcom/couchbase/lite/Database;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Lcom/couchbase/lite/Endpoint;Lcom/couchbase/lite/ReplicatorType;ZLcom/couchbase/lite/Authenticator;Lcom/couchbase/lite/ProxyAuthenticator;Ljava/util/Map;ZLjava/security/cert/X509Certificate;IIIZLcom/couchbase/lite/Database;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Endpoint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/ReplicatorType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/couchbase/lite/Authenticator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/couchbase/lite/ProxyAuthenticator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/security/cert/X509Certificate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Lcom/couchbase/lite/Database;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/Collection;",
            "Lcom/couchbase/lite/CollectionConfiguration;",
            ">;",
            "Lcom/couchbase/lite/Endpoint;",
            "Lcom/couchbase/lite/ReplicatorType;",
            "Z",
            "Lcom/couchbase/lite/Authenticator;",
            "Lcom/couchbase/lite/ProxyAuthenticator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/security/cert/X509Certificate;",
            "IIIZ",
            "Lcom/couchbase/lite/Database;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-static {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->copyConfigs(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/BaseReplicatorConfiguration;-><init>(Ljava/util/Map;)V

    .line 19
    iput-object p2, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->target:Lcom/couchbase/lite/Endpoint;

    .line 20
    iput-object p3, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->type:Lcom/couchbase/lite/ReplicatorType;

    .line 21
    iput-boolean p4, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->continuous:Z

    .line 22
    iput-object p5, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->authenticator:Lcom/couchbase/lite/Authenticator;

    .line 23
    iput-object p6, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->proxyAuthenticator:Lcom/couchbase/lite/ProxyAuthenticator;

    .line 24
    iput-object p7, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->headers:Ljava/util/Map;

    .line 25
    iput-boolean p8, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->acceptParentCookies:Z

    .line 26
    iput-object p9, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->pinnedServerCertificate:Ljava/security/cert/X509Certificate;

    .line 27
    iput p10, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->maxAttempts:I

    .line 28
    iput p11, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->maxAttemptWaitTime:I

    .line 29
    iput p12, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->heartbeat:I

    .line 30
    iput-boolean p13, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->enableAutoPurge:Z

    .line 31
    iput-object p14, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->database:Lcom/couchbase/lite/Database;

    return-void
.end method

.method public static synthetic a(Lcom/couchbase/lite/ConflictResolver;Lcom/couchbase/lite/CollectionConfiguration;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->lambda$setConflictResolver$2(Lcom/couchbase/lite/ConflictResolver;Lcom/couchbase/lite/CollectionConfiguration;)V

    return-void
.end method

.method private addCollectionConfig(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/CollectionConfiguration;)V
    .locals 4
    .param p1    # Lcom/couchbase/lite/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/CollectionConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "NP_NULL_ON_SOME_PATH",
            "NP_LOAD_OF_KNOWN_NULL_VALUE",
            "RCN_REDUNDANT_NULLCHECK_OF_NULL_VALUE"
        }
    .end annotation

    const-string v0, "collection"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/Collection;

    invoke-virtual {v0}, Lcom/couchbase/lite/Collection;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    iget-object v1, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->database:Lcom/couchbase/lite/Database;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->database:Lcom/couchbase/lite/Database;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/couchbase/lite/Database;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    iget-object v0, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->database:Lcom/couchbase/lite/Database;

    invoke-virtual {v0}, Lcom/couchbase/lite/BaseDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->database:Lcom/couchbase/lite/Database;

    invoke-virtual {p1}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/couchbase/lite/Collection;->getScope()Lcom/couchbase/lite/Scope;

    move-result-object v2

    invoke-virtual {v2}, Lcom/couchbase/lite/Scope;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/couchbase/lite/AbstractDatabase;->getCollection(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/couchbase/lite/Collection;->close()V
    :try_end_0
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/internal/BaseReplicatorConfiguration;->addCollectionInternal(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/CollectionConfiguration;)V

    return-void

    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "AddDeletedCollection"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/couchbase/lite/Collection;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2, v1}, Lcom/couchbase/lite/internal/logging/Log;->formatStandardMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Lcom/couchbase/lite/Collection;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_3
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
    :try_end_3
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed getting collection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/couchbase/lite/Collection;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->database:Lcom/couchbase/lite/Database;

    invoke-virtual {p0}, Lcom/couchbase/lite/Database;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "AddCollectionFromClosedDB"

    invoke-static {p1, p0}, Lcom/couchbase/lite/internal/logging/Log;->formatStandardMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/couchbase/lite/Collection;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->database:Lcom/couchbase/lite/Database;

    invoke-virtual {p0}, Lcom/couchbase/lite/Database;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "AddCollectionFromAnotherDB"

    invoke-static {p1, p0}, Lcom/couchbase/lite/internal/logging/Log;->formatStandardMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static synthetic b(Lcom/couchbase/lite/ReplicationFilter;Lcom/couchbase/lite/CollectionConfiguration;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->lambda$setPullFilter$3(Lcom/couchbase/lite/ReplicationFilter;Lcom/couchbase/lite/CollectionConfiguration;)V

    return-void
.end method

.method public static synthetic c(Ljava/util/List;Lcom/couchbase/lite/CollectionConfiguration;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->lambda$setChannels$1(Ljava/util/List;Lcom/couchbase/lite/CollectionConfiguration;)V

    return-void
.end method

.method public static configureDefaultCollection(Lcom/couchbase/lite/Database;)Ljava/util/Map;
    .locals 2
    .param p0    # Lcom/couchbase/lite/Database;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/Database;",
            ")",
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/Collection;",
            "Lcom/couchbase/lite/CollectionConfiguration;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object p0
    :try_end_0
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/couchbase/lite/CollectionConfiguration;

    invoke-direct {v1}, Lcom/couchbase/lite/CollectionConfiguration;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v1, "NoDefaultCollectionInConfig"

    invoke-static {v1}, Lcom/couchbase/lite/internal/logging/Log;->lookupStandardMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method private static copyConfigs(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p0    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/Collection;",
            "Lcom/couchbase/lite/CollectionConfiguration;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/Collection;",
            "Lcom/couchbase/lite/CollectionConfiguration;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static synthetic d(Lcom/couchbase/lite/ReplicationFilter;Lcom/couchbase/lite/CollectionConfiguration;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->lambda$setPushFilter$4(Lcom/couchbase/lite/ReplicationFilter;Lcom/couchbase/lite/CollectionConfiguration;)V

    return-void
.end method

.method public static synthetic e(Ljava/util/List;Lcom/couchbase/lite/CollectionConfiguration;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->lambda$setDocumentIDs$0(Ljava/util/List;Lcom/couchbase/lite/CollectionConfiguration;)V

    return-void
.end method

.method private getAndUpdateDefaultConfig(Lcom/couchbase/lite/internal/utils/Fn$Consumer;)Lcom/couchbase/lite/CollectionConfiguration;
    .locals 3
    .param p1    # Lcom/couchbase/lite/internal/utils/Fn$Consumer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/internal/utils/Fn$Consumer<",
            "Lcom/couchbase/lite/CollectionConfiguration;",
            ">;)",
            "Lcom/couchbase/lite/CollectionConfiguration;"
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/BaseReplicatorConfiguration;->collectionConfigurations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/n4;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/n4;-><init>()V

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/utils/Fn;->firstOrNull(Ljava/util/Collection;Lcom/couchbase/lite/internal/utils/Fn$Predicate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/Collection;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/couchbase/lite/internal/BaseReplicatorConfiguration;->collectionConfigurations:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/couchbase/lite/CollectionConfiguration;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    new-instance v2, Lcom/couchbase/lite/CollectionConfiguration;

    invoke-direct {v2, v1}, Lcom/couchbase/lite/CollectionConfiguration;-><init>(Lcom/couchbase/lite/CollectionConfiguration;)V

    invoke-interface {p1, v2}, Lcom/couchbase/lite/internal/utils/Fn$Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v2}, Lcom/couchbase/lite/internal/BaseReplicatorConfiguration;->addCollectionInternal(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/CollectionConfiguration;)V

    move-object v1, v2

    :cond_0
    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot use legacy parameters when the default collection has no configuration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot use legacy parameters when there is no default collection"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getValidDefaultConfigOrThrow()Lcom/couchbase/lite/CollectionConfiguration;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getAndUpdateDefaultConfig(Lcom/couchbase/lite/internal/utils/Fn$Consumer;)Lcom/couchbase/lite/CollectionConfiguration;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setChannels$1(Ljava/util/List;Lcom/couchbase/lite/CollectionConfiguration;)V
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/couchbase/lite/CollectionConfiguration;->setChannels(Ljava/util/List;)Lcom/couchbase/lite/CollectionConfiguration;

    return-void
.end method

.method private static synthetic lambda$setConflictResolver$2(Lcom/couchbase/lite/ConflictResolver;Lcom/couchbase/lite/CollectionConfiguration;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/CollectionConfiguration;->setConflictResolver(Lcom/couchbase/lite/ConflictResolver;)Lcom/couchbase/lite/CollectionConfiguration;

    return-void
.end method

.method private static synthetic lambda$setDocumentIDs$0(Ljava/util/List;Lcom/couchbase/lite/CollectionConfiguration;)V
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/couchbase/lite/CollectionConfiguration;->setDocumentIDs(Ljava/util/List;)Lcom/couchbase/lite/CollectionConfiguration;

    return-void
.end method

.method private static synthetic lambda$setPullFilter$3(Lcom/couchbase/lite/ReplicationFilter;Lcom/couchbase/lite/CollectionConfiguration;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/CollectionConfiguration;->setPullFilter(Lcom/couchbase/lite/ReplicationFilter;)Lcom/couchbase/lite/CollectionConfiguration;

    return-void
.end method

.method private static synthetic lambda$setPushFilter$4(Lcom/couchbase/lite/ReplicationFilter;Lcom/couchbase/lite/CollectionConfiguration;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/CollectionConfiguration;->setPushFilter(Lcom/couchbase/lite/ReplicationFilter;)Lcom/couchbase/lite/CollectionConfiguration;

    return-void
.end method

.method private updateValidDefaultConfigOrThrow(Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/utils/Fn$Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/internal/utils/Fn$Consumer<",
            "Lcom/couchbase/lite/CollectionConfiguration;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getAndUpdateDefaultConfig(Lcom/couchbase/lite/internal/utils/Fn$Consumer;)Lcom/couchbase/lite/CollectionConfiguration;

    return-void
.end method

.method private static verifyHeartbeat(I)I
    .locals 4

    :try_start_0
    const-string v0, "heartbeat"

    int-to-long v1, p0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addCollection(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/CollectionConfiguration;)Lcom/couchbase/lite/ReplicatorConfiguration;
    .locals 1
    .param p1    # Lcom/couchbase/lite/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/CollectionConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Lcom/couchbase/lite/CollectionConfiguration;

    invoke-direct {p2}, Lcom/couchbase/lite/CollectionConfiguration;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/couchbase/lite/CollectionConfiguration;

    invoke-direct {v0, p2}, Lcom/couchbase/lite/CollectionConfiguration;-><init>(Lcom/couchbase/lite/CollectionConfiguration;)V

    move-object p2, v0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->addCollectionConfig(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/CollectionConfiguration;)V

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getReplicatorConfiguration()Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final addCollections(Ljava/util/Collection;Lcom/couchbase/lite/CollectionConfiguration;)Lcom/couchbase/lite/ReplicatorConfiguration;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/CollectionConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/couchbase/lite/Collection;",
            ">;",
            "Lcom/couchbase/lite/CollectionConfiguration;",
            ")",
            "Lcom/couchbase/lite/ReplicatorConfiguration;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Lcom/couchbase/lite/CollectionConfiguration;

    invoke-direct {p2}, Lcom/couchbase/lite/CollectionConfiguration;-><init>()V

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/Collection;

    invoke-direct {p0, v0, p2}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->addCollectionConfig(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/CollectionConfiguration;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getReplicatorConfiguration()Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final getAuthenticator()Lcom/couchbase/lite/Authenticator;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->authenticator:Lcom/couchbase/lite/Authenticator;

    return-object p0
.end method

.method public final getChannels()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getValidDefaultConfigOrThrow()Lcom/couchbase/lite/CollectionConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/CollectionConfiguration;->getChannels()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final getCollectionConfiguration(Lcom/couchbase/lite/Collection;)Lcom/couchbase/lite/CollectionConfiguration;
    .locals 0
    .param p1    # Lcom/couchbase/lite/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseReplicatorConfiguration;->collectionConfigurations:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/CollectionConfiguration;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/couchbase/lite/CollectionConfiguration;

    invoke-direct {p1, p0}, Lcom/couchbase/lite/CollectionConfiguration;-><init>(Lcom/couchbase/lite/CollectionConfiguration;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public final getCollections()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/Collection;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseReplicatorConfiguration;->collectionConfigurations:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getConflictResolver()Lcom/couchbase/lite/ConflictResolver;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getValidDefaultConfigOrThrow()Lcom/couchbase/lite/CollectionConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/CollectionConfiguration;->getConflictResolver()Lcom/couchbase/lite/ConflictResolver;

    move-result-object p0

    return-object p0
.end method

.method public final getDatabase()Lcom/couchbase/lite/Database;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->database:Lcom/couchbase/lite/Database;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v0, "No database or collections provided for replication configuration"

    invoke-direct {p0, v0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDocumentIDs()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getValidDefaultConfigOrThrow()Lcom/couchbase/lite/CollectionConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/CollectionConfiguration;->getDocumentIDs()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1
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

    iget-object v0, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->headers:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->headers:Ljava/util/Map;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final getHeartbeat()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->heartbeat:I

    return p0
.end method

.method public final getMaxAttemptWaitTime()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->maxAttemptWaitTime:I

    return p0
.end method

.method public final getMaxAttempts()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->maxAttempts:I

    return p0
.end method

.method public final getPinnedServerCertificate()[B
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->pinnedServerCertificate:Ljava/security/cert/X509Certificate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v1, "Unrecognized certificate encoding"

    invoke-direct {v0, v1, p0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public final getPinnedServerX509Certificate()Ljava/security/cert/X509Certificate;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->pinnedServerCertificate:Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public getProxyAuthenticator()Lcom/couchbase/lite/ProxyAuthenticator;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->proxyAuthenticator:Lcom/couchbase/lite/ProxyAuthenticator;

    return-object p0
.end method

.method public final getPullFilter()Lcom/couchbase/lite/ReplicationFilter;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getValidDefaultConfigOrThrow()Lcom/couchbase/lite/CollectionConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/CollectionConfiguration;->getPullFilter()Lcom/couchbase/lite/ReplicationFilter;

    move-result-object p0

    return-object p0
.end method

.method public final getPushFilter()Lcom/couchbase/lite/ReplicationFilter;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getValidDefaultConfigOrThrow()Lcom/couchbase/lite/CollectionConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/CollectionConfiguration;->getPushFilter()Lcom/couchbase/lite/ReplicationFilter;

    move-result-object p0

    return-object p0
.end method

.method public abstract getReplicatorConfiguration()Lcom/couchbase/lite/ReplicatorConfiguration;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public final getReplicatorType()Lcom/couchbase/lite/AbstractReplicatorConfiguration$ReplicatorType;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/couchbase/lite/AbstractReplicatorConfiguration$1;->$SwitchMap$com$couchbase$lite$ReplicatorType:[I

    iget-object v1, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->type:Lcom/couchbase/lite/ReplicatorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration$ReplicatorType;->PULL:Lcom/couchbase/lite/AbstractReplicatorConfiguration$ReplicatorType;

    return-object p0

    :cond_0
    new-instance v0, Lcom/couchbase/lite/CouchbaseLiteError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized replicator type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->type:Lcom/couchbase/lite/ReplicatorType;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration$ReplicatorType;->PUSH:Lcom/couchbase/lite/AbstractReplicatorConfiguration$ReplicatorType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration$ReplicatorType;->PUSH_AND_PULL:Lcom/couchbase/lite/AbstractReplicatorConfiguration$ReplicatorType;

    return-object p0
.end method

.method public final getTarget()Lcom/couchbase/lite/Endpoint;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->target:Lcom/couchbase/lite/Endpoint;

    return-object p0
.end method

.method public final getType()Lcom/couchbase/lite/ReplicatorType;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->type:Lcom/couchbase/lite/ReplicatorType;

    return-object p0
.end method

.method public final isAcceptParentDomainCookies()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->acceptParentCookies:Z

    return p0
.end method

.method public final isAutoPurgeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->enableAutoPurge:Z

    return p0
.end method

.method public final isContinuous()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->continuous:Z

    return p0
.end method

.method public final removeCollection(Lcom/couchbase/lite/Collection;)Lcom/couchbase/lite/ReplicatorConfiguration;
    .locals 0
    .param p1    # Lcom/couchbase/lite/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/BaseReplicatorConfiguration;->removeCollectionInternal(Lcom/couchbase/lite/Collection;)V

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getReplicatorConfiguration()Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final setAcceptParentDomainCookies(Z)Lcom/couchbase/lite/ReplicatorConfiguration;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->acceptParentCookies:Z

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getReplicatorConfiguration()Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final setAuthenticator(Lcom/couchbase/lite/Authenticator;)Lcom/couchbase/lite/ReplicatorConfiguration;
    .locals 0
    .param p1    # Lcom/couchbase/lite/Authenticator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->authenticator:Lcom/couchbase/lite/Authenticator;

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getReplicatorConfiguration()Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final setAutoPurgeEnabled(Z)Lcom/couchbase/lite/ReplicatorConfiguration;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->enableAutoPurge:Z

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getReplicatorConfiguration()Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final setChannels(Ljava/util/List;)Lcom/couchbase/lite/ReplicatorConfiguration;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/couchbase/lite/ReplicatorConfiguration;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/s4;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/s4;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->updateValidDefaultConfigOrThrow(Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getReplicatorConfiguration()Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final setConflictResolver(Lcom/couchbase/lite/ConflictResolver;)Lcom/couchbase/lite/ReplicatorConfiguration;
    .locals 1
    .param p1    # Lcom/couchbase/lite/ConflictResolver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/p4;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/p4;-><init>(Lcom/couchbase/lite/ConflictResolver;)V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->updateValidDefaultConfigOrThrow(Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getReplicatorConfiguration()Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final setContinuous(Z)Lcom/couchbase/lite/ReplicatorConfiguration;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->continuous:Z

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getReplicatorConfiguration()Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final setDocumentIDs(Ljava/util/List;)Lcom/couchbase/lite/ReplicatorConfiguration;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/couchbase/lite/ReplicatorConfiguration;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/o4;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/o4;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->updateValidDefaultConfigOrThrow(Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getReplicatorConfiguration()Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final setHeaders(Ljava/util/Map;)Lcom/couchbase/lite/ReplicatorConfiguration;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/couchbase/lite/ReplicatorConfiguration;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->headers:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getReplicatorConfiguration()Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final setHeartbeat(I)Lcom/couchbase/lite/ReplicatorConfiguration;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->verifyHeartbeat(I)I

    move-result p1

    iput p1, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->heartbeat:I

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getReplicatorConfiguration()Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final setMaxAttemptWaitTime(I)Lcom/couchbase/lite/ReplicatorConfiguration;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "max attempt wait time"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->maxAttemptWaitTime:I

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getReplicatorConfiguration()Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final setMaxAttempts(I)Lcom/couchbase/lite/ReplicatorConfiguration;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "max attempts"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->maxAttempts:I

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getReplicatorConfiguration()Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final setPinnedServerCertificate([B)Lcom/couchbase/lite/ReplicatorConfiguration;
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->pinnedServerCertificate:Ljava/security/cert/X509Certificate;

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string p1, "X.509"

    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    iput-object p1, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->pinnedServerCertificate:Ljava/security/cert/X509Certificate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getReplicatorConfiguration()Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument could not be parsed as an X509 Certificate"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setPinnedServerX509Certificate(Ljava/security/cert/X509Certificate;)Lcom/couchbase/lite/ReplicatorConfiguration;
    .locals 0
    .param p1    # Ljava/security/cert/X509Certificate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->pinnedServerCertificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getReplicatorConfiguration()Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public setProxyAuthenticator(Lcom/couchbase/lite/ProxyAuthenticator;)Lcom/couchbase/lite/ReplicatorConfiguration;
    .locals 0
    .param p1    # Lcom/couchbase/lite/ProxyAuthenticator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->proxyAuthenticator:Lcom/couchbase/lite/ProxyAuthenticator;

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getReplicatorConfiguration()Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final setPullFilter(Lcom/couchbase/lite/ReplicationFilter;)Lcom/couchbase/lite/ReplicatorConfiguration;
    .locals 1
    .param p1    # Lcom/couchbase/lite/ReplicationFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/r4;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/r4;-><init>(Lcom/couchbase/lite/ReplicationFilter;)V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->updateValidDefaultConfigOrThrow(Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getReplicatorConfiguration()Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final setPushFilter(Lcom/couchbase/lite/ReplicationFilter;)Lcom/couchbase/lite/ReplicatorConfiguration;
    .locals 1
    .param p1    # Lcom/couchbase/lite/ReplicationFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/q4;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/q4;-><init>(Lcom/couchbase/lite/ReplicationFilter;)V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->updateValidDefaultConfigOrThrow(Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getReplicatorConfiguration()Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final setReplicatorType(Lcom/couchbase/lite/AbstractReplicatorConfiguration$ReplicatorType;)Lcom/couchbase/lite/ReplicatorConfiguration;
    .locals 2
    .param p1    # Lcom/couchbase/lite/AbstractReplicatorConfiguration$ReplicatorType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/couchbase/lite/AbstractReplicatorConfiguration$1;->$SwitchMap$com$couchbase$lite$AbstractReplicatorConfiguration$ReplicatorType:[I

    const-string v1, "replicator type"

    invoke-static {p1, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/couchbase/lite/AbstractReplicatorConfiguration$ReplicatorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/couchbase/lite/ReplicatorType;->PULL:Lcom/couchbase/lite/ReplicatorType;

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized replicator type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object p1, Lcom/couchbase/lite/ReplicatorType;->PUSH:Lcom/couchbase/lite/ReplicatorType;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/couchbase/lite/ReplicatorType;->PUSH_AND_PULL:Lcom/couchbase/lite/ReplicatorType;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->setType(Lcom/couchbase/lite/ReplicatorType;)Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final setType(Lcom/couchbase/lite/ReplicatorType;)Lcom/couchbase/lite/ReplicatorConfiguration;
    .locals 1
    .param p1    # Lcom/couchbase/lite/ReplicatorType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "replicator type"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/ReplicatorType;

    iput-object p1, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->type:Lcom/couchbase/lite/ReplicatorType;

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getReplicatorConfiguration()Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/couchbase/lite/internal/BaseReplicatorConfiguration;->collectionConfigurations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/couchbase/lite/Collection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v2}, Lcom/couchbase/lite/Collection;->getScope()Lcom/couchbase/lite/Scope;

    move-result-object v3

    invoke-virtual {v3}, Lcom/couchbase/lite/Scope;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->type:Lcom/couchbase/lite/ReplicatorType;

    sget-object v2, Lcom/couchbase/lite/ReplicatorType;->PULL:Lcom/couchbase/lite/ReplicatorType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/couchbase/lite/ReplicatorType;->PUSH_AND_PULL:Lcom/couchbase/lite/ReplicatorType;

    if-ne v1, v2, :cond_3

    :cond_2
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v1, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->continuous:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x2a

    goto :goto_1

    :cond_4
    const/16 v1, 0x6f

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->type:Lcom/couchbase/lite/ReplicatorType;

    sget-object v2, Lcom/couchbase/lite/ReplicatorType;->PUSH:Lcom/couchbase/lite/ReplicatorType;

    if-eq v1, v2, :cond_5

    sget-object v2, Lcom/couchbase/lite/ReplicatorType;->PUSH_AND_PULL:Lcom/couchbase/lite/ReplicatorType;

    if-ne v1, v2, :cond_6

    :cond_5
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->authenticator:Lcom/couchbase/lite/Authenticator;

    if-eqz v1, :cond_7

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->pinnedServerCertificate:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_8

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReplicatorConfig{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->target:Lcom/couchbase/lite/Endpoint;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
