.class public final Lcom/onyx/android/sdk/data/common/request/TokenRefreshRequest;
.super Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/common/request/TokenRefreshRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/request/TokenRefreshRequest;",
        "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;",
        "()V",
        "execute",
        "",
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
.field public static final Companion:Lcom/onyx/android/sdk/data/common/request/TokenRefreshRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final tokenRefreshUrl:Lokhttp3/HttpUrl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/common/request/TokenRefreshRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/common/request/TokenRefreshRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/common/request/TokenRefreshRequest;->Companion:Lcom/onyx/android/sdk/data/common/request/TokenRefreshRequest$Companion;

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v1, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV1Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    sget-object v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getAccountToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/data/account/CloudAccountService;->refreshToken(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/data/common/request/TokenRefreshRequest;->tokenRefreshUrl:Lokhttp3/HttpUrl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTokenRefreshUrl$cp()Lokhttp3/HttpUrl;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/data/common/request/TokenRefreshRequest;->tokenRefreshUrl:Lokhttp3/HttpUrl;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/request/TokenRefreshRequest;->execute()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public execute()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    :try_start_0
    sget-object v0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    .line 4
    sget-object v2, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v3, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    .line 5
    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV1Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    .line 6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getAccountToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/data/account/CloudAccountService;->refreshToken(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetData(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/account/bean/TokenBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/TokenBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->setToken(Ljava/lang/String;)V

    .line 10
    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->getOnyxAccountProvider()Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->saveAccount(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    :catchall_0
    return-object v1
.end method
