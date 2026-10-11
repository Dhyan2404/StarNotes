.class public final synthetic Lcom/sunia/HTREnginev2/e4h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;

.field public final synthetic b:Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;

.field public final synthetic c:Lio/reactivex/rxjava3/core/ObservableEmitter;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/e4h;->a:Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/e4h;->b:Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/e4h;->c:Lio/reactivex/rxjava3/core/ObservableEmitter;

    return-void
.end method


# virtual methods
.method public final onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/e4h;->a:Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/e4h;->b:Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e4h;->c:Lio/reactivex/rxjava3/core/ObservableEmitter;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;->l(Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;Lio/reactivex/rxjava3/core/ObservableEmitter;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void
.end method
