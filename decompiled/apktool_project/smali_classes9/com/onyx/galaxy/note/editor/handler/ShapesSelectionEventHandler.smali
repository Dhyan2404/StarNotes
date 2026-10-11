.class public final Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;
.super Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapesSelectionEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapesSelectionEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler\n+ 2 Point.kt\nandroidx/core/graphics/PointKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,358:1\n187#2:359\n344#3,3:360\n11095#4:363\n11430#4,3:364\n*S KotlinDebug\n*F\n+ 1 ShapesSelectionEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler\n*L\n89#1:359\n90#1:360,3\n327#1:363\n327#1:364,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010O\u001a\u00020N\u0012\u0006\u0010B\u001a\u00020@\u00a2\u0006\u0004\u0008P\u0010QJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0004H\u0002J\u0016\u0010\n\u001a\u00020\u00052\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002J\u0008\u0010\u000b\u001a\u00020\u0005H\u0002J\u001c\u0010\u000f\u001a\u00020\u00052\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00050\u000cH\u0002J\u0008\u0010\u0010\u001a\u00020\u0005H\u0002J\u0008\u0010\u0011\u001a\u00020\u0005H\u0002J\u0008\u0010\u0013\u001a\u00020\u0012H\u0002J\u0008\u0010\u0014\u001a\u00020\rH\u0002J\u0010\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0015H\u0007J\u0010\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0018H\u0007J\u0010\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u001aH\u0007J\u0010\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u001cH\u0007J\u0010\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u001eH\u0007J\u0010\u0010!\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020 H\u0007J\u0010\u0010#\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\"H\u0007J\u0010\u0010%\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020$H\u0007J\u0010\u0010\'\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020&H\u0007J\u0010\u0010)\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020(H\u0007J\u0010\u0010+\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020*H\u0007J\u0010\u0010-\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020,H\u0007J\u0010\u0010/\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020.H\u0007J\u0010\u00101\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u000200H\u0007J\u0010\u00103\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u000202H\u0007J\u0010\u00105\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u000204H\u0007J\u0010\u00107\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u000206H\u0007J\u0010\u00109\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u000208H\u0007J\u0010\u0010;\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020:H\u0007J\u0010\u0010=\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020<H\u0007J\u0010\u0010?\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020>H\u0007R\u0014\u0010B\u001a\u00020@8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010AR\u0016\u0010E\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0018\u0010H\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010GR\u001e\u0010J\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010IR\u0018\u0010M\u001a\u0004\u0018\u00010K8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010L\u00a8\u0006R"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;",
        "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;",
        "Landroid/graphics/Rect;",
        "e",
        "",
        "",
        "i",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shapes",
        "h",
        "k",
        "Lkotlin/Function1;",
        "Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;",
        "viewHandler",
        "j",
        "b",
        "f",
        "Landroid/graphics/RectF;",
        "c",
        "d",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ShowInkBeautifyPopupEvent;",
        "event",
        "onShowInkBeautifyPopupEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ShowShapeSelectionStyleMenuEvent;",
        "onShowShapeSelectionStyleMenuEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/TransformChangedEvent;",
        "onTransformChangedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ShowTextSelectionMenuEvent;",
        "onShowTextSelectionMenuEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/HideTextSelectionMenuEvent;",
        "onHideTextSelectionMenuEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ShowAnnotationSelectionMenuEvent;",
        "onShowAnnotationSelectionMenuEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ShowEditTextShapeSelectionMenuEvent;",
        "onShowEditTextShapeSelectionMenuEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ShowUniversalShapeSelectionEvent;",
        "onShowUniversalShapeSelectionEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupEvent;",
        "onShowExcerptPopupEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/DismissExcerptPopupEvent;",
        "onDismissExcerptPopupEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/HideUniversalShapeSelectionEvent;",
        "onHideUniversalShapeSelectionEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/HideAnnotationSelectionMenuEvent;",
        "onHideAnnotationSelectionMenuEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/HideEditTextShapeSelectionMenuEvent;",
        "onHideEditTextShapeSelectionMenuEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/TransformQuitedEvent;",
        "onTransformQuitedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/CloseSelectionMenuEvent;",
        "onCloseSelectionMenuEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/DismissShapeSelectionStyleMenuEvent;",
        "onDismissShapeSelectionStyleMenuEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/HandleQuickCopyDragEvent;",
        "onHandleQuickCopyDragEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ShowSelectMoveLayerPopupEvent;",
        "onShowSelectMoveLayerPopupEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionInsertStickerStartEvent;",
        "onSelectionInsertStickerStartEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionInsertStickerDoneEvent;",
        "onSelectionInsertStickerDoneEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionInsertStickerErrorEvent;",
        "onSelectionInsertStickerErrorEvent",
        "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "scribbleFragment",
        "g",
        "Landroid/graphics/RectF;",
        "selectionRect",
        "Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;",
        "Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;",
        "shapeStyleMenuPopUpWindow",
        "Ljava/util/List;",
        "selectShapes",
        "Lcom/onyx/galaxy/note/common/view/LoadingDialog;",
        "Lcom/onyx/galaxy/note/common/view/LoadingDialog;",
        "stickerLoadingDialog",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V",
        "note_overseasRelease"
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
        "SMAP\nShapesSelectionEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapesSelectionEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler\n+ 2 Point.kt\nandroidx/core/graphics/PointKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,358:1\n187#2:359\n344#3,3:360\n11095#4:363\n11430#4,3:364\n*S KotlinDebug\n*F\n+ 1 ShapesSelectionEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler\n*L\n89#1:359\n90#1:360,3\n327#1:363\n327#1:364,3\n*E\n"
    }
