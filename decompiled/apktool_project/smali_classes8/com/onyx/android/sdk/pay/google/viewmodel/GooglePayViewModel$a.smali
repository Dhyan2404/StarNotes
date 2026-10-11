.class public final Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


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
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Predicate;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel;

.field public final synthetic f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel;Landroidx/lifecycle/MutableLiveData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel$a;->e:Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel;

    iput-object p2, p0, Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel$a;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel$a;->e:Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel;

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel$a;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0, p1, p0}, Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel;->access$parseResult(Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel;ILandroidx/lifecycle/MutableLiveData;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel$a;->a(I)Z

    move-result p0

    return p0
.end method
