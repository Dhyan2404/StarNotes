.class public final Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;
.super Lcom/onyx/android/sdk/pay/action/BasePayAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/pay/action/BasePayAction<",
        "Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGoogleCheckAndSubmitPurchaseAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleCheckAndSubmitPurchaseAction.kt\ncom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,103:1\n1549#2:104\n1620#2,3:105\n*S KotlinDebug\n*F\n+ 1 GoogleCheckAndSubmitPurchaseAction.kt\ncom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction\n*L\n65#1:104\n65#1:105,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0015\u00a2\u0006\u0004\u0008&\u0010\'J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0014\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0002H\u0002J\u001c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J.\u0010\r\u001a\u00020\u00002\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0016\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000bH\u0002J\u0016\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00022\u0006\u0010\u000e\u001a\u00020\nH\u0002R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\'\u0010\u001d\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006("
    }
    d2 = {
        "Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;",
        "Lcom/onyx/android/sdk/pay/action/BasePayAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "Lcom/android/billingclient/api/Purchase;",
        "o",
        "purchaseList",
        "u",
        "Ljava/util/ArrayList;",
        "Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;",
        "Lkotlin/collections/ArrayList;",
        "retryList",
        "r",
        "tokenArgs",
        "",
        "s",
        "Lcom/android/billingclient/api/BillingClient;",
        "f",
        "Lcom/android/billingclient/api/BillingClient;",
        "billingClient",
        "",
        "g",
        "Ljava/lang/String;",
        "priceType",
        "h",
        "Ljava/util/ArrayList;",
        "getList",
        "()Ljava/util/ArrayList;",
        "list",
        "",
        "i",
        "I",
        "getResponseCode",
        "()I",
        "setResponseCode",
        "(I)V",
        "responseCode",
        "<init>",
        "(Lcom/android/billingclient/api/BillingClient;Ljava/lang/String;)V",
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
        "SMAP\nGoogleCheckAndSubmitPurchaseAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleCheckAndSubmitPurchaseAction.kt\ncom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,103:1\n1549#2:104\n1620#2,3:105\n*S KotlinDebug\n*F\n+ 1 GoogleCheckAndSubmitPurchaseAction.kt\ncom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction\n*L\n65#1:104\n65#1:105,3\n*E\n"
    }
.end annotation


# instance fields
.field public final f:Lcom/android/billingclient/api/BillingClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Ljava/lang/String;
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

.field public i:I


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/BillingClient;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/android/billingclient/api/BillingClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "billingClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "priceType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/onyx/android/sdk/pay/action/BasePayAction;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;->f:Lcom/android/billingclient/api/BillingClient;

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;->g:Ljava/lang/String;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;->h:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;->i:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/billingclient/api/BillingClient;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, "inapp"

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;-><init>(Lcom/android/billingclient/api/BillingClient;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$loadLocalPurchase(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;->o()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$parseRetryVerifyResult(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;Ljava/util/List;Ljava/util/ArrayList;)Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;->r(Ljava/util/List;Ljava/util/ArrayList;)Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$retryVerifyPurchase(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;->s(Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$submitToken(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;->u(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;->p(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;->t(Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic n(Lio/reactivex/rxjava3/core/ObservableEmitter;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;->q(Lio/reactivex/rxjava3/core/ObservableEmitter;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static final p(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;->f:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/sunia/HTREnginev2/c4h;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/c4h;-><init>(Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method

.method public static final q(Lio/reactivex/rxjava3/core/ObservableEmitter;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2

    const-string v0, "$emitter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/ObservableEmitter;Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/ObservableEmitter;Ljava/lang/Object;)V

    return-void
.end method

.method public static final t(Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 3

    const-string v0, "$tokenArgs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v1, Lcom/onyx/android/sdk/pay/service/OrderService;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/pay/service/OrderService;

    invoke-interface {v0, p0}, Lcom/onyx/android/sdk/pay/service/OrderService;->retryVerifyGooglePurchaseToken(Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;->getResultCode()I

    move-result v1

    const v2, 0x19e16

    if-eq v1, v2, :cond_1

    invoke-static {v0}, Lcom/onyx/android/sdk/data/account/bean/DataResponseKt;->isSuccess(Lcom/onyx/android/sdk/data/account/bean/DataResponse;)Z

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

    iget-object p1, p1, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/ObservableEmitter;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction$a;-><init>(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "flatMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction$create$2;->INSTANCE:Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction$create$2;

    new-instance v2, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction$create$3;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction$create$3;-><init>(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction$b;-><init>(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->onErrorReturn(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction$c;-><init>(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;->h:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getResponseCode()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;->i:I

    return p0
.end method

.method public final o()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/a4h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/a4h;-><init>(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->create(Lio/reactivex/rxjava3/core/ObservableOnSubscribe;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "create(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final r(Ljava/util/List;Ljava/util/ArrayList;)Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;",
            ">;)",
            "Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eq p1, p2, :cond_0

    const/16 p1, 0x7d5

    iput p1, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;->i:I

    :cond_0
    return-object p0
.end method

.method public final s(Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/b4h;

    invoke-direct {v0, p1, p0}, Lcom/sunia/HTREnginev2/b4h;-><init>(Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->create(Lio/reactivex/rxjava3/core/ObservableOnSubscribe;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "create(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setResponseCode(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;->i:I

    return-void
.end method

.method public final u(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;",
            ">;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson2/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v3

    const-string v4, "productId"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    goto :goto_1

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    new-instance v4, Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    const-string v5, "getPurchaseToken(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v2, v3}, Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/action/BasePayAction;->getCloudScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction$d;-><init>(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->takeLast(I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction$e;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction$e;-><init>(Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
