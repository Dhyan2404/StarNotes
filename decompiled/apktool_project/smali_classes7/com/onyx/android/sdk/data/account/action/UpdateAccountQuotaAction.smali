.class public final Lcom/onyx/android/sdk/data/account/action/UpdateAccountQuotaAction;
.super Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction<",
        "Lcom/onyx/android/sdk/data/account/action/UpdateAccountQuotaAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0006H\u0014J\u0008\u0010\u0007\u001a\u00020\u0000H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/action/UpdateAccountQuotaAction;",
        "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;",
        "accountQuota",
        "Lcom/onyx/android/sdk/data/account/bean/AccountQuota;",
        "(Lcom/onyx/android/sdk/data/account/bean/AccountQuota;)V",
        "create",
        "Lio/reactivex/rxjava3/core/Observable;",
        "updateAccountInfo",
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
.field private final accountQuota:Lcom/onyx/android/sdk/data/account/bean/AccountQuota;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/account/bean/AccountQuota;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/AccountQuota;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "accountQuota"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/action/UpdateAccountQuotaAction;->accountQuota:Lcom/onyx/android/sdk/data/account/bean/AccountQuota;

    return-void
.end method

.method public static final synthetic access$updateAccountInfo(Lcom/onyx/android/sdk/data/account/action/UpdateAccountQuotaAction;)Lcom/onyx/android/sdk/data/account/action/UpdateAccountQuotaAction;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/action/UpdateAccountQuotaAction;->updateAccountInfo()Lcom/onyx/android/sdk/data/account/action/UpdateAccountQuotaAction;

    move-result-object p0

    return-object p0
.end method

.method private final updateAccountInfo()Lcom/onyx/android/sdk/data/account/action/UpdateAccountQuotaAction;
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->getOnyxAccountProvider()Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->getCurrentAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/data/account/action/UpdateAccountQuotaAction;->accountQuota:Lcom/onyx/android/sdk/data/account/bean/AccountQuota;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->setAccountQuota(Lcom/onyx/android/sdk/data/account/bean/AccountQuota;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->getOnyxAccountProvider()Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->saveAccount(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/account/action/UpdateAccountQuotaAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;->createCloudObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/account/action/UpdateAccountQuotaAction$create$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/account/action/UpdateAccountQuotaAction$create$1;-><init>(Lcom/onyx/android/sdk/data/account/action/UpdateAccountQuotaAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