.end annotation


# instance fields
.field public final f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Lcom/onyx/galaxy/note/common/view/LoadingDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scribbleFragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->g:Landroid/graphics/RectF;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;Ljava/util/List;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->g(Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;Ljava/util/List;Z)V

    return-void
.end method

.method public static final g(Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;Ljava/util/List;Z)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$copyData"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->h(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->closeSelectionMenu$note_overseasRelease()V

    return-void
.end method

.method public final c()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getSelectionMenuDisplayRect$note_overseasRelease()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getSelectionMenuView$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    move-result-object p0

    return-object p0
.end method

.method public final e()Landroid/graphics/Rect;
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getDisplayBundle()Lcom/onyx/android/sdk/universal/editor/DisplayBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->getActivityOffset()Landroid/graphics/Point;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v0}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->g:Landroid/graphics/RectF;

    iget v0, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {p0, v0, v1}, Lcom/onyx/android/sdk/base/extension/RectKt;->copyAndOffset(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;

    move-result-object p0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final f()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->hideSelectionMenu$note_overseasRelease()V

    return-void
.end method

.method public final h(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->d()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->c()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->setMaxMenuWidth(I)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->updateSelectedShapes$default(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;Ljava/util/List;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->k()V

    const/4 p1, 0x1

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getVisibleContentRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->editorView(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->localVisibleRectF(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getArrowDirection()I

    move-result v0

    if-ne v0, p1, :cond_1

    new-instance p1, Landroid/graphics/RectF;

    iget v0, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {p1, v0, v3, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/graphics/RectF;

    iget v0, v2, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p1, v0, v1, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateTransformVisibleRectEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateTransformVisibleRectEvent;-><init>(Landroid/graphics/RectF;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final i(Ljava/lang/Throwable;)V
    .locals 5

    sget-object p0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->mergeTimeoutError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->transform$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/common/error/OnyxException;->getType()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Reach File Count Limit"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$string;->sticker_reach_max_upload_count:I

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFormatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "Format Not Supported"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->sticker_bitmap_file_unsupported:I

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/android/sdk/universal/R$string;->add_sticker_failed:I

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final j(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->d()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->c()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->setMaxMenuWidth(I)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->getSelectionRect$note_overseasRelease()Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->g:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->k()V

    const/4 p0, 0x1

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    return-void
.end method

.method public final k()V
    .locals 11

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->d()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorViewOffsetLocation()[I

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v1, v4

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->dp_12:I

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->g:Landroid/graphics/RectF;

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    const/4 v5, 0x0

    neg-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->transform$default(Landroid/graphics/RectF;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->c()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, v1, p0, v2}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->updateLocation(Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/util/List;)V

    return-void
.end method

.method public final onCloseSelectionMenuEvent(Lcom/onyx/android/sdk/universal/editor/events/note/CloseSelectionMenuEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/CloseSelectionMenuEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->b()V

    return-void
.end method

.method public final onDismissExcerptPopupEvent(Lcom/onyx/android/sdk/universal/editor/events/note/DismissExcerptPopupEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/DismissExcerptPopupEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->b()V

    return-void
.end method

.method public final onDismissShapeSelectionStyleMenuEvent(Lcom/onyx/android/sdk/universal/editor/events/note/DismissShapeSelectionStyleMenuEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/DismissShapeSelectionStyleMenuEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->h:Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onHandleQuickCopyDragEvent(Lcom/onyx/android/sdk/universal/editor/events/note/HandleQuickCopyDragEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/HandleQuickCopyDragEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->i:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorBundleManager$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1}, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;-><init>(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/events/note/HandleQuickCopyDragEvent;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v1, "observeOn(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler$onHandleQuickCopyDragEvent$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler$onHandleQuickCopyDragEvent$1;

    new-instance v2, Lcom/sunia/HTREnginev2/zmm;

    invoke-direct {v2, p0, v0}, Lcom/sunia/HTREnginev2/zmm;-><init>(Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;Ljava/util/List;)V

    invoke-static {p1, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->i:Ljava/util/List;

    return-void
.end method

.method public final onHideAnnotationSelectionMenuEvent(Lcom/onyx/android/sdk/universal/editor/events/note/HideAnnotationSelectionMenuEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/HideAnnotationSelectionMenuEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->b()V

    return-void
.end method

.method public final onHideEditTextShapeSelectionMenuEvent(Lcom/onyx/android/sdk/universal/editor/events/note/HideEditTextShapeSelectionMenuEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/HideEditTextShapeSelectionMenuEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->b()V

    return-void
.end method

.method public final onHideTextSelectionMenuEvent(Lcom/onyx/android/sdk/universal/editor/events/note/HideTextSelectionMenuEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/HideTextSelectionMenuEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->b()V

    return-void
.end method

.method public final onHideUniversalShapeSelectionEvent(Lcom/onyx/android/sdk/universal/editor/events/note/HideUniversalShapeSelectionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/HideUniversalShapeSelectionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->b()V

    return-void
.end method

.method public final onSelectionInsertStickerDoneEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SelectionInsertStickerDoneEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SelectionInsertStickerDoneEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->j:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->j:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    return-void
.end method

.method public final onSelectionInsertStickerErrorEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SelectionInsertStickerErrorEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SelectionInsertStickerErrorEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionInsertStickerErrorEvent;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->i(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSelectionInsertStickerStartEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SelectionInsertStickerStartEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SelectionInsertStickerStartEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->j:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->createLoadingDialog(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    sget v0, Lcom/onyx/galaxy/note/R$string;->sticker_message_uploading:I

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/common/view/LoadingDialog;->updateTitle(I)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->j:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final onShowAnnotationSelectionMenuEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ShowAnnotationSelectionMenuEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ShowAnnotationSelectionMenuEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->d()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->setFixMenuPosition$note_overseasRelease(Z)V

    :cond_0
    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler$onShowAnnotationSelectionMenuEvent$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler$onShowAnnotationSelectionMenuEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/note/ShowAnnotationSelectionMenuEvent;)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->j(Lkotlin/jvm/functions/Function1;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;->setFixMenuPosition$note_overseasRelease(Z)V

    return-void
.end method

.method public final onShowEditTextShapeSelectionMenuEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ShowEditTextShapeSelectionMenuEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ShowEditTextShapeSelectionMenuEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler$onShowEditTextShapeSelectionMenuEvent$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler$onShowEditTextShapeSelectionMenuEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/note/ShowEditTextShapeSelectionMenuEvent;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->j(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onShowExcerptPopupEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupEvent;->getArgs()Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler$onShowExcerptPopupEvent$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler$onShowExcerptPopupEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->j(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;->getShowHighlight()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/ShowShapeHighlightAnimationEvent;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;->getHitTestShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowShapeHighlightAnimationEvent;-><init>(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onShowInkBeautifyPopupEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ShowInkBeautifyPopupEvent;)V
    .locals 11
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ShowInkBeautifyPopupEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->e()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowInkBeautifyPopupEvent;->getInkBeautifyArgs()Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;->setSelectionRectInActivity(Landroid/graphics/Rect;)V

    sget-object v0, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowInkBeautifyPopupEvent;->getInkBeautifyArgs()Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;->getActivityContext()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getActivityContentView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowInkBeautifyPopupEvent;->getInkBeautifyArgs()Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    move-result-object p1

    invoke-direct {v10, p1}, Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup;-><init>(Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_302:I

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v4

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_349:I

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v5

    invoke-virtual {v0, v9}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->rectInActivity(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, v10

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/onyx/galaxy/note/common/extension/PopupWindowKt;->getWindowLocationSmartly$default(Landroid/widget/PopupWindow;Landroid/graphics/Rect;Landroid/graphics/Rect;FFLjava/lang/Number;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getDstDockPoint()Lcom/onyx/android/sdk/base/data/DockPoint;

    move-result-object v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getSrcDockPoint()Lcom/onyx/android/sdk/base/data/DockPoint;

    move-result-object v5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getDx()I

    move-result v6

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getDy()I

    move-result v7

    move-object v1, v0

    move-object v2, v10

    move-object v3, p0

    move-object v8, v9

    invoke-virtual/range {v1 .. v8}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getWindowLocation(Landroid/widget/PopupWindow;Landroid/graphics/Rect;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->show$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Lcom/onyx/android/sdk/base/data/WindowLocation;Landroid/view/View;ILjava/lang/Object;)Landroid/widget/PopupWindow;

    return-void
.end method

.method public final onShowSelectMoveLayerPopupEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ShowSelectMoveLayerPopupEvent;)V
    .locals 10
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ShowSelectMoveLayerPopupEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getSelectionMenuView$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/editor/action/layer/ShowMoveToLayerPopupAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->g:Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowSelectMoveLayerPopupEvent;->getAnchorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowSelectMoveLayerPopupEvent;->getShapes()Ljava/util/List;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/galaxy/note/editor/action/layer/ShowMoveToLayerPopupAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Landroid/graphics/RectF;Landroid/view/View;Ljava/util/List;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v4, v0

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onShowShapeSelectionStyleMenuEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ShowShapeSelectionStyleMenuEvent;)V
    .locals 11
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ShowShapeSelectionStyleMenuEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowShapeSelectionStyleMenuEvent;->getShapes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->g:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorViewOffsetLocation()[I

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowShapeSelectionStyleMenuEvent;->getShapes()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->h:Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPenType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {v1, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->setViewShape(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->clTitleBarContainer:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const-string v1, "clTitleBarContainer"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    const-string v3, "getRoot(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v3, v4, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_0
    if-nez v3, :cond_2

    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v6

    :goto_1
    aget v6, v0, v6

    aget v0, v0, v5

    invoke-virtual {v2, v6, v0}, Landroid/graphics/Rect;->offset(II)V

    iget v0, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p1

    iput v0, v2, Landroid/graphics/Rect;->top:I

    if-eqz v4, :cond_3

    iget p1, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, v2, Landroid/graphics/Rect;->left:I

    :cond_3
    if-eqz v3, :cond_4

    iget p1, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, v2, Landroid/graphics/Rect;->top:I

    :cond_4
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->h:Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;

    if-nez p1, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    const-string v2, "getContentView(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getActivityContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v10

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_340:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v6

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_480:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v7

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_10:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->e()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, v10}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->rectInActivity(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    move-object v3, p1

    move-object v4, p0

    invoke-static/range {v3 .. v8}, Lcom/onyx/galaxy/note/common/extension/PopupWindowKt;->getWindowLocationSmartly(Landroid/widget/PopupWindow;Landroid/graphics/Rect;Landroid/graphics/Rect;FFLjava/lang/Number;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getDstDockPoint()Lcom/onyx/android/sdk/base/data/DockPoint;

    move-result-object v6

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getSrcDockPoint()Lcom/onyx/android/sdk/base/data/DockPoint;

    move-result-object v7

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getDx()I

    move-result v8

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getDy()I

    move-result v9

    move-object v3, v1

    move-object v4, p1

    move-object v5, p0

    invoke-virtual/range {v3 .. v10}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getWindowLocation(Landroid/widget/PopupWindow;Landroid/graphics/Rect;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->show$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Lcom/onyx/android/sdk/base/data/WindowLocation;Landroid/view/View;ILjava/lang/Object;)Landroid/widget/PopupWindow;

    return-void
.end method

.method public final onShowTextSelectionMenuEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ShowTextSelectionMenuEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ShowTextSelectionMenuEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler$onShowTextSelectionMenuEvent$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler$onShowTextSelectionMenuEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/note/ShowTextSelectionMenuEvent;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->j(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onShowUniversalShapeSelectionEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ShowUniversalShapeSelectionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ShowUniversalShapeSelectionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler$onShowUniversalShapeSelectionEvent$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler$onShowUniversalShapeSelectionEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/note/ShowUniversalShapeSelectionEvent;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->j(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onTransformChangedEvent(Lcom/onyx/android/sdk/universal/editor/events/note/TransformChangedEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/TransformChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/TransformChangedEvent;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/TransformChangedEvent;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getRenderMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/TransformChangedEvent;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->redressSelectionRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->g:Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/TransformChangedEvent;->getTransformShapes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->i:Ljava/util/List;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/TransformChangedEvent;->getTransforming()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->f()V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/TransformChangedEvent;->getTransformShapes()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/TransformChangedEvent;->getTransformShapes()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->h(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->b()V

    :goto_0
    return-void
.end method

.method public final onTransformQuitedEvent(Lcom/onyx/android/sdk/universal/editor/events/note/TransformQuitedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/TransformQuitedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->b()V

    return-void
.end method
