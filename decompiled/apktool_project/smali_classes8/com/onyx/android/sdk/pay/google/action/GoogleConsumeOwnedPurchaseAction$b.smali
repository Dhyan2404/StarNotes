.class public final Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction$b;->e:Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/pay/google/action/GoogleConsumePurchaseTokenAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumePurchaseTokenAction;

    new-instance v0, Lcom/onyx/android/sdk/pay/data/GoogleConsumePurchaseListArgs;

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction$b;->e:Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;->access$getConsumeTokenList$p(Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/pay/data/GoogleConsumePurchaseListArgs;-><init>(Ljava/util/List;)V

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumePurchaseTokenAction;-><init>(Lcom/onyx/android/sdk/pay/data/GoogleConsumePurchaseListArgs;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction$b;->a(Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
