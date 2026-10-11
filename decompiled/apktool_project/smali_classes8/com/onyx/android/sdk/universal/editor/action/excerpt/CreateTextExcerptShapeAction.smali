.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateTextExcerptShapeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateTextExcerptShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,66:1\n1313#2,2:67\n1855#3,2:69\n*S KotlinDebug\n*F\n+ 1 CreateTextExcerptShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction\n*L\n44#1:67,2\n60#1:69,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\r\u001a\u00020\n\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\t\u001a\u00020\u0008H\u0002R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\"\u0010\u000e\u001a\u00020\u00068\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "m",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "l",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "n",
        "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;",
        "h",
        "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;",
        "args",
        "shape",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "getShape",
        "()Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "setShape",
        "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V",
        "",
        "Landroid/graphics/RectF;",
        "i",
        "Ljava/util/List;",
        "rectList",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCreateTextExcerptShapeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateTextExcerptShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,66:1\n1313#2,2:67\n1855#3,2:69\n*S KotlinDebug\n*F\n+ 1 CreateTextExcerptShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction\n*L\n44#1:67,2\n60#1:69,2\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public shape:Lcom/onyx/android/sdk/note/common/shape/Shape;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->getDisplayRectFList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copyRectFList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction;->i:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$createExcerptShape(Lcom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction;)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction;->l()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$normalizeRectList(Lcom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction;->m()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction$create$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction$create$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createCoreObservable(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction;->shape:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "shape"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final l()Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction;->n()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->create(I)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->Companion:Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;->getRotatedMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->setShapeMatrix(Landroid/graphics/Matrix;)V

    invoke-interface {v1, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->addPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;)V

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V

    return-object v1
.end method

.method public final m()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction;->h:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->normalizeUnRotatedMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction;->i:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final n()Lcom/onyx/android/sdk/base/data/TouchPointList;
    .locals 5

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction;->i:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget v4, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {v2, v3, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v3, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v3, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final setShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction;->shape:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-void
.end method
