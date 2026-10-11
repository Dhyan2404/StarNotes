.class public final Lcom/onyx/android/sdk/data/account/request/cloud/PhoneRegisterStateCheckRequest;
.super Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/request/cloud/PhoneRegisterStateCheckRequest;",
        "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;",
        "phone",
        "",
        "(Ljava/lang/String;)V",
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
.field private final phone:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/request/cloud/PhoneRegisterStateCheckRequest;->phone:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/PhoneRegisterStateCheckRequest;->execute()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public execute()V
    .locals 3

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/PhoneBindStateCheckArgs;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/request/cloud/PhoneRegisterStateCheckRequest;->phone:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/data/account/bean/PhoneBindStateCheckArgs;-><init>(Ljava/lang/String;)V

    .line 3
    sget-object p0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    .line 4
    sget-object v1, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v2, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    .line 5
    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    .line 6
    invoke-interface {v1, v0}, Lcom/onyx/android/sdk/data/account/CloudAccountService;->checkPhoneBindState(Lcom/onyx/android/sdk/data/account/bean/PhoneBindStateCheckArgs;)Lretrofit2/Call;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetResponse(Lretrofit2/Call;Z)Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;->getResultCode()I

    move-result p0

    const v0, 0x18e7d

    if-ne p0, v0, :cond_0

    return-void

    .line 9
    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/data/common/error/ErrorCode;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/ErrorCode;

    const v0, 0x18e77

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/error/ErrorCode;->httpErrorFromCode(I)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0
.end method
