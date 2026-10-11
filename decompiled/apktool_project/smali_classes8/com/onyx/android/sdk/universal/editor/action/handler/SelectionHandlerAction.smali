.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;
.super Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\'\u001a\u00020&\u0012\u0006\u0010)\u001a\u00020(\u00a2\u0006\u0004\u0008*\u0010+J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0014J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006H\u0014J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006H\u0014J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006H\u0014J\u0008\u0010\r\u001a\u00020\tH\u0016J\"\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00020\u00042\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0002H\u0002J\"\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00020\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0002H\u0002J\u0016\u0010\u0012\u001a\u00020\t2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0008\u0010\u0014\u001a\u00020\u0013H\u0002J\u0008\u0010\u0015\u001a\u00020\u0013H\u0002J\u0016\u0010\u0016\u001a\u00020\t2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0002H\u0002R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u001c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u001b\u0010%\u001a\u00020!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\"\u001a\u0004\u0008#\u0010$\u00a8\u0006,"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "touchData",
        "hitTestVisibleBoxTouchData",
        "",
        "onTouchDown",
        "onTouchMove",
        "onTouchUp",
        "dispose",
        "dataList",
        "s",
        "r",
        "list",
        "p",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "createRenderContext",
        "n",
        "q",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "k",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualBoxInfo",
        "l",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "m",
        "Ljava/util/List;",
        "selectedShapes",
        "Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;",
        "Lkotlin/Lazy;",
        "o",
        "()Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;",
        "lassoOption",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;",
        "touchReader",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V",
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
.field public k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchReader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->m:Ljava/util/List;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction$lassoOption$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction$lassoOption$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->n:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getSelectedShapes$p(Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->m:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$onSelectedShapes(Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->p(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$selectNotePageShapes(Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->r(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setVirtualBoxInfo$p(Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public static final synthetic access$trackAndHitTest(Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->s(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->m(Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;Ljava/util/List;)V

    return-void
.end method

.method public static final m(Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->q(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->subscribeTouchData()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->touchDataScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->touchBuffer$default(Lio/reactivex/rxjava3/core/Observable;JILio/reactivex/rxjava3/core/Scheduler;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "flatMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction$create$6;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction$create$6;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;)V

    new-instance v2, Lcom/sunia/HTREnginev2/igm;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/igm;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final createRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;-><init>(Landroid/graphics/Paint;Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->l:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public dispose()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "render_key_selection"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->removeRenderer$default(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-super {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->dispose()V

    return-void
.end method

.method public hitTestVisibleBoxTouchData(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->hitTestVisibleBoxTouchData(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction$g;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-super {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->hitTestVisibleBoxTouchData(Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final n()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->l:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->createRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->l:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->l:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final o()Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->n:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;

    return-object p0
.end method

.method public onTouchDown(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->onTouchDown(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->m:Ljava/util/List;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->ensureBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->createRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionArgs()Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->o()Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;->getLassoType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->setSelectionType(I)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/display/SelectionTrackRender;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/display/SelectionTrackRender;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/display/SelectionTrackRender;->updateSelectionTrackPaintColor(I)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/display/SelectionTrackRender;->getSelectionTrackPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v1

    const-string v2, "render_key_selection"

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction$onTouchDown$1;

    invoke-direct {v3, p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction$onTouchDown$1;-><init>(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Paint;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->addRenderer$default(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;ZILjava/lang/Object;)V

    return-void
.end method

.method public onTouchMove(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->onTouchMove(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->ensureBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public onTouchUp(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->onTouchUp(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->ensureBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public final p(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->m:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->l:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionArgs()Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->getSelectionPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-direct {v1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;-><init>()V

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>(Lcom/onyx/android/sdk/base/data/TouchPointList;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->setSelectionTrackPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->m:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->setTransformShapes(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionArgs()Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->getSelectionType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->setSelectionType(I)Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->setSelectAll(Z)Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/StartTransformEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartTransformEvent;-><init>(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final q(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->isSingleTapUp(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/NoShapeSelectedEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/NoShapeSelectedEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final r(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v0, :cond_0

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->n()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;->setVirtualBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction$i;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction$i;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final s(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->toTouchPointList(Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->n()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->addSelectionTrackPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;)V

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->addSelectionPagePoints(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->invalidate()V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
