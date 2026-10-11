.class public final Lcom/onyx/android/sdk/data/account/request/cloud/PhoneCheckRequest;
.super Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/request/cloud/PhoneCheckRequest;",
        "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;",
        "areaCode",
        "",
        "phone",
        "(Ljava/lang/String;Ljava/lang/String;)V",
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
.field private final areaCode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final phone:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "areaCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/request/cloud/PhoneCheckRequest;->areaCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/account/request/cloud/PhoneCheckRequest;->phone:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/PhoneCheckRequest;->execute()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public execute()V
    .locals 3

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/PhoneFormatCheckArgs;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/account/request/cloud/PhoneCheckRequest;->areaCode:Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/request/cloud/PhoneCheckRequest;->phone:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/data/account/bean/PhoneFormatCheckArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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
    invoke-interface {v1, v0}, Lcom/onyx/android/sdk/data/account/CloudAccountService;->checkPhoneFormat(Lcom/onyx/android/sdk/data/account/bean/PhoneFormatCheckArgs;)Lretrofit2/Call;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetData(Lretrofit2/Call;)Ljava/lang/Object;

    return-void
.end method
