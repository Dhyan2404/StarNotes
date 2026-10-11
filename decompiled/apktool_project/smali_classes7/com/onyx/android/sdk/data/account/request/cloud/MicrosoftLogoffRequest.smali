.class public final Lcom/onyx/android/sdk/data/account/request/cloud/MicrosoftLogoffRequest;
.super Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/request/cloud/MicrosoftLogoffRequest;",
        "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;",
        "verifyArgs",
        "Lcom/onyx/android/sdk/data/account/bean/MicrosoftVerifyArgs;",
        "(Lcom/onyx/android/sdk/data/account/bean/MicrosoftVerifyArgs;)V",
        "execute",
        "Lcom/onyx/android/sdk/data/account/bean/DataResponse;",
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
.field private final verifyArgs:Lcom/onyx/android/sdk/data/account/bean/MicrosoftVerifyArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/account/bean/MicrosoftVerifyArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/MicrosoftVerifyArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "verifyArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/request/cloud/MicrosoftLogoffRequest;->verifyArgs:Lcom/onyx/android/sdk/data/account/bean/MicrosoftVerifyArgs;

    return-void
.end method


# virtual methods
.method public execute()Lcom/onyx/android/sdk/data/account/bean/DataResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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
    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/request/cloud/MicrosoftLogoffRequest;->verifyArgs:Lcom/onyx/android/sdk/data/account/bean/MicrosoftVerifyArgs;

    invoke-interface {v1, p0}, Lcom/onyx/android/sdk/data/account/CloudAccountService;->destroyMicrosoft(Lcom/onyx/android/sdk/data/account/bean/MicrosoftVerifyArgs;)Lretrofit2/Call;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    invoke-static {v0, p0, v3, v1, v2}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetResponse$default(Lcom/onyx/android/sdk/data/utils/RetrofitExt;Lretrofit2/Call;ZILjava/lang/Object;)Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/MicrosoftLogoffRequest;->execute()Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    move-result-object p0

    return-object p0
.end method
