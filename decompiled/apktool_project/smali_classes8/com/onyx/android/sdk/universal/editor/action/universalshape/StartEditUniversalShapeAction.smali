.class public final Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010\u000c\u001a\u00020\u0004\u0012\u0006\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008 \u0010!J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002R\u0014\u0010\u000c\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R(\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;",
        "m",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualPageBoxInfo",
        "",
        "l",
        "h",
        "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;",
        "shape",
        "",
        "i",
        "Z",
        "showMenu",
        "",
        "j",
        "Ljava/lang/String;",
        "currentHandlerName",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "k",
        "Ljava/util/List;",
        "getReferenceShapes",
        "()Ljava/util/List;",
        "setReferenceShapes",
        "(Ljava/util/List;)V",
        "referenceShapes",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Z)V",
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
.field public final h:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Z

.field public j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ljava/util/List;
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


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Z)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    iput-boolean p3, p0, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;->i:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;->j:Ljava/lang/String;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;->k:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$edit(Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;->l(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method

.method public static final synthetic access$getShape$p(Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    return-object p0
.end method

.method public static final synthetic access$setCurrentHandlerName$p(Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;->j:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$updateShape(Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;->m()Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;",
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

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getReferenceShapes()Ljava/util/List;
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

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;->k:Ljava/util/List;

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 10

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->mapMatrix(Landroid/graphics/Matrix;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    sget-object v2, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->noteRenderMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->mapMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    new-instance v9, Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    const/4 v2, 0x3

    invoke-static {v0, v1, v1, v2, v1}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->toDownTouchData$default(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ILjava/lang/Object;)Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object v4

    invoke-static {v0, v1, v1, v2, v1}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->toUpTouchData$default(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ILjava/lang/Object;)Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object v5

    iget-boolean v6, p0, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;->i:Z

    iget-object v7, p0, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;->k:Ljava/util/List;

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;-><init>(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/geometry/data/TouchData;ZLjava/util/List;Z)V

    invoke-static {p1, v9}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final m()Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 3

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getTransformingMatrix(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->updateFeature()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->updateShapeRect()V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    return-object p0
.end method

.method public final setReferenceShapes(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;->k:Ljava/util/List;

    return-void
.end method
