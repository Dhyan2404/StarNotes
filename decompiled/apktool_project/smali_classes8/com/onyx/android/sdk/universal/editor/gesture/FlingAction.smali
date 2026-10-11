.class public final Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010\u0017\u001a\u00020\u0006\u00a2\u0006\u0004\u0008-\u0010.J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\n\u001a\u00020\u0008H\u0002J\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0006H\u0002J\u0008\u0010\u0012\u001a\u00020\u0004H\u0002R\u0017\u0010\u0017\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0016\u0010\'\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0016\u0010)\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010\u001eR\u0016\u0010*\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0014\u00a8\u0006/"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "stopFling",
        "Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;",
        "args",
        "Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;",
        "r",
        "rxScrollerArgs",
        "s",
        "t",
        "",
        "msg",
        "log",
        "scrollArgs",
        "n",
        "o",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;",
        "getFlingStartArgs",
        "()Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;",
        "flingStartArgs",
        "Lcom/onyx/android/sdk/base/rx/RxScroller;",
        "i",
        "Lcom/onyx/android/sdk/base/rx/RxScroller;",
        "scroller",
        "",
        "j",
        "Z",
        "abortFling",
        "Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;",
        "k",
        "Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;",
        "flingActionType",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "l",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "viewportSize",
        "m",
        "viewSizeChanged",
        "currentScrollArgs",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)V",
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
.field public final h:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/base/rx/RxScroller;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Z

.field public k:Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Lcom/onyx/android/sdk/base/data/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Z

.field public n:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flingStartArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->h:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    sget-object p1, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;->CONTINUOUS_SCROLL:Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->k:Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->getDEFAULT_SIZE()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->l:Lcom/onyx/android/sdk/base/data/Size;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->n:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    return-void
.end method

.method public static final synthetic access$checkViewportRectChanged(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->n(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)V

    return-void
.end method

.method public static final synthetic access$createRxScrollerArgs(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->r(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createScroller(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->s(Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCurrentScrollArgs$p(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->n:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    return-object p0
.end method

.method public static final synthetic access$getFlingActionType$p(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->k:Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;

    return-object p0
.end method

.method public static final synthetic access$getViewSizeChanged$p(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->m:Z

    return p0
.end method

.method public static final synthetic access$log(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$scrollTo(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->t(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setViewportSize$p(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;Lcom/onyx/android/sdk/base/data/Size;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->l:Lcom/onyx/android/sdk/base/data/Size;

    return-void
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->p(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->q(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)V

    return-void
.end method

.method public static final p(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->o()V

    return-void
.end method

.method public static final q(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abortFling = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getUiStateInfo()Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->setFling(Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->h:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$j;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$k;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$k;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$l;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$l;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$m;->e:Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$m;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$n;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$n;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$o;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$o;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$create$9;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$create$9;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)V

    new-instance v2, Lcom/sunia/HTREnginev2/mng;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/mng;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/nng;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/nng;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "doFinally(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final getFlingStartArgs()Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->h:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    return-object p0
.end method

.method public final log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final n(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)V
    .locals 5

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->m:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->l:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getViewSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->m:Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->obtainBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->left()F

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getNewX()F

    move-result v3

    cmpg-float v2, v2, v3

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->top()F

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getNewY()F

    move-result v4

    cmpg-float v2, v2, v4

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->left()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getNewX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->top()F

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getNewY()F

    move-result p1

    sub-float/2addr v1, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewportRectChanged, scroll deltaX = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", deltaY = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->n:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setOffsetX(F)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->n:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setOffsetY(F)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final o()V
    .locals 4

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->j:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isEnabledContinuousPage(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->obtainBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getCurrentBoxId()Ljava/lang/String;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v3, v0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs$Companion;->createFling(FFLjava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    move-result-object v0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->left()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setScrollBeginX(F)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->top()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setScrollBeginY(F)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$a;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method public final r(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;
    .locals 10

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->obtainBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getVelocityX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getVelocityY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getUpToDownTime()J

    move-result-wide v2

    sget-object v4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v5, Lcom/onyx/android/sdk/universal/R$integer;->correct_fling_up_to_down_time_threshold:I

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    cmp-long v2, v2, v5

    if-gtz v2, :cond_0

    sget v2, Lcom/onyx/android/sdk/universal/R$integer;->correct_fling_velocity_threshold:I

    invoke-virtual {v4, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->currentDisplayScale()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v9, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upToDownTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getUpToDownTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms, maxVelocity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isRestoreScrollBegin = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->log(Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getVelocityX()F

    move-result v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getVelocityY()F

    move-result v5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getScrollBeginX()F

    move-result v6

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getScrollBeginY()F

    move-result v7

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getScrollBeginBoxId()Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;-><init>(FFFFLjava/lang/String;Z)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->createRxScrollerArgs(Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;)Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;

    move-result-object p0

    return-object p0
.end method

.method public final s(Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->j:Z

    if-eqz v0, :cond_0

    const-string v0, "abortFling, do not create scroller"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->log(Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setAction(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getStartX()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setNewX(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getStartY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setNewY(F)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setFlingFinished(Z)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getFlingActionType()Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->k:Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->isEnabledAbortFlingAnimation()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->setEnabledAbortFlingAnimation(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V

    new-instance v0, Lcom/onyx/android/sdk/base/rx/RxScroller;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/rx/RxScroller;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->i:Lcom/onyx/android/sdk/base/rx/RxScroller;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/rx/RxScroller;->fling(Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs$Companion;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$p;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$p;-><init>(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs$Companion;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final stopFling()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->i:Lcom/onyx/android/sdk/base/rx/RxScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxScroller;->stop()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->i:Lcom/onyx/android/sdk/base/rx/RxScroller;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->j:Z

    return-void
.end method

.method public final t(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$scrollTo$1;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$scrollTo$1;-><init>(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createCoreObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$q;

    invoke-direct {v1, p1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$q;-><init>(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$r;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$r;-><init>(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
