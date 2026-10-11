.class public final Lcom/onyx/galaxy/note/settings/request/GetCloudStorageStatusRequest;
.super Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/request/GetCloudStorageStatusRequest;",
        "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;",
        "()V",
        "execute",
        "Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;",
        "note_overseasRelease"
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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object p0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v0, Lcom/onyx/android/sdk/data/common/cloud/v2/StatisticsService;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV1Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/common/cloud/v2/StatisticsService;

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->Companion:Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest$Companion;

    sget-object v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getAccountToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest$Companion;->getBearerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/data/common/cloud/v2/StatisticsService;->getCloudStorageStatus(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    .line 5
    sget-object v0, Lcom/onyx/android/sdk/data/utils/RetrofitUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitUtils;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/utils/RetrofitUtils;->executeCall(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "body(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;

    return-object p0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "submit feedback failed"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/request/GetCloudStorageStatusRequest;->execute()Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;

    move-result-object p0

    return-object p0
.end method
