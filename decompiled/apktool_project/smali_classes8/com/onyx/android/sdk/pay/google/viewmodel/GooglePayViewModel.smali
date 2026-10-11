.class public final Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J,\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004J\u001e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\t2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000cH\u0002\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/android/billingclient/api/BillingClient;",
        "billingClient",
        "",
        "orderId",
        "orderToken",
        "accountStr",
        "Landroidx/lifecycle/LiveData;",
        "",
        "verifyGooglePurchaseToken",
        "errorCode",
        "Landroidx/lifecycle/MutableLiveData;",
        "result",
        "",
        "d",
        "<init>",
        "()V",
        "sdk-pay_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    return-void
.end method

.method public static final synthetic access$parseResult(Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel;ILandroidx/lifecycle/MutableLiveData;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel;->d(ILandroidx/lifecycle/MutableLiveData;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final d(ILandroidx/lifecycle/MutableLiveData;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/pay/google/PaymentErrorCodeUtils;->INSTANCE:Lcom/onyx/android/sdk/pay/google/PaymentErrorCodeUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/google/PaymentErrorCodeUtils;->isNoteErrorCode(I)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return p0
.end method

.method public final verifyGooglePurchaseToken(Lcom/android/billingclient/api/BillingClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lcom/android/billingclient/api/BillingClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "billingClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orderId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orderToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountStr"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;

    invoke-direct {p4, p3, p2}, Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {p4}, [Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;

    move-result-object p4

    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p4

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    new-instance v1, Lcom/onyx/android/sdk/pay/google/action/GoogleVerifyPurchaseTokenAction;

    invoke-direct {v1, p2, p3}, Lcom/onyx/android/sdk/pay/google/action/GoogleVerifyPurchaseTokenAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance p3, Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel$a;

    invoke-direct {p3, p0, v0}, Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel$a;-><init>(Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel;Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p2, Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel$b;

    invoke-direct {p2, p1, p4}, Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel$b;-><init>(Lcom/android/billingclient/api/BillingClient;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p2, Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel$c;

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel$c;-><init>(Lcom/android/billingclient/api/BillingClient;)V

    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel$d;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel$d;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-object v0
.end method
