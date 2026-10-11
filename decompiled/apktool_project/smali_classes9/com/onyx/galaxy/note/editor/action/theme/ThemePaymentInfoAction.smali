.class public final Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0000H\u0002J\u0008\u0010\u0006\u001a\u00020\u0000H\u0002J\u0008\u0010\u0007\u001a\u00020\u0000H\u0002R\"\u0010\u000b\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\"\u0010\u0012\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR$\u0010\u001a\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "n",
        "o",
        "l",
        "m",
        "",
        "e",
        "Z",
        "isPaymentEnable",
        "()Z",
        "setPaymentEnable",
        "(Z)V",
        "f",
        "getHasPayment",
        "setHasPayment",
        "hasPayment",
        "Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;",
        "g",
        "Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;",
        "getProductBean",
        "()Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;",
        "setProductBean",
        "(Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;)V",
        "productBean",
        "<init>",
        "()V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public e:Z

.field public f:Z

.field public g:Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    return-void
.end method

.method public static final synthetic access$getProductInfo(Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;)Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;->l()Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getThemeConfig(Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;)Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;->m()Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getThemeInfo(Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;->n()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$queryThemeOrder(Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;)Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;->o()Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getNetworkScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "observeOn(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction$create$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction$create$1;

    new-instance v2, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction$create$2;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction$create$2;-><init>(Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction$a;-><init>(Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction$b;-><init>(Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->onErrorReturn(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "onErrorReturn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getHasPayment()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;->f:Z

    return p0
.end method

.method public final getProductBean()Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;->g:Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;

    return-object p0
.end method

.method public final isPaymentEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;->e:Z

    return p0
.end method

.method public final l()Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v1, Lcom/onyx/android/sdk/data/common/cloud/v2/ThemePayService;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/common/cloud/v2/ThemePayService;

    invoke-interface {v0}, Lcom/onyx/android/sdk/data/common/cloud/v2/ThemePayService;->getThemeProductInfo()Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/common/data/ResponeData;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/ResponeData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;->g:Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;

    return-object p0
.end method

.method public final m()Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v1, Lcom/onyx/android/sdk/data/common/cloud/v2/ThemePayService;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/common/cloud/v2/ThemePayService;

    invoke-interface {v0}, Lcom/onyx/android/sdk/data/common/cloud/v2/ThemePayService;->getThemeConfig()Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/common/data/ResponeData;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/ResponeData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/common/data/theme/ThemePaymentEnableBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/theme/ThemePaymentEnableBean;->isPaymentEnabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;->e:Z

    return-object p0
.end method

.method public final n()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction$c;-><init>(Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction$d;-><init>(Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction$e;-><init>(Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o()Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v1, Lcom/onyx/android/sdk/data/common/cloud/v2/ThemePayService;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/common/cloud/v2/ThemePayService;

    invoke-interface {v0}, Lcom/onyx/android/sdk/data/common/cloud/v2/ThemePayService;->queryThemeOrder()Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/common/data/ResponeData;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/ResponeData;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;->f:Z

    return-object p0
.end method

.method public final setHasPayment(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;->f:Z

    return-void
.end method

.method public final setPaymentEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;->e:Z

    return-void
.end method

.method public final setProductBean(Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;->g:Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;

    return-void
.end method
