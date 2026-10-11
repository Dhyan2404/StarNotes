.class public final Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0003H\u0002R\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u001d\u0010\u0012\u001a\u0004\u0018\u00010\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "p",
        "",
        "m",
        "",
        "",
        "h",
        "Ljava/util/List;",
        "layerIds",
        "Lcom/onyx/android/sdk/ui/CommonDialog;",
        "i",
        "Lkotlin/Lazy;",
        "o",
        "()Lcom/onyx/android/sdk/ui/CommonDialog;",
        "loadingDialog",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V",
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
.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
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
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;->h:Ljava/util/List;

    new-instance p1, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$loadingDialog$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$loadingDialog$2;-><init>(Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;->i:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$clean(Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;->m()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLayerIds$p(Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;->h:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getLoadingDialog(Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;)Lcom/onyx/android/sdk/ui/CommonDialog;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;->o()Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showAlertDialog(Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;->p()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;->n(Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;)V

    return-void
.end method

.method public static final n(Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;->o()Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog;->dismissWithDelay$default(Lcom/onyx/android/sdk/ui/CommonDialog;JILjava/lang/Object;)V

    :cond_0
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$b;-><init>(Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$c;-><init>(Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$d;-><init>(Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$e;-><init>(Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$f;-><init>(Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$g;->e:Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$g;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$h;-><init>(Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/mud;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/mud;-><init>(Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " clean layerIds:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;->h:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->wTag(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/layer/CleanNotePageLayerRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;->h:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/request/layer/CleanNotePageLayerRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/util/List;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToNote(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$a;->e:Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$a;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o()Lcom/onyx/android/sdk/ui/CommonDialog;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;->i:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/ui/CommonDialog;

    return-object p0
.end method

.method public final p()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v1

    const-string v2, "create(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/onyx/android/sdk/universal/R$string;->clean:I

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setTitle(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setWarning(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    sget v2, Lcom/onyx/android/sdk/universal/R$string;->clean_layer_warning:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setMessage(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$showAlertDialog$1;

    invoke-direct {v2, p0, v1}, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$showAlertDialog$1;-><init>(Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$showAlertDialog$2;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction$showAlertDialog$2;-><init>(Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setCancelCallback(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->create()Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/CommonDialog;->show()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/note/ClearLayerDialogStartEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/layer/CleanNotePageLayerAction;->h:Ljava/util/List;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/ClearLayerDialogStartEvent;-><init>(Ljava/util/List;)V

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-object v1
.end method
