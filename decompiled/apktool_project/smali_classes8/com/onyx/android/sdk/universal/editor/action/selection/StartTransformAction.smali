.class public final Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\'\u0012\u0006\u0010+\u001a\u00020*\u0012\u0006\u0010\u0014\u001a\u00020\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u0015\u0012\u0006\u0010\u001e\u001a\u00020\u001b\u00a2\u0006\u0004\u0008,\u0010-J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000c\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0002H\u0002J\u000c\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0008\u0010\n\u001a\u00020\tH\u0002J\u0008\u0010\u000c\u001a\u00020\u000bH\u0002J\u0008\u0010\u000e\u001a\u00020\rH\u0002R\u0017\u0010\u0014\u001a\u00020\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\u001a\u001a\u00020\u00158\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\"\u0010%\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u0018\u0010)\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(\u00a8\u0006."
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "m",
        "Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;",
        "s",
        "p",
        "q",
        "",
        "o",
        "Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;",
        "n",
        "",
        "t",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "h",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "getRenderContext",
        "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "i",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "getVirtualBoxInfo",
        "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualBoxInfo",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;",
        "j",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;",
        "startTransformBean",
        "k",
        "Z",
        "getTransforming",
        "()Z",
        "setTransforming",
        "(Z)V",
        "transforming",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "l",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "notePage",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V",
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
.field public final h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Z

.field public l:Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualBoxInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startTransformBean"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->j:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    return-void
.end method

.method public static final synthetic access$ensureNotePage(Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->m()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isTransforming(Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->o()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$renderNoteDirtyRect(Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->p()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$renderSelection(Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->q()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setNotePage$p(Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->l:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    return-void
.end method

.method public static final synthetic access$startTransform(Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->s()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateSelection(Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->t()V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->r(Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;)V

    return-void
.end method

.method public static final r(Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;)V
    .locals 1

    const-string v0, "$action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p1, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->k:Z

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->postEvent(Z)Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;",
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

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-object p0
.end method

.method public final getTransforming()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->k:Z

    return p0
.end method

.method public final getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/common/EnsureNotePageAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/common/EnsureNotePageAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getShapeHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object p0

    return-object p0
.end method

.method public final o()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->n()Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->getActiveProvider()Ljava/lang/String;

    move-result-object p0

    const-string v0, "transform_provider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final p()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/selection/RenderSelectionDirtyRectToDisplayAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->j:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/onyx/android/sdk/universal/editor/action/selection/RenderSelectionDirtyRectToDisplayAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final q()Lio/reactivex/rxjava3/core/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->j:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getTransformShapes()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Z)V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v6, v0, v2, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->configureSelectionRender$default(Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;ZLcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;ILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    :cond_0
    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction$renderSelection$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction$renderSelection$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;)V

    new-instance v2, Lcom/sunia/HTREnginev2/yxm;

    invoke-direct {v2, v6, p0}, Lcom/sunia/HTREnginev2/yxm;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction$j;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final s()Lio/reactivex/rxjava3/core/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getRenderMeasure()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->l:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->setPageInfo(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->j:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->setLimitRect(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    new-instance v0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v6, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->l:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    iget-object v7, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->j:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToNote(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final setTransforming(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->k:Z

    return-void
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->editorView(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->localVisibleRectF(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    :cond_1
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->setVisibleRect(Landroid/graphics/RectF;)V

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->renderMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->updateRotationPosition(Landroid/graphics/Matrix;)V

    :cond_2
    return-void
.end method
