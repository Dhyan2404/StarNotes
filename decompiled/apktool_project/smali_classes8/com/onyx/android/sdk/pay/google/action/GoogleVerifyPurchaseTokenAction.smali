.class public final Lcom/onyx/android/sdk/pay/google/action/GoogleVerifyPurchaseTokenAction;
.super Lcom/onyx/android/sdk/pay/action/BasePayAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/pay/action/BasePayAction<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005H\u0002J\u001a\u0010\t\u001a\u00020\u00022\u0010\u0010\u0008\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005H\u0002R\u0017\u0010\u000f\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u000c\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pay/google/action/GoogleVerifyPurchaseTokenAction;",
        "Lcom/onyx/android/sdk/pay/action/BasePayAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/data/account/bean/DataResponse;",
        "",
        "m",
        "dataResponse",
        "l",
        "",
        "f",
        "Ljava/lang/String;",
        "getOrderId",
        "()Ljava/lang/String;",
        "orderId",
        "g",
        "orderToken",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V",
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

.field public final g:Ljava/lang/String;
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

    const-string v0, "orderId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orderToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/pay/action/BasePayAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleVerifyPurchaseTokenAction;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleVerifyPurchaseTokenAction;->g:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$parseResult(Lcom/onyx/android/sdk/pay/google/action/GoogleVerifyPurchaseTokenAction;Lcom/onyx/android/sdk/data/account/bean/DataResponse;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/google/action/GoogleVerifyPurchaseTokenAction;->l(Lcom/onyx/android/sdk/data/account/bean/DataResponse;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$verifyPurchaseToken(Lcom/onyx/android/sdk/pay/google/action/GoogleVerifyPurchaseTokenAction;)Lcom/onyx/android/sdk/data/account/bean/DataResponse;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/google/action/GoogleVerifyPurchaseTokenAction;->m()Lcom/onyx/android/sdk/data/account/bean/DataResponse;

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
            "Ljava/lang/Integer;",
            ">;"
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

    new-instance v1, Lcom/onyx/android/sdk/pay/google/action/GoogleVerifyPurchaseTokenAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/pay/google/action/GoogleVerifyPurchaseTokenAction$a;-><init>(Lcom/onyx/android/sdk/pay/google/action/GoogleVerifyPurchaseTokenAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/pay/google/action/GoogleVerifyPurchaseTokenAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/pay/google/action/GoogleVerifyPurchaseTokenAction$b;-><init>(Lcom/onyx/android/sdk/pay/google/action/GoogleVerifyPurchaseTokenAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/pay/google/action/GoogleVerifyPurchaseTokenAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/pay/google/action/GoogleVerifyPurchaseTokenAction$c;-><init>(Lcom/onyx/android/sdk/pay/google/action/GoogleVerifyPurchaseTokenAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->onErrorReturn(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "onErrorReturn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getOrderId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleVerifyPurchaseTokenAction;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/data/account/bean/DataResponse;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const/16 p0, 0x7d3

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;->getResultCode()I

    move-result v0

    const v1, 0x19e16

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Lcom/onyx/android/sdk/data/account/bean/DataResponseKt;->isSuccess(Lcom/onyx/android/sdk/data/account/bean/DataResponse;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p0, -0x1

    :cond_2
    return p0
.end method

.method public final m()Lcom/onyx/android/sdk/data/account/bean/DataResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v1, Lcom/onyx/android/sdk/pay/service/OrderService;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/pay/service/OrderService;

    iget-object v1, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleVerifyPurchaseTokenAction;->f:Ljava/lang/String;

    new-instance v2, Lcom/onyx/android/sdk/pay/bean/GoogleOrderArgs;

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleVerifyPurchaseTokenAction;->g:Ljava/lang/String;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/pay/bean/GoogleOrderArgs;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/onyx/android/sdk/pay/service/OrderService;->verifyGooglePurchaseToken(Ljava/lang/String;Lcom/onyx/android/sdk/pay/bean/GoogleOrderArgs;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "body(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    return-object p0
.end method
