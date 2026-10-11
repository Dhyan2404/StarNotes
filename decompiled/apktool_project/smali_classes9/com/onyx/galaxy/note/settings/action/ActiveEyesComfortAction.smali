.class public final Lcom/onyx/galaxy/note/settings/action/ActiveEyesComfortAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/action/ActiveEyesComfortAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "e",
        "Z",
        "active",
        "<init>",
        "(Z)V",
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
.field public final e:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/settings/action/ActiveEyesComfortAction;->e:Z

    return-void
.end method

.method public static final synthetic access$getActive$p(Lcom/onyx/galaxy/note/settings/action/ActiveEyesComfortAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/settings/action/ActiveEyesComfortAction;->e:Z

    return p0
.end method

.method public static final create$lambda$0(Z)V
    .locals 0

    sget-object p0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->onResume()V

    return-void
.end method

.method public static synthetic l(Z)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/action/ActiveEyesComfortAction;->create$lambda$0(Z)V

    return-void
.end method

.method public static synthetic m(Z)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/action/ActiveEyesComfortAction;->n(Z)V

    return-void
.end method

.method public static final n(Z)V
    .locals 0

    sget-object p0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->onPause()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
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

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/settings/action/ActiveEyesComfortAction;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "observeOn(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/ActiveEyesComfortAction$create$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/ActiveEyesComfortAction$create$1;-><init>(Lcom/onyx/galaxy/note/settings/action/ActiveEyesComfortAction;)V

    new-instance v2, Lcom/sunia/HTREnginev2/f6;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/f6;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/ActiveEyesComfortAction$create$3;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/ActiveEyesComfortAction$create$3;-><init>(Lcom/onyx/galaxy/note/settings/action/ActiveEyesComfortAction;)V

    new-instance p0, Lcom/sunia/HTREnginev2/g6;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/g6;-><init>()V

    invoke-static {v0, v1, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
