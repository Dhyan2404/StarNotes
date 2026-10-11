.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;
.super Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction<",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010H\u001a\u00020G\u0012\u0006\u0010J\u001a\u00020I\u0012\u0006\u00103\u001a\u000200\u00a2\u0006\u0004\u0008K\u0010LJ\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\t\u001a\u00020\u0008H\u0002J\u0016\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006H\u0002J\u0014\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\u00042\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0008\u0010\u000f\u001a\u00020\u0008H\u0002J\u0008\u0010\u0010\u001a\u00020\u0008H\u0002J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0016\u001a\u00020\u0006H\u0002J\u0016\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0008\u0010\u001e\u001a\u00020\u0008H\u0002J\u0010\u0010 \u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020\u0006H\u0002J\u000e\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004H\u0014J\u0010\u0010\"\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010#\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010$\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0018\u0010%\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u0011H\u0016J\u0018\u0010\'\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u0011H\u0016J\u000e\u0010*\u001a\u00020\u00082\u0006\u0010)\u001a\u00020(J\u000e\u0010+\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u0011J$\u0010.\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190-0\u00042\u0006\u0010\u001c\u001a\u00020\u00112\u0008\u0008\u0002\u0010,\u001a\u00020\u0006J\u0006\u0010/\u001a\u00020\u0006R\u0014\u00103\u001a\u0002008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0018\u00105\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u00104R$\u0010\u001c\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u00106\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R\"\u0010@\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010;\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\"\u0010F\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010A\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010E\u00a8\u0006M"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "touchData",
        "Lio/reactivex/rxjava3/core/Observable;",
        "B",
        "",
        "o",
        "",
        "C",
        "invalidate",
        "w",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;",
        "transformBean",
        "z",
        "y",
        "n",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "q",
        "Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;",
        "p",
        "m",
        "t",
        "A",
        "r",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "s",
        "virtualBoxInfo",
        "l",
        "u",
        "transforming",
        "v",
        "create",
        "onTouchDown",
        "onTouchMove",
        "onTouchUp",
        "onTouchContentOutside",
        "boxInfo",
        "hitNoteInside",
        "Landroid/graphics/RectF;",
        "rectF",
        "updateSelectionVisibleRect",
        "quitTransform",
        "checkAccidentallyTranslate",
        "",
        "quitTransformObservable",
        "isUndefinedTransformAction",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "k",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;",
        "selectionManager",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "getVirtualBoxInfo",
        "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "setVirtualBoxInfo",
        "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;",
        "getShapeTransformBean",
        "()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;",
        "setShapeTransformBean",
        "(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V",
        "shapeTransformBean",
        "Z",
        "getTransformStarted",
        "()Z",
        "setTransformStarted",
        "(Z)V",
        "transformStarted",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;",
        "touchReader",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V",
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
.field public final k:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchReader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->k:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    new-instance p1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-direct {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->n:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    return-void
.end method

.method public static final synthetic access$checkLockedShape(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;Lcom/onyx/android/sdk/geometry/data/TouchData;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->m(Lcom/onyx/android/sdk/geometry/data/TouchData;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$filterSingleTap(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;Lcom/onyx/android/sdk/geometry/data/TouchData;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->r(Lcom/onyx/android/sdk/geometry/data/TouchData;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getRenderContext$p(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->k:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-object p0
.end method

.method public static final synthetic access$onTouchDone(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->u()V

    return-void
.end method

.method public static final synthetic access$touchDoneObservable(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;Lcom/onyx/android/sdk/geometry/data/TouchData;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->A(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$transform(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;Lcom/onyx/android/sdk/geometry/data/TouchData;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->B(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateSelection(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->C()V

    return-void
.end method

.method public static synthetic quitTransformObservable$default(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->quitTransformObservable(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;ZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->w(Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lio/reactivex/rxjava3/core/Observable;
    .locals 5
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$m;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$m;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "filter(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$touchDoneObservable$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$touchDoneObservable$2;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v4, v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->x(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;ZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$n;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$n;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$o;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$o;-><init>(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final B(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->isUndefinedTransformAction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->q(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->clone()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->normalizeTouchPoint(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->p()Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->n:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getTransformShapes()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->transform(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$p;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$p;-><init>(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final C()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->k:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->renderMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->updateRotationPosition(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->subscribeTouchData()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnError(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getShapeTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->n:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    return-object p0
.end method

.method public final getTransformStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->o:Z

    return p0
.end method

.method public final getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public hitNoteInside(Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boxInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->hitNoteInside(Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->p()Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;

    move-result-object p2

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->n:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getTransformShapes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->clone()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->normalizeTouchPoint(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-virtual {p2, v2, p0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->transformAction(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->isUndefined()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_1
    return v0
.end method

.method public final isUndefinedTransformAction()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->isUndefinedTransformAction()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final l(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->quitTransformObservable$default(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$a;

    invoke-direct {v0, p0, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final m(Lcom/onyx/android/sdk/geometry/data/TouchData;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->t()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->isTouchUp()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->isUndefinedTransformAction()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->q(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->quitTransform(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final n()V
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->k:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;

    return-void
.end method

.method public final o(Lcom/onyx/android/sdk/geometry/data/TouchData;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->q(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->p()Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->clone()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->normalizeTouchPoint(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->n:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getTransformShapes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->onDown(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->isUndefinedTransformAction()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->n:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getTransformShapes()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->touchDown(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onTouchContentOutside(Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualBoxInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->onTouchContentOutside(Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->shapeHandlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->restoreUserProvider()V

    return-void
.end method

.method public onTouchDown(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->onTouchDown(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->ensureBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->n()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->o(Lcom/onyx/android/sdk/geometry/data/TouchData;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->t()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/android/sdk/universal/R$string;->selected_item_locked_tip:I

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-static {p0, p1, v0, v2, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    :cond_4
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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->q(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->p()Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->isUndefinedTransformAction()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->p()Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->onMove(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

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

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->isTouchCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->q(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->p()Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->isUndefinedTransformAction()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void
.end method

.method public final p()Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->n()V

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final q(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->ensureBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final quitTransform(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "virtualBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->quitTransformObservable$default(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final quitTransformObservable(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Z)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "virtualBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->n:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->k:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->y()V

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->z(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    :goto_0
    new-instance p2, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$g;

    invoke-direct {p2, v1, v2, p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$h;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$h;-><init>(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$i;

    invoke-direct {p1, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$j;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$j;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final r(Lcom/onyx/android/sdk/geometry/data/TouchData;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->getDown()Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->isSingleTapUpShort(Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/geometry/data/TouchData;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->n:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getTransformShapes()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->filterNormalShapes(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v1, :cond_1

    return v1

    :cond_1
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isTextShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->s(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/TouchData;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_2
    return v1
.end method

.method public final s(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/TouchData;)Z
    .locals 4

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->normalizeTouchPoint(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    invoke-virtual {v2, v3, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p2

    if-nez p2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->l(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public final setShapeTransformBean(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->n:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    return-void
.end method

.method public final setTransformStarted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->o:Z

    return-void
.end method

.method public final setVirtualBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public final t()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->n:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getTransformShapes()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->hasLocked(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public final u()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->isUndefinedTransformAction()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->n:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->hasTransformShapes()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->quitTransform(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    iput-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->o:Z

    :cond_0
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->v(Z)V

    return-void
.end method

.method public final updateSelectionVisibleRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->k:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->setVisibleRect(Landroid/graphics/RectF;)V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->w(Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final v(Z)V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->k:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;-><init>(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->noteRenderMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->setRenderMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/note/TransformChangedEvent;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->n:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getTransformShapes()Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/TransformChangedEvent;-><init>(Ljava/util/List;Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;Z)V

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final w(Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$k;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$k;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$l;

    invoke-direct {v2, p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$l;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final y()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->n:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    return-void
.end method

.method public final z(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getTransformShapes()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->restoreTranslateIfMatch(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
