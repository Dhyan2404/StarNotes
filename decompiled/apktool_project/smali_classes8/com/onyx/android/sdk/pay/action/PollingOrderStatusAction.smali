.class public final Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;
.super Lcom/onyx/android/sdk/pay/action/BasePayAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/pay/action/BasePayAction<",
        "Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000  2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001 B\u0019\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002R\u0017\u0010\u000c\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0012\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R$\u0010\u0019\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;",
        "Lcom/onyx/android/sdk/pay/action/BasePayAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "q",
        "Lcom/onyx/android/sdk/pay/bean/OrderBean;",
        "p",
        "",
        "f",
        "Ljava/lang/String;",
        "getOrderId",
        "()Ljava/lang/String;",
        "orderId",
        "",
        "g",
        "I",
        "getPollingCount",
        "()I",
        "pollingCount",
        "h",
        "Lcom/onyx/android/sdk/pay/bean/OrderBean;",
        "getOrder",
        "()Lcom/onyx/android/sdk/pay/bean/OrderBean;",
        "setOrder",
        "(Lcom/onyx/android/sdk/pay/bean/OrderBean;)V",
        "order",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "i",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "checkDisposable",
        "<init>",
        "(Ljava/lang/String;I)V",
        "Companion",
        "sdk-pay_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final POLLING_COUNT:I = 0x3

.field public static final POLLING_INTERVAL:J = 0x5dcL


# instance fields
.field public final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:I

.field public h:Lcom/onyx/android/sdk/pay/bean/OrderBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;->Companion:Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "orderId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/onyx/android/sdk/pay/action/BasePayAction;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;->f:Ljava/lang/String;

    iput p2, p0, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;->g:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x3

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$loadOrderStatus(Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;)Lcom/onyx/android/sdk/pay/bean/OrderBean;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;->p()Lcom/onyx/android/sdk/pay/bean/OrderBean;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$pollingOrderStatus(Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;->q()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;->o(Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;)V

    return-void
.end method

.method public static synthetic m(Lkotlin/jvm/internal/Ref$IntRef;)Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;->r(Lkotlin/jvm/internal/Ref$IntRef;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Lio/reactivex/rxjava3/subjects/ReplaySubject;Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;->s(Lio/reactivex/rxjava3/subjects/ReplaySubject;Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;)V

    return-void
.end method

.method public static final o(Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;->i:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public static final r(Lkotlin/jvm/internal/Ref$IntRef;)Z
    .locals 1

    const-string v0, "$count"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final s(Lio/reactivex/rxjava3/subjects/ReplaySubject;Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;)V
    .locals 1

    const-string v0, "$publisher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/action/BasePayAction;->getCloudScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction$a;-><init>(Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/a5l;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/a5l;-><init>(Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getOrder()Lcom/onyx/android/sdk/pay/bean/OrderBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;->h:Lcom/onyx/android/sdk/pay/bean/OrderBean;

    return-object p0
.end method

.method public final getOrderId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final getPollingCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;->g:I

    return p0
.end method

.method public final p()Lcom/onyx/android/sdk/pay/bean/OrderBean;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/onyx/android/sdk/pay/request/LoadOrderInfoRequest;

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;->f:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/pay/request/LoadOrderInfoRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pay/request/LoadOrderInfoRequest;->execute()Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/pay/bean/OrderBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final q()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->create()Lio/reactivex/rxjava3/subjects/ReplaySubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget v2, p0, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;->g:I

    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/action/BasePayAction;->getCloudScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction$b;

    invoke-direct {v3, p0, v1}, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction$b;-><init>(Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string v3, "doOnNext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction$pollingOrderStatus$2;

    invoke-direct {v3, v1}, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction$pollingOrderStatus$2;-><init>(Lkotlin/jvm/internal/Ref$IntRef;)V

    sget-object v4, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction$pollingOrderStatus$3;->INSTANCE:Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction$pollingOrderStatus$3;

    invoke-static {v2, v3, v4}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/sunia/HTREnginev2/b5l;

    invoke-direct {v3, v1}, Lcom/sunia/HTREnginev2/b5l;-><init>(Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->repeatUntil(Lio/reactivex/rxjava3/functions/BooleanSupplier;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/c5l;

    invoke-direct {v2, v0, p0}, Lcom/sunia/HTREnginev2/c5l;-><init>(Lio/reactivex/rxjava3/subjects/ReplaySubject;Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;->i:Lio/reactivex/rxjava3/disposables/Disposable;

    return-object v0
.end method

.method public final setOrder(Lcom/onyx/android/sdk/pay/bean/OrderBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/pay/bean/OrderBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;->h:Lcom/onyx/android/sdk/pay/bean/OrderBean;

    return-void
.end method
