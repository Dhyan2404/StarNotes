.class public final Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u0000 22\u00020\u0001:\u00012B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010(\u001a\u0004\u0018\u00010\u0004J\u0008\u0010)\u001a\u0004\u0018\u00010\u000cJ\u0006\u0010*\u001a\u00020\u000eJ\u0006\u0010+\u001a\u00020,J\u0010\u0010-\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u0006J\u0010\u0010/\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u0015\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u0018\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001aJ\u0010\u0010!\u001a\u00020\u00002\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010$\u001a\u00020\u00002\u0008\u0010\"\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\'\u001a\u00020\u00002\u0008\u0010%\u001a\u0004\u0018\u00010\u000eJ\u0006\u00100\u001a\u00020\u000eJ\u0008\u00101\u001a\u00020\u000eH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010\"\u0004\u0008\u0015\u0010\u0012R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0010\"\u0004\u0008\u0018\u0010\u0012R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0010\"\u0004\u0008!\u0010\u0012R\u001c\u0010\"\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0010\"\u0004\u0008$\u0010\u0012R\u001c\u0010%\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0010\"\u0004\u0008\'\u0010\u0012\u00a8\u00063"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;",
        "",
        "()V",
        "account",
        "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
        "authType",
        "",
        "getAuthType",
        "()I",
        "setAuthType",
        "(I)V",
        "clusterInfo",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        "cookieName",
        "",
        "getCookieName",
        "()Ljava/lang/String;",
        "setCookieName",
        "(Ljava/lang/String;)V",
        "error",
        "getError",
        "setError",
        "password",
        "getPassword",
        "setPassword",
        "replicatorType",
        "Lcom/couchbase/lite/ReplicatorType;",
        "getReplicatorType",
        "()Lcom/couchbase/lite/ReplicatorType;",
        "setReplicatorType",
        "(Lcom/couchbase/lite/ReplicatorType;)V",
        "sessionID",
        "getSessionID",
        "setSessionID",
        "url",
        "getUrl",
        "setUrl",
        "username",
        "getUsername",
        "setUsername",
        "getAccount",
        "getClusterInfo",
        "getUserId",
        "isInValid",
        "",
        "setAccount",
        "type",
        "setClusterInfo",
        "toSimpleString",
        "toString",
        "Companion",
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
.field public static final Companion:Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private account:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private authType:I

.field private clusterInfo:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private cookieName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private error:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private password:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private replicatorType:Lcom/couchbase/lite/ReplicatorType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sessionID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private username:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->Companion:Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SyncGatewaySession"

    iput-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->cookieName:Ljava/lang/String;

    sget-object v0, Lcom/couchbase/lite/ReplicatorType;->PUSH_AND_PULL:Lcom/couchbase/lite/ReplicatorType;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->replicatorType:Lcom/couchbase/lite/ReplicatorType;

    return-void
.end method

.method public static final synthetic access$getClusterInfo$p(Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;)Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->clusterInfo:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    return-object p0
.end method


# virtual methods
.method public final getAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->account:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    return-object p0
.end method

.method public final getAuthType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->authType:I

    return p0
.end method

.method public final getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->clusterInfo:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    return-object p0
.end method

.method public final getCookieName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->cookieName:Ljava/lang/String;

    return-object p0
.end method

.method public final getError()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->error:Ljava/lang/String;

    return-object p0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->password:Ljava/lang/String;

    return-object p0
.end method

.method public final getReplicatorType()Lcom/couchbase/lite/ReplicatorType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->replicatorType:Lcom/couchbase/lite/ReplicatorType;

    return-object p0
.end method

.method public final getSessionID()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->sessionID:Ljava/lang/String;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->url:Ljava/lang/String;

    return-object p0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->getAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, "share_user"

    :cond_1
    return-object p0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->username:Ljava/lang/String;

    return-object p0
.end method

.method public final isInValid()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->error:Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final setAccount(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->account:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    return-object p0
.end method

.method public final setAuthType(I)Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->authType:I

    return-object p0
.end method

.method public final setAuthType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->authType:I

    return-void
.end method

.method public final setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->clusterInfo:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    return-object p0
.end method

.method public final setCookieName(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->cookieName:Ljava/lang/String;

    return-object p0
.end method

.method public final setCookieName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->cookieName:Ljava/lang/String;

    return-void
.end method

.method public final setError(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->error:Ljava/lang/String;

    return-object p0
.end method

.method public final setError(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->error:Ljava/lang/String;

    return-void
.end method

.method public final setPassword(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->password:Ljava/lang/String;

    return-object p0
.end method

.method public final setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->password:Ljava/lang/String;

    return-void
.end method

.method public final setReplicatorType(Lcom/couchbase/lite/ReplicatorType;)Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;
    .locals 1
    .param p1    # Lcom/couchbase/lite/ReplicatorType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "replicatorType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->replicatorType:Lcom/couchbase/lite/ReplicatorType;

    return-object p0
.end method

.method public final setReplicatorType(Lcom/couchbase/lite/ReplicatorType;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/ReplicatorType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->replicatorType:Lcom/couchbase/lite/ReplicatorType;

    return-void
.end method

.method public final setSessionID(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->sessionID:Ljava/lang/String;

    return-object p0
.end method

.method public final setSessionID(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->sessionID:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->url:Ljava/lang/String;

    return-object p0
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->url:Ljava/lang/String;

    return-void
.end method

.method public final setUsername(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->username:Ljava/lang/String;

    return-object p0
.end method

.method public final setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->username:Ljava/lang/String;

    return-void
.end method

.method public final toSimpleString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",sessionID is empty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->sessionID:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",url is empty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->url:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",authType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->authType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sessionID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->sessionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",cookieName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->cookieName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",authType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->authType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",account:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->account:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
