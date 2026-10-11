.class public final Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestShapeAndStartTransformAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestShapeAndStartTransformAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002R\u0014\u0010\u000b\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestShapeAndStartTransformAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shapeList",
        "",
        "l",
        "h",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "hitTestShape",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "i",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "touchPoint",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
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
.field public final h:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hitTestShape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchPoint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestShapeAndStartTransformAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestShapeAndStartTransformAction;->i:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public static final synthetic access$startTransform(Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestShapeAndStartTransformAction;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestShapeAndStartTransformAction;->l(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestShapeAndStartTransformAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestShapeAndStartTransformAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestShapeAndStartTransformAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestShapeAndStartTransformAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestShapeAndStartTransformAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestShapeAndStartTransformAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestShapeAndStartTransformAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestShapeAndStartTransformAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestShapeAndStartTransformAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;-><init>()V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->setTransformShapes(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/StartTransformEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartTransformEvent;-><init>(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method
