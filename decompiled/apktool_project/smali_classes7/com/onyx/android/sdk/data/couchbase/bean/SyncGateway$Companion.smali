.class public final Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway$Companion;",
        "",
        "()V",
        "clone",
        "Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;",
        "syncGateway",
        "toSimpleString",
        "",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final clone(Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;)Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->getAuthType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->setAuthType(I)Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->setUsername(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->setPassword(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->getCookieName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->setCookieName(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->getSessionID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->setSessionID(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->getAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->setAccount(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->getReplicatorType()Lcom/couchbase/lite/ReplicatorType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->setReplicatorType(Lcom/couchbase/lite/ReplicatorType;)Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->setUrl(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    move-result-object p0

    invoke-static {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->access$getClusterInfo$p(Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;)Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final toSimpleString(Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->toSimpleString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, "null gateway"

    :cond_1
    return-object p0
.end method
