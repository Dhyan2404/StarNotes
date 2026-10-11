.class public final Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;
.super Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransformHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransformHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,574:1\n1#2:575\n766#3:576\n857#3,2:577\n800#3,11:579\n800#3,11:590\n*S KotlinDebug\n*F\n+ 1 TransformHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler\n*L\n239#1:576\n239#1:577,2\n538#1:579,11\n539#1:590,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010x\u001a\u00020w\u00a2\u0006\u0004\u0008y\u0010zJ\u001a\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004H\u0002J\u001e\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004H\u0002J&\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00082\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\u0004H\u0002J\u001c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00082\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0010\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J\u0010\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u000bH\u0002J\u0018\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u000bH\u0002J\u001e\u0010\u001c\u001a\u00020\u00062\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u0010\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0004H\u0002J\u0008\u0010\u001f\u001a\u00020\u0006H\u0002J\u0016\u0010 \u001a\u00020\u00062\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0008\u0010!\u001a\u00020\u0006H\u0016J\u0008\u0010\"\u001a\u00020\u0006H\u0016J\u0008\u0010#\u001a\u00020\u0006H\u0016J\u0010\u0010&\u001a\u00020\u00062\u0006\u0010%\u001a\u00020$H\u0016J\u0012\u0010)\u001a\u00020\u00042\u0008\u0010(\u001a\u0004\u0018\u00010\'H\u0016J\u0010\u0010,\u001a\u00020\u00042\u0006\u0010+\u001a\u00020*H\u0016J\u0010\u0010.\u001a\u00020\u00062\u0006\u0010(\u001a\u00020-H\u0007J\u0010\u00100\u001a\u00020\u00062\u0006\u0010(\u001a\u00020/H\u0017J\u0010\u00102\u001a\u00020\u00062\u0006\u0010(\u001a\u000201H\u0017J\u0010\u00104\u001a\u00020\u00062\u0006\u0010(\u001a\u000203H\u0007J\u0010\u00106\u001a\u00020\u00062\u0006\u0010(\u001a\u000205H\u0007J\u0010\u00108\u001a\u00020\u00062\u0006\u0010(\u001a\u000207H\u0007J\u0010\u0010:\u001a\u00020\u00062\u0006\u0010(\u001a\u000209H\u0007J\u0010\u0010<\u001a\u00020\u00062\u0006\u0010(\u001a\u00020;H\u0007J\u0010\u0010>\u001a\u00020\u00062\u0006\u0010(\u001a\u00020=H\u0007J\u0010\u0010@\u001a\u00020\u00062\u0006\u0010(\u001a\u00020?H\u0007J\u0018\u0010B\u001a\u0006\u0012\u0002\u0008\u00030\u00082\u000c\u0010A\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nJ\u0010\u0010D\u001a\u00020\u00062\u0006\u0010(\u001a\u00020CH\u0007J\u0010\u0010F\u001a\u00020\u00062\u0006\u0010(\u001a\u00020EH\u0007J\u0010\u0010H\u001a\u00020\u00062\u0006\u0010(\u001a\u00020GH\u0007J\u0010\u0010J\u001a\u00020\u00062\u0006\u0010(\u001a\u00020IH\u0007J\u0010\u0010L\u001a\u00020\u00062\u0006\u0010(\u001a\u00020KH\u0007J\u0010\u0010N\u001a\u00020\u00062\u0006\u0010(\u001a\u00020MH\u0007J\u0010\u0010P\u001a\u00020\u00062\u0006\u0010(\u001a\u00020OH\u0007J\u0010\u0010R\u001a\u00020\u00062\u0006\u0010(\u001a\u00020QH\u0007J\u0010\u0010T\u001a\u00020\u00062\u0006\u0010(\u001a\u00020SH\u0007J\u0010\u0010V\u001a\u00020\u00062\u0006\u0010(\u001a\u00020UH\u0007J\u0010\u0010X\u001a\u00020\u00062\u0006\u0010(\u001a\u00020WH\u0007J\u0010\u0010Z\u001a\u00020\u00062\u0006\u0010(\u001a\u00020YH\u0007J\u0010\u0010\\\u001a\u00020\u00062\u0006\u0010(\u001a\u00020[H\u0007J\u0010\u0010^\u001a\u00020\u00062\u0006\u0010(\u001a\u00020]H\u0007J\u0010\u0010`\u001a\u00020\u00062\u0006\u0010(\u001a\u00020_H\u0007J\u0010\u0010b\u001a\u00020\u00062\u0006\u0010(\u001a\u00020aH\u0007J\u0010\u0010d\u001a\u00020\u00062\u0006\u0010(\u001a\u00020cH\u0007J\u0010\u0010f\u001a\u00020\u00062\u0006\u0010(\u001a\u00020eH\u0007J\u0012\u0010g\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\u0008J\u0006\u0010h\u001a\u00020\u0002R\u001b\u0010n\u001a\u00020i8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008j\u0010k\u001a\u0004\u0008l\u0010mR\u0016\u0010r\u001a\u00020o8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008p\u0010qR\u0016\u0010v\u001a\u00020s8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008t\u0010u\u00a8\u0006{"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;",
        "Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;",
        "transformBean",
        "",
        "transforming",
        "",
        "B",
        "Lio/reactivex/rxjava3/core/Observable;",
        "D",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shapeList",
        "addToCmdStack",
        "Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;",
        "j",
        "selectedList",
        "o",
        "clearRender",
        "l",
        "shape",
        "p",
        "",
        "text",
        "x",
        "shapes",
        "Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;",
        "hwrArgs",
        "z",
        "topping",
        "w",
        "y",
        "i",
        "onActivate",
        "onDeactivate",
        "destroy",
        "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;",
        "touchMode",
        "updateTouchMode",
        "Landroid/view/MotionEvent;",
        "event",
        "isProcessing",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "touchPoint",
        "onSingleTapUp",
        "Lcom/onyx/android/sdk/universal/editor/events/note/TransformEditEvent;",
        "onTransformEditEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/UndoEvent;",
        "onUndoEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;",
        "onRedoEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;",
        "onQuitTransformEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionHWREvent;",
        "onSelectionHWREvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionOCREvent;",
        "onSelectionOCREvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/StartInkBeautifyEvent;",
        "onStartInkBeautifyEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ReplaceTransformBeanEvent;",
        "onReplaceTransformBeanEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/RestoreSourceTransformBeanEvent;",
        "onRestoreSourceTransformBeanEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionDeleteEvent;",
        "onSelectionDeleteEvent",
        "replaceShapes",
        "replaceTransformShapes",
        "Lcom/onyx/android/sdk/universal/editor/events/note/HideSelectionButtonEvent;",
        "onHideSelectionButtonEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionToppingEvent;",
        "onSelectionToppingEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionBottomingEvent;",
        "onSelectionBottomingEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionColorEvent;",
        "onSelectionColorEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCopyEvent;",
        "onSelectionCopyEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionGotoSourceEvent;",
        "onSelectionGotoSourceEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/MoveShapesToLayerEvent;",
        "onMoveShapesToLayerEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCutEvent;",
        "onSelectionCutEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionLockEvent;",
        "onSelectionLockEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCreateShapeLinkEvent;",
        "onSelectionCreateShapeLinkEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionAddToStickerEvent;",
        "onSelectionAddToStickerEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/InsertConvertedTextEvent;",
        "onInsertConvertTextEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeAttributesEvent;",
        "onChangeShapeAttributesEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/UpdateSelectionBitmapEvent;",
        "onUpdateSelectionBitmapEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionEditTextShapeEvent;",
        "onSelectionEditTextShapeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionEditUniversalShapeEvent;",
        "onSelectionEditUniversalShapeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/UpdateTransformVisibleRectEvent;",
        "onUpdateTransformVisibleRectEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ExitLongPressEvent;",
        "onExitLongPressEvent",
        "quitTransformObservable",
        "getShapeTransformBean",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "d",
        "Lkotlin/Lazy;",
        "n",
        "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "e",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualBoxInfo",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;",
        "f",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;",
        "transformHandlerAction",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
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
        "SMAP\nTransformHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransformHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,574:1\n1#2:575\n766#3:576\n857#3,2:577\n800#3,11:579\n800#3,11:590\n*S KotlinDebug\n*F\n+ 1 TransformHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler\n*L\n239#1:576\n239#1:577,2\n538#1:579,11\n539#1:590,11\n*E\n"
    }
