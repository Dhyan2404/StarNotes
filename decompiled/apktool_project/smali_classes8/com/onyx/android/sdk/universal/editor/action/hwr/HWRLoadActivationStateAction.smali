.class public final Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction;
.super Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002R\u001b\u0010\u000c\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction;",
        "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "m",
        "Lcom/onyx/android/sdk/replicator/hwr/UserDataProvider;",
        "e",
        "Lkotlin/Lazy;",
        "l",
        "()Lcom/onyx/android/sdk/replicator/hwr/UserDataProvider;",
        "provider",
        "<init>",
        "()V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction$provider$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction$provider$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction;->e:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$loadActivationState(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction;->m()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getDataObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction$b;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lcom/onyx/android/sdk/replicator/hwr/UserDataProvider;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction;->e:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/hwr/UserDataProvider;

    return-object p0
.end method

.method public final m()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction;->l()Lcom/onyx/android/sdk/replicator/hwr/UserDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/hwr/UserDataProvider;->queryAllActivationStates()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->setHwrActivationStates(Ljava/util/List;)V

    return-void
.end method
