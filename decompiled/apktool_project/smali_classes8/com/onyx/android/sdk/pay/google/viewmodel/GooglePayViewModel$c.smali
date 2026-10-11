.class public final Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel;->verifyGooglePurchaseToken(Lcom/android/billingclient/api/BillingClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/android/billingclient/api/BillingClient;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/BillingClient;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel$c;->e:Lcom/android/billingclient/api/BillingClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel$c;->e:Lcom/android/billingclient/api/BillingClient;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p1, p0, v0, v1, v0}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;-><init>(Lcom/android/billingclient/api/BillingClient;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel$c;->a(I)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
