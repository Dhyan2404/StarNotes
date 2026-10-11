.class public final Lcom/onyx/android/sdk/pay/action/RecreateOrderAction;
.super Lcom/onyx/android/sdk/pay/action/BasePayAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/pay/action/BasePayAction<",
        "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
        "Lcom/onyx/android/sdk/pay/bean/OrderBean;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u000f\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u0017\u0010\u000c\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pay/action/RecreateOrderAction;",
        "Lcom/onyx/android/sdk/pay/action/BasePayAction;",
        "Lcom/onyx/android/sdk/data/account/bean/DataResponse;",
        "Lcom/onyx/android/sdk/pay/bean/OrderBean;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "",
        "f",
        "Ljava/lang/String;",
        "getOrderId",
        "()Ljava/lang/String;",
        "orderId",
        "<init>",
        "(Ljava/lang/String;)V",
        "sdk-pay_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final f:Ljava/lang/String;
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

    const-string v0, "orderId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/pay/action/BasePayAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/action/RecreateOrderAction;->f:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$recreateOrder(Lcom/onyx/android/sdk/pay/action/RecreateOrderAction;)Lcom/onyx/android/sdk/data/account/bean/DataResponse;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/action/RecreateOrderAction;->l()Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/pay/bean/OrderBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/action/BasePayAction;->getCloudScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/pay/action/RecreateOrderAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/pay/action/RecreateOrderAction$a;-><init>(Lcom/onyx/android/sdk/pay/action/RecreateOrderAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getOrderId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/action/RecreateOrderAction;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final l()Lcom/onyx/android/sdk/data/account/bean/DataResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/pay/bean/OrderBean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    sget-object v1, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v2, Lcom/onyx/android/sdk/pay/service/OrderService;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/pay/service/OrderService;

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/action/RecreateOrderAction;->f:Ljava/lang/String;

    invoke-interface {v1, p0}, Lcom/onyx/android/sdk/pay/service/OrderService;->recreateOrder(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v2}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetResponse$default(Lcom/onyx/android/sdk/data/utils/RetrofitExt;Lretrofit2/Call;ZILjava/lang/Object;)Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    move-result-object p0

    return-object p0
.end method