.end annotation


# instance fields
.field public final d:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

.field public f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;


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

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$renderContext$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$renderContext$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->d:Lkotlin/Lazy;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getTouchReader()Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->FINGER_SCRIBBLE:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->updateTouchMode(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V

    return-void
.end method

.method public static final A(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    const-string v0, "$action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$charShapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$penShapes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;->postShapesConvertTextEvent(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic C(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->B(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;Z)V

    return-void
.end method

.method public static synthetic E(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;ZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->D(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->u(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    return-void
.end method

.method public static final synthetic access$copyShapes(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->i(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$createDeleteShapesObservable(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Ljava/util/List;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->j(Ljava/util/List;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$drawSelectionBitmapRect(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->l(Z)V

    return-void
.end method

.method public static final synthetic access$getRenderContext(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->n()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTransformHandlerAction$p(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    return-object p0
.end method

.method public static final synthetic access$getVirtualBoxInfo$p(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->e:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public static final synthetic access$gotoSourceByQuote(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->o(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$postOcrResult(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Ljava/lang/String;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->x(Ljava/lang/String;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method

.method public static final synthetic access$setVirtualBoxInfo$p(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->e:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public static final synthetic access$startTransformObservable(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->D(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;Lkotlin/Unit;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->m(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;Lkotlin/Unit;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->t(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->A(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic e()V
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->q()V

    return-void
.end method

.method public static synthetic f(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->v(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    return-void
.end method

.method public static synthetic g(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->s(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    return-void
.end method

.method public static synthetic h(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->r(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Ljava/util/List;ZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->j(Ljava/util/List;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final m(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;Lkotlin/Unit;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->n()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionArgs()Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->setSelectionBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static final q()V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v1, Lcom/onyx/android/sdk/universal/R$string;->add_sticker_succeed:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void
.end method

.method public static final r(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionInsertStickerDoneEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionInsertStickerDoneEvent;-><init>()V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public static final s(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->invalidate()V

    return-void
.end method

.method public static final t(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->invalidate()V

    return-void
.end method

.method public static final u(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->invalidate()V

    return-void
.end method

.method public static final v(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->invalidate()V

    return-void
.end method


# virtual methods
.method public final B(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->D(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final D(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;",
            "Z)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->n()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->e:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v3, :cond_0

    const-string v3, "virtualBoxInfo"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_0
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->setTransforming(Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$q0;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$q0;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public destroy()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->destroy()V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    if-eqz p0, :cond_1

    if-nez p0, :cond_0

    const-string p0, "transformHandlerAction"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->dispose()V

    :cond_1
    return-void
.end method

.method public final getShapeTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    if-nez p0, :cond_0

    const-string p0, "transformHandlerAction"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->getShapeTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object p0

    return-object p0
.end method

.method public final i(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/CopyShapesAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/CopyShapesAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public isProcessing(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    if-nez p0, :cond_0

    const-string p0, "transformHandlerAction"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->isUndefinedTransformAction()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final j(Ljava/util/List;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;Z)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;",
            ">;"
        }
    .end annotation

    new-instance v7, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p0, 0x0

    invoke-virtual {v7, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;->setRender(Z)V

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final l(Z)V
    .locals 6

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "transformHandlerAction"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->getShapeTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getSelectionRectShapes()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->n()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v4

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->e:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v5, :cond_1

    const-string v5, "virtualBoxInfo"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v5

    :goto_0
    invoke-direct {v2, v3, v4, v1, v0}, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->setUpdateSelectionBitmap(Z)V

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->setClearRender(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$drawSelectionBitmapRect$1;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$drawSelectionBitmapRect$1;-><init>(Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;)V

    invoke-static {p1, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createNoteObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$drawSelectionBitmapRect$2;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$drawSelectionBitmapRect$2;-><init>(Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;)V

    new-instance v3, Lcom/sunia/HTREnginev2/tln;

    invoke-direct {v3, p0, v2}, Lcom/sunia/HTREnginev2/tln;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;)V

    invoke-static {p1, v1, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$a;

    invoke-direct {v1, p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$a;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final n()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->d:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-object p0
.end method

.method public final o(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->firstTargetShape(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoSourceByQuoteAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoSourceByQuoteAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$b;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$b;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onActivate()V
    .locals 4

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onActivate()V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getTouchReader()Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->n()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onChangeShapeAttributesEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeAttributesEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeAttributesEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeAttributesEvent;->getShapeAttrPairs()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->getShapeTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getTransformShapeMatrixMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction;->setTransformShapeMatrixMap(Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$e;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$e;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public onDeactivate()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v0

    const-string v1, "render_key_transform"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->removeRenderSilent(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onDeactivate()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->y()V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    if-nez p0, :cond_0

    const-string p0, "transformHandlerAction"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->dispose()V

    return-void
.end method

.method public final onExitLongPressEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ExitLongPressEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ExitLongPressEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    if-nez v0, :cond_0

    const-string v0, "transformHandlerAction"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->getShapeTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getSelectionRectShapes()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->filterNormalShapes(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isImageShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->quitTransformObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$f;

    invoke-direct {v1, p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$f;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public final onHideSelectionButtonEvent(Lcom/onyx/android/sdk/universal/editor/events/note/HideSelectionButtonEvent;)V
    .locals 10
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/HideSelectionButtonEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->n()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v3

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->e:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    const/4 v9, 0x0

    if-nez p0, :cond_0

    const-string p0, "virtualBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v9

    goto :goto_0

    :cond_0
    move-object v4, p0

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/HideSelectionButtonEvent;->getShapes()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p0, 0x0

    const/4 p1, 0x2

    invoke-static {v0, p0, v9, p1, v9}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->configureSelectionRender$default(Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;ZLcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;ILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onInsertConvertTextEvent(Lcom/onyx/android/sdk/universal/editor/events/note/InsertConvertedTextEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/InsertConvertedTextEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->quitTransformObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$g;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$g;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$h;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$h;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Lcom/onyx/android/sdk/universal/editor/events/note/InsertConvertedTextEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onMoveShapesToLayerEvent(Lcom/onyx/android/sdk/universal/editor/events/note/MoveShapesToLayerEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/MoveShapesToLayerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->quitTransformObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$i;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$i;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Lcom/onyx/android/sdk/universal/editor/events/note/MoveShapesToLayerEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->quitTransformObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public onRedoEvent(Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "transformHandlerAction"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->e:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v1, :cond_1

    const-string v1, "virtualBoxInfo"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v1, v2, v3, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->quitTransformObservable$default(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$j;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$j;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "doOnNext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getActionManager()Lcom/onyx/android/sdk/base/scheduler/ActionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/scheduler/ActionManager;->execute(Lio/reactivex/rxjava3/core/Observable;)V

    return-void
.end method

.method public final onReplaceTransformBeanEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ReplaceTransformBeanEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ReplaceTransformBeanEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    if-nez v0, :cond_0

    const-string v0, "transformHandlerAction"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->getShapeTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ReplaceTransformBeanEvent;->getTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getTransformShapes()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->replaceShapes(Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->B(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;Z)V

    return-void
.end method

.method public final onRestoreSourceTransformBeanEvent(Lcom/onyx/android/sdk/universal/editor/events/note/RestoreSourceTransformBeanEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/RestoreSourceTransformBeanEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    const-string v0, "transformHandlerAction"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->getShapeTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getLastCompositeCommand()Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    if-nez v2, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->getShapeTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->setLastCompositeCommand(Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    if-nez v2, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->getShapeTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->setTransformShapes(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;->revokeLastCommand()Lcom/onyx/android/sdk/note/common/command/Command;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onRestoreSourceTransformBeanEvent$1;

    invoke-direct {v2, v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onRestoreSourceTransformBeanEvent$1;-><init>(Lcom/onyx/android/sdk/note/common/command/Command;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onRestoreSourceTransformBeanEvent$2;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onRestoreSourceTransformBeanEvent$2;-><init>(Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onRestoreSourceTransformBeanEvent$3;

    invoke-direct {v2, p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onRestoreSourceTransformBeanEvent$3;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->quitTransformObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onSelectionAddToStickerEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SelectionAddToStickerEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SelectionAddToStickerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v0, Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$k;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$k;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$l;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$l;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$m;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$m;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$n;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$n;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$o;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$o;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/yln;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/yln;-><init>()V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$p;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$p;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/zln;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/zln;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeSilently(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onSelectionBottomingEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SelectionBottomingEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SelectionBottomingEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->w(Z)V

    return-void
.end method

.method public final onSelectionColorEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SelectionColorEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SelectionColorEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->quitTransformObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$q;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$q;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Lcom/onyx/android/sdk/universal/editor/events/note/SelectionColorEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onSelectionCopyEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCopyEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCopyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->quitTransformObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$r;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$r;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/sln;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/sln;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onSelectionCreateShapeLinkEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCreateShapeLinkEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCreateShapeLinkEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->quitTransformObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$s;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$s;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$t;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$t;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$u;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$u;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$v;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$v;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onSelectionCutEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCutEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCutEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    if-nez p1, :cond_0

    const-string p1, "transformHandlerAction"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->getShapeTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->setUpdateDisplayAfterQuit(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->quitTransformObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$w;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$w;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$x;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$x;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/xln;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/xln;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onSelectionDeleteEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SelectionDeleteEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SelectionDeleteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    if-nez p1, :cond_0

    const-string p1, "transformHandlerAction"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->getShapeTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->setUpdateDisplayAfterQuit(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->quitTransformObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$y;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$y;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/wln;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/wln;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onSelectionEditTextShapeEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SelectionEditTextShapeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SelectionEditTextShapeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->quitTransformObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$z;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$z;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$a0;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$a0;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onSelectionEditUniversalShapeEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SelectionEditUniversalShapeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SelectionEditUniversalShapeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    if-nez p1, :cond_0

    const-string p1, "transformHandlerAction"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->getShapeTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->setUpdateDisplayAfterQuit(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->quitTransformObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$b0;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$b0;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$c0;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$c0;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$d0;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$d0;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/vln;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/vln;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onSelectionGotoSourceEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SelectionGotoSourceEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SelectionGotoSourceEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->quitTransformObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$e0;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$e0;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onSelectionHWREvent(Lcom/onyx/android/sdk/universal/editor/events/note/SelectionHWREvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SelectionHWREvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    if-nez v0, :cond_0

    const-string v0, "transformHandlerAction"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->getShapeTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getTransformShapes()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->filterSupportHWRShapes(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/SelectionHWREvent;->getHwrArgs()Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->z(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;)V

    return-void
.end method

.method public final onSelectionLockEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SelectionLockEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SelectionLockEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->quitTransformObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$f0;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$f0;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Lcom/onyx/android/sdk/universal/editor/events/note/SelectionLockEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onSelectionOCREvent(Lcom/onyx/android/sdk/universal/editor/events/note/SelectionOCREvent;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SelectionOCREvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    if-nez p1, :cond_0

    const-string p1, "transformHandlerAction"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->getShapeTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getTransformShapes()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v3, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isImageShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->p(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method

.method public final onSelectionToppingEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SelectionToppingEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SelectionToppingEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->w(Z)V

    return-void
.end method

.method public onSingleTapUp(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->isProcessing(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onStartInkBeautifyEvent(Lcom/onyx/android/sdk/universal/editor/events/note/StartInkBeautifyEvent;)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/StartInkBeautifyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartInkBeautifyEvent;->getConvertType()Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;->isRealtimeConvert()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->editorView(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v2, :cond_2

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    move-object v3, v0

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    if-nez v3, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    if-nez v2, :cond_4

    const-string v2, "transformHandlerAction"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_2
    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->getShapeTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getTransformShapes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->filterSupportHWRShapes(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v4

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartInkBeautifyEvent;->getLang()Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Landroid/graphics/Rect;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/ShowInkBeautifyPopupEvent;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowInkBeautifyPopupEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final onTransformEditEvent(Lcom/onyx/android/sdk/universal/editor/events/note/TransformEditEvent;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/TransformEditEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/TransformEditEvent;->getTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getTransformShapes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    const/4 v3, 0x0

    const-string v4, "transformHandlerAction"

    if-nez v2, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_1
    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->getShapeTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->hasTransformShapes()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    if-nez v2, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/TransformEditEvent;->getTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->setShapeTransformBean(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    if-nez v2, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v3, v2

    :goto_0
    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v3, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt;->findVisibleBoxInfoByNotePageId(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/lang/String;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$g0;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$g0;

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$h0;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$h0;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$i0;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$i0;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onTransformEditEvent$4;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onTransformEditEvent$4;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$j0;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$j0;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onTransformEditEvent$6;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onTransformEditEvent$6;-><init>(Lcom/onyx/android/sdk/universal/editor/events/note/TransformEditEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$k0;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$k0;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Lcom/onyx/android/sdk/universal/editor/events/note/TransformEditEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public onUndoEvent(Lcom/onyx/android/sdk/universal/editor/events/note/UndoEvent;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/UndoEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "transformHandlerAction"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->e:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v1, :cond_1

    const-string v1, "virtualBoxInfo"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v1, v2, v3, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->quitTransformObservable$default(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$l0;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$l0;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "flatMap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getActionManager()Lcom/onyx/android/sdk/base/scheduler/ActionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/scheduler/ActionManager;->execute(Lio/reactivex/rxjava3/core/Observable;)V

    return-void
.end method

.method public final onUpdateSelectionBitmapEvent(Lcom/onyx/android/sdk/universal/editor/events/note/UpdateSelectionBitmapEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/UpdateSelectionBitmapEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->l(Z)V

    return-void
.end method

.method public final onUpdateTransformVisibleRectEvent(Lcom/onyx/android/sdk/universal/editor/events/note/UpdateTransformVisibleRectEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/UpdateTransformVisibleRectEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    if-nez p0, :cond_0

    const-string p0, "transformHandlerAction"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateTransformVisibleRectEvent;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->updateSelectionVisibleRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final p(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getResource(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;

    invoke-direct {v1}, Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;-><init>()V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;->setUri(Landroid/net/Uri;)V

    new-instance v0, Lcom/onyx/android/sdk/ocr/action/OcrProcessAction;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/ocr/action/OcrProcessAction;-><init>(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ocr/action/OcrBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$c;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$c;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$d;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$d;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method public final quitTransformObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
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

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "transformHandlerAction"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->e:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_1

    const-string p0, "virtualBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, p0, v2, v3, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->quitTransformObservable$default(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final replaceTransformShapes(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 6
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
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "replaceShapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "transformHandlerAction"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->getShapeTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->n()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v4

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->e:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v5, :cond_1

    const-string v5, "virtualBoxInfo"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v5

    :goto_0
    invoke-direct {v2, v3, v4, v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getLastCompositeCommand()Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;->setAddToCmdStack(Z)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$n0;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$n0;-><init>(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$o0;

    invoke-direct {v2, v0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$o0;-><init>(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$p0;

    invoke-direct {v1, p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$p0;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public updateTouchMode(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->FINGER_SCRIBBLE:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->updateTouchMode(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V

    return-void
.end method

.method public final w(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->quitTransformObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$m0;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$m0;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final x(Ljava/lang/String;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/ShapesConvertTextEvent;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    sget-object v1, Lcom/onyx/android/sdk/data/common/data/TextContentType;->OCR_TEXT:Lcom/onyx/android/sdk/data/common/data/TextContentType;

    invoke-direct {v0, p2, p1, v1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShapesConvertTextEvent;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/onyx/android/sdk/data/common/data/TextContentType;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final y()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    const-string v1, "transformHandlerAction"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->getShapeTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getTransformShapes()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->e:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->e:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_3

    const-string p0, "virtualBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, p0

    :goto_0
    const/4 p0, 0x0

    invoke-virtual {v0, v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->quitTransformObservable(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_4
    :goto_1
    return-void
.end method

.method public final z(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;",
            ")V"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    if-eqz v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {p1, p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p2, Lcom/sunia/HTREnginev2/uln;

    invoke-direct {p2, p1, v1, v0}, Lcom/sunia/HTREnginev2/uln;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
