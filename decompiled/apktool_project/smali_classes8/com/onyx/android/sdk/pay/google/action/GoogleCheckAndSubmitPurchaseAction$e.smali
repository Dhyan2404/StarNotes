.class public final Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;->u(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;

.field public final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction$e;->e:Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction$e;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction$e;->e:Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction$e;->f:Ljava/util/List;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;->access$parseRetryVerifyResult(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;Ljava/util/List;Ljava/util/ArrayList;)Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction$e;->a(Z)Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;

    move-result-object p0

    return-object p0
.end method
