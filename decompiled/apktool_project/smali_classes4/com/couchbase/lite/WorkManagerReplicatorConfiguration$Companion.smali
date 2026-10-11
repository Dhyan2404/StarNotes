.class public final Lcom/couchbase/lite/WorkManagerReplicatorConfiguration$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/WorkManagerReplicatorConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/couchbase/lite/WorkManagerReplicatorConfiguration$Companion;",
        "",
        "()V",
        "from",
        "Lcom/couchbase/lite/WorkManagerReplicatorConfiguration;",
        "target",
        "Lcom/couchbase/lite/Endpoint;",
        "rConfig",
        "Lcom/couchbase/lite/ReplicatorConfiguration;",
        "couchbase-lite-android-ee-ktx-3.2.2-21_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/couchbase/lite/WorkManagerReplicatorConfiguration$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Lcom/couchbase/lite/Endpoint;)Lcom/couchbase/lite/WorkManagerReplicatorConfiguration;
    .locals 1
    .param p1    # Lcom/couchbase/lite/Endpoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "target"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p0, Lcom/couchbase/lite/WorkManagerReplicatorConfiguration;

    new-instance v0, Lcom/couchbase/lite/ReplicatorConfiguration;

    invoke-direct {v0, p1}, Lcom/couchbase/lite/ReplicatorConfiguration;-><init>(Lcom/couchbase/lite/Endpoint;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/couchbase/lite/WorkManagerReplicatorConfiguration;-><init>(Lcom/couchbase/lite/ReplicatorConfiguration;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final from(Lcom/couchbase/lite/ReplicatorConfiguration;)Lcom/couchbase/lite/WorkManagerReplicatorConfiguration;
    .locals 4
    .param p1    # Lcom/couchbase/lite/ReplicatorConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "rConfig"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/couchbase/lite/WorkManagerReplicatorConfiguration;

    .line 3
    new-instance v0, Lcom/couchbase/lite/ReplicatorConfiguration;

    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getTarget()Lcom/couchbase/lite/Endpoint;

    move-result-object v1

    invoke-static {p1}, Lcom/couchbase/lite/internal/HelpersKt;->getCollectionConfigs(Lcom/couchbase/lite/internal/BaseReplicatorConfiguration;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/ReplicatorConfiguration;-><init>(Lcom/couchbase/lite/Endpoint;Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/couchbase/lite/WorkManagerReplicatorConfiguration;-><init>(Lcom/couchbase/lite/ReplicatorConfiguration;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getType()Lcom/couchbase/lite/ReplicatorType;

    move-result-object v0

    const-string v1, "rConfig.type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->setType(Lcom/couchbase/lite/ReplicatorType;)V

    .line 6
    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getAuthenticator()Lcom/couchbase/lite/Authenticator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->setAuthenticator(Lcom/couchbase/lite/Authenticator;)V

    .line 7
    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->setHeaders(Ljava/util/Map;)V

    .line 8
    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getPinnedServerX509Certificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->setPinnedServerCertificate(Ljava/security/cert/X509Certificate;)V

    .line 9
    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->isAutoPurgeEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->setEnableAutoPurge(Z)V

    .line 10
    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatorConfiguration;->isAcceptOnlySelfSignedServerCertificate()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/WorkManagerReplicatorConfiguration;->setAcceptOnlySelfSignedServerCertificate(Z)V

    .line 11
    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->isContinuous()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    sget-object v0, Lcom/couchbase/lite/LogDomain;->REPLICATOR:Lcom/couchbase/lite/LogDomain;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReplicatorConfiguration.continuous ignored: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->isContinuous()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getHeartbeat()I

    move-result v0

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_1

    .line 14
    sget-object v0, Lcom/couchbase/lite/LogDomain;->REPLICATOR:Lcom/couchbase/lite/LogDomain;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReplicatorConfiguration.heartbeat ignored: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getHeartbeat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getMaxAttempts()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    .line 16
    sget-object v0, Lcom/couchbase/lite/LogDomain;->REPLICATOR:Lcom/couchbase/lite/LogDomain;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReplicatorConfiguration.maxAttempts ignored: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getMaxAttempts()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    .line 17
    :cond_2
    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getMaxAttemptWaitTime()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 18
    sget-object v0, Lcom/couchbase/lite/LogDomain;->REPLICATOR:Lcom/couchbase/lite/LogDomain;

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReplicatorConfiguration.maxAttemptWaitTime ignored: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getMaxAttemptWaitTime()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {v0, p1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    :cond_3
    return-object p0
.end method
