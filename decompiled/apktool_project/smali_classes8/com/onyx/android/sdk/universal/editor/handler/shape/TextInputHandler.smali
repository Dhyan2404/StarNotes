.class public final Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;
.super Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$TextInputHandlerAction;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextInputHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextInputHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,502:1\n332#2:503\n1#3:504\n*S KotlinDebug\n*F\n+ 1 TextInputHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler\n*L\n137#1:503\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001dB\u000f\u0012\u0006\u0010a\u001a\u00020`\u00a2\u0006\u0004\u0008b\u0010cJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\u000b\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0002J\u0008\u0010\u000c\u001a\u00020\u0007H\u0002J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0004H\u0002J9\u0010\u0016\u001a\r\u0012\u0004\u0012\u00020\u00140\u0013\u00a2\u0006\u0002\u0008\u00152\u0006\u0010\r\u001a\u00020\u00042\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0002H\u0002J8\u0010\u001b\u001a\u00020\u00072\u0008\u0010\u0017\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0019\u001a\u00020\u00182\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0002H\u0002J\u0008\u0010\u001c\u001a\u00020\u0002H\u0002J\u0012\u0010\u001e\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0002H\u0002J\u0008\u0010\u001f\u001a\u00020\u0007H\u0002J\u0010\u0010 \u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\u0008\u0010\"\u001a\u00020!H\u0002J\u0010\u0010#\u001a\u00020!2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0008\u0010%\u001a\u00020$H\u0002J\u0010\u0010(\u001a\u00020\u00072\u0006\u0010\'\u001a\u00020&H\u0002J\"\u0010+\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0)0\u00132\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\t0)H\u0002J\u0016\u0010-\u001a\u0008\u0012\u0004\u0012\u00020$0\u00132\u0006\u0010,\u001a\u00020\u000fH\u0002J\u0008\u0010.\u001a\u00020\u0007H\u0016J\u0008\u0010/\u001a\u00020\u0007H\u0016J\u0010\u00100\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u00103\u001a\u00020\u00072\u0006\u00102\u001a\u000201H\u0016J\u0010\u00104\u001a\u00020\u00072\u0006\u00102\u001a\u000201H\u0016J\u0010\u00107\u001a\u00020\u00072\u0006\u00106\u001a\u000205H\u0007J\u0010\u0010:\u001a\u00020\u00072\u0006\u00109\u001a\u000208H\u0007J\u0010\u0010<\u001a\u00020\u00072\u0006\u00109\u001a\u00020;H\u0007J\u0010\u0010>\u001a\u00020\u00072\u0006\u00109\u001a\u00020=H\u0007J\u0010\u0010@\u001a\u00020\u00072\u0006\u00109\u001a\u00020?H\u0007J\u0010\u0010B\u001a\u00020\u00072\u0006\u00109\u001a\u00020AH\u0007J\u0010\u0010D\u001a\u00020\u00072\u0006\u00109\u001a\u00020CH\u0016J\u0010\u0010F\u001a\u00020\u00072\u0006\u00109\u001a\u00020EH\u0016J\u0010\u0010H\u001a\u00020\u00072\u0006\u00109\u001a\u00020GH\u0007J\u0010\u0010J\u001a\u00020\u00072\u0006\u00109\u001a\u00020IH\u0007J\u0010\u0010L\u001a\u00020\u00072\u0006\u00109\u001a\u00020KH\u0007J\u0010\u0010N\u001a\u00020\u00072\u0006\u00109\u001a\u00020MH\u0007J\u0010\u0010P\u001a\u00020\u00072\u0006\u00109\u001a\u00020OH\u0007J\u0010\u0010R\u001a\u00020\u00072\u0006\u00109\u001a\u00020QH\u0007J\u0010\u0010T\u001a\u00020\u00072\u0006\u00109\u001a\u00020SH\u0007J\u0010\u0010V\u001a\u00020\u00072\u0006\u00109\u001a\u00020UH\u0007J\u0010\u0010X\u001a\u00020\u00072\u0006\u00109\u001a\u00020WH\u0007J\u0010\u0010Z\u001a\u00020\u00072\u0006\u00109\u001a\u00020YH\u0007R\u0018\u0010\\\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010[R\u0018\u0010^\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010]R\u0018\u0010\n\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010_\u00a8\u0006e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;",
        "Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;",
        "",
        "o",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "touchPoint",
        "d",
        "",
        "u",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "textShape",
        "w",
        "e",
        "point",
        "l",
        "",
        "textToInsert",
        "createNew",
        "editForAll",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "m",
        "shape",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "notePage",
        "createNewShape",
        "p",
        "v",
        "needSave",
        "b",
        "h",
        "t",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "f",
        "g",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "i",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;",
        "shapeTransformBean",
        "s",
        "",
        "shapeList",
        "k",
        "pageUniqueId",
        "j",
        "onActivate",
        "onDeactivate",
        "onSingleTapUp",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "touchData",
        "onTouchDown",
        "onTouchUp",
        "Lcom/onyx/android/sdk/universal/editor/events/note/AbortEditTextEvent;",
        "even",
        "onRefreshEditText",
        "Lcom/onyx/android/sdk/universal/editor/events/note/PlaceEditTextShapesEvent;",
        "event",
        "onPlaceEditTextShapesEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/CreateEditTextShapeLinkEvent;",
        "onCreateEditTextShapeLinkEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/CopyEditTextShapeEvent;",
        "onCopyEditTextShapeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/EditTextShapeUpdateResultEvent;",
        "onEditTextShapeUpdateResultEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/MoveShapesToLayerEvent;",
        "onMoveShapesToLayerEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/UndoEvent;",
        "onUndoEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;",
        "onRedoEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ShowInitInputTextEvent;",
        "onShowInitInputTextEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/TextShapeHitTestEvent;",
        "onTextShapeHitTestEvent",
        "Lcom/onyx/android/sdk/textbox/event/SwitchToNextShapeEvent;",
        "onSwitchToNextShapeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SaveTextShapeEvent;",
        "onSaveTextShapeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/TextStartTransformEvent;",
        "onStartTransformEvent",
        "Lcom/onyx/android/sdk/textbox/event/SelectionChangeEvent;",
        "onSelectionChangeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;",
        "onScrollBeginEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ScaleBeginEvent;",
        "onScaleBeginEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/LongPressEvent;",
        "onLongPressEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;",
        "onQuitTransformEvent",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualBoxInfo",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "TextInputHandlerAction",
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
        "SMAP\nTextInputHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextInputHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,502:1\n332#2:503\n1#3:504\n*S KotlinDebug\n*F\n+ 1 TextInputHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler\n*L\n137#1:503\n*E\n"
    }
