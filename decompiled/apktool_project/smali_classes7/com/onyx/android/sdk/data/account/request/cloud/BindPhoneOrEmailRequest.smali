.class public final Lcom/onyx/android/sdk/data/account/request/cloud/BindPhoneOrEmailRequest;
.super Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/request/cloud/BindPhoneOrEmailRequest;",
        "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;",
        "bindArgs",
        "Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;",
        "(Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;)V",
        "execute",
        "",
        "updateAccountInfo",
        "localAccount",
        "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
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
.field private final bindArgs:Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bindArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/request/cloud/BindPhoneOrEmailRequest;->bindArgs:Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;

    return-void
.end method

.method private final updateAccountInfo(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/data/account/request/cloud/BindPhoneOrEmailRequest;->bindArgs:Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->setAreaCode(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/data/account/request/cloud/BindPhoneOrEmailRequest;->bindArgs:Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;->getVerifiedAccount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/request/cloud/BindPhoneOrEmailRequest;->bindArgs:Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;->getBoundAccountType()Ljava/lang/String;

    move-result-object p0

    const-string v1, "phone"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->setPhone(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "email"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->setEmail(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/BindPhoneOrEmailRequest;->execute()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public execute()V
    .locals 5

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
    iget-object v2, p0, Lcom/onyx/android/sdk/data/account/request/cloud/BindPhoneOrEmailRequest;->bindArgs:Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;

    invoke-interface {v1, v2}, Lcom/onyx/android/sdk/data/account/CloudAccountService;->bindPhoneOrEmail(Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;)Lretrofit2/Call;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 6
    invoke-static {v0, v1, v4, v2, v3}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetResponse$default(Lcom/onyx/android/sdk/data/utils/RetrofitExt;Lretrofit2/Call;ZILjava/lang/Object;)Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    .line 7
    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/data/account/request/cloud/BindPhoneOrEmailRequest;->updateAccountInfo(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    .line 9
    sget-object p0, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->getOnyxAccountProvider()Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->saveAccount(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    return-void
.end method
