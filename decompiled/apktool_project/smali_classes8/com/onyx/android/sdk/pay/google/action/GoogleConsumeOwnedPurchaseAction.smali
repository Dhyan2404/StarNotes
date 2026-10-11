.class public final Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;
.super Lcom/onyx/android/sdk/pay/action/BasePayAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/pay/action/BasePayAction<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u000c\u001a\u00020\t\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00060\r\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\u000c\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00060\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR$\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0011j\u0008\u0012\u0004\u0012\u00020\u0006`\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;",
        "Lcom/onyx/android/sdk/pay/action/BasePayAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "q",
        "Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;",
        "googlePurchaseTokenArgs",
        "n",
        "Lcom/android/billingclient/api/BillingClient;",
        "f",
        "Lcom/android/billingclient/api/BillingClient;",
        "billingClient",
        "",
        "g",
        "Ljava/util/List;",
        "tokenList",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "h",
        "Ljava/util/ArrayList;",
        "consumeTokenList",
        "<init>",
        "(Lcom/android/billingclient/api/BillingClient;Ljava/util/List;)V",
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

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/BillingClient;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/android/billingclient/api/BillingClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingClient;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;",
            ">;)V"
        }
    .end annotation

    const-string v0, "billingClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/pay/action/BasePayAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;->f:Lcom/android/billingclient/api/BillingClient;

    iput-object p2, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;->g:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;->h:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$consumePurchase(Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;->n(Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getConsumeTokenList$p(Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;->h:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$parseConsumeResult(Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;)I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;->q()I

    move-result p0

    return p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;Lio/reactivex/rxjava3/core/ObservableEmitter;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;->p(Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;Lio/reactivex/rxjava3/core/ObservableEmitter;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;->o(Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method

.method public static final o(Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 3

    const-string v0, "$googlePurchaseTokenArgs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;->f:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lcom/sunia/HTREnginev2/e4h;

    invoke-direct {v2, p1, p0, p2}, Lcom/sunia/HTREnginev2/e4h;-><init>(Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    return-void
.end method

.method public static final p(Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;Lio/reactivex/rxjava3/core/ObservableEmitter;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$googlePurchaseTokenArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$emitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "str"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p3

    if-nez p3, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;

    const-string p0, ""

    invoke-direct {p1, p0, p0}, Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {p2, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/ObservableEmitter;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;->g:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction$a;-><init>(Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->takeLast(I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction$b;-><init>(Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction$c;-><init>(Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/d4h;

    invoke-direct {v0, p1, p0}, Lcom/sunia/HTREnginev2/d4h;-><init>(Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->create(Lio/reactivex/rxjava3/core/ObservableOnSubscribe;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "create(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q()I
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x7d5

    :goto_0
    return p0
.end method