.end annotation


# instance fields
.field public d:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->r(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    return-void
.end method

.method public static final synthetic access$abortEditText(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->b(Z)V

    return-void
.end method

.method public static final synthetic access$ensureRenderContext(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->f()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$ensureRenderContext(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->g(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$ensureVirtualBoxInfo(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->i()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$findVisibleBoxInfo(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->j(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getVirtualBoxInfo$p(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->d:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public static final synthetic access$hitTestTextShapeActionObservable(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/String;ZZ)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->m(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/String;ZZ)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isActivated(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->o()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onHitTestShape(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->p(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static final synthetic access$onRedoEvent$s-1246632454(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onRedoEvent(Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;)V

    return-void
.end method

.method public static final synthetic access$onUndoEvent$s-1246632454(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/universal/editor/events/note/UndoEvent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onUndoEvent(Lcom/onyx/android/sdk/universal/editor/events/note/UndoEvent;)V

    return-void
.end method

.method public static final synthetic access$saveOrHitTextShape(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->u(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void
.end method

.method public static final synthetic access$saveTextShape(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->v()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setVirtualBoxInfo$p(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->d:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public static synthetic c(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->b(Z)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/String;ZZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x1

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->m(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/String;ZZ)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/lang/String;ZZILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x1

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->p(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static final r(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$shapeTransformBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->s(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 6

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->f()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->getRenderRect(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    new-instance v4, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v2, v5, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;-><init>(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;ZZ)V

    invoke-static {v3, v4}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->clearSelectionRect()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->e()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->shapeHandlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->restoreUserProvider()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/HideEditTextShapeSelectionMenuEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/HideEditTextShapeSelectionMenuEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->i()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->normalizeTouchPoint(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->toPointF(Lcom/onyx/android/sdk/base/data/TouchPoint;)Landroid/graphics/PointF;

    move-result-object p1

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->v()Z

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->w(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method

.method public final f()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;-><init>(Landroid/graphics/Paint;Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final g(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->f()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getRenderMeasure()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->setPageInfo(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    return-object p0
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->j(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$a;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$a;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$b;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$b;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$c;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final i()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->d:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->visibleBoxList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->d:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->d:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final j(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->visibleBoxList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-eqz v1, :cond_2

    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->d:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->findVisibleBoxInfoByNotePageId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$d;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$d;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$e;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$e;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final k(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->d:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    const-string v1, "just(...)"

    if-nez v0, :cond_0

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object v2, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    invoke-virtual {v2, p1, v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingScreenRectWithWidth(Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->isOutside(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->filterReferenceShapes(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v2, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$f;

    invoke-direct {p1, v1, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$f;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$g;

    invoke-direct {p1, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$g;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->m(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/String;ZZ)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final m(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/String;ZZ)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->f()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->i()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->setCreateNew(Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p3, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$h;

    invoke-direct {p3, p0, p2, p4}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$h;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Ljava/lang/String;Z)V

    invoke-virtual {p1, p3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->isRegistered(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onActivate()V
    .locals 3

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onActivate()V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$TextInputHandlerAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getTouchReader()Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$TextInputHandlerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->addAndExecuteAction(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;)V

    return-void
.end method

.method public final onCopyEditTextShapeEvent(Lcom/onyx/android/sdk/universal/editor/events/note/CopyEditTextShapeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/CopyEditTextShapeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/CopyEditTextShapeEvent;->getShapes()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->copyShapes(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->v()Z

    return-void
.end method

.method public final onCreateEditTextShapeLinkEvent(Lcom/onyx/android/sdk/universal/editor/events/note/CreateEditTextShapeLinkEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/CreateEditTextShapeLinkEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$i;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$i;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$j;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$j;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/universal/editor/events/note/CreateEditTextShapeLinkEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$k;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$k;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$l;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$l;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public onDeactivate()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onDeactivate()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->v()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/HideEditTextShapeSelectionMenuEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/HideEditTextShapeSelectionMenuEvent;-><init>()V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final onEditTextShapeUpdateResultEvent(Lcom/onyx/android/sdk/universal/editor/events/note/EditTextShapeUpdateResultEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/EditTextShapeUpdateResultEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/EditTextShapeUpdateResultEvent;->getEditorStyleable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->j(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$m;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$m;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onLongPressEvent(Lcom/onyx/android/sdk/universal/editor/events/app/LongPressEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/LongPressEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->v()Z

    return-void
.end method

.method public final onMoveShapesToLayerEvent(Lcom/onyx/android/sdk/universal/editor/events/note/MoveShapesToLayerEvent;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/MoveShapesToLayerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/MoveShapesToLayerEvent;->getShapes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->v()Z

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/layer/MoveShapesToLayerAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/MoveShapesToLayerEvent;->getLayerId()I

    move-result p1

    invoke-direct {v1, p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/layer/MoveShapesToLayerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onPlaceEditTextShapesEvent(Lcom/onyx/android/sdk/universal/editor/events/note/PlaceEditTextShapesEvent;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/PlaceEditTextShapesEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->d:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/PlaceShapesAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/PlaceEditTextShapesEvent;->getShapes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/PlaceEditTextShapesEvent;->getToTop()Z

    move-result p1

    invoke-direct {v1, v2, v0, v3, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/PlaceShapesAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Z)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$o;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$o;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onQuitTransformEvent(Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->v()Z

    return-void
.end method

.method public onRedoEvent(Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onRedoEvent(Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->v()Z

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$onRedoEvent$1;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$onRedoEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->shortTimer(Lkotlin/jvm/functions/Function1;)I

    return-void
.end method

.method public final onRefreshEditText(Lcom/onyx/android/sdk/universal/editor/events/note/AbortEditTextEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/AbortEditTextEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "even"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->c(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;ZILjava/lang/Object;)V

    return-void
.end method

.method public final onSaveTextShapeEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SaveTextShapeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SaveTextShapeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->v()Z

    return-void
.end method

.method public final onScaleBeginEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ScaleBeginEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ScaleBeginEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->v()Z

    return-void
.end method

.method public final onScrollBeginEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->v()Z

    return-void
.end method

.method public final onSelectionChangeEvent(Lcom/onyx/android/sdk/textbox/event/SelectionChangeEvent;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/textbox/event/SelectionChangeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->clone()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/event/SelectionChangeEvent;->getStyleInfo()Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->getBold()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setTextBold(Z)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->getItalic()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setTextItalic(Z)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->getUnderline()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setTextUnderline(Z)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getFontFace()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->getFontFamily(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setFontFace(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSize()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->getFontSize(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setTextSize(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->getLineHeight()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setTextSpacing(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextAlignType;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextAlignType;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->getTextAlign()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextAlignType;->toInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setAlignType(I)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateTextInputMenuEvent;

    invoke-direct {v1, v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateTextInputMenuEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;)V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onShowInitInputTextEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ShowInitInputTextEvent;)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ShowInitInputTextEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowInitInputTextEvent;->getInsertPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/CommonEditorActionsKt;->hitTestVisibleBoxObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$p;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$p;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$q;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$q;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/universal/editor/events/note/ShowInitInputTextEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string p0, "flatMap(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public onSingleTapUp(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->d(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isSupportTouchEdit()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v2, v2, v0, v2}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->toDownTouchData$default(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ILjava/lang/Object;)Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxAction;->setTouchPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$r;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$r;

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$s;

    invoke-direct {v3, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$s;-><init>(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$t;

    invoke-direct {v3, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$t;-><init>(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$u;

    invoke-direct {v3, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$u;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$v;

    invoke-direct {v3, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$v;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$w;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$w;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    invoke-virtual {p1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return v1
.end method

.method public final onStartTransformEvent(Lcom/onyx/android/sdk/universal/editor/events/note/TextStartTransformEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/TextStartTransformEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-direct {v1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->k(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$x;

    invoke-direct {v2, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$x;-><init>(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$y;

    invoke-direct {v2, p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$y;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$z;

    invoke-direct {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$z;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/xcn;

    invoke-direct {v0, p0, v1}, Lcom/sunia/HTREnginev2/xcn;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onSwitchToNextShapeEvent(Lcom/onyx/android/sdk/textbox/event/SwitchToNextShapeEvent;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/textbox/event/SwitchToNextShapeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/textinput/SwitchToNextTextShapeAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->i()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-direct {p1, v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/textinput/SwitchToNextTextShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$a0;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$a0;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$b0;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$b0;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v2, v3, v0, v1}, Lio/reactivex/rxjava3/core/Observable;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$c0;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$c0;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$d0;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$d0;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onTextShapeHitTestEvent(Lcom/onyx/android/sdk/universal/editor/events/note/TextShapeHitTestEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/TextShapeHitTestEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/TextShapeHitTestEvent;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->j(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$e0;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$e0;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$f0;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$f0;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/universal/editor/events/note/TextShapeHitTestEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public onTouchDown(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->ensureBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->d:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->f()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

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

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->u(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void
.end method

.method public onUndoEvent(Lcom/onyx/android/sdk/universal/editor/events/note/UndoEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/UndoEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onUndoEvent(Lcom/onyx/android/sdk/universal/editor/events/note/UndoEvent;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->v()Z

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$onUndoEvent$1;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$onUndoEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/universal/editor/events/note/UndoEvent;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->shortTimer(Lkotlin/jvm/functions/Function1;)I

    return-void
.end method

.method public final p(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/lang/String;ZZ)V
    .locals 7

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->w(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_5

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;

    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;->convertToHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getRichText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, ""

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->setRichText(Ljava/lang/String;)V

    :cond_5
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->j(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    new-instance v6, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$n;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$n;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/shape/Shape;ZZ)V

    invoke-virtual {p3, v6}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final s(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->o()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "finish edit with invalid state!"

    invoke-virtual {p1, v0, v2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/SaveEditTextShapeEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/SaveEditTextShapeEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/TransformEditEvent;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/TransformEditEvent;-><init>(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final t(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 8

    new-instance v7, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;-><init>(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0, v7}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final u(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->v()Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->i()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->normalizeTouchPoint(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->l(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void
.end method

.method public final v()Z
    .locals 8

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    const/4 v0, 0x0

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->f()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;->isNotBlankRichText(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->t(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->clearSelectionRect()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->e()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->shapeHandlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->restoreUserProvider()V

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->h()V

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->getRenderRect(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v7, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;-><init>(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->e()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->shapeHandlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->restoreUserProvider()V

    const/4 p0, 0x1

    return p0
.end method

.method public final w(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-void
.end method
