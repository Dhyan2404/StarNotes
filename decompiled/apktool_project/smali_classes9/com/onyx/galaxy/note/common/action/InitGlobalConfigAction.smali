.class public final Lcom/onyx/galaxy/note/common/action/InitGlobalConfigAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/galaxy/note/common/action/InitGlobalConfigAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/action/InitGlobalConfigAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "l",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    return-void
.end method

.method public static final synthetic access$initGlobalConfig(Lcom/onyx/galaxy/note/common/action/InitGlobalConfigAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/InitGlobalConfigAction;->l()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/common/action/InitGlobalConfigAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->getSingleIO()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/common/action/InitGlobalConfigAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/common/action/InitGlobalConfigAction$a;-><init>(Lcom/onyx/galaxy/note/common/action/InitGlobalConfigAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/common/action/InitGlobalConfigAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/common/action/InitGlobalConfigAction$b;-><init>(Lcom/onyx/galaxy/note/common/action/InitGlobalConfigAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()V
    .locals 3

    sget-object p0, Lcom/onyx/android/sdk/base/data/config/GlobalConfig;->INSTANCE:Lcom/onyx/android/sdk/base/data/config/GlobalConfig;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/ConfigLoader;->INSTANCE:Lcom/onyx/android/sdk/data/utils/ConfigLoader;

    const-string v1, "global_config"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/data/utils/ConfigLoader;->load(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/data/config/GlobalConfig;->init(Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;)V

    sget-object p0, Lcom/onyx/android/sdk/pen/utils/PenUtils;->INSTANCE:Lcom/onyx/android/sdk/pen/utils/PenUtils;

    const-string v1, "pen_default_params_config"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/onyx/android/sdk/bean/DefaultPenParams;

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/data/utils/ConfigLoader;->load(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/bean/DefaultPenParams;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/bean/DefaultPenParams;

    invoke-direct {v0}, Lcom/onyx/android/sdk/bean/DefaultPenParams;-><init>()V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/pen/utils/PenUtils;->initDefaultPenParams(Lcom/onyx/android/sdk/bean/DefaultPenParams;)V

    return-void
.end method
