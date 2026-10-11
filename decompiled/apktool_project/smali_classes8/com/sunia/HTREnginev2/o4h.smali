.class public final synthetic Lcom/sunia/HTREnginev2/o4h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/core/ObservableOnSubscribe;


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/pay/google/action/GooglePaymentReadyAction;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/pay/google/action/GooglePaymentReadyAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/o4h;->a:Lcom/onyx/android/sdk/pay/google/action/GooglePaymentReadyAction;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o4h;->a:Lcom/onyx/android/sdk/pay/google/action/GooglePaymentReadyAction;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/pay/google/action/GooglePaymentReadyAction;->l(Lcom/onyx/android/sdk/pay/google/action/GooglePaymentReadyAction;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method
