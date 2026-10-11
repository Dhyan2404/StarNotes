.class public final synthetic Lcom/sunia/HTREnginev2/c4h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# instance fields
.field public final synthetic a:Lio/reactivex/rxjava3/core/ObservableEmitter;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/c4h;->a:Lio/reactivex/rxjava3/core/ObservableEmitter;

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/c4h;->a:Lio/reactivex/rxjava3/core/ObservableEmitter;

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;->n(Lio/reactivex/rxjava3/core/ObservableEmitter;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
