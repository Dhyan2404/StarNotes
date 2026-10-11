.class public final Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u00a2\u0006\u0004\u0008 \u0010!J\"\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004J\u0006\u0010\n\u001a\u00020\u0008J\u0006\u0010\u000c\u001a\u00020\u000bJ\u0018\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0006H\u0002J\u0010\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u0019R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0019R\u0016\u0010\u001f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;",
        "",
        "Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;",
        "editContext",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "saveObservable",
        "",
        "startDelayDrag",
        "cancelDelayDrag",
        "",
        "isDragging",
        "shape",
        "c",
        "f",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "a",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;",
        "b",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;",
        "excerptAction",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "saveExcerptDisposable",
        "d",
        "startDragDisposable",
        "e",
        "Z",
        "isCancelDrag",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;)V",
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

.field public final b:Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "excerptAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;->b:Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;->d(Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;)V

    return-void
.end method

.method public static final synthetic access$delayDragObservable(Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;->c(Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method

.method public static final synthetic access$isCancelDrag$p(Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;->e:Z

    return p0
.end method

.method public static final synthetic access$reEnterEdit(Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;->f(Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;)V

    return-void
.end method

.method public static final synthetic access$setCancelDrag$p(Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;->e:Z

    return-void
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;->e(Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;)V

    return-void
.end method

.method public static final d(Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;->b:Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;->quitEdit$default(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public static final e(Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$editContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;->e:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;->f(Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final c(Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/StartExcerptDragAndDropAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/android/sdk/universal/R$integer;->excerpt_edit_long_press_start_drag_duration:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v2

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/StartExcerptDragAndDropAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;J)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper$a;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper$a;-><init>(Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/sunia/HTREnginev2/eyf;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/eyf;-><init>(Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/sunia/HTREnginev2/fyf;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/fyf;-><init>(Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;->d:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final cancelDelayDrag()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;->d:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;->e:Z

    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;)V
    .locals 4

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;->b:Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->ensureTransformShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->getExcerptCollectionList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->getNoteModelList()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;->startExcerptEdit(Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;)V

    return-void
.end method

.method public final isDragging()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;->d:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->isDisposed(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;->c:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->isDisposed(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final startDelayDrag(Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;Lio/reactivex/rxjava3/core/Observable;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/Observable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "editContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "saveObservable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;->cancelDelayDrag()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;->c:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->isDisposed(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;->e:Z

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper$b;->e:Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper$b;

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper$c;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper$c;-><init>(Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;->c:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
