.class public final Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;
.super Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;",
        "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;",
        "()V",
        "recalculate",
        "",
        "userStorageBean",
        "Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;",
        "execute",
        "getUserStorageBean",
        "setRecalculate",
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
.field private recalculate:Z

.field private userStorageBean:Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    .line 3
    sget-object v1, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v2, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    .line 4
    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV1Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    .line 5
    iget-boolean v2, p0, Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;->recalculate:Z

    invoke-interface {v1, v2}, Lcom/onyx/android/sdk/data/account/CloudAccountService;->getUserStorageLeft(Z)Lretrofit2/Call;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetData(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;

    .line 7
    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;->userStorageBean:Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;

    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;->execute()Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;

    move-result-object p0

    return-object p0
.end method

.method public final getUserStorageBean()Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;->userStorageBean:Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;

    return-object p0
.end method

.method public final setRecalculate(Z)Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;->recalculate:Z

    return-object p0
.end method
