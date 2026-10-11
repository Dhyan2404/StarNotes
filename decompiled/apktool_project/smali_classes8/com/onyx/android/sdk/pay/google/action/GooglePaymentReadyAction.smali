.class public final Lcom/onyx/android/sdk/pay/google/action/GooglePaymentReadyAction;
.super Lcom/onyx/android/sdk/pay/action/BasePayAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/pay/action/BasePayAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pay/google/action/GooglePaymentReadyAction;",
        "Lcom/onyx/android/sdk/pay/action/BasePayAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "m",
        "Lcom/android/billingclient/api/BillingClient;",
        "f",
        "Lcom/android/billingclient/api/BillingClient;",
        "billingClient",
        "<init>",
        "(Lcom/android/billingclient/api/BillingClient;)V",
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
.field public final f:Lcom/android/billingclient/api/BillingClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/BillingClient;)V
    .locals 1
    .param p1    # Lcom/android/billingclient/api/BillingClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "billingClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/pay/action/BasePayAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/google/action/GooglePaymentReadyAction;->f:Lcom/android/billingclient/api/BillingClient;

    return-void
.end method

.method public static final synthetic access$checkBillingStatusObserver(Lcom/onyx/android/sdk/pay/google/action/GooglePaymentReadyAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/google/action/GooglePaymentReadyAction;->m()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/pay/google/action/GooglePaymentReadyAction;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/pay/google/action/GooglePaymentReadyAction;->n(Lcom/onyx/android/sdk/pay/google/action/GooglePaymentReadyAction;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method

.method public static final n(Lcom/onyx/android/sdk/pay/google/action/GooglePaymentReadyAction;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/google/action/GooglePaymentReadyAction;->f:Lcom/android/billingclient/api/BillingClient;

    new-instance v0, Lcom/onyx/android/sdk/pay/google/action/GooglePaymentReadyAction$checkBillingStatusObserver$1$1;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/pay/google/action/GooglePaymentReadyAction$checkBillingStatusObserver$1$1;-><init>(Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    invoke-virtual {p0, v0}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/pay/google/action/GooglePaymentReadyAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/pay/google/action/GooglePaymentReadyAction$a;-><init>(Lcom/onyx/android/sdk/pay/google/action/GooglePaymentReadyAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/o4h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/o4h;-><init>(Lcom/onyx/android/sdk/pay/google/action/GooglePaymentReadyAction;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->create(Lio/reactivex/rxjava3/core/ObservableOnSubscribe;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "create(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
