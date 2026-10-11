.class public final Lcom/onyx/android/sdk/data/account/request/cloud/WithHoldQuotasRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/request/cloud/WithHoldQuotasRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;",
        "withHoldQuotasData",
        "Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;",
        "(Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;)V",
        "execute",
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


# instance fields
.field private final withHoldQuotasData:Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "withHoldQuotasData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/request/cloud/WithHoldQuotasRequest;->withHoldQuotasData:Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;

    return-void
.end method


# virtual methods
.method public execute()Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    .line 3
    sget-object v1, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    .line 4
    const-class v2, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    .line 5
    invoke-interface {v3}, Lcom/onyx/android/sdk/data/account/CloudAccountService;->fetchQuotasSecret()Lretrofit2/Call;

    move-result-object v3

    .line 6
    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetData(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/data/account/bean/QuotaSecret;

    .line 7
    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    .line 8
    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/request/cloud/WithHoldQuotasRequest;->withHoldQuotasData:Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/account/bean/QuotaSecret;->getSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;->updateHash(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/onyx/android/sdk/data/account/CloudAccountService;->withholdQuotas(Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;)Lretrofit2/Call;

    move-result-object p0

    .line 9
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetData(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;

    return-object p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/WithHoldQuotasRequest;->execute()Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;

    move-result-object p0

    return-object p0
.end method
