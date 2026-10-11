.class public final Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction;
.super Lcom/onyx/android/sdk/pay/action/BasePayAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/pay/action/BasePayAction<",
        "Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGoogleCheckAndConsumePurchaseAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleCheckAndConsumePurchaseAction.kt\ncom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,60:1\n1549#2:61\n1620#2,3:62\n*S KotlinDebug\n*F\n+ 1 GoogleCheckAndConsumePurchaseAction.kt\ncom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction\n*L\n53#1:61\n53#1:62,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u001a\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u001a\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002R\u001b\u0010\u000f\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction;",
        "Lcom/onyx/android/sdk/pay/action/BasePayAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;",
        "purchaseList",
        "p",
        "list",
        "m",
        "Lcom/android/billingclient/api/BillingClient;",
        "f",
        "Lkotlin/Lazy;",
        "o",
        "()Lcom/android/billingclient/api/BillingClient;",
        "billingClient",
        "Landroid/app/Activity;",
        "activity",
        "<init>",
        "(Landroid/app/Activity;)V",
        "sdk-pay_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGoogleCheckAndConsumePurchaseAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleCheckAndConsumePurchaseAction.kt\ncom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,60:1\n1549#2:61\n1620#2,3:62\n*S KotlinDebug\n*F\n+ 1 GoogleCheckAndConsumePurchaseAction.kt\ncom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction\n*L\n53#1:61\n53#1:62,3\n*E\n"
    }
.end annotation


# instance fields
.field public final f:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/pay/action/BasePayAction;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction$billingClient$2;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction$billingClient$2;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction;->f:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$consumeOwnedPurchase(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction;->m(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBillingClient(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction;)Lcom/android/billingclient/api/BillingClient;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction;->o()Lcom/android/billingclient/api/BillingClient;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handlePurchaseOrder(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction;->p(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction;->n(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction;)V

    return-void
.end method

.method public static final n(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction;->o()Lcom/android/billingclient/api/BillingClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction$a;->e:Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction$b;-><init>(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction$c;->e:Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction$c;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction$d;-><init>(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/action/BasePayAction;->getCloudScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction$e;-><init>(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction$f;-><init>(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/z3h;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/z3h;-><init>(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;

    new-instance v2, Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;->getPurchaseToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction;->o()Lcom/android/billingclient/api/BillingClient;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;-><init>(Lcom/android/billingclient/api/BillingClient;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final o()Lcom/android/billingclient/api/BillingClient;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/billingclient/api/BillingClient;

    return-object p0
.end method

.method public final p(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {}, Lio/reactivex/rxjava3/core/Observable;->empty()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "empty(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction$g;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction$g;-><init>(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction$h;->e:Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction$h;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
