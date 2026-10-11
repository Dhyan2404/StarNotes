.class public final Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B7\u0012\u0006\u0010/\u001a\u00020.\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\u0006\u0010\u0019\u001a\u00020\u0014\u0012\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001a\u0012\u0008\u0008\u0002\u0010%\u001a\u00020\u0002\u00a2\u0006\u0004\u00080\u00101J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0000J\u001a\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00000\nH\u0014J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0002R\u0017\u0010\u0013\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0019\u001a\u00020\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u001d\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u0017\u0010%\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$R\u001b\u0010+\u001a\u00020&8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R\u0016\u0010-\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010\"\u00a8\u00062"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "",
        "rendering",
        "setRenderingShapes",
        "setRedraw",
        "showRotationHandle",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;",
        "transformAction",
        "configureSelectionRender",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "transforming",
        "postEvent",
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
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "j",
        "Ljava/util/List;",
        "getShapeList",
        "()Ljava/util/List;",
        "shapeList",
        "k",
        "Z",
        "getInvalidate",
        "()Z",
        "invalidate",
        "Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;",
        "l",
        "Lkotlin/Lazy;",
        "n",
        "()Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;",
        "request",
        "m",
        "redraw",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Z)V",
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

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Z

.field public final l:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Z)V
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
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualBoxInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    .line 3
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    .line 4
    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    .line 5
    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->j:Ljava/util/List;

    .line 6
    iput-boolean p5, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->k:Z

    .line 7
    new-instance p2, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$request$2;

    invoke-direct {p2, p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$request$2;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->l:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x1

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Z)V

    return-void
.end method

.method public static final synthetic access$getRedraw$p(Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->m:Z

    return p0
.end method

.method public static final synthetic access$getRequest(Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;)Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->n()Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic configureSelectionRender$default(Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;ZLcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;ILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Undefined:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->configureSelectionRender(ZLcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;)Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;Lkotlin/Unit;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->m(Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;Lkotlin/Unit;)V

    return-void
.end method

.method public static final m(Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;Lkotlin/Unit;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->postEvent(Z)Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    return-void
.end method

.method public static synthetic setRenderingShapes$default(Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;ZILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->setRenderingShapes(Z)Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final configureSelectionRender(ZLcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;)Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;
    .locals 1
    .param p2    # Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "transformAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->n()Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->setShowHandle(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->n()Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->setTransformAction(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;)V

    return-object p0
.end method

.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$create$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$create$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createMainObservable(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lkotlin/jvm/functions/Function0;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$create$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$create$2;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;)V

    new-instance v2, Lcom/sunia/HTREnginev2/dif;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/dif;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getInvalidate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->k:Z

    return p0
.end method

.method public final getRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-object p0
.end method

.method public final getShapeList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->j:Ljava/util/List;

    return-object p0
.end method

.method public final getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final n()Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->l:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;

    return-object p0
.end method

.method public final postEvent(Z)Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;-><init>(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;)V

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->noteRenderMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->setRenderMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/note/TransformChangedEvent;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->j:Ljava/util/List;

    invoke-direct {v2, v3, v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/TransformChangedEvent;-><init>(Ljava/util/List;Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;Z)V

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setRedraw()Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->m:Z

    return-object p0
.end method

.method public final setRenderingShapes(Z)Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->n()Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->setRenderingShapes(Z)V

    return-object p0
.end method
