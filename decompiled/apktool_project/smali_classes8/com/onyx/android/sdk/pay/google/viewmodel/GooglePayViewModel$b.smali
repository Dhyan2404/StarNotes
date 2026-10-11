.class public final Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel$b;
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

.field public final synthetic f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/BillingClient;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingClient;",
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel$b;->e:Lcom/android/billingclient/api/BillingClient;

    iput-object p2, p0, Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel$b;->f:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel$b;->e:Lcom/android/billingclient/api/BillingClient;

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel$b;->f:Ljava/util/ArrayList;

    invoke-direct {p1, v0, p0}, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;-><init>(Lcom/android/billingclient/api/BillingClient;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel$b;->a(I)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
