.class public final Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u00100\u001a\u00020/\u0012\u0006\u0010\u0018\u001a\u00020\u0013\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u00081\u00102J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J&\u0010\u0010\u001a\u00020\u000c2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\u0017\u0010\u0018\u001a\u00020\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\u0006\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR$\u0010#\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\"\u0010+\u001a\u00020$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\"\u0010.\u001a\u00020$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010&\u001a\u0004\u0008,\u0010(\"\u0004\u0008-\u0010*\u00a8\u00063"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "n",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "",
        "Landroid/graphics/RectF;",
        "o",
        "",
        "rectangles",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "readerSelection",
        "Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;",
        "writingMode",
        "l",
        "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;",
        "m",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "h",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "getVirtualBoxInfo",
        "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualBoxInfo",
        "i",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "getShape",
        "()Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "j",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "getSelection",
        "()Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "setSelection",
        "(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V",
        "selection",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "k",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "getStartPoint",
        "()Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "setStartPoint",
        "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
        "startPoint",
        "getEndPoint",
        "setEndPoint",
        "endPoint",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V",
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
.field public final h:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 26
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "editorBundle"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "virtualBoxInfo"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "shape"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->h:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iput-object v2, v0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->i:Lcom/onyx/android/sdk/note/common/shape/Shape;

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/16 v13, 0x7f

    const/4 v14, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v14}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->k:Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x7f

    const/16 v25, 0x0

    move-object v15, v1

    invoke-direct/range {v15 .. v25}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->l:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public static final synthetic access$constructNewReaderSelection(Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;Ljava/util/List;Lcom/onyx/android/sdk/reader/api/ReaderSelection;Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->l(Ljava/util/List;Lcom/onyx/android/sdk/reader/api/ReaderSelection;Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$selectOnScreen(Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->n()Lio/reactivex/rxjava3/core/Observable;

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
            "Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;",
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

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getEndPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->l:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getSelection()Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->j:Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    return-object p0
.end method

.method public final getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->i:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-object p0
.end method

.method public final getStartPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->k:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->h:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final l(Ljava/util/List;Lcom/onyx/android/sdk/reader/api/ReaderSelection;Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/RectF;",
            ">;",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            "Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;",
            ")",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p1

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction$constructNewReaderSelection$1$rectList$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction$constructNewReaderSelection$1$rectList$1;

    invoke-static {p1, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction$constructNewReaderSelection$1$rectList$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction$constructNewReaderSelection$1$rectList$2;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;)V

    invoke-static {p1, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->toMutableList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->getRectList()Ljava/util/List;

    move-result-object v1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->getCharRectList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->charRectList()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->m(Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;)Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setWritingMode(Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->i:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getExcerptInfoBean(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getQuote()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->setText(Ljava/lang/String;)V

    return-object v0
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;)Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;->UNKNOWN:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;->HORIZONTAL:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;->VERTICAL_RL:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;->VERTICAL_LR:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    :goto_0
    return-object p0
.end method

.method public final n()Lio/reactivex/rxjava3/core/Observable;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->i:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "just(...)"

    if-gt v1, v2, :cond_0

    invoke-static/range {p0 .. p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object v1, v0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->i:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->o(Lcom/onyx/android/sdk/note/common/shape/Shape;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    if-nez v2, :cond_1

    invoke-static/range {p0 .. p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->i:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {v5}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getExcerptInfoBean(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getWritingMode()Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    move-result-object v5

    if-nez v5, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;->isVertical()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-direct {v3, v6, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    iget-object v4, v0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->i:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object v4, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    iget-object v6, v0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->h:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v4, v6}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->renderMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-object v3, v0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->k:Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v3, v6, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    iget-object v3, v0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->i:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v3, v0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->h:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->renderMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-object v2, v0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->l:Lcom/onyx/android/sdk/base/data/TouchPoint;

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-direct {v3, v6, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    iget-object v4, v0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->i:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object v4, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    iget-object v6, v0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->h:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v4, v6}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->renderMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-object v3, v0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->k:Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v6, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-direct {v3, v6, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    iget-object v3, v0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->i:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v3, v0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->h:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->renderMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-object v2, v0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->l:Lcom/onyx/android/sdk/base/data/TouchPoint;

    :goto_0
    new-instance v2, Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;

    const-string v7, ""

    iget-object v8, v0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->h:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v3, v0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->k:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->toPointF(Lcom/onyx/android/sdk/base/data/TouchPoint;)Landroid/graphics/PointF;

    move-result-object v9

    iget-object v3, v0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->l:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->toPointF(Lcom/onyx/android/sdk/base/data/TouchPoint;)Landroid/graphics/PointF;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xe0

    const/16 v16, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v16}, Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/PointF;Landroid/graphics/PointF;ZZLcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction$c;

    invoke-direct {v3, v0, v1, v5}, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction$d;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_4
    :goto_1
    invoke-static/range {p0 .. p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final o(Lcom/onyx/android/sdk/note/common/shape/Shape;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v0

    if-ltz v0, :cond_1

    :goto_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    add-int/lit8 v3, v2, 0x1

    invoke-static {p0, v3}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v6

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-direct {v4, v5, v1, v6, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v2, v0, :cond_1

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method public final setEndPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->l:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final setSelection(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSelection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->j:Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    return-void
.end method

.method public final setStartPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->k:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method
