.class public final Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001c\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0004J\u0006\u0010\u0008\u001a\u00020\u0006R\u0017\u0010\u000e\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;",
        "",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        "noteSearchBean",
        "Lio/reactivex/rxjava3/functions/Consumer;",
        "onNext",
        "",
        "open",
        "close",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "a",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/base/scheduler/ActionManager;",
        "b",
        "Lcom/onyx/android/sdk/base/scheduler/ActionManager;",
        "actionManager",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
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
.field public final a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/base/scheduler/ActionManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getActionManager()Lcom/onyx/android/sdk/base/scheduler/ActionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;->b:Lcom/onyx/android/sdk/base/scheduler/ActionManager;

    return-void
.end method

.method public static synthetic a(Lio/reactivex/rxjava3/functions/Consumer;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;->b(Lio/reactivex/rxjava3/functions/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getActionManager$p(Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;)Lcom/onyx/android/sdk/base/scheduler/ActionManager;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;->b:Lcom/onyx/android/sdk/base/scheduler/ActionManager;

    return-object p0
.end method

.method public static final b(Lio/reactivex/rxjava3/functions/Consumer;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$onNext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;->b:Lcom/onyx/android/sdk/base/scheduler/ActionManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/scheduler/ActionManager;->resubscribe()V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper$a;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper$b;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "doOnNext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;->b:Lcom/onyx/android/sdk/base/scheduler/ActionManager;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/scheduler/ActionManager;->execute(Lio/reactivex/rxjava3/core/Observable;)V

    return-void
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final open(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Lio/reactivex/rxjava3/functions/Consumer;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/functions/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "noteSearchBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onNext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "observeOn(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper$open$observable$1;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper$open$observable$1;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;)V

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper$open$observable$2;

    invoke-direct {v3, p1, p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper$open$observable$2;-><init>(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;)V

    invoke-static {v0, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper$open$observable$3;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper$open$observable$3;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;)V

    new-instance v1, Lcom/sunia/HTREnginev2/hmf;

    invoke-direct {v1, p2}, Lcom/sunia/HTREnginev2/hmf;-><init>(Lio/reactivex/rxjava3/functions/Consumer;)V

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;->b:Lcom/onyx/android/sdk/base/scheduler/ActionManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/scheduler/ActionManager;->execute(Lio/reactivex/rxjava3/core/Observable;)V

    return-void
.end method
