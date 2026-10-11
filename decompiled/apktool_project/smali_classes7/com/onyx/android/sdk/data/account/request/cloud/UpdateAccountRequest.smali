.class public final Lcom/onyx/android/sdk/data/account/request/cloud/UpdateAccountRequest;
.super Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/request/cloud/UpdateAccountRequest;",
        "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;",
        "updateArgs",
        "Lcom/onyx/android/sdk/data/account/bean/UpdateAccountInfoBean;",
        "(Lcom/onyx/android/sdk/data/account/bean/UpdateAccountInfoBean;)V",
        "execute",
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


# instance fields
.field private final updateArgs:Lcom/onyx/android/sdk/data/account/bean/UpdateAccountInfoBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/account/bean/UpdateAccountInfoBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/UpdateAccountInfoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "updateArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/request/cloud/UpdateAccountRequest;->updateArgs:Lcom/onyx/android/sdk/data/account/bean/UpdateAccountInfoBean;

    return-void
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/UpdateAccountRequest;->execute()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public execute()V
    .locals 3

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    .line 3
    sget-object v1, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v2, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    .line 4
    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    .line 5
    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/request/cloud/UpdateAccountRequest;->updateArgs:Lcom/onyx/android/sdk/data/account/bean/UpdateAccountInfoBean;

    invoke-interface {v1, p0}, Lcom/onyx/android/sdk/data/account/CloudAccountService;->updateAccountInfo(Lcom/onyx/android/sdk/data/account/bean/UpdateAccountInfoBean;)Lretrofit2/Call;

    move-result-object p0

    .line 6
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetData(Lretrofit2/Call;)Ljava/lang/Object;

    .line 7
    new-instance p0, Lcom/onyx/android/sdk/data/account/request/cloud/ReloadAccountRequest;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/ReloadAccountRequest;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/ReloadAccountRequest;->execute()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    .line 8
    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/account/event/AccountInfoUpdated;->INSTANCE:Lcom/onyx/android/sdk/data/account/event/AccountInfoUpdated;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    return-void
.end method
